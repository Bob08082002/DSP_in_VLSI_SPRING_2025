
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:052

00:00:062	
514.1762	
199.316Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/VIVADO/DSP_in_VLSI_FINAL_v3/DSP_in_VLSI_FINAL_v3.srcs/utils_1/imports/synth_1/top.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/VIVADO/DSP_in_VLSI_FINAL_v3/DSP_in_VLSI_FINAL_v3.srcs/utils_1/imports/synth_1/top.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
_
Command: %s
53*	vivadotcl2.
,synth_design -top top -part xc7a200tfbg676-1Z4-113h px� 
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
23760Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 1427.512 ; gain = 452.840
h px� 
�
synthesizing module '%s'%s4497*oasys2
top2
 2;
7C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/top.v2
28@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
CORDIC_ARRAY2
 2D
@C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/CORDIC_ARRAY.v2
28@Z8-6157h px� 
H
%s
*synth20
.	Parameter C_IWL bound to: 5 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter C_FWL bound to: 15 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
DU_02
 2:
6C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/DU.v2
38@Z8-6157h px� 
H
%s
*synth20
.	Parameter C_IWL bound to: 5 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter C_FWL bound to: 15 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DU_02
 2
02
12:
6C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/DU.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
CORDIC2
 2>
:C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/CORDIC.v2
38@Z8-6157h px� 
H
%s
*synth20
.	Parameter C_IWL bound to: 5 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter C_FWL bound to: 15 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
single_stage2
 2>
:C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/CORDIC.v2
1818@Z8-6157h px� 
H
%s
*synth20
.	Parameter C_IWL bound to: 5 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter C_FWL bound to: 15 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
single_stage2
 2
02
12>
:C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/CORDIC.v2
1818@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CORDIC2
 2
02
12>
:C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/CORDIC.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
DU_12
 2:
6C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/DU.v2
348@Z8-6157h px� 
H
%s
*synth20
.	Parameter C_IWL bound to: 5 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter C_FWL bound to: 15 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DU_12
 2
02
12:
6C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/DU.v2
348@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CORDIC_ARRAY2
 2
02
12D
@C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/CORDIC_ARRAY.v2
28@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BACK_SUBSTITUTION2
 2?
;C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/BACKSUB.v2
18@Z8-6157h px� 
H
%s
*synth20
.	Parameter C_IWL bound to: 5 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter C_FWL bound to: 15 - type: integer 
h p
x
� 
H
%s
*synth20
.	Parameter B_IWL bound to: 5 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter B_FWL bound to: 15 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2

reciprocal2
 2?
;C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/BACKSUB.v2
3008@Z8-6157h px� 
F
%s
*synth2.
,	Parameter IWL bound to: 5 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter FWL bound to: 15 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

reciprocal2
 2
02
12?
;C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/BACKSUB.v2
3008@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
back_sub_main2
 2?
;C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/BACKSUB.v2
3548@Z8-6157h px� 
F
%s
*synth2.
,	Parameter IWL bound to: 5 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter FWL bound to: 15 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
fi_mul2
 2?
;C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/BACKSUB.v2
5258@Z8-6157h px� 
F
%s
*synth2.
,	Parameter IWL bound to: 5 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter FWL bound to: 15 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
fi_mul2
 2
02
12?
;C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/BACKSUB.v2
5258@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
back_sub_main2
 2
02
12?
;C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/BACKSUB.v2
3548@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BACK_SUBSTITUTION2
 2
02
12?
;C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/BACKSUB.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2
 2
02
12;
7C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/top.v2
28@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
ui_mem_r_reg[15]2>
:C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/CORDIC.v2
598@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
z4_bank1_reg2?
;C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/BACKSUB.v2
1298@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
z4_bank2_reg2?
;C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/BACKSUB.v2
1348@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

reciprocal2
BACK_SUBSTITUTION2?
;C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/RTL/BACKSUB.v2
208@Z8-3848h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[19]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[18]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[17]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[16]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[15]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[14]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[13]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[12]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[11]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[10]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[9]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[8]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[7]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[6]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[5]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[4]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[3]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[2]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[1]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reciprocal[0]2
BACK_SUBSTITUTIONZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1544.684 ; gain = 570.012
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1544.684 ; gain = 570.012
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1544.684 ; gain = 570.012
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
00:00:00.0882

1544.6842
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
179*designutils2n
jC:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/VIVADO/DSP_in_VLSI_FINAL_v3/constraint/DSP_in_VLSI_FINAL.xdc8Z20-179h px� 
�
tSetting input delay on a clock pin '%s' relative to clock '%s' defined on the same pin is not supported, ignoring it1394*constraints2
Clk2
clk2n
jC:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/VIVADO/DSP_in_VLSI_FINAL_v3/constraint/DSP_in_VLSI_FINAL.xdc2
28@Z18-6211h px�
�
Finished Parsing XDC File [%s]
178*designutils2n
jC:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/VIVADO/DSP_in_VLSI_FINAL_v3/constraint/DSP_in_VLSI_FINAL.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1592.6992
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
00:00:00.0102

