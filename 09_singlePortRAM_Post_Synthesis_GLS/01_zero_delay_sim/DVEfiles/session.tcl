# Begin_DVE_Session_Save_Info
# DVE full session
# Saved on Fri Jul 12 12:33:00 2024
# Designs open: 1
#   Sim: /run/media/user1/c2s/sriram/singlePortRAM/09_singlePortRAM_Post_Synthesis_GLS/01_zero_delay_sim/test
# Toplevel windows open: 1
# 	TopLevel.1
#   Source.1: ram_tb_with_pad.dut.ram_1
#   Group count = 2
#   Group ram_tb_with_pad signal count = 9
#   Group Group1 signal count = 18
# End_DVE_Session_Save_Info

# DVE version: T-2022.06-SP2-5_Full64
# DVE build date: Jul 21 2023 20:53:12


#<Session mode="Full" path="/run/media/user1/c2s/sriram/singlePortRAM/09_singlePortRAM_Post_Synthesis_GLS/01_zero_delay_sim/DVEfiles/session.tcl" type="Debug">

gui_set_loading_session_type Post
gui_continuetime_set

# Close design
if { [gui_sim_state -check active] } {
    gui_sim_terminate
}
gui_close_db -all
gui_expr_clear_all

# Close all windows
gui_close_window -type Console
gui_close_window -type Wave
gui_close_window -type Source
gui_close_window -type Schematic
gui_close_window -type Data
gui_close_window -type DriverLoad
gui_close_window -type List
gui_close_window -type Memory
gui_close_window -type HSPane
gui_close_window -type DLPane
gui_close_window -type Assertion
gui_close_window -type CovHier
gui_close_window -type CoverageTable
gui_close_window -type CoverageMap
gui_close_window -type CovDetail
gui_close_window -type Local
gui_close_window -type Stack
gui_close_window -type Watch
gui_close_window -type Group
gui_close_window -type Transaction



# Application preferences
gui_set_pref_value -key app_default_font -value {Helvetica,10,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 8 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: TopLevel.1

if {![gui_exist_window -window TopLevel.1]} {
    set TopLevel.1 [ gui_create_window -type TopLevel \
       -icon $::env(DVE)/auxx/gui/images/toolbars/dvewin.xpm] 
} else { 
    set TopLevel.1 TopLevel.1
}
gui_show_window -window ${TopLevel.1} -show_state normal -rect {{0 37} {1666 940}}

# ToolBar settings
gui_set_toolbar_attributes -toolbar {TimeOperations} -dock_state top
gui_set_toolbar_attributes -toolbar {TimeOperations} -offset 0
gui_show_toolbar -toolbar {TimeOperations}
gui_set_toolbar_attributes -toolbar {&File} -dock_state top
gui_set_toolbar_attributes -toolbar {&File} -offset 0
gui_show_toolbar -toolbar {&File}
gui_set_toolbar_attributes -toolbar {&Edit} -dock_state top
gui_set_toolbar_attributes -toolbar {&Edit} -offset 0
gui_show_toolbar -toolbar {&Edit}
gui_hide_toolbar -toolbar {CopyPaste}
gui_set_toolbar_attributes -toolbar {&Trace} -dock_state top
gui_set_toolbar_attributes -toolbar {&Trace} -offset 0
gui_show_toolbar -toolbar {&Trace}
gui_hide_toolbar -toolbar {TraceInstance}
gui_set_toolbar_attributes -toolbar {BackTrace} -dock_state top
gui_set_toolbar_attributes -toolbar {BackTrace} -offset 0
gui_show_toolbar -toolbar {BackTrace}
gui_set_toolbar_attributes -toolbar {&Scope} -dock_state top
gui_set_toolbar_attributes -toolbar {&Scope} -offset 0
gui_show_toolbar -toolbar {&Scope}
gui_set_toolbar_attributes -toolbar {&Window} -dock_state top
gui_set_toolbar_attributes -toolbar {&Window} -offset 0
gui_show_toolbar -toolbar {&Window}
gui_set_toolbar_attributes -toolbar {Signal} -dock_state top
gui_set_toolbar_attributes -toolbar {Signal} -offset 0
gui_show_toolbar -toolbar {Signal}
gui_set_toolbar_attributes -toolbar {Zoom} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom} -offset 0
gui_show_toolbar -toolbar {Zoom}
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -offset 0
gui_show_toolbar -toolbar {Zoom And Pan History}
gui_set_toolbar_attributes -toolbar {Grid} -dock_state top
gui_set_toolbar_attributes -toolbar {Grid} -offset 0
gui_show_toolbar -toolbar {Grid}
gui_set_toolbar_attributes -toolbar {Simulator} -dock_state top
gui_set_toolbar_attributes -toolbar {Simulator} -offset 0
gui_show_toolbar -toolbar {Simulator}
gui_set_toolbar_attributes -toolbar {Interactive Rewind} -dock_state top
gui_set_toolbar_attributes -toolbar {Interactive Rewind} -offset 0
gui_show_toolbar -toolbar {Interactive Rewind}
gui_set_toolbar_attributes -toolbar {Testbench} -dock_state top
gui_set_toolbar_attributes -toolbar {Testbench} -offset 0
gui_show_toolbar -toolbar {Testbench}

