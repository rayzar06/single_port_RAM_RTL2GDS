#==============================================================================
# Hierarchical dofile generated by Conformal LEC
# Version: 21.20-p100 (23-Oct-2021) (64 bit executable)
#------------------------------------------------------------------------------
# For additional reporting on 'not written' modules, see the 'VERBOSE REPORTING'
# section at the end of the hierarchical dofile
#------------------------------------------------------------------------------
# The command 'set module property' sets the instance context for the current
# root module. It is intended only for hierarchical comparison, and should
# not be modified by the user.
#------------------------------------------------------------------------------
# TERMS AND NOTATIONS USED
#------------------------------------------------------------------------------
# Module Instantiation Ratio: Average number of instantiations per matching module
# Wrapper size: #Logic gates enclosing the module's instance, and bounded by key-points
# Periphery size: #Logic gates in the fanin and fanout cone of instance's input and output boundary, and bounded by key-points
# 0: Indicates pin is constant zero
# 1: Indicates pin is constant one
# X: Indicates pin is full DC
# U: Indicates pin is unreachable
# Z: Indicates pin is floating
# KP<--: Indicates pin's fanin is directly connected to key-point (ignores buffers/inverters)
# -->KP: Indicates pin's fanout is directly connected to key-point (ignores buffers/inverters)
# REP: Indicates pin is representative pin
# EQ_REP: <polarity> rep_pinname>: Indicates pin is a member EQ pin with
# 'rep_pinname' specifying the representative, and 'polarity' specifying
# if it is positive or negative equivalent
# = : Indicates that the pins on LHS and RHS are mapped
# + : Indicates positive polarity for pin mapping
# - : Indicates negative polarity for pin mapping
# ? : Indicates unknown polarity for pin mapping
# G: Indicates that the pin belongs to Golden
# R: Indicates that the pin belongs to Revised
# IN: Indicates that the pin is an Input pin
# OUT: Indicates that the pin is an Output pin
# IO: Indicates that the pin is an Inout pin. Polarity of Inout pin is
#     always '?' because of name-only mapping
#==============================================================================

