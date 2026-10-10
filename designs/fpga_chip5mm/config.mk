export DESIGN_NAME = fpga_chip5mm
export DESIGN_NICKNAME = fpga_chip5mm_synth
export PLATFORM = sclcp8d

CHIP_ROOT := $(abspath $(dir $(DESIGN_CONFIG))/../..)
FABRIC := $(CHIP_ROOT)/generated/fpga_2x2_2fle_w20_cp8d_verified

export VERILOG_FILES = $(FABRIC)/SRC/fabric_netlists.v $(CHIP_ROOT)/rtl/fpga_core.v $(CHIP_ROOT)/rtl/fpga_chip5mm.v
export VERILOG_INCLUDE_DIRS = $(FABRIC)
export SDC_FILE = $(CHIP_ROOT)/designs/fpga_chip5mm/constraint.sdc
export ABC_AREA = 1
export ABC_CLOCK_PERIOD_IN_PS = 1000000
