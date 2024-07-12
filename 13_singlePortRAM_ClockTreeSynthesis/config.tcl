###################################################################################################
## 				CCOPT CONFIGRATION						 ##
###################################################################################################

##set_ccopt_mode -integration native 				
## CPPR Removal for Incremental delays (optional)
#set_global timing_enable_si_cppr true
## Decide what Timing Tool you will be signing off on & set the engine to match (this is the default)
#setSIMode -analysisType aae
## Ensure SI Delay Cal is on (this is the default)
#setDelayCalMode -SIAware true

###################################################################################################

## To load postCTS timing constraints 

###################################################################################################

#update_constraint_mode -name top_chip_wrapper_constraints -sdc_files [list top_chip_wrapper_incremental.sdc]

###################################################################################################

## To ensure that sufficient analysis views are active

###################################################################################################

set_analysis_view -setup {worst} -hold {best}

###################################################################################################

## GigaOpt technology for the postRoute flow.

###################################################################################################

setAnalysisMode -analysisType onChipVariation -cppr both

setNanoRouteMode -drouteUseMultiCutViaEffort "high"

###################################################################################################

## Configure library cells for CTS to beused

###################################################################################################

set_ccopt_property buffer_cells {bufbd1 bufbd2 bufbd3 bufbd4 bufbd7 bufbda bufbdf bufbdk}

set_ccopt_property inverter_cells {invbd2 invbd4 invbd7 invbda invbdf invbdk}

#set_ccopt_property clock_gating_cells {**}

## Include this setting to use inverters in preference to buffers

#set_ccopt_property use_inverters true

setRouteMode -earlyGlobalMaxRouteLayer 4

###################################################################################################

## Define route types to binds a non-default routing rule, preferred routing layers, and shielding 
## specification together.

###################################################################################################

create_route_type -name leaf_rule -top_preferred_layer 2 -bottom_preferred_layer 1 -preferred_routing_layer_effort high

create_route_type -name trunk_rule -top_preferred_layer 3 -bottom_preferred_layer 2 -preferred_routing_layer_effort high

###################################################################################################

## Specify that the route types defined above will be used for leaf, trunk, and top nets.

###################################################################################################

set_ccopt_property -net_type leaf   route_type leaf_rule

set_ccopt_property -net_type trunk  route_type trunk_rule

set_ccopt_property -net_type top    route_type trunk_rule

###################################################################################################

## Specify  top routing rules will be used for any clock tree net with a transitive sink fanout count 

###################################################################################################

#set_ccopt_property routing_top_min_fanout 1

###################################################################################################

## Specify  top routing rules will be used for any clock tree net with a transitive sink fanout count 

###################################################################################################

## Include this setting to use inverters in preference to buffers

#set_ccopt_property use_inverters true

###################################################################################################
## 
###################################################################################################

set_ccopt_property primary_delay_corner max_delay

set_ccopt_property route_type_autotrim false


