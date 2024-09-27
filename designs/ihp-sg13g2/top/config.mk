export DESIGN_NICKNAME = top
export DESIGN_NAME = top
export PLATFORM    = ihp-sg13g2

#export ENABLE_TT_LOGO = 1

export VERILOG_FILES =  $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/top.v \
                        $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/control.v \
                        $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/spi.v


export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export DIE_AREA = 0 0 1600 1600
export CORE_AREA = 400 400 1200 1200
export FOOTPRINT_TCL = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/pad.tcl
export PDN_TCL = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/pdn.tcl

export PLACE_DENSITY = 0.7
export TNS_END_PERCENT = 100

export SYNTH_MEMORY_MAX_BITS = 16384

# Allow routing on the TopMetal layers, for the padring connections
export MAX_ROUTING_LAYER = TopMetal2

# Following exports should be part of platforms/ihp-sg13g2/config.mk and
# might be obsolete in the future.
export ADDITIONAL_LEFS = \
    $(IHP_PDK_ROOT)/ihp-sg13g2/libs.ref/sg13g2_io/lef/sg13g2_io.lef \
    $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/macros/bondpad/lef/bondpad_70x70.lef
export ADDITIONAL_GDS = \
    $(IHP_PDK_ROOT)/ihp-sg13g2/libs.ref/sg13g2_io/gds/sg13g2_io.gds \
    $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/macros/bondpad/gds/bondpad_70x70.gds
export ADDITIONAL_LIBS = \
    $(IHP_PDK_ROOT)/ihp-sg13g2/libs.ref/sg13g2_io/lib/sg13g2_io_dummy.lib
export CDL_FILE = \
    $(IHP_PDK_ROOT)/ihp-sg13g2/libs.ref/sg13g2_stdcell/cdl/sg13g2_stdcell.cdl \
    $(IHP_PDK_ROOT)/ihp-sg13g2/libs.ref/sg13g2_io/cdl/sg13g2_io.cdl \
    $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/macros/bondpad/cdl/bondpad_70x70.cdl

export ADDITIONAL_GDS += $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/macros/control/gds/control.gds
export ADDITIONAL_LEFS += $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/macros/control/lef/control.lef
export MACRO_PLACEMENT = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/macro_placement.cfg