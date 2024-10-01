export DESIGN_NICKNAME = control
export DESIGN_NAME = control
export PLATFORM    = ihp-sg13g2

#export ENABLE_TT_LOGO ?= 1


export VERILOG_FILES =  $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/control.v \
                        $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/spi.v


export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export CORE_UTILIZATION = 30

#export DIE_AREA = 0 0 2200 2200
#export CORE_AREA = 1000 1000 1200 1200
#export FOOTPRINT_TCL = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/pad.tcl
export PDN_TCL = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/pdn.tcl

export PLACE_DENSITY = 0.7
export TNS_END_PERCENT = 100

export SYNTH_MEMORY_MAX_BITS = 16384

# Allow routing on the TopMetal layers, for the padring connections
export MAX_ROUTING_LAYER = TopMetal2