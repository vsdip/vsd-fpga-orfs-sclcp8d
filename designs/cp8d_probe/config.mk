export DESIGN_NAME = cp8d_probe
export DESIGN_NICKNAME = cp8d_probe
export PLATFORM = sclcp8d
PROBE_DIR := $(dir $(abspath $(DESIGN_CONFIG)))
export VERILOG_FILES = $(PROBE_DIR)/cp8d_probe.v
export SDC_FILE = $(PROBE_DIR)/constraint.sdc
export ABC_AREA = 1
export ABC_CLOCK_PERIOD_IN_PS = 1000000
