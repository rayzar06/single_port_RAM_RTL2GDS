#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Jul 12 15:55:36 2024                
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
zoomBox -0.04200 -0.01800 0.14000 0.14500
encMessage warning 0
encMessage debug 0
is_common_ui_mode
restoreDesign /run/media/user1/c2s/sriram/singlePortRAM/14_singlePortRAM_Routing/Routing/single_port_ram_Route.enc.dat single_port_ram
setDrawView fplan
encMessage warning 1
encMessage debug 0
setDrawView place
reset_parasitics
extractRC
rcOut -spef single_port_ram_signoff.spef -rc_corner rc_best
verifyConnectivity -type all -error 1000 -warning 50
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report single_port_ram.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
saveNetlist -includePowerGround ./Signoff/ram_signoff_withPG.v
saveNetlist ./Signoff/ram_signoff_withPG.v
checkDesign -io -netlist -physicalLibrary -powerGround -tieHilo -timingLibrary -spef -floorplan -place -outdir checkDesign
saveDesign Signoff/single_port_ram_signoff.enc
streamOut single_port_ram.gds -mapFile ../../SCLPDK/scl_pdk/stdlib/fs120/tech_data/lef/gds2_fe_4l.map -libName DesignLib -units 1000 -mode ALL
