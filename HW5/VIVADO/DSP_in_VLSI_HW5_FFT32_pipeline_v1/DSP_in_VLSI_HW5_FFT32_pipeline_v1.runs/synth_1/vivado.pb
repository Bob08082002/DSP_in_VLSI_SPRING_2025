
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:052

00:00:062	
514.1372	
200.184Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/VIVADO/DSP_in_VLSI_HW5_FFT32_pipeline_v1/DSP_in_VLSI_HW5_FFT32_pipeline_v1.srcs/utils_1/imports/synth_1/FFT32_pipeline.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/VIVADO/DSP_in_VLSI_HW5_FFT32_pipeline_v1/DSP_in_VLSI_HW5_FFT32_pipeline_v1.srcs/utils_1/imports/synth_1/FFT32_pipeline.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
j
Command: %s
53*	vivadotcl29
7synth_design -top FFT32_pipeline -part xc7a200tfbg676-1Z4-113h px� 
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
16036Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1427.695 ; gain = 451.492
h px� 
�
macro '%s' is redefined7201*oasys2

WORD_LEN2@
<C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/commutator.v2
18@Z8-10940h px� 
�
macro '%s' is redefined7201*oasys2

WORD_LEN2C
?C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/delay_element.v2
38@Z8-10940h px� 
�
synthesizing module '%s'%s4497*oasys2
FFT32_pipeline2
 2D
@C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/FFT32_pipeline.v2
68@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

commutator2
 2@
<C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/commutator.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

commutator2
 2
02
12@
<C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/commutator.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
delay_element2
 2C
?C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/delay_element.v2
68@Z8-6157h px� 
I
%s
*synth21
/	Parameter DELAY bound to: 16 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
delay_element2
 2
02
12C
?C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/delay_element.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
butterfly_unit2
 2D
@C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/butterfly_unit.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
butterfly_unit2
 2
02
12D
@C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/butterfly_unit.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ROM322
 2;
7C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/ROM32.v2
58@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ROM322
 2
02
12;
7C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/ROM32.v2
58@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
twiddle_mul2
 2A
=C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/twiddle_mul.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
twiddle_mul2
 2
02
12A
=C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/twiddle_mul.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
delay_element__parameterized02
 2C
?C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/delay_element.v2
68@Z8-6157h px� 
H
%s
*synth20
.	Parameter DELAY bound to: 8 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
delay_element__parameterized02
 2
02
12C
?C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/delay_element.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ROM162
 2;
7C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/ROM16.v2
58@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ROM162
 2
02
12;
7C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/ROM16.v2
58@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42
i_addr2
32
ROM162D
@C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/FFT32_pipeline.v2
2488@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
delay_element__parameterized12
 2C
?C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/delay_element.v2
68@Z8-6157h px� 
H
%s
*synth20
.	Parameter DELAY bound to: 4 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
delay_element__parameterized12
 2
02
12C
?C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/delay_element.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ROM82
 2:
6C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/ROM8.v2
58@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ROM82
 2
02
12:
6C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/ROM8.v2
58@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42
i_addr2
22
ROM82D
@C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/FFT32_pipeline.v2
3398@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
delay_element__parameterized22
 2C
?C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/delay_element.v2
68@Z8-6157h px� 
H
%s
*synth20
.	Parameter DELAY bound to: 2 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
delay_element__parameterized22
 2
02
12C
?C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/delay_element.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ROM42
 2:
6C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/ROM4.v2
58@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ROM42
 2
02
12:
6C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/ROM4.v2
58@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42
i_addr2
12
ROM42D
@C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/FFT32_pipeline.v2
4328@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
delay_element__parameterized32
 2C
?C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/delay_element.v2
68@Z8-6157h px� 
H
%s
*synth20
.	Parameter DELAY bound to: 1 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
delay_element__parameterized32
 2
02
12C
?C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/delay_element.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
pin_pon_buffer2
 2D
@C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/pin_pon_buffer.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pin_pon_buffer2
 2
02
12D
@C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/pin_pon_buffer.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FFT32_pipeline2
 2
02
12D
@C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/RTL/FFT32_pipeline.v2
68@Z8-6155h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1552.930 ; gain = 576.727
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1552.930 ; gain = 576.727
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1552.930 ; gain = 576.727
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
00:00:00.0282

1552.9302
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
179*designutils2w
sC:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/VIVADO/DSP_in_VLSI_HW5_FFT32_pipeline_v1/constraint/DSP_in_VLSI_HW5.xdc8Z20-179h px� 
�
tSetting input delay on a clock pin '%s' relative to clock '%s' defined on the same pin is not supported, ignoring it1394*constraints2
clk2
clk2w
sC:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/VIVADO/DSP_in_VLSI_HW5_FFT32_pipeline_v1/constraint/DSP_in_VLSI_HW5.xdc2
28@Z18-6211h px�
�
Finished Parsing XDC File [%s]
178*designutils2w
sC:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/VIVADO/DSP_in_VLSI_HW5_FFT32_pipeline_v1/constraint/DSP_in_VLSI_HW5.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1584.2152
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
00:00:00.0112

