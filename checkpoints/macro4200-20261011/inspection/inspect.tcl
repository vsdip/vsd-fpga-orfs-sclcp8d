set dbfile \
  "src/orfs/flow/results/sclcp8d/fpga_2fle_w20_macro4200/base/5_2_route.odb"

read_db $dbfile

set db [ord::get_db]
set block [[$db getChip] getBlock]

puts "\n========== CELL POSITIONS =========="

foreach name {_2351_ _2352_ _2358_} {
    set inst [$block findInst $name]

    if {$inst eq "NULL"} {
        puts "MISSING CELL: $name"
        continue
    }

    puts "\nCELL $name"
    puts "MASTER: [[$inst getMaster] getName]"
    puts "ORIGIN: [$inst getOrigin]"
    puts "ORIENT: [$inst getOrient]"
    puts "BBOX: [$inst getBBox]"

    foreach pin [$inst getITerms] {
        set net [$pin getNet]
        set netname "UNCONNECTED"

        if {$net ne "NULL"} {
            set netname [$net getName]
        }

        puts "  PIN [[$pin getMTerm] getName] NET $netname"
        puts "  POSITION [$pin getAvgXY]"
    }
}

puts "\n========== NET ROUTES =========="

foreach name {
    _0799_
    _0800_
    _0805_
    net1821
    net1822
} {
    set net [$block findNet $name]

    if {$net eq "NULL"} {
        puts "NET $name NOT FOUND"
        continue
    }

    puts "\n========== $name =========="

    foreach pin [$net getITerms] {
        puts "TERMINAL: [[$pin getInst] getName] [[$pin getMTerm] getName]"
    }

    set wire [$net getWire]

    if {$wire eq "NULL"} {
        puts "NO ROUTED WIRE"
        continue
    }

    set dec [odb::dbWireDecoder]
    $dec begin $wire

    set last {}

    while {1} {
        set op [$dec next]

        if {$op == $odb::dbWireDecoder_END_DECODE} {
            break
        }

        if {$op == $odb::dbWireDecoder_PATH ||
            $op == $odb::dbWireDecoder_JUNCTION ||
            $op == $odb::dbWireDecoder_SHORT ||
            $op == $odb::dbWireDecoder_VWIRE} {

            set layer [[$dec getLayer] getName]
            puts "PATH $layer"
            set last {}

        } elseif {$op == $odb::dbWireDecoder_POINT} {

            set pt [$dec getPoint]
            puts "  POINT $pt"
            set last $pt

        } elseif {$op == $odb::dbWireDecoder_POINT_EXT} {

            set pt [$dec getPoint_ext]
            puts "  POINT_EXT $pt"
            set last [lrange $pt 0 1]

        } elseif {$op == $odb::dbWireDecoder_TECH_VIA} {

            puts "  TECH_VIA [[$dec getTechVia] getName] AT $last"

        } elseif {$op == $odb::dbWireDecoder_VIA} {

            puts "  VIA [[$dec getVia] getName] AT $last"
        }
    }
}

puts "\nINSPECTION COMPLETE"