1592.6992
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
Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1592.699 ; gain = 618.027
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1592.699 ; gain = 618.027
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1592.699 ; gain = 618.027
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1592.699 ; gain = 618.027
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
,	   3 Input   20 Bit       Adders := 114   
h p
x
� 
F
%s
*synth2.
,	   2 Input   20 Bit       Adders := 195   
h p
x
� 
F
%s
*synth2.
,	   7 Input   20 Bit       Adders := 6     
h p
x
� 
F
%s
*synth2.
,	   5 Input   20 Bit       Adders := 7     
h p
x
� 
F
%s
*synth2.
,	   4 Input   20 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 2     
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
.	               20 Bit    Registers := 68    
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 90    
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 30    
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
,	   3 Input   20 Bit        Muxes := 181   
h p
x
� 
F
%s
*synth2.
,	   2 Input   20 Bit        Muxes := 66    
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 180   
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 118   
h p
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 14    
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 1     
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
a
%s
*synth2I
GDSP Report: Generating DSP mul_R44z4/prod_tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator mul_R44z4/prod_tmp is absorbed into DSP mul_R44z4/prod_tmp.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator mul_R44z4/prod_tmp is absorbed into DSP mul_R44z4/prod_tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP mul_R34x4/prod_tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator mul_R34x4/prod_tmp is absorbed into DSP mul_R34x4/prod_tmp.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator mul_R34x4/prod_tmp is absorbed into DSP mul_R34x4/prod_tmp.
h p
x
� 
d
%s
*synth2L
JDSP Report: Generating DSP mul_R33recip/prod_tmp, operation Mode is: A*B.
h p
x
� 
q
%s
*synth2Y
WDSP Report: operator mul_R33recip/prod_tmp is absorbed into DSP mul_R33recip/prod_tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: operator mul_R33recip/prod_tmp is absorbed into DSP mul_R33recip/prod_tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP mul_R23x3/prod_tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator mul_R23x3/prod_tmp is absorbed into DSP mul_R23x3/prod_tmp.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator mul_R23x3/prod_tmp is absorbed into DSP mul_R23x3/prod_tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP mul_R24x4/prod_tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator mul_R24x4/prod_tmp is absorbed into DSP mul_R24x4/prod_tmp.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator mul_R24x4/prod_tmp is absorbed into DSP mul_R24x4/prod_tmp.
h p
x
� 
d
%s
*synth2L
JDSP Report: Generating DSP mul_R22recip/prod_tmp, operation Mode is: A*B.
h p
x
� 
q
%s
*synth2Y
WDSP Report: operator mul_R22recip/prod_tmp is absorbed into DSP mul_R22recip/prod_tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: operator mul_R22recip/prod_tmp is absorbed into DSP mul_R22recip/prod_tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP mul_R12x2/prod_tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator mul_R12x2/prod_tmp is absorbed into DSP mul_R12x2/prod_tmp.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator mul_R12x2/prod_tmp is absorbed into DSP mul_R12x2/prod_tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP mul_R13x3/prod_tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator mul_R13x3/prod_tmp is absorbed into DSP mul_R13x3/prod_tmp.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator mul_R13x3/prod_tmp is absorbed into DSP mul_R13x3/prod_tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP mul_R14x4/prod_tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator mul_R14x4/prod_tmp is absorbed into DSP mul_R14x4/prod_tmp.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator mul_R14x4/prod_tmp is absorbed into DSP mul_R14x4/prod_tmp.
h p
x
� 
d
%s
*synth2L
JDSP Report: Generating DSP mul_R11recip/prod_tmp, operation Mode is: A*B.
h p
x
� 
q
%s
*synth2Y
WDSP Report: operator mul_R11recip/prod_tmp is absorbed into DSP mul_R11recip/prod_tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: operator mul_R11recip/prod_tmp is absorbed into DSP mul_R11recip/prod_tmp.
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
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1592.699 ; gain = 618.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
k
%s
*synth2S
Q Sort Area is top__GC0 mul_R11recip/prod_tmp_a : 0 0 : 2876 2876 : Used 1 time 0
h p
x
� 
h
%s
*synth2P
N Sort Area is top__GC0 mul_R12x2/prod_tmp_9 : 0 0 : 2876 2876 : Used 1 time 0
h p
x
� 
h
%s
*synth2P
N Sort Area is top__GC0 mul_R13x3/prod_tmp_5 : 0 0 : 2876 2876 : Used 1 time 0
h p
x
� 
h
%s
*synth2P
N Sort Area is top__GC0 mul_R14x4/prod_tmp_2 : 0 0 : 2876 2876 : Used 1 time 0
h p
x
� 
k
%s
*synth2S
Q Sort Area is top__GC0 mul_R22recip/prod_tmp_8 : 0 0 : 2876 2876 : Used 1 time 0
h p
x
� 
h
%s
*synth2P
N Sort Area is top__GC0 mul_R23x3/prod_tmp_7 : 0 0 : 2876 2876 : Used 1 time 0
h p
x
� 
h
%s
*synth2P
N Sort Area is top__GC0 mul_R24x4/prod_tmp_6 : 0 0 : 2876 2876 : Used 1 time 0
h p
x
� 
k
%s
*synth2S
Q Sort Area is top__GC0 mul_R33recip/prod_tmp_4 : 0 0 : 2876 2876 : Used 1 time 0
h p
x
� 
h
%s
*synth2P
N Sort Area is top__GC0 mul_R34x4/prod_tmp_3 : 0 0 : 2876 2876 : Used 1 time 0
h p
x
� 
h
%s
*synth2P
N Sort Area is top__GC0 mul_R44z4/prod_tmp_0 : 0 0 : 2876 2876 : Used 1 time 0
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
%s*synth2~
|+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2
}|Module Name | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h px� 
�
%s*synth2~
|+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2
}|fi_mul      | A*B         | 20     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|fi_mul      | A*B         | 20     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|fi_mul      | A*B         | 20     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|fi_mul      | A*B         | 20     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|fi_mul      | A*B         | 20     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|fi_mul      | A*B         | 20     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|fi_mul      | A*B         | 20     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|fi_mul      | A*B         | 20     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|fi_mul      | A*B         | 20     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|fi_mul      | A*B         | 20     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:34 ; elapsed = 00:00:35 . Memory (MB): peak = 1592.699 ; gain = 618.027
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
}Finished Timing Optimization : Time (s): cpu = 00:00:36 ; elapsed = 00:00:37 . Memory (MB): peak = 1596.051 ; gain = 621.379
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
|Finished Technology Mapping : Time (s): cpu = 00:00:40 ; elapsed = 00:00:41 . Memory (MB): peak = 1654.832 ; gain = 680.160
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
vFinished IO Insertion : Time (s): cpu = 00:00:44 ; elapsed = 00:00:45 . Memory (MB): peak = 1668.441 ; gain = 693.770
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:44 ; elapsed = 00:00:45 . Memory (MB): peak = 1668.441 ; gain = 693.770
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:45 ; elapsed = 00:00:46 . Memory (MB): peak = 1668.441 ; gain = 693.770
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:45 ; elapsed = 00:00:46 . Memory (MB): peak = 1668.441 ; gain = 693.770
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:45 ; elapsed = 00:00:47 . Memory (MB): peak = 1668.441 ; gain = 693.770
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:45 ; elapsed = 00:00:47 . Memory (MB): peak = 1668.441 ; gain = 693.770
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
*synth2~
|+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2
}|Module Name | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h p
x
� 
�
%s
*synth2~
|+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2
}|fi_mul      | A*B         | 30     | 17     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|fi_mul      | A*B         | 30     | 17     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|fi_mul      | A*B         | 30     | 17     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|fi_mul      | A*B         | 30     | 17     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|fi_mul      | A*B         | 30     | 17     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|fi_mul      | A*B         | 30     | 17     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|fi_mul      | A*B         | 30     | 17     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|fi_mul      | A*B         | 30     | 17     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|fi_mul      | A*B         | 30     | 17     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|fi_mul      | A*B         | 30     | 17     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

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
|2     |CARRY4  |  2063|
h px� 
3
%s*synth2
|3     |DSP48E1 |    10|
h px� 
3
%s*synth2
|4     |LUT1    |  1975|
h px� 
3
%s*synth2
|5     |LUT2    |  2794|
h px� 
3
%s*synth2
|6     |LUT3    |   533|
h px� 
3
%s*synth2
|7     |LUT4    |   486|
h px� 
3
%s*synth2
|8     |LUT5    |  4718|
h px� 
3
%s*synth2
|9     |LUT6    |  3200|
h px� 
3
%s*synth2
|10    |FDCE    |  1569|
h px� 
3
%s*synth2
|11    |IBUF    |    83|
h px� 
3
%s*synth2
|12    |OBUF    |    81|
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:45 ; elapsed = 00:00:47 . Memory (MB): peak = 1668.441 ; gain = 693.770
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
Synthesis Optimization Runtime : Time (s): cpu = 00:00:39 ; elapsed = 00:00:45 . Memory (MB): peak = 1668.441 ; gain = 645.754
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:46 ; elapsed = 00:00:47 . Memory (MB): peak = 1668.441 ; gain = 693.770
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

00:00:012
00:00:00.1252

1673.3712
0.000Z17-268h px� 
V
-Analyzing %s Unisim elements for replacement
17*netlist2
2073Z29-17h px� 
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

00:00:002
00:00:00.0022

1677.5392
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

48ba38c9Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
412
262
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

00:00:522

00:00:542

1677.5392

1158.562Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:012
00:00:00.0412

1677.5392
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2u
sC:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/VIVADO/DSP_in_VLSI_FINAL_v3/DSP_in_VLSI_FINAL_v3.runs/synth_1/top.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2Q
Oreport_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Jun  9 15:49:42 2025Z17-206h px� 


End Record