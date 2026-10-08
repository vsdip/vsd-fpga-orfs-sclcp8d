export DESIGN_NAME = fpga_core
export DESIGN_NICKNAME = fpga_2fle_w24_cp8d
export PLATFORM = sclcp8d

INTEGRATION_ROOT := $(abspath $(dir $(DESIGN_CONFIG))/../..)
FABRIC_ROOT := $(INTEGRATION_ROOT)/generated/fpga_2x2_2fle_w24_cp8d

export VERILOG_FILES = $(FABRIC_ROOT)/SRC/fabric_netlists.v $(INTEGRATION_ROOT)/rtl/fpga_core.v
export VERILOG_INCLUDE_DIRS = $(FABRIC_ROOT)
export SDC_FILE = $(INTEGRATION_ROOT)/designs/fpga_cp8d/area_probe.sdc
export ABC_AREA = 1
export ABC_CLOCK_PERIOD_IN_PS = 1000000