# End ToolBar settings

# Docked window settings
set HSPane.1 [gui_create_window -type HSPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 210]
catch { set Hier.1 [gui_share_window -id ${HSPane.1} -type Hier] }
gui_set_window_pref_key -window ${HSPane.1} -key dock_width -value_type integer -value 210
gui_set_window_pref_key -window ${HSPane.1} -key dock_height -value_type integer -value -1
gui_set_window_pref_key -window ${HSPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${HSPane.1} {{left 0} {top 0} {width 209} {height 647} {dock_state left} {dock_on_new_line true} {child_hier_colhier 256} {child_hier_coltype 54} {child_hier_colpd 0} {child_hier_col1 0} {child_hier_col2 1} {child_hier_col3 -1}}
set DLPane.1 [gui_create_window -type DLPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 277]
catch { set Data.1 [gui_share_window -id ${DLPane.1} -type Data] }
gui_set_window_pref_key -window ${DLPane.1} -key dock_width -value_type integer -value 277
gui_set_window_pref_key -window ${DLPane.1} -key dock_height -value_type integer -value 758
gui_set_window_pref_key -window ${DLPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${DLPane.1} {{left 0} {top 0} {width 276} {height 647} {dock_state left} {dock_on_new_line true} {child_data_colvariable 140} {child_data_colvalue 24} {child_data_coltype 105} {child_data_col1 0} {child_data_col2 1} {child_data_col3 2}}
set Console.1 [gui_create_window -type Console -parent ${TopLevel.1} -dock_state bottom -dock_on_new_line true -dock_extent 143]
gui_set_window_pref_key -window ${Console.1} -key dock_width -value_type integer -value 1860
gui_set_window_pref_key -window ${Console.1} -key dock_height -value_type integer -value 143
gui_set_window_pref_key -window ${Console.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${Console.1} {{left 0} {top 0} {width 1666} {height 142} {dock_state bottom} {dock_on_new_line true}}
#### Start - Readjusting docked view's offset / size
set dockAreaList { top left right bottom }
foreach dockArea $dockAreaList {
  set viewList [gui_ekki_get_window_ids -active_parent -dock_area $dockArea]
  foreach view $viewList {
      if {[lsearch -exact [gui_get_window_pref_keys -window $view] dock_width] != -1} {
        set dockWidth [gui_get_window_pref_value -window $view -key dock_width]
        set dockHeight [gui_get_window_pref_value -window $view -key dock_height]
        set offset [gui_get_window_pref_value -window $view -key dock_offset]
        if { [string equal "top" $dockArea] || [string equal "bottom" $dockArea]} {
          gui_set_window_attributes -window $view -dock_offset $offset -width $dockWidth
        } else {
          gui_set_window_attributes -window $view -dock_offset $offset -height $dockHeight
        }
      }
  }
}
#### End - Readjusting docked view's offset / size
gui_sync_global -id ${TopLevel.1} -option true

# MDI window settings
set Source.1 [gui_create_window -type {Source}  -parent ${TopLevel.1}]
gui_show_window -window ${Source.1} -show_state maximized
gui_update_layout -id ${Source.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}

# End MDI window settings

gui_set_env TOPLEVELS::TARGET_FRAME(Source) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Schematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(PathSchematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Wave) none
gui_set_env TOPLEVELS::TARGET_FRAME(List) none
gui_set_env TOPLEVELS::TARGET_FRAME(Memory) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(DriverLoad) none
gui_update_statusbar_target_frame ${TopLevel.1}

#</WindowLayout>

#<Database>

# DVE Open design session: 

if { [llength [lindex [gui_get_db -design Sim] 0]] == 0 } {
gui_set_env SIMSETUP::SIMARGS {{}}
gui_set_env SIMSETUP::SIMEXE {./test}
gui_set_env SIMSETUP::ALLOW_POLL {0}
if { ![gui_is_db_opened -db {/run/media/user1/c2s/sriram/singlePortRAM/09_singlePortRAM_Post_Synthesis_GLS/01_zero_delay_sim/test}] } {
gui_sim_run Ucli -exe test -args { -ucligui} -dir /run/media/user1/c2s/sriram/singlePortRAM/09_singlePortRAM_Post_Synthesis_GLS/01_zero_delay_sim -nosource
}
}
if { ![gui_sim_state -check active] } {error "Simulator did not start correctly" error}
gui_set_precision 1ps
gui_set_time_units 1ps
#</Database>

# DVE Global setting session: 


# Global: Breakpoints

# Global: Bus

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups


set _session_group_1 ram_tb_with_pad
gui_sg_create "$_session_group_1"
set ram_tb_with_pad "$_session_group_1"

gui_sg_addsignal -group "$_session_group_1" { ram_tb_with_pad.we ram_tb_with_pad.DATAWIDTH ram_tb_with_pad.data ram_tb_with_pad.tb_data ram_tb_with_pad.SIZE ram_tb_with_pad.addr ram_tb_with_pad.clk ram_tb_with_pad.cs ram_tb_with_pad.ADDRWIDTH }
gui_set_radix -radix {decimal} -signals {Sim:ram_tb_with_pad.DATAWIDTH}
gui_set_radix -radix {twosComplement} -signals {Sim:ram_tb_with_pad.DATAWIDTH}
gui_set_radix -radix {decimal} -signals {Sim:ram_tb_with_pad.SIZE}
gui_set_radix -radix {twosComplement} -signals {Sim:ram_tb_with_pad.SIZE}
gui_set_radix -radix {decimal} -signals {Sim:ram_tb_with_pad.ADDRWIDTH}
gui_set_radix -radix {twosComplement} -signals {Sim:ram_tb_with_pad.ADDRWIDTH}

set _session_group_2 Group1
gui_sg_create "$_session_group_2"
set Group1 "$_session_group_2"

gui_sg_addsignal -group "$_session_group_2" { ram_tb_with_pad.dut.ram_1.data ram_tb_with_pad.dut.ram_1.dataOut {ram_tb_with_pad.dut.ram_1.\mem[0] } {ram_tb_with_pad.dut.ram_1.\mem[1] } {ram_tb_with_pad.dut.ram_1.\mem[2] } {ram_tb_with_pad.dut.ram_1.\mem[3] } {ram_tb_with_pad.dut.ram_1.\mem[4] } {ram_tb_with_pad.dut.ram_1.\mem[5] } {ram_tb_with_pad.dut.ram_1.\mem[6] } {ram_tb_with_pad.dut.ram_1.\mem[7] } {ram_tb_with_pad.dut.ram_1.\mem[8] } {ram_tb_with_pad.dut.ram_1.\mem[9] } {ram_tb_with_pad.dut.ram_1.\mem[10] } {ram_tb_with_pad.dut.ram_1.\mem[11] } {ram_tb_with_pad.dut.ram_1.\mem[12] } {ram_tb_with_pad.dut.ram_1.\mem[13] } {ram_tb_with_pad.dut.ram_1.\mem[14] } {ram_tb_with_pad.dut.ram_1.\mem[15] } }

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 22000



# Save global setting...

# Wave/List view global setting
gui_list_create_group_when_add -wave -enable
gui_cov_show_value -switch false

# Close all empty TopLevel windows
foreach __top [gui_ekki_get_window_ids -type TopLevel] {
    if { [llength [gui_ekki_get_window_ids -parent $__top]] == 0} {
        gui_close_window -window $__top
    }
}
gui_set_loading_session_type noSession
# DVE View/pane content session: 


# Hier 'Hier.1'
gui_show_window -window ${Hier.1}
gui_list_set_filter -id ${Hier.1} -list { {Package 1} {All 0} {Process 1} {VirtPowSwitch 0} {UnnamedProcess 1} {UDP 0} {Function 1} {Block 1} {SrsnAndSpaCell 0} {OVA Unit 1} {LeafScCell 1} {LeafVlgCell 1} {Interface 1} {LeafVhdCell 1} {$unit 1} {NamedBlock 1} {Task 1} {VlgPackage 1} {ClassDef 1} {VirtIsoCell 0} }
gui_list_set_filter -id ${Hier.1} -text {*}
gui_hier_list_init -id ${Hier.1}
gui_change_design -id ${Hier.1} -design Sim
catch {gui_list_expand -id ${Hier.1} ram_tb_with_pad}
catch {gui_list_expand -id ${Hier.1} ram_tb_with_pad.dut}
catch {gui_list_select -id ${Hier.1} {ram_tb_with_pad.dut.ram_1}}
gui_view_scroll -id ${Hier.1} -vertical -set 2508
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Data 'Data.1'
gui_list_set_filter -id ${Data.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {LowPower 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Data.1} -text {*}
gui_list_show_data -id ${Data.1} {ram_tb_with_pad.dut.ram_1}
gui_show_window -window ${Data.1}
catch { gui_list_select -id ${Data.1} {ram_tb_with_pad.dut.ram_1.data ram_tb_with_pad.dut.ram_1.dataOut {ram_tb_with_pad.dut.ram_1.\mem[0] } {ram_tb_with_pad.dut.ram_1.\mem[1] } {ram_tb_with_pad.dut.ram_1.\mem[2] } {ram_tb_with_pad.dut.ram_1.\mem[3] } {ram_tb_with_pad.dut.ram_1.\mem[4] } {ram_tb_with_pad.dut.ram_1.\mem[5] } {ram_tb_with_pad.dut.ram_1.\mem[6] } {ram_tb_with_pad.dut.ram_1.\mem[7] } {ram_tb_with_pad.dut.ram_1.\mem[8] } {ram_tb_with_pad.dut.ram_1.\mem[9] } {ram_tb_with_pad.dut.ram_1.\mem[10] } {ram_tb_with_pad.dut.ram_1.\mem[11] } {ram_tb_with_pad.dut.ram_1.\mem[12] } {ram_tb_with_pad.dut.ram_1.\mem[13] } {ram_tb_with_pad.dut.ram_1.\mem[14] } {ram_tb_with_pad.dut.ram_1.\mem[15] } }}
gui_view_scroll -id ${Data.1} -vertical -set 0
gui_view_scroll -id ${Data.1} -horizontal -set 0
gui_view_scroll -id ${Hier.1} -vertical -set 2508
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Source 'Source.1'
gui_src_value_annotate -id ${Source.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_open_source -id ${Source.1}  -replace -active ram_tb_with_pad.dut.ram_1 /run/media/user1/c2s/sriram/singlePortRAM/09_singlePortRAM_Post_Synthesis_GLS/01_zero_delay_sim/single_port_ram_incremental.v
gui_view_scroll -id ${Source.1} -vertical -set 180
gui_src_set_reusable -id ${Source.1}
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Source.1}
}
#</Session>

