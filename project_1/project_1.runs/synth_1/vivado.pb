
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:062

00:00:062

1570.8522
5.9842
132342
36052Z17-722h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /run/media/user1/c2s/sriram/singlePortRAM/project_1/project_1.srcs/utils_1/imports/synth_1/single_port_ram.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2p
n/run/media/user1/c2s/sriram/singlePortRAM/project_1/project_1.srcs/utils_1/imports/synth_1/single_port_ram.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
n
Command: %s
53*	vivadotcl2=
;synth_design -top single_port_ram -part xck24-ubva530-2LV-cZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
x
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2
xck24Z17-347h px� 
h
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2
xck24Z17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
69442Z8-7075h px� 
�
%s*synth2�
�Starting Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1994.324 ; gain = 409.598 ; free physical = 12533 ; free virtual = 35351
h px� 
�
synthesizing module '%s'%s4497*oasys2
single_port_ram2
 2I
E/run/media/user1/c2s/sriram/singlePortRAM/project_1/single_port_ram.v2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
pc3c012
 2@
</run/media/user1/c2s/sriram/singlePortRAM/project_1/pc3c01.v2
378@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pc3c012
 2
02
12@
</run/media/user1/c2s/sriram/singlePortRAM/project_1/pc3c01.v2
378@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
pc3d012
 2@
</run/media/user1/c2s/sriram/singlePortRAM/project_1/pc3d01.v2
378@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pc3d012
 2
02
12@
</run/media/user1/c2s/sriram/singlePortRAM/project_1/pc3d01.v2
378@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
pc3b012
 2@
</run/media/user1/c2s/sriram/singlePortRAM/project_1/pc3b01.v2
378@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pc3b012
 2
02
12@
</run/media/user1/c2s/sriram/singlePortRAM/project_1/pc3b01.v2
378@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
ram_mod2
 2A
=/run/media/user1/c2s/sriram/singlePortRAM/project_1/ram_mod.v2
18@Z8-6157h px� 
L
%s
*synth24
2	Parameter ADDRWIDTH bound to: 4 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter DATAWIDTH bound to: 8 - type: integer 
h p
x
� 
H
%s
*synth20
.	Parameter SIZE bound to: 16 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
ram_mod2
 2
02
12A
=/run/media/user1/c2s/sriram/singlePortRAM/project_1/ram_mod.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
single_port_ram2
 2
02
12I
E/run/media/user1/c2s/sriram/singlePortRAM/project_1/single_port_ram.v2
18@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
o_data2
single_port_ram2I
E/run/media/user1/c2s/sriram/singlePortRAM/project_1/single_port_ram.v2
248@Z8-3848h px� 
�
%s*synth2�
�Finished Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2069.293 ; gain = 484.566 ; free physical = 12450 ; free virtual = 35268
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2087.105 ; gain = 502.379 ; free physical = 12442 ; free virtual = 35260
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
<
%s
*synth2$
"Loading part: xck24-ubva530-2LV-c
h p
x
� 
B
 Reading net delay rules and data4578*oasysZ8-6742h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
Loading part %s157*device2
xck24-ubva530-2LV-cZ21-403h px� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2104.016 ; gain = 519.289 ; free physical = 12436 ; free virtual = 35254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
~The RAM %s of size (depth=%s x width=%s) is automatically implemented using LUTRAM. BRAM implementation would be inefficient 
4755*oasys2
"ram_mod:/mem_reg"2
162
8Z8-6904h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2104.016 ; gain = 519.289 ; free physical = 12427 ; free virtual = 35246
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 1     
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
V
%s
*synth2>
<	              128 Bit	(16 X 8 bit)          RAMs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 360 (col length:72)
BRAMs: 432 (col length: RAMB18 72 RAMB36 36)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
~The RAM %s of size (depth=%s x width=%s) is automatically implemented using LUTRAM. BRAM implementation would be inefficient 
4755*oasys2!
"single_port_ram/ram_1/mem_reg"2
162
8Z8-6904h px� 
�
~The RAM %s of size (depth=%s x width=%s) is automatically implemented using LUTRAM. BRAM implementation would be inefficient 
4755*oasys2!
"single_port_ram/ram_1/mem_reg"2
162
8Z8-6904h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 2771.188 ; gain = 1186.461 ; free physical = 11774 ; free virtual = 34596
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2771.188 ; gain = 1186.461 ; free physical = 11774 ; free virtual = 34596
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2771.188 ; gain = 1186.461 ; free physical = 11774 ; free virtual = 34596
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
U
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_12
aZ8-3295h px� 
U
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_22
aZ8-3295h px� 
U
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_32
aZ8-3295h px� 
U
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_42
aZ8-3295h px� 
U
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_52
aZ8-3295h px� 
U
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_62
aZ8-3295h px� 
U
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_72
aZ8-3295h px� 
U
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_82
aZ8-3295h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 2771.188 ; gain = 1186.461 ; free physical = 11772 ; free virtual = 34593
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 2771.188 ; gain = 1186.461 ; free physical = 11772 ; free virtual = 34593
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 2771.188 ; gain = 1186.461 ; free physical = 11772 ; free virtual = 34593
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 2771.188 ; gain = 1186.461 ; free physical = 11772 ; free virtual = 34593
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 2771.188 ; gain = 1186.461 ; free physical = 11772 ; free virtual = 34593
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 2771.188 ; gain = 1186.461 ; free physical = 11772 ; free virtual = 34593
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
1
%s*synth2
+------+------+------+
h px� 
1
%s*synth2
|      |Cell  |Count |
h px� 
1
%s*synth2
+------+------+------+
h px� 
1
%s*synth2
|1     |LUT1  |     1|
h px� 
1
%s*synth2
|2     |IBUF  |     1|
h px� 
1
%s*synth2
|3     |OBUFT |     8|
h px� 
1
%s*synth2
+------+------+------+
h px� 
3
%s
*synth2

Report Instance Areas: 
h p
x
� 
<
%s
*synth2$
"+------+---------+-------+------+
h p
x
� 
<
%s
*synth2$
"|      |Instance |Module |Cells |
h p
x
� 
<
%s
*synth2$
"+------+---------+-------+------+
h p
x
� 
<
%s
*synth2$
"|1     |top      |       |    10|
h p
x
� 
<
%s
*synth2$
"+------+---------+-------+------+
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 2771.188 ; gain = 1186.461 ; free physical = 11772 ; free virtual = 34593
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 10 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 2771.188 ; gain = 1186.461 ; free physical = 11771 ; free virtual = 34593
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 2771.195 ; gain = 1186.461 ; free physical = 11771 ; free virtual = 34593
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2771.1952
0.0002
120502
34872Z17-722h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
1Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2771.1952
0.0002
120422
34864Z17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2[
Y  A total of 1 instances were transformed.
  IBUF => IBUF (IBUFCTRL, INBUF): 1 instance 
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

c469c010Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
302
102
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:182

00:00:162

2771.2232

1197.4022
120422
34864Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 2184.891; main = 1871.928; forked = 377.312Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 4384.590; main = 2771.191; forked = 1613.398Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2795.1992
0.0002
120432
34864Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2`
^/run/media/user1/c2s/sriram/singlePortRAM/project_1/project_1.runs/synth_1/single_port_ram.dcpZ17-1381h px� 
�
%s4*runtcl2v
tExecuting : report_utilization -file single_port_ram_utilization_synth.rpt -pb single_port_ram_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Jul 10 15:55:42 2024Z17-206h px� 


End Record