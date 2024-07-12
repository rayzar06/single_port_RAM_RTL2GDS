###############  SDC CONSTRAINTS   ############


##### PARAMETERS #####
set_units -time 1.0ns;
set_units -capacitance  1.0pF;

set WRITE_CLOCK_PERIOD 15;
set WRITE_CLOCK_NAME   clk;

set WRITE_SKEW_setup  [expr $WRITE_CLOCK_PERIOD*0.025];
set WRITE_SKEW_hold   [expr $WRITE_CLOCK_PERIOD*0.025];
set WRITE_MINRISE     [expr $WRITE_CLOCK_PERIOD*0.125];
set WRITE_MAXRISE     [expr $WRITE_CLOCK_PERIOD*0.2];
set WRITE_MINFALL     [expr $WRITE_CLOCK_PERIOD*0.125];
set WRITE_MAXFALL     [expr $WRITE_CLOCK_PERIOD*0.2];

set MIN_PORT 1;
set MAX_PORT 2.5;


####### CLOCK CONSTRAINTS #########

create_clock -name "$WRITE_CLOCK_NAME"			\
	     -period "$WRITE_CLOCK_PERIOD" 		\
	     -waveform "0 [expr $WRITE_CLOCK_PERIOD/2]"  \
	      [get_ports "clk_pad"]


## Virtual Clock Constraints 

create_clock   -name   wr_vir_clk_i   -period   15


##  Write clock source latency
set_clock_latency   -source   -max   1.25   -late    [get_clocks  clk]
set_clock_latency   -source   -min   0.75   -late    [get_clocks  clk]
set_clock_latency   -source   -max   1.0    -early   [get_clocks  clk]
set_clock_latency   -source   -min   1.25   -early   [get_clocks  clk]


# Write clock transition
set_clock_transition   -rise   -min   $WRITE_MINRISE   [get_clocks  clk]
set_clock_transition   -rise   -max   $WRITE_MAXRISE   [get_clocks  clk]
set_clock_transition   -fall   -min   $WRITE_MINRISE   [get_clocks  clk]
set_clock_transition   -fall   -max   $WRITE_MAXRISE   [get_clocks  clk]

# Input transition  
set_input_transition	-max	$MAX_PORT 	[get_ports	cspad]
set_input_transition	-max	$MAX_PORT 	[get_ports	wepad]

set_input_transition	-min	$MIN_PORT 	[get_ports	cspad]
set_input_transition	-min	$MIN_PORT 	[get_ports	wepad]


set_input_transition	-max	$MAX_PORT 	[get_ports	addr_pad[3]]
set_input_transition	-max	$MAX_PORT 	[get_ports	addr_pad[2]]
set_input_transition	-max	$MAX_PORT 	[get_ports	addr_pad[1]]
set_input_transition	-max	$MAX_PORT 	[get_ports	addr_pad[0]]

set_input_transition	-min	$MIN_PORT 	[get_ports	addr_pad[3]]
set_input_transition	-min	$MIN_PORT 	[get_ports	addr_pad[2]]
set_input_transition	-min	$MIN_PORT 	[get_ports	addr_pad[1]]
set_input_transition	-min	$MIN_PORT 	[get_ports	addr_pad[0]] 


set_input_transition	-max	$MAX_PORT 	[get_ports	data_pad[7]]
set_input_transition	-max	$MAX_PORT 	[get_ports	data_pad[6]]
set_input_transition	-max	$MAX_PORT 	[get_ports	data_pad[5]]
set_input_transition	-max	$MAX_PORT 	[get_ports	data_pad[4]]
set_input_transition	-max	$MAX_PORT 	[get_ports	data_pad[3]]
set_input_transition	-max	$MAX_PORT 	[get_ports	data_pad[2]]
set_input_transition	-max	$MAX_PORT 	[get_ports	data_pad[1]]
set_input_transition	-max	$MAX_PORT 	[get_ports	data_pad[0]]

set_input_transition	-min	$MIN_PORT 	[get_ports	data_pad[7]]
set_input_transition	-min	$MIN_PORT 	[get_ports	data_pad[6]]
set_input_transition	-min	$MIN_PORT 	[get_ports	data_pad[5]]
set_input_transition	-min	$MIN_PORT 	[get_ports	data_pad[4]] 
set_input_transition	-min	$MIN_PORT 	[get_ports	data_pad[3]]
set_input_transition	-min	$MIN_PORT 	[get_ports	data_pad[2]]
set_input_transition	-min	$MIN_PORT 	[get_ports	data_pad[1]]
set_input_transition	-min	$MIN_PORT 	[get_ports	data_pad[0]] 

# Write clock uncertainty
set_clock_uncertainty -setup $WRITE_SKEW_setup  [get_clocks  clk]
set_clock_uncertainty -hold  $WRITE_SKEW_hold   [get_clocks  clk]


# input port delay

set_input_delay  -add_delay -clock wr_vir_clk_i -max 7.75 [get_ports cspad] 
set_input_delay  -add_delay -clock wr_vir_clk_i -min 2.25 [get_ports cspad] 

set_input_delay  -add_delay -clock wr_vir_clk_i -max 7.75 [get_ports wepad] 
set_input_delay  -add_delay -clock wr_vir_clk_i -min 2.25 [get_ports wepad] 