1584.2152
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
Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1584.215 ; gain = 608.012
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1584.215 ; gain = 608.012
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1584.215 ; gain = 608.012
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1584.215 ; gain = 608.012
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
,	   2 Input   13 Bit       Adders := 8     
h p
x
� 
F
%s
*synth2.
,	   2 Input   12 Bit       Adders := 10    
h p
x
� 
F
%s
*synth2.
,	   3 Input   12 Bit       Adders := 10    
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit       Adders := 1     
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
.	               22 Bit    Registers := 64    
h p
x
� 
H
%s
*synth20
.	               11 Bit    Registers := 132   
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 8     
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
,	   2 Input   22 Bit        Muxes := 11    
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit        Muxes := 60    
h p
x
� 
F
%s
*synth2.
,	   5 Input   11 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input   11 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 5     
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
X
%s
*synth2@
>DSP Report: Generating DSP prod_arbr, operation Mode is: A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator prod_arbr is absorbed into DSP prod_arbr.
h p
x
� 
]
%s
*synth2E
CDSP Report: Generating DSP result_re, operation Mode is: PCIN-A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator result_re is absorbed into DSP result_re.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator prod_aibi is absorbed into DSP result_re.
h p
x
� 
X
%s
*synth2@
>DSP Report: Generating DSP prod_arbi, operation Mode is: A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator prod_arbi is absorbed into DSP prod_arbi.
h p
x
� 
]
%s
*synth2E
CDSP Report: Generating DSP result_im, operation Mode is: PCIN+A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator result_im is absorbed into DSP result_im.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator prod_aibr is absorbed into DSP result_im.
h p
x
� 
X
%s
*synth2@
>DSP Report: Generating DSP prod_arbr, operation Mode is: A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator prod_arbr is absorbed into DSP prod_arbr.
h p
x
� 
]
%s
*synth2E
CDSP Report: Generating DSP result_re, operation Mode is: PCIN-A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator result_re is absorbed into DSP result_re.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator prod_aibi is absorbed into DSP result_re.
h p
x
� 
X
%s
*synth2@
>DSP Report: Generating DSP prod_arbi, operation Mode is: A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator prod_arbi is absorbed into DSP prod_arbi.
h p
x
� 
]
%s
*synth2E
CDSP Report: Generating DSP result_im, operation Mode is: PCIN+A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator result_im is absorbed into DSP result_im.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator prod_aibr is absorbed into DSP result_im.
h p
x
� 
X
%s
*synth2@
>DSP Report: Generating DSP prod_arbr, operation Mode is: A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator prod_arbr is absorbed into DSP prod_arbr.
h p
x
� 
]
%s
*synth2E
CDSP Report: Generating DSP result_re, operation Mode is: PCIN-A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator result_re is absorbed into DSP result_re.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator prod_aibi is absorbed into DSP result_re.
h p
x
� 
X
%s
*synth2@
>DSP Report: Generating DSP prod_arbi, operation Mode is: A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator prod_arbi is absorbed into DSP prod_arbi.
h p
x
� 
]
%s
*synth2E
CDSP Report: Generating DSP result_im, operation Mode is: PCIN+A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator result_im is absorbed into DSP result_im.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator prod_aibr is absorbed into DSP result_im.
h p
x
� 
X
%s
*synth2@
>DSP Report: Generating DSP prod_arbr, operation Mode is: A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator prod_arbr is absorbed into DSP prod_arbr.
h p
x
� 
]
%s
*synth2E
CDSP Report: Generating DSP result_re, operation Mode is: PCIN-A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator result_re is absorbed into DSP result_re.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator prod_aibi is absorbed into DSP result_re.
h p
x
� 
X
%s
*synth2@
>DSP Report: Generating DSP prod_arbi, operation Mode is: A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator prod_arbi is absorbed into DSP prod_arbi.
h p
x
� 
]
%s
*synth2E
CDSP Report: Generating DSP result_im, operation Mode is: PCIN+A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator result_im is absorbed into DSP result_im.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator prod_aibr is absorbed into DSP result_im.
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
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1584.215 ; gain = 608.012
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
V
%s
*synth2>
< Sort Area is  prod_arbr_0 : 0 0 : 912 1976 : Used 1 time 0
h p
x
� 
W
%s
*synth2?
= Sort Area is  prod_arbr_0 : 0 1 : 1064 1976 : Used 1 time 0
h p
x
� 
V
%s
*synth2>
< Sort Area is  prod_arbr_5 : 0 0 : 912 1976 : Used 1 time 0
h p
x
� 
W
%s
*synth2?
= Sort Area is  prod_arbr_5 : 0 1 : 1064 1976 : Used 1 time 0
h p
x
� 
V
%s
*synth2>
< Sort Area is  prod_arbr_7 : 0 0 : 912 1976 : Used 1 time 0
h p
x
� 
W
%s
*synth2?
= Sort Area is  prod_arbr_7 : 0 1 : 1064 1976 : Used 1 time 0
h p
x
� 
V
%s
*synth2>
< Sort Area is  prod_arbr_9 : 0 0 : 912 1976 : Used 1 time 0
h p
x
� 
W
%s
*synth2?
= Sort Area is  prod_arbr_9 : 0 1 : 1064 1976 : Used 1 time 0
h p
x
� 
V
%s
*synth2>
< Sort Area is  prod_arbi_3 : 0 0 : 912 1894 : Used 1 time 0
h p
x
� 
V
%s
*synth2>
< Sort Area is  prod_arbi_3 : 0 1 : 982 1894 : Used 1 time 0
h p
x
� 
V
%s
*synth2>
< Sort Area is  prod_arbi_6 : 0 0 : 912 1894 : Used 1 time 0
h p
x
� 
V
%s
*synth2>
< Sort Area is  prod_arbi_6 : 0 1 : 982 1894 : Used 1 time 0
h p
x
� 
V
%s
*synth2>
< Sort Area is  prod_arbi_8 : 0 0 : 912 1894 : Used 1 time 0
h p
x
� 
V
%s
*synth2>
< Sort Area is  prod_arbi_8 : 0 1 : 982 1894 : Used 1 time 0
h p
x
� 
V
%s
*synth2>
< Sort Area is  prod_arbi_a : 0 0 : 912 1894 : Used 1 time 0
h p
x
� 
V
%s
*synth2>
< Sort Area is  prod_arbi_a : 0 1 : 982 1894 : Used 1 time 0
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
}|twiddle_mul | A*B         | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|twiddle_mul | PCIN-A*B    | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|twiddle_mul | A*B         | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|twiddle_mul | PCIN+A*B    | 11     | 11     | -      | -      | 23     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|twiddle_mul | A*B         | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|twiddle_mul | PCIN-A*B    | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|twiddle_mul | A*B         | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|twiddle_mul | PCIN+A*B    | 11     | 11     | -      | -      | 23     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|twiddle_mul | A*B         | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|twiddle_mul | PCIN-A*B    | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|twiddle_mul | A*B         | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|twiddle_mul | PCIN+A*B    | 11     | 11     | -      | -      | 23     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|twiddle_mul | A*B         | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|twiddle_mul | PCIN-A*B    | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|twiddle_mul | A*B         | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2
}|twiddle_mul | PCIN+A*B    | 11     | 11     | -      | -      | 23     | 0    | 0    | -    | -    | -     | 0    | 0    | 
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 1584.215 ; gain = 608.012
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
}Finished Timing Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 1589.664 ; gain = 613.461
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
|Finished Technology Mapping : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1611.508 ; gain = 635.305
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
vFinished IO Insertion : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1624.359 ; gain = 648.156
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1624.359 ; gain = 648.156
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1624.359 ; gain = 648.156
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1624.359 ; gain = 648.156
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1624.359 ; gain = 648.156
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1624.359 ; gain = 648.156
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
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

