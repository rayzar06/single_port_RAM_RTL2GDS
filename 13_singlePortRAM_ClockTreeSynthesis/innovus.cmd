#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Jul 12 15:24:30 2024                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.18-s099_1 (64bit) 07/18/2023 13:03 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.18-s099_1 NR230707-1955/21_18-UB (database version 18.20.605) {superthreading v2.17}
#@(#)CDS: AAE 21.18-s017 (64bit) 07/18/2023 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.18-s022_1 () Jul 11 2023 23:10:24 ( )
#@(#)CDS: SYNTECH 21.18-s010_1 () Jul  5 2023 06:32:03 ( )
#@(#)CDS: CPE v21.18-s053
#@(#)CDS: IQuantus/TQuantus 21.1.1-s966 (64bit) Wed Mar 8 10:22:20 PST 2023 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
encMessage warning 0
encMessage debug 0
is_common_ui_mode
restoreDesign /run/media/user1/c2s/sriram/singlePortRAM/12_singlePortRAM_Placement/Placement/single_port_ram_place.enc.dat single_port_ram
setDrawView fplan
encMessage warning 1
encMessage debug 0
setDrawView place
set_global report_timing_format {instance arc net cell slew delay arrival required}
set_analysis_view -setup {worst} -hold {best}
setAnalysisMode -analysisType onChipVariation -cppr both
setNanoRouteMode -drouteUseMultiCutViaEffort high
set_ccopt_property buffer_cells {bufbd1 bufbd2 bufbd3 bufbd4 bufbd7 bufbda bufbdf bufbdk}
set_ccopt_property inverter_cells {invbd2 invbd4 invbd7 invbda invbdf invbdk}
setRouteMode -earlyGlobalMaxRouteLayer 4
create_route_type -name leaf_rule -top_preferred_layer 2 -bottom_preferred_layer 1 -preferred_routing_layer_effort high
create_route_type -name trunk_rule -top_preferred_layer 3 -bottom_preferred_layer 2 -preferred_routing_layer_effort high
set_ccopt_property -net_type leaf route_type leaf_rule
set_ccopt_property -net_type trunk route_type trunk_rule
set_ccopt_property -net_type top route_type trunk_rule
set_ccopt_property primary_delay_corner max_delay
set_ccopt_property route_type_autotrim false
create_ccopt_clock_tree_spec -file ./ClockTreeSynthesis/_ccopt.spec
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
set_ccopt_property cts_is_sdc_clock_root -pin clk_pad true
create_ccopt_clock_tree -name clk -source clk_pad -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner max_delay -early -clock_tree clk 1.875
set_ccopt_property target_max_trans_sdc -delay_corner max_delay -late -clock_tree clk 3.000
set_ccopt_property source_latency -clock_tree clk 1.250
set_ccopt_property clock_period -pin clk_pad 15
set_ccopt_property timing_connectivity_info {}
create_ccopt_skew_group -name clk/all -sources clk_pad -auto_sinks
set_ccopt_property include_source_latency -skew_group clk/all true
set_ccopt_property extracted_from_clock_name -skew_group clk/all clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk/all all
set_ccopt_property extracted_from_delay_corners -skew_group clk/all {max_delay min_delay}
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ctd_win -id before_ccopt
set_ccopt_property -delay_corner max_delay -net_type top target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type top target_max_trans 2
set_ccopt_property -delay_corner max_delay -net_type trunk target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type trunk target_max_trans 2
set_ccopt_property -delay_corner max_delay -net_type leaf target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type leaf target_max_trans 2
set_ccopt_property -skew_group write_clk/all -delay_corner min_delay target_skew 0.5
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 500 -prefix single_port_ram_postCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 500 -prefix single_port_ram_postCTS -outDir timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
saveDesign ClockTreeSynthesis/single_port_ram_fp_power_placement_cts.enc
saveNetlist -includePowerGround ./ClockTreeSynthesis/fifo_postCTS_withPG.v
saveNetlist ./ClockTreeSynthesis/fifo_postCTS_withoutPG.v
saveDesign ./ClockTreeSynthesis/fifo_CTS.enc