set_input_delay  -add_delay -clock wr_vir_clk_i -max 7.75 [get_ports addr_pad[3]]
set_input_delay  -add_delay -clock wr_vir_clk_i -max 7.75 [get_ports addr_pad[2]]
set_input_delay  -add_delay -clock wr_vir_clk_i -max 7.75 [get_ports addr_pad[1]]
set_input_delay  -add_delay -clock wr_vir_clk_i -max 7.75 [get_ports addr_pad[0]]

set_input_delay  -add_delay -clock wr_vir_clk_i -min 2.25 [get_ports addr_pad[3]]
set_input_delay  -add_delay -clock wr_vir_clk_i -min 2.25 [get_ports addr_pad[2]]
set_input_delay  -add_delay -clock wr_vir_clk_i -min 2.25 [get_ports addr_pad[1]]
set_input_delay  -add_delay -clock wr_vir_clk_i -min 2.25 [get_ports addr_pad[0]]

set_input_delay  -add_delay -clock wr_vir_clk_i -max 7.75 [get_ports data_pad[7]]
set_input_delay  -add_delay -clock wr_vir_clk_i -max 7.75 [get_ports data_pad[6]]
set_input_delay  -add_delay -clock wr_vir_clk_i -max 7.75 [get_ports data_pad[5]]
set_input_delay  -add_delay -clock wr_vir_clk_i -max 7.75 [get_ports data_pad[4]]
set_input_delay  -add_delay -clock wr_vir_clk_i -max 7.75 [get_ports data_pad[3]]
set_input_delay  -add_delay -clock wr_vir_clk_i -max 7.75 [get_ports data_pad[2]]
set_input_delay  -add_delay -clock wr_vir_clk_i -max 7.75 [get_ports data_pad[1]]
set_input_delay  -add_delay -clock wr_vir_clk_i -max 7.75 [get_ports data_pad[0]]

set_input_delay  -add_delay -clock wr_vir_clk_i -min 2.25 [get_ports data_pad[7]]
set_input_delay  -add_delay -clock wr_vir_clk_i -min 2.25 [get_ports data_pad[6]]
set_input_delay  -add_delay -clock wr_vir_clk_i -min 2.25 [get_ports data_pad[5]]
set_input_delay  -add_delay -clock wr_vir_clk_i -min 2.25 [get_ports data_pad[4]]
set_input_delay  -add_delay -clock wr_vir_clk_i -min 2.25 [get_ports data_pad[3]]
set_input_delay  -add_delay -clock wr_vir_clk_i -min 2.25 [get_ports data_pad[2]]
set_input_delay  -add_delay -clock wr_vir_clk_i -min 2.25 [get_ports data_pad[1]]
set_input_delay  -add_delay -clock wr_vir_clk_i -min 2.25 [get_ports data_pad[0]]

#Output port delay
set_output_delay -clock wr_vir_clk_i -max 3.931 [get_ports data_pad[7]] -add_delay
set_output_delay -clock wr_vir_clk_i -max 3.931 [get_ports data_pad[6]] -add_delay
set_output_delay -clock wr_vir_clk_i -max 3.931 [get_ports data_pad[5]] -add_delay
set_output_delay -clock wr_vir_clk_i -max 3.931 [get_ports data_pad[4]] -add_delay
set_output_delay -clock wr_vir_clk_i -max 3.931 [get_ports data_pad[3]] -add_delay
set_output_delay -clock wr_vir_clk_i -max 3.931 [get_ports data_pad[2]] -add_delay
set_output_delay -clock wr_vir_clk_i -max 3.931 [get_ports data_pad[1]] -add_delay
set_output_delay -clock wr_vir_clk_i -max 3.931 [get_ports data_pad[0]] -add_delay

set_output_delay -clock wr_vir_clk_i -min 2.628 [get_ports data_pad[7]] -add_delay
set_output_delay -clock wr_vir_clk_i -min 2.628 [get_ports data_pad[6]] -add_delay
set_output_delay -clock wr_vir_clk_i -min 2.628 [get_ports data_pad[5]] -add_delay
set_output_delay -clock wr_vir_clk_i -min 2.628 [get_ports data_pad[4]] -add_delay
set_output_delay -clock wr_vir_clk_i -min 2.628 [get_ports data_pad[3]] -add_delay
set_output_delay -clock wr_vir_clk_i -min 2.628 [get_ports data_pad[2]] -add_delay
set_output_delay -clock wr_vir_clk_i -min 2.628 [get_ports data_pad[1]] -add_delay
set_output_delay -clock wr_vir_clk_i -min 2.628 [get_ports data_pad[0]] -add_delay


#######   LOAD SPECIFIACATIONS   ########

set_load	5	[get_ports	data_pad[7]]
set_load	5	[get_ports	data_pad[6]]
set_load	5	[get_ports	data_pad[5]]
set_load	5	[get_ports	data_pad[4]]
set_load	5	[get_ports	data_pad[3]]
set_load	5	[get_ports	data_pad[2]]
set_load	5	[get_ports	data_pad[1]]
set_load	5	[get_ports	data_pad[0]]


########## FALSE PATHS ###########

set_false_path  -from   [get_ports wepad]         -to     [all_registers] 
set_false_path  -from   [get_ports oepad]         -to     [all_registers]
set_false_path  -from   [get_ports cspad]         -to     [all_registers]

##########  GROUP PATHS  #########

group_path -name   I2R   -from   [all_inputs]      -to   [all_registers]
group_path -name   R2O   -from   [all_registers]   -to   [all_outputs]
group_path -name   R2R   -from   [all_registers]   -to   [all_registers]
group_path -name   I2O   -from   [all_inputs]      -to   [all_outputs]