Static Shift Register Report:
h p
x
� 
�
%s
*synth2�
�+---------------+---------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|Module Name    | RTL Name                                    | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
h p
x
� 
�
%s
*synth2�
�+---------------+---------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|FFT32_pipeline | delay_element_U_stage1/DFF_re_r_reg[15][10] | 16     | 11    | YES          | NO                 | YES               | 11     | 0       | 
h p
x
� 
�
%s
*synth2�
�|FFT32_pipeline | delay_element_U_stage1/DFF_im_r_reg[15][10] | 16     | 11    | YES          | NO                 | YES               | 11     | 0       | 
h p
x
� 
�
%s
*synth2�
�|FFT32_pipeline | delay_element_L_stage2/DFF_re_r_reg[7][10]  | 8      | 11    | YES          | NO                 | YES               | 11     | 0       | 
h p
x
� 
�
%s
*synth2�
�|FFT32_pipeline | delay_element_L_stage2/DFF_im_r_reg[7][10]  | 8      | 11    | YES          | NO                 | YES               | 11     | 0       | 
h p
x
� 
�
%s
*synth2�
�|FFT32_pipeline | delay_element_U_stage2/DFF_re_r_reg[7][10]  | 9      | 11    | YES          | NO                 | YES               | 11     | 0       | 
h p
x
� 
�
%s
*synth2�
�|FFT32_pipeline | delay_element_U_stage2/DFF_im_r_reg[7][10]  | 9      | 11    | YES          | NO                 | YES               | 11     | 0       | 
h p
x
� 
�
%s
*synth2�
�|FFT32_pipeline | delay_element_L_stage3/DFF_re_r_reg[3][10]  | 4      | 11    | YES          | NO                 | YES               | 11     | 0       | 
h p
x
� 
�
%s
*synth2�
�|FFT32_pipeline | delay_element_L_stage3/DFF_im_r_reg[3][10]  | 4      | 11    | YES          | NO                 | YES               | 11     | 0       | 
h p
x
� 
�
%s
*synth2�
�|FFT32_pipeline | delay_element_U_stage3/DFF_re_r_reg[3][10]  | 5      | 11    | YES          | NO                 | YES               | 11     | 0       | 
h p
x
� 
�
%s
*synth2�
�|FFT32_pipeline | delay_element_U_stage3/DFF_im_r_reg[3][10]  | 5      | 11    | YES          | NO                 | YES               | 11     | 0       | 
h p
x
� 
�
%s
*synth2�
�+---------------+---------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
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
}|twiddle_mul | A*B'        | 30     | 18     | -      | -      | 22     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|twiddle_mul | PCIN-(A*B') | 30     | 18     | -      | -      | 22     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|twiddle_mul | A*B'        | 30     | 18     | -      | -      | 22     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|twiddle_mul | PCIN+A*B'   | 30     | 18     | -      | -      | 23     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|twiddle_mul | A*B'        | 30     | 18     | -      | -      | 22     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|twiddle_mul | PCIN-(A*B') | 30     | 18     | -      | -      | 22     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|twiddle_mul | A*B'        | 30     | 18     | -      | -      | 22     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|twiddle_mul | PCIN+A*B'   | 30     | 18     | -      | -      | 23     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|twiddle_mul | A*B'        | 30     | 18     | -      | -      | 22     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|twiddle_mul | PCIN-(A*B') | 30     | 18     | -      | -      | 22     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|twiddle_mul | A*B'        | 30     | 18     | -      | -      | 22     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|twiddle_mul | PCIN+A*B'   | 30     | 18     | -      | -      | 23     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|twiddle_mul | A'*B'       | 10     | 18     | -      | -      | 22     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|twiddle_mul | PCIN-(A*B') | 30     | 18     | -      | -      | 22     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|twiddle_mul | A'*B'       | 10     | 18     | -      | -      | 22     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|twiddle_mul | PCIN+A*B'   | 30     | 18     | -      | -      | 23     | 0    | 1    | -    | -    | -     | 0    | 0    | 
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
|2     |CARRY4  |   108|
h px� 
3
%s*synth2
|3     |DSP48E1 |    16|
h px� 
3
%s*synth2
|5     |LUT1    |    51|
h px� 
3
%s*synth2
|6     |LUT2    |   369|
h px� 
3
%s*synth2
|7     |LUT3    |   528|
h px� 
3
%s*synth2
|8     |LUT4    |    26|
h px� 
3
%s*synth2
|9     |LUT5    |     8|
h px� 
3
%s*synth2
|10    |LUT6    |   762|
h px� 
3
%s*synth2
|11    |MUXF7   |   176|
h px� 
3
%s*synth2
|12    |MUXF8   |    88|
h px� 
3
%s*synth2
|13    |SRL16E  |   110|
h px� 
3
%s*synth2
|14    |FDRE    |  2124|
h px� 
3
%s*synth2
|15    |IBUF    |    25|
h px� 
3
%s*synth2
|16    |OBUF    |    68|
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1624.359 ; gain = 648.156
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
Synthesis Optimization Runtime : Time (s): cpu = 00:00:20 ; elapsed = 00:00:26 . Memory (MB): peak = 1624.359 ; gain = 616.871
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1624.359 ; gain = 648.156
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
00:00:00.0292

1633.4882
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
388Z29-17h px� 
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
00:00:00.0012

1639.7772
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

4dcce009Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
492
72
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

00:00:312

00:00:332

1639.7772

1120.598Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0082

1639.7772
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/VIVADO/DSP_in_VLSI_HW5_FFT32_pipeline_v1/DSP_in_VLSI_HW5_FFT32_pipeline_v1.runs/synth_1/FFT32_pipeline.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2g
ereport_utilization -file FFT32_pipeline_utilization_synth.rpt -pb FFT32_pipeline_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed May  7 21:45:30 2025Z17-206h px� 


End Record