set_system_mode setup
# Comparing
#-------------------------------------------------------------------------------
# MODULE ram_mod_ADDRWIDTH4_DATAWIDTH8_SIZE16 (G) INSTANCE /ram_1 (G)
# MODULE ram_mod_ADDRWIDTH4_DATAWIDTH8_SIZE16 (R) INSTANCE /ram_1 (R)
# Wrapper size: (G) = 72  (R) = 72
# Periphery size: (G) = 490  (R) = 736
# Pins directly connected to key-points/constants: (G) = 65.22%  (R) = 65.22%
#-------------------------------------------------------------------------------
# RESOLVED Constraints
# IN (G) clk  (KP<--)(REP)  =   (R) clk  (KP<--)(REP) (by sim and name)
# IN (G) addr[3]  (KP<--)(REP)  =   (R) addr[3]  (KP<--)(REP) (by sim and name)
# IN (G) addr[2]  (KP<--)(REP)  =   (R) addr[2]  (KP<--)(REP) (by sim and name)
# IN (G) addr[1]  (KP<--)(REP)  =   (R) addr[1]  (KP<--)(REP) (by sim and name)
# IN (G) addr[0]  (KP<--)(REP)  =   (R) addr[0]  (KP<--)(REP) (by sim and name)
# IN (G) data[7] (REP)  =   (R) data[7] (REP) (by sim and name)
# IN (G) data[6] (REP)  =   (R) data[6] (REP) (by sim and name)
# IN (G) data[5] (REP)  =   (R) data[5] (REP) (by sim and name)
# IN (G) data[4] (REP)  =   (R) data[4] (REP) (by sim and name)
# IN (G) data[3] (REP)  =   (R) data[3] (REP) (by sim and name)
# IN (G) data[2] (REP)  =   (R) data[2] (REP) (by sim and name)
# IN (G) data[1] (REP)  =   (R) data[1] (REP) (by sim and name)
# IN (G) data[0] (REP)  =   (R) data[0] (REP) (by sim and name)
# IN (G) cs  (KP<--)(REP)  =   (R) cs  (KP<--)(REP) (by sim and name)
# IN (G) we  (KP<--)(REP)  =   (R) we  (KP<--)(REP) (by sim and name)
# RESOLVED Constraints
# OUT (G) dataOut[7]  (KP<--)(REP)  =   (R) dataOut[7]  (KP<--)(REP) (by sim and name)
# OUT (G) dataOut[6]  (KP<--)(REP)  =   (R) dataOut[6]  (KP<--)(REP) (by sim and name)
# OUT (G) dataOut[5]  (KP<--)(REP)  =   (R) dataOut[5]  (KP<--)(REP) (by sim and name)
# OUT (G) dataOut[4]  (KP<--)(REP)  =   (R) dataOut[4]  (KP<--)(REP) (by sim and name)
# OUT (G) dataOut[3]  (KP<--)(REP)  =   (R) dataOut[3]  (KP<--)(REP) (by sim and name)
# OUT (G) dataOut[2]  (KP<--)(REP)  =   (R) dataOut[2]  (KP<--)(REP) (by sim and name)
# OUT (G) dataOut[1]  (KP<--)(REP)  =   (R) dataOut[1]  (KP<--)(REP) (by sim and name)
# OUT (G) dataOut[0]  (KP<--)(REP)  =   (R) dataOut[0]  (KP<--)(REP) (by sim and name)
set_root_module ram_mod_ADDRWIDTH4_DATAWIDTH8_SIZE16 -Golden
set_root_module ram_mod_ADDRWIDTH4_DATAWIDTH8_SIZE16 -Revised
set_module_property -instance /ram_1 -Golden
set_module_property -instance /ram_1 -Revised
report_black_box -NOHidden
set_system_mode lec
report_design_data; report_unmapped_points -summary; report_unmapped_points -notmapped; analyze_datapath -module -verbose; eval analyze_datapath -flowgraph -verbose
add_compared_points -all
compare
save_hier_compare_result
set_system_mode setup
add_black_box ram_mod_ADDRWIDTH4_DATAWIDTH8_SIZE16 -module -hier -Golden
add_black_box ram_mod_ADDRWIDTH4_DATAWIDTH8_SIZE16 -module -hier -Revised
usage
# Root Modules
# Comparing
#-------------------------------------------------------------------------------
# MODULE single_port_ram (G) INSTANCE / (G)
# MODULE single_port_ram (R) INSTANCE / (R)
# Wrapper size: (G) = 0  (R) = 0
# Periphery size: (G) = 0  (R) = 0
#-------------------------------------------------------------------------------
# RESOLVED Constraints
# IN (G) clk_pad (REP)  =   (R) clk_pad (REP) (by name)
# IN (G) addr_pad[3] (REP)  =   (R) addr_pad[3] (REP) (by name)
# IN (G) addr_pad[2] (REP)  =   (R) addr_pad[2] (REP) (by name)
# IN (G) addr_pad[1] (REP)  =   (R) addr_pad[1] (REP) (by name)
# IN (G) addr_pad[0] (REP)  =   (R) addr_pad[0] (REP) (by name)
# IN (G) cs_pad (REP)  =   (R) cs_pad (REP) (by name)
# IN (G) we_pad (REP)  =   (R) we_pad (REP) (by name)
# RESOLVED Constraints
# RESOLVED Constraints
# IO (G) data_pad[7] (REP)  =   (R) data_pad[7] (REP) (by name)
# IO (G) data_pad[6] (REP)  =   (R) data_pad[6] (REP) (by name)
# IO (G) data_pad[5] (REP)  =   (R) data_pad[5] (REP) (by name)
# IO (G) data_pad[4] (REP)  =   (R) data_pad[4] (REP) (by name)
# IO (G) data_pad[3] (REP)  =   (R) data_pad[3] (REP) (by name)
# IO (G) data_pad[2] (REP)  =   (R) data_pad[2] (REP) (by name)
# IO (G) data_pad[1] (REP)  =   (R) data_pad[1] (REP) (by name)
# IO (G) data_pad[0] (REP)  =   (R) data_pad[0] (REP) (by name)
set_root_module single_port_ram -Golden
set_root_module single_port_ram -Revised
set_module_property -instance / -Golden
set_module_property -instance / -Revised
report_black_box -NOHidden
set_system_mode lec
report_design_data; report_unmapped_points -summary; report_unmapped_points -notmapped; analyze_datapath -module -verbose; eval analyze_datapath -flowgraph -verbose
add_compared_points -all
compare
save_hier_compare_result
set_system_mode setup
usage
report_hier_compare_result
report_hier_compare_result -Nonequivalent
report_hier_compare_result -Abort
report_hier_compare_result -Uncompared
# _END_OF_LEC_HIERARCHICAL_DOFILE_
