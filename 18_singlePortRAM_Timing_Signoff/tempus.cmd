#######################################################
#                                                     
#  Tempus Timing Signoff Solution Command Logging File                     
#  Created on Fri Jul 12 16:14:39 2024                
#                                                     
#######################################################

#@(#)CDS: Tempus Timing Signoff Solution v21.17-s077_1 (64bit) 03/30/2023 16:48 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.17-s077_1 NR230308-2354/21_17-UB (database version 18.20.604) {superthreading v2.17}
#@(#)CDS: AAE 21.17-s026 (64bit) 03/30/2023 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.17-s027_1 () Mar 30 2023 10:41:30 ( )
#@(#)CDS: SYNTECH 21.17-s007_1 () Feb 20 2023 06:56:35 ( )
#@(#)CDS: CPE v21.17-s070

set_design_mode -process 180
set_table_style -no_frame_fix_width -nosplit
read_lib -min {/run/media/user1/c2s/sriram/SCLPDK/scl_pdk/stdlib/fs120/liberty/lib_flow_ff/tsl18fs120_scl_ff.lib  /run/media/user1/c2s/sriram/SCLPDK/scl_pdk/iolib/cio150/synopsys/2002.05/models/tsl18cio150_min.lib} -max {/run/media/user1/c2s/sriram/SCLPDK/scl_pdk/stdlib/fs120/liberty/lib_flow_ss/tsl18fs120_scl_ss.lib  /run/media/user1/c2s/sriram/SCLPDK/scl_pdk/iolib/cio150/synopsys/2002.05/models/tsl18cio150_max.lib }
read_lib -lef {/run/media/user1/c2s/sriram/SCLPDK/scl_pdk/stdlib/fs120/tech_data/lef/tsl180l4.lef  /run/media/user1/c2s/sriram/SCLPDK/scl_pdk/stdlib/fs120/lef/tsl18fs120_scl.lef  /run/media/user1/c2s/sriram/SCLPDK/scl_pdk/iolib/cio150/cds/lef/tsl18cio150_4lm.lef }
read_verilog /run/media/user1/c2s/sriram/singlePortRAM/17_singlePortRAM_PhysicalDesign_Signoff/Signoff/ram_signoff_withPG.v
set_top_module single_port_ram
read_sdc /run/media/user1/c2s/sriram/singlePortRAM/17_singlePortRAM_PhysicalDesign_Signoff/Signoff/ram_signoff.sdc
read_spef /run/media/user1/c2s/sriram/singlePortRAM/17_singlePortRAM_PhysicalDesign_Signoff/single_port_ram_signoff.spef
set_analysis_mode -analysisType onChipVariation
set_analysis_mode -cppr true
set_delay_cal_mode -siAware true
set_si_mode -enable_delay_report true
set_si_mode -enable_glitch_report true
set_si_mode -enable_glitch_propagation true
update_timing -full
report_timing
report_timing -late
report_timing -early
write_sdf -version 2.1 -edges noedge -recrem split -setuphold merge_when_paired -recompute_parallel_arcs  fifo_postTiming.sdf
check_design -type timing -out_file reports/check_design.rpt
check_timing -verbose > ${reportDir}/check_timing.rpt
report_annotated_parasitics > reports/annotated.rpt
report_analysis_coverage            > ${reportDir}/coverage.rpt
report_clocks                       > ${reportDir}/clocks.rpt
report_case_analysis                > ${reportDir}/case_analysis.rpt
report_inactive_arcs                > ${reportDir}/inactive_arcs.rpt
report_constraint -all_violators > reports/allviol.rpt
report_analysis_summary                                         > ${reportDir}/analysis_summary.rpt
report_timing -path_type summary_slack_only -late -max_paths 5  > ${reportDir}/start_end_slack.rpt
report_timing -late   -max_paths 50 -nworst 1 -path_group clk  > ${reportDir}/sck_setup.rpt
report_timing -early   -max_paths 50 -nworst 1 -path_group lk  > ${reportDir}/sck_HOLD.rpt
report_timing -late   -max_paths 50 -nworst 1 -path_type full_clock -net  > ${reportDir}/worst_max_path.rpt
report_timing -early  -max_paths 50 -nworst 1 -path_type full_clock -net  > ${reportDir}/worst_min_path.rpt
report_timing -path_type end_slack_only                       > ${reportDir}/setup_1.rpt
report_timing -path_type end_slack_only  -early               > ${reportDir}/hold_1.rpt
report_timing -late    -max_paths 100                         > ${reportDir}/setup_100.rpt
report_timing -early   -max_paths 100                         > ${reportDir}/hold_100.rpt
report_timing -retime path_slew_propagation -max_paths 50 -nworst 1 -path_type full_clock    > ${reportDir}/pba_50_paths.rpt
exit
