#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
mkdir -p /tmp/orfs

pdk="$PWD/work/pdks/my_dtech_cp8d/Open_Source_SCL_0.8micron_PDK_digital/open_source_scl_cp8d/open_pdks/scl_cp8d"

for view in \
  libs.tech/openlane/digital_cp8d/lef/tech_cp8d.lef \
  libs.ref/digital_cp8d/lef/core_cp8d.lef \
  libs.ref/digital_cp8d/lib/cp8d_core_typ.lib \
  libs.ref/digital_cp8d/gds/std_cells_cp8d.gds \
  libs.tech/klayout/tech/scl_cp8d.lyt; do
  test -s "$pdk/$view" || { echo "MISSING: $pdk/$view" >&2; exit 1; }
done

openroad -version
/opt/oss-cad-suite/bin/yosys -V
klayout -v
test -x /opt/openfpga/build/openfpga/openfpga
test -x /opt/openfpga/build/vtr-verilog-to-routing/vpr/vpr

make -C src/orfs/flow \
  PLATFORM_HOME="$PWD/platforms" \
  DESIGN_CONFIG="$PWD/designs/cp8d_probe/config.mk" \
  synth

grep -F 'Found and reported 0 problems.' \
  src/orfs/flow/reports/sclcp8d/cp8d_probe/base/synth_check.txt
echo 'CP8D doctor: PASS'
