
#!/usr/bin/env bash
set -euo pipefail

cd /workspaces/vsd-fpga-orfs-sclcp8d

DB="$PWD/src/orfs/flow/results/sclcp8d/fpga_2fle_w20_macro4200/base/5_2_route.odb"

test -s "$DB" || {
    echo "ERROR: Original ODB missing"
    exit 1
}

mkdir -p work
OUT=$(mktemp -d "$PWD/work/macro4200_shortbridge.XXXXXX")

echo "Workspace: $OUT"
sha256sum "$DB" > "$OUT/original.sha256"

cat > "$OUT/build.tcl" <<'TCL'
read_db $::env(INPUT_ODB)

set db [ord::get_db]
set block [[$db getChip] getBlock]
set tech [$db getTech]

set net [$block findNet _0800_]

if {$net eq "NULL"} {
    error "Missing net _0800_"
}

set old [$net getWire]

if {$old eq "NULL"} {
    error "Missing routed wire"
}

if {[llength [$net getITerms]] != 2 ||
    [llength [$net getBTerms]] != 0} {
    error "Unexpected terminal count"
}

set terminals [dict create]

foreach term [$net getITerms] {
    set key "[[$term getInst] getName]/[[$term getMTerm] getName]"
    dict set terminals $key $term
}

foreach key {_2352_/OUT1 _2358_/IN2} {
    if {![dict exists $terminals $key]} {
        error "Missing terminal $key"
    }
}

# Verify original wire topology

set dec [odb::dbWireDecoder]
$dec begin $old

set points {}
set via_count 0

while {1} {
    set op [$dec next]

    if {$op == $odb::dbWireDecoder_END_DECODE} {
        break
    }

    if {$op == $odb::dbWireDecoder_POINT} {
        lappend points [$dec getPoint]
    } elseif {$op == $odb::dbWireDecoder_POINT_EXT} {
        lappend points [lrange [$dec getPoint_ext] 0 1]
    } elseif {$op == $odb::dbWireDecoder_TECH_VIA ||
              $op == $odb::dbWireDecoder_VIA} {
        incr via_count
    }
}

foreach p {
    {1062750 1177850}
    {1062750 1202500}
    {1051450 1202500}
    {1051450 1207450}
} {
    if {[lsearch -exact $points $p] < 0} {
        error "Original route changed: $p missing"
    }
}

if {$via_count != 2} {
    error "Expected 2 original vias; found $via_count"
}

set xl [expr {int($::env(XLEFT))}]
set xr [expr {int($::env(XRIGHT))}]

if {!($xl > 1051450 && $xl < 1054350 &&
      $xr > 1056350 && $xr < 1062750)} {
    error "Candidate outside guarded crossover region"
}

set m1 [$tech findLayer metal1]
set via [$tech findVia M2_M1]
set kind tech

if {$via eq "NULL"} {
    set via [$block findVia M2_M1]
    set kind block
}

if {$via eq "NULL" || $m1 eq "NULL"} {
    error "Missing metal1 or M2_M1 via"
}

proc transition {e via kind} {
    if {$kind eq "tech"} {
        $e addTechVia $via
    } else {
        $e addVia $via
    }
}

# Build a continuous route:
# _2352_ OUT1 -> M2 -> M1 bridge -> M2 -> _2358_ IN2

odb::dbWire_destroy $old

set wire [odb::dbWire_create $net]
set e [odb::dbWireEncoder]

$e begin $wire
$e newPath $m1 ROUTED

$e addPoint 1062750 1177850
$e addITerm [dict get $terminals _2352_/OUT1]

transition $e $via $kind

# Original right-side M2 segment
$e addPoint 1062750 1202500
$e addPoint $xr 1202500

# Descend to Metal1 before the short
transition $e $via $kind

# Short Metal1 bridge
$e addPoint $xl 1202500

# Return to Metal2 after the short
transition $e $via $kind

# Original left-side M2 segment
$e addPoint 1051450 1202500
$e addPoint 1051450 1207450

transition $e $via $kind
$e addITerm [dict get $terminals _2358_/IN2]

$e end

write_db $::env(OUTPUT_ODB)

puts "WROTE_CANDIDATE $xl $xr"
TCL

cat > "$OUT/check.tcl" <<'TCL'
read_db $::env(INPUT_ODB)

drt::check_drc \
    -box {1048000 1195000 1066000 1212000} \
    -output_file $::env(DRC_REPORT)

puts "CHECKED_LOCAL"
TCL

cat > "$OUT/full.tcl" <<'TCL'
read_db $::env(INPUT_ODB)

drt::check_drc -output_file $::env(DRC_REPORT)

puts "CHECKED_FULL_DESIGN"
TCL

found=0

for xl in 1052850 1053450 1054050; do
    for xr in 1056650 1057450 1058250; do

        d="$OUT/bridge_${xl}_${xr}"
        mkdir "$d"

        echo
        echo "Testing left=$xl right=$xr"

        if ! INPUT_ODB="$DB" \
             OUTPUT_ODB="$d/trial.odb" \
             XLEFT="$xl" \
             XRIGHT="$xr" \
             openroad -no_init -exit "$OUT/build.tcl" \
             > "$d/build.log" 2>&1; then

            echo "BUILD_FAILED:"
            tail -n 3 "$d/build.log"
            continue
        fi

        # Reopen the candidate in a new OpenROAD process
        if ! INPUT_ODB="$d/trial.odb" \
             DRC_REPORT="$d/local.rpt" \
             openroad -no_init -exit "$OUT/check.tcl" \
             > "$d/check.log" 2>&1; then

            echo "CHECK_FAILED:"
            tail -n 3 "$d/check.log"
            continue
        fi

        if grep -q 'violation type:' "$d/local.rpt"; then
            echo "LOCAL_FAIL: $(grep -c 'violation type:' "$d/local.rpt") violations"
            grep -A2 'violation type:' "$d/local.rpt" | head -n 6 || true
            continue
        fi

        echo "LOCAL_CLEAN: checking full design"

        if ! INPUT_ODB="$d/trial.odb" \
             DRC_REPORT="$d/full.rpt" \
             openroad -no_init -exit "$OUT/full.tcl" \
             > "$d/full.log" 2>&1; then

            echo "FULL_CHECK_FAILED"
            tail -n 3 "$d/full.log"
            continue
        fi

        if grep -q 'violation type:' "$d/full.rpt"; then
            echo "FULL_FAIL: $(grep -c 'violation type:' "$d/full.rpt") violations"
            continue
        fi

        echo "CANDIDATE_DRC_CLEAN: $d/trial.odb"
        echo "$d/trial.odb" > "$OUT/candidate_path.txt"

        found=1
        break
    done

    if [ "$found" -eq 1 ]; then
        break
    fi
done

echo
echo "=== ORIGINAL DATABASE INTEGRITY ==="
sha256sum -c "$OUT/original.sha256"

if [ "$found" -eq 1 ]; then
    echo "DRC-clean candidate saved under $OUT"
    echo "No original database overwritten."
    echo "Connectivity verification still required."
else
    echo "No tested short bridge is DRC-clean."
    echo "Original database unchanged."
    echo "Reports: $OUT"
fi

