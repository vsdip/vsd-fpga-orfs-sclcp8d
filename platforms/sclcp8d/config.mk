# SCL CP8D 0.8 um digital core. PDK files stay outside Git.
CP8D_PDK := $(abspath $(PLATFORM_DIR)/../../work/pdks/my_dtech_cp8d/Open_Source_SCL_0.8micron_PDK_digital/open_source_scl_cp8d/open_pdks/scl_cp8d)

export PROCESS = 800
export TECH_LEF = $(CP8D_PDK)/libs.tech/openlane/digital_cp8d/lef/tech_cp8d.lef
export SC_LEF = $(CP8D_PDK)/libs.ref/digital_cp8d/lef/core_cp8d.lef
export LIB_FILES = $(CP8D_PDK)/libs.ref/digital_cp8d/lib/cp8d_core_typ.lib
export GDS_FILES = $(CP8D_PDK)/libs.ref/digital_cp8d/gds/std_cells_cp8d.gds

export DFF_MAP_FILE = $(PLATFORM_DIR)/dff_map.v
export LATCH_MAP_FILE = $(PLATFORM_DIR)/latch_map.v
export TIEHI_CELL_AND_PORT = VDDCON TIEHI
export TIELO_CELL_AND_PORT = VSSCON TIELO
export MIN_BUF_CELL_AND_PORTS = BUFF00 IN1 OUT1
export ABC_DRIVER_CELL = BUFF00
export ABC_LOAD_IN_FF = 5

export PLACE_SITE = CORE
export MAKE_TRACKS = $(PLATFORM_DIR)/make_tracks.tcl
export IO_PLACER_H = metal1
export IO_PLACER_V = metal2
export CTS_BUF_LIST = BUFF00

export MIN_ROUTING_LAYER = metal1
export MIN_CLK_ROUTING_LAYER = metal1
export MAX_ROUTING_LAYER = metal2
export VIA_IN_PIN_MIN_LAYER = metal1
export VIA_IN_PIN_MAX_LAYER = metal2

export PWR_NETS_VOLTAGES = VDD 5.0
export GND_NETS_VOLTAGES = VSS 0.0
export USE_FILL = 0
