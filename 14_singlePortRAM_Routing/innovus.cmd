#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Jul 12 15:31:35 2024                
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
restoreDesign /run/media/user1/c2s/sriram/singlePortRAM/13_singlePortRAM_ClockTreeSynthesis/ClockTreeSynthesis/single_port_ram_fp_power_placement_cts.enc.dat single_port_ram
setDrawView fplan
encMessage warning 1
encMessage debug 0
setDrawView place
setNanoRouteMode -quiet -routeInsertAntennaDiode 1
setNanoRouteMode -quiet -routeAntennaCellName ADIODE
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeTopRoutingLayer 4
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
setAnalysisMode -analysisType onChipVariation
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 500 -prefix single_port_ram_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 500 -prefix single_port_ram_postRoute -outDir timingReports
saveDesign Routing/single_port_ram_detailedRoute.enc
getFillerMode -quiet
addFiller -cell feedth feedth3 feedth9 -prefix FILLER
saveDesign Routing/single_port_ram_Route.enc
saveNetlist -includePowerGround ./Routing/fifo_postRoute_withPG.v
saveNetlist ./Routing/fifo_postRoute_withoutPG.v
write_sdf -version 2.1 -edges noedge -recrem split -setuphold merge_when_paired ./Routing/fifo_postRoute_with_pad_delay.sdf
rcOut -spef ./Routing/fifo_postRoute.spef
