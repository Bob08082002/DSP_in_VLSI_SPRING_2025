
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:052

00:00:062	
514.5272	
197.148Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW2/VIVADO/DSP_in_VLSI_HW2_pipeline_v3/DSP_in_VLSI_HW2_pipeline_v3.srcs/utils_1/imports/synth_1/FIR.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW2/VIVADO/DSP_in_VLSI_HW2_pipeline_v3/DSP_in_VLSI_HW2_pipeline_v3.srcs/utils_1/imports/synth_1/FIR.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
_
Command: %s
53*	vivadotcl2.
,synth_design -top FIR -part xc7a200tfbg676-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a200tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a200tZ17-349h px� 
E
Loading part %s157*device2
xc7a200tfbg676-1Z21-403h px� 
[
$Part: %s does not have CEAM library.966*device2
xc7a200tfbg676-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
16004Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1426.918 ; gain = 454.383
h px� 
�
synthesizing module '%s'%s4497*oasys2
FIR2
 2F
BC:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW2/RTL/pipeline_FIR/FIR.v2
48@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
FIR_subblock2
 2F
BC:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW2/RTL/pipeline_FIR/FIR.v2
698@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FIR_subblock2
 2
02
12F
BC:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW2/RTL/pipeline_FIR/FIR.v2
698@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FIR2
 2
02
12F
BC:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW2/RTL/pipeline_FIR/FIR.v2
48@Z8-6155h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1537.809 ; gain = 565.273
h px� 
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1537.809 ; gain = 565.273
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
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1537.809 ; gain = 565.273
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0152

1537.8092
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2z
vC:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW2/VIVADO/DSP_in_VLSI_HW2_pipeline_v3/constraint/DSP_in_VLSI_HW2_pipeline.xdc8Z20-179h px� 
�
tSetting input delay on a clock pin '%s' relative to clock '%s' defined on the same pin is not supported, ignoring it1394*constraints2
clk2
clk2z
vC:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW2/VIVADO/DSP_in_VLSI_HW2_pipeline_v3/constraint/DSP_in_VLSI_HW2_pipeline.xdc2
28@Z18-6211h px�
�
Finished Parsing XDC File [%s]
178*designutils2z
vC:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW2/VIVADO/DSP_in_VLSI_HW2_pipeline_v3/constraint/DSP_in_VLSI_HW2_pipeline.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1634.8672
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0052

1634.8672
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1634.867 ; gain = 662.332
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
9
%s
*synth2!
Loading part: xc7a200tfbg676-1
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1634.867 ; gain = 662.332
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
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1634.867 ; gain = 662.332
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
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1634.867 ; gain = 662.332
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
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   20 Bit       Adders := 17    
h p
x
� 
F
%s
*synth2.
,	   2 Input   17 Bit       Adders := 17    
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
.	               16 Bit    Registers := 34    
h p
x
� 
H
%s
*synth20
.	               14 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 4     
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
,	   2 Input   16 Bit        Muxes := 68    
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
s
%s
*synth2[
YPart Resources:
DSPs: 740 (col length:100)
BRAMs: 730 (col length: RAMB18 100 RAMB36 50)
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
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP pipeline_register_1_reg, operation Mode is: (A*B)'.
h p
x
� 
u
%s
*synth2]
[DSP Report: register pipeline_register_1_reg is absorbed into DSP pipeline_register_1_reg.
h p
x
� 
b
%s
*synth2J
HDSP Report: operator prod is absorbed into DSP pipeline_register_1_reg.
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
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 1634.867 ; gain = 662.332
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
e
%s
*synth2M
K Sort Area is  pipeline_register_1_reg_0 : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
f
%s
*synth2N
L Sort Area is  pipeline_register_1_reg_10 : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
f
%s
*synth2N
L Sort Area is  pipeline_register_1_reg_11 : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
e
%s
*synth2M
K Sort Area is  pipeline_register_1_reg_2 : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
e
%s
*synth2M
K Sort Area is  pipeline_register_1_reg_3 : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
e
%s
*synth2M
K Sort Area is  pipeline_register_1_reg_4 : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
e
%s
*synth2M
K Sort Area is  pipeline_register_1_reg_5 : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
e
%s
*synth2M
K Sort Area is  pipeline_register_1_reg_6 : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
e
%s
*synth2M
K Sort Area is  pipeline_register_1_reg_7 : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
e
%s
*synth2M
K Sort Area is  pipeline_register_1_reg_8 : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
e
%s
*synth2M
K Sort Area is  pipeline_register_1_reg_9 : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
e
%s
*synth2M
K Sort Area is  pipeline_register_1_reg_a : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
e
%s
*synth2M
K Sort Area is  pipeline_register_1_reg_b : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
e
%s
*synth2M
K Sort Area is  pipeline_register_1_reg_c : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
e
%s
*synth2M
K Sort Area is  pipeline_register_1_reg_d : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
e
%s
*synth2M
K Sort Area is  pipeline_register_1_reg_e : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
e
%s
*synth2M
K Sort Area is  pipeline_register_1_reg_f : 0 0 : 1522 1522 : Used 1 time 0
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
v
%s*synth2^
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
h px� 
�
%s*synth2
}+-------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
~|Module Name  | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h px� 
�
%s*synth2
}+-------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~|FIR_subblock | (A*B)'      | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
~+-------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1634.867 ; gain = 662.332
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
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1634.867 ; gain = 662.332
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
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1634.867 ; gain = 662.332
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
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1634.867 ; gain = 662.332
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1634.867 ; gain = 662.332
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:21 ; elapsed = 00:00:21 . Memory (MB): peak = 1634.867 ; gain = 662.332
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:21 ; elapsed = 00:00:21 . Memory (MB): peak = 1634.867 ; gain = 662.332
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:21 ; elapsed = 00:00:21 . Memory (MB): peak = 1634.867 ; gain = 662.332
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:21 ; elapsed = 00:00:21 . Memory (MB): peak = 1634.867 ; gain = 662.332
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
W
%s
*synth2?
=
DSP Final Report (the ' indicates corresponding REG is set)
h p
x
� 
�
%s
*synth2
}+-------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2�
~|Module Name  | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h p
x
� 
�
%s
*synth2
}+-------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 6      | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 5      | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 18     | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 18     | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 18     | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 8      | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 10     | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 10     | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 11     | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 10     | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 10     | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 8      | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 18     | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 18     | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 18     | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 5      | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~|FIR_subblock | (A'*B)'     | 30     | 6      | -      | -      | 28     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
~+-------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

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
3
%s*synth2
+------+--------+------+
h px� 
3
%s*synth2
|      |Cell    |Count |
h px� 
3
%s*synth2
+------+--------+------+
h px� 
3
%s*synth2
|1     |BUFG    |     1|
h px� 
3
%s*synth2
|2     |CARRY4  |   233|
h px� 
3
%s*synth2
|3     |DSP48E1 |    17|
h px� 
3
%s*synth2
|4     |LUT1    |    67|
h px� 
3
%s*synth2
|5     |LUT2    |   477|
h px� 
3
%s*synth2
|6     |LUT3    |   544|
h px� 
3
%s*synth2
|7     |FDRE    |   548|
h px� 
3
%s*synth2
|8     |IBUF    |    17|
h px� 
3
%s*synth2
|9     |OBUF    |    17|
h px� 
3
%s*synth2
+------+--------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:21 ; elapsed = 00:00:21 . Memory (MB): peak = 1634.867 ; gain = 662.332
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:20 . Memory (MB): peak = 1634.867 ; gain = 565.273
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1634.867 ; gain = 662.332
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0162

1634.8672
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
250Z29-17h px� 
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
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1634.8672
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

ecd8496aZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
252
22
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:252

00:00:262

1634.8672

1115.535Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0052

1634.8672
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW2/VIVADO/DSP_in_VLSI_HW2_pipeline_v3/DSP_in_VLSI_HW2_pipeline_v3.runs/synth_1/FIR.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2Q
Oreport_utilization -file FIR_utilization_synth.rpt -pb FIR_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Mar 25 14:11:09 2025Z17-206h px� 


End Record