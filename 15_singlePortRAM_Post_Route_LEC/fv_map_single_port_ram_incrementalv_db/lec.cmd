REAd IMplementation Information fv/single_port_ram -golden fv_map -revised single_port_ram_incrementalv
SET PARAllel Option -threads 1,4 -norelease_license
SET COmpare Options -threads 1,4
SET MUltiplier Implementation boothrca -both
SET UNDEfined Cell black_box -noascend -both
ADD SEarch Path /run/media/user1/c2s/cadence/install/SCLPDK/scl_pdk/stdlib/fs120/liberty/lib_flow_ss\
   /run/media/user1/c2s/cadence/install/SCLPDK/scl_pdk/stdlib/fs120/liberty/lib_flow_ff\
   -library -both
REAd LIbrary -liberty -both /run/media/user1/c2s/cadence/install/SCLPDK/scl_pdk/stdlib/fs120/liberty/lib_flow_ss/tsl18fs120_scl_ss.lib\
   /run/media/user1/c2s/cadence/install/SCLPDK/scl_pdk/iolib/cio150/synopsys/2002.05/models/tsl18cio150_max.lib\
   /run/media/user1/c2s/cadence/install/SCLPDK/scl_pdk/stdlib/fs120/liberty/lib_flow_ss/tsl18fs120_scl_ss.lib\
   /run/media/user1/c2s/cadence/install/SCLPDK/scl_pdk/iolib/cio150/synopsys/2002.05/models/tsl18cio150_max.lib
REAd DEsign -verilog95 -golden -lastmod -noelab ./single_port_ram_incremental.v
ELAborate DEsign -golden -root single_port_ram
REAd DEsign -verilog95 -revised -lastmod -noelab ./ram_postRoute_withoutPG.v
ELAborate DEsign -revised -root single_port_ram
REPort DEsign Data
REPort BLack Box
SET FLatten Model -seq_constant
SET FLatten Model -seq_constant_x_to 0
SET FLatten Model -nodff_to_dlat_zero
SET FLatten Model -nodff_to_dlat_feedback
SET FLatten Model -hier_seq_merge
CHEck VErification Information
SET ANalyze Option -auto -report_map
SET SYstem Mode lec
REPort UNmapped Points -summary
REPort UNmapped Points -notmapped
ADD COmpared Points -all
COMpare
REPort COmpare Data -class nonequivalent -class abort -class notcompared
REPort VErification -verbose
REPort STatistics
WRIte COmpared Points noneq.compared_points.single_port_ram.fv_map.single_port_ram_incrementalv.tcl -class\
   noneq -tclmode -replace
ANAlyze NOnequivalent -source_diagnosis
REPort NOnequivalent Analysis
REPort TEst Vector -noneq
WRIte VErification Information
REPort VErification Information
REPort IMplementation Information
ANAlyze RESults -logfiles output_files/intermediate2final.lec.log
