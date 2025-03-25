// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Mar 25 13:59:04 2025
// Host        : DESKTOP-T5CR5M4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW2/VIVADO/DSP_in_VLSI_HW2_pipeline_v2/DSP_in_VLSI_HW2_pipeline_v2.sim/sim_1/synth/timing/xsim/testbench_time_synth.v
// Design      : FIR
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module FIR
   (clk,
    i_rst,
    ValidIn,
    FilterIn,
    ValidOut,
    FilterOut);
  input clk;
  input i_rst;
  input ValidIn;
  input [13:0]FilterIn;
  output ValidOut;
  output [15:0]FilterOut;

  wire [13:0]FilterIn;
  wire [13:0]FilterIn_IBUF;
  wire [15:0]FilterOut;
  wire [15:0]FilterOut_OBUF;
  wire ValidIn;
  wire ValidIn_IBUF;
  wire ValidOut;
  wire ValidOut_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire i_rst;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[0] ;
  wire [15:0]\interconnet[10] ;
  wire [15:0]\interconnet[11] ;
  wire [15:0]\interconnet[12] ;
  wire [15:0]\interconnet[13] ;
  wire [15:0]\interconnet[14] ;
  wire [15:0]\interconnet[15] ;
  wire [15:0]\interconnet[1] ;
  wire [15:0]\interconnet[2] ;
  wire [15:0]\interconnet[3] ;
  wire [15:0]\interconnet[4] ;
  wire [15:0]\interconnet[5] ;
  wire [15:0]\interconnet[6] ;
  wire [15:0]\interconnet[7] ;
  wire [15:0]\interconnet[8] ;
  wire [15:0]\interconnet[9] ;
  wire valid_in_FF1;
  wire valid_in_FF2;

initial begin
 $sdf_annotate("testbench_time_synth.sdf",,,,"tool_control");
end
  IBUF \FilterIn_IBUF[0]_inst 
       (.I(FilterIn[0]),
        .O(FilterIn_IBUF[0]));
  IBUF \FilterIn_IBUF[10]_inst 
       (.I(FilterIn[10]),
        .O(FilterIn_IBUF[10]));
  IBUF \FilterIn_IBUF[11]_inst 
       (.I(FilterIn[11]),
        .O(FilterIn_IBUF[11]));
  IBUF \FilterIn_IBUF[12]_inst 
       (.I(FilterIn[12]),
        .O(FilterIn_IBUF[12]));
  IBUF \FilterIn_IBUF[13]_inst 
       (.I(FilterIn[13]),
        .O(FilterIn_IBUF[13]));
  IBUF \FilterIn_IBUF[1]_inst 
       (.I(FilterIn[1]),
        .O(FilterIn_IBUF[1]));
  IBUF \FilterIn_IBUF[2]_inst 
       (.I(FilterIn[2]),
        .O(FilterIn_IBUF[2]));
  IBUF \FilterIn_IBUF[3]_inst 
       (.I(FilterIn[3]),
        .O(FilterIn_IBUF[3]));
  IBUF \FilterIn_IBUF[4]_inst 
       (.I(FilterIn[4]),
        .O(FilterIn_IBUF[4]));
  IBUF \FilterIn_IBUF[5]_inst 
       (.I(FilterIn[5]),
        .O(FilterIn_IBUF[5]));
  IBUF \FilterIn_IBUF[6]_inst 
       (.I(FilterIn[6]),
        .O(FilterIn_IBUF[6]));
  IBUF \FilterIn_IBUF[7]_inst 
       (.I(FilterIn[7]),
        .O(FilterIn_IBUF[7]));
  IBUF \FilterIn_IBUF[8]_inst 
       (.I(FilterIn[8]),
        .O(FilterIn_IBUF[8]));
  IBUF \FilterIn_IBUF[9]_inst 
       (.I(FilterIn[9]),
        .O(FilterIn_IBUF[9]));
  OBUF \FilterOut_OBUF[0]_inst 
       (.I(FilterOut_OBUF[0]),
        .O(FilterOut[0]));
  OBUF \FilterOut_OBUF[10]_inst 
       (.I(FilterOut_OBUF[10]),
        .O(FilterOut[10]));
  OBUF \FilterOut_OBUF[11]_inst 
       (.I(FilterOut_OBUF[11]),
        .O(FilterOut[11]));
  OBUF \FilterOut_OBUF[12]_inst 
       (.I(FilterOut_OBUF[12]),
        .O(FilterOut[12]));
  OBUF \FilterOut_OBUF[13]_inst 
       (.I(FilterOut_OBUF[13]),
        .O(FilterOut[13]));
  OBUF \FilterOut_OBUF[14]_inst 
       (.I(FilterOut_OBUF[14]),
        .O(FilterOut[14]));
  OBUF \FilterOut_OBUF[15]_inst 
       (.I(FilterOut_OBUF[15]),
        .O(FilterOut[15]));
  OBUF \FilterOut_OBUF[1]_inst 
       (.I(FilterOut_OBUF[1]),
        .O(FilterOut[1]));
  OBUF \FilterOut_OBUF[2]_inst 
       (.I(FilterOut_OBUF[2]),
        .O(FilterOut[2]));
  OBUF \FilterOut_OBUF[3]_inst 
       (.I(FilterOut_OBUF[3]),
        .O(FilterOut[3]));
  OBUF \FilterOut_OBUF[4]_inst 
       (.I(FilterOut_OBUF[4]),
        .O(FilterOut[4]));
  OBUF \FilterOut_OBUF[5]_inst 
       (.I(FilterOut_OBUF[5]),
        .O(FilterOut[5]));
  OBUF \FilterOut_OBUF[6]_inst 
       (.I(FilterOut_OBUF[6]),
        .O(FilterOut[6]));
  OBUF \FilterOut_OBUF[7]_inst 
       (.I(FilterOut_OBUF[7]),
        .O(FilterOut[7]));
  OBUF \FilterOut_OBUF[8]_inst 
       (.I(FilterOut_OBUF[8]),
        .O(FilterOut[8]));
  OBUF \FilterOut_OBUF[9]_inst 
       (.I(FilterOut_OBUF[9]),
        .O(FilterOut[9]));
  IBUF ValidIn_IBUF_inst
       (.I(ValidIn),
        .O(ValidIn_IBUF));
  OBUF ValidOut_OBUF_inst
       (.I(ValidOut_OBUF),
        .O(ValidOut));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF i_rst_IBUF_inst
       (.I(i_rst),
        .O(i_rst_IBUF));
  FIR_subblock tap_00
       (.Q(\interconnet[0] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FIR_subblock_0 tap_01
       (.Q(\interconnet[0] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\delay_element_reg[15]_0 (\interconnet[1] ),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FIR_subblock_1 tap_02
       (.Q(\interconnet[2] ),
        .add_carry__2_0(\interconnet[1] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FIR_subblock_2 tap_03
       (.Q(\interconnet[2] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\delay_element_reg[15]_0 (\interconnet[3] ),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FIR_subblock_3 tap_04
       (.Q(\interconnet[4] ),
        .add_carry__2_0(\interconnet[3] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FIR_subblock_4 tap_05
       (.Q(\interconnet[4] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\delay_element_reg[15]_0 (\interconnet[5] ),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FIR_subblock_5 tap_06
       (.Q(\interconnet[6] ),
        .add_carry__2_0(\interconnet[5] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FIR_subblock_6 tap_07
       (.Q(\interconnet[6] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\delay_element_reg[15]_0 (\interconnet[7] ),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FIR_subblock_7 tap_08
       (.Q(\interconnet[8] ),
        .add_carry__2_0(\interconnet[7] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FIR_subblock_8 tap_09
       (.Q(\interconnet[8] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\delay_element_reg[15]_0 (\interconnet[9] ),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FIR_subblock_9 tap_10
       (.Q(\interconnet[10] ),
        .add_carry__2_0(\interconnet[9] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FIR_subblock_10 tap_11
       (.Q(\interconnet[10] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\delay_element_reg[15]_0 (\interconnet[11] ),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FIR_subblock_11 tap_12
       (.Q(\interconnet[12] ),
        .add_carry__2_0(\interconnet[11] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FIR_subblock_12 tap_13
       (.Q(\interconnet[12] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\delay_element_reg[15]_0 (\interconnet[13] ),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FIR_subblock_13 tap_14
       (.Q(\interconnet[14] ),
        .add_carry__2_0(\interconnet[13] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FIR_subblock_14 tap_15
       (.Q(\interconnet[14] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\delay_element_reg[15]_0 (\interconnet[15] ),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FIR_subblock_15 tap_16
       (.Q(FilterOut_OBUF),
        .add_carry__2_0(\interconnet[15] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .input_signal(FilterIn_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    valid_in_FF1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ValidIn_IBUF),
        .Q(valid_in_FF1),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    valid_in_FF2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(valid_in_FF1),
        .Q(valid_in_FF2),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    valid_in_FF3_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(valid_in_FF2),
        .Q(ValidOut_OBUF),
        .R(i_rst_IBUF));
endmodule

module FIR_subblock
   (Q,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]Q;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1_n_0;
  wire add_clamped1_carry_i_2_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1_n_0;
  wire add_clamped2_carry_i_2__15_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire \delay_element[3]_i_3_n_0 ;
  wire \delay_element_reg[11]_i_2_n_0 ;
  wire \delay_element_reg[11]_i_2_n_1 ;
  wire \delay_element_reg[11]_i_2_n_2 ;
  wire \delay_element_reg[11]_i_2_n_3 ;
  wire \delay_element_reg[11]_i_2_n_4 ;
  wire \delay_element_reg[11]_i_2_n_5 ;
  wire \delay_element_reg[11]_i_2_n_6 ;
  wire \delay_element_reg[11]_i_2_n_7 ;
  wire \delay_element_reg[3]_i_2_n_0 ;
  wire \delay_element_reg[3]_i_2_n_1 ;
  wire \delay_element_reg[3]_i_2_n_2 ;
  wire \delay_element_reg[3]_i_2_n_3 ;
  wire \delay_element_reg[3]_i_2_n_4 ;
  wire \delay_element_reg[3]_i_2_n_5 ;
  wire \delay_element_reg[3]_i_2_n_6 ;
  wire \delay_element_reg[3]_i_2_n_7 ;
  wire \delay_element_reg[7]_i_2_n_0 ;
  wire \delay_element_reg[7]_i_2_n_1 ;
  wire \delay_element_reg[7]_i_2_n_2 ;
  wire \delay_element_reg[7]_i_2_n_3 ;
  wire \delay_element_reg[7]_i_2_n_4 ;
  wire \delay_element_reg[7]_i_2_n_5 ;
  wire \delay_element_reg[7]_i_2_n_6 ;
  wire \delay_element_reg[7]_i_2_n_7 ;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1_n_0;
  wire prod_rounded_clamped1_carry_i_2_n_0;
  wire prod_rounded_clamped1_carry_i_3__15_n_0;
  wire prod_rounded_clamped1_carry_i_4_n_0;
  wire prod_rounded_clamped1_carry_i_5_n_0;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1_n_0;
  wire prod_rounded_clamped2_carry_i_2_n_0;
  wire prod_rounded_clamped2_carry_i_3_n_0;
  wire prod_rounded_clamped2_carry_i_4_n_0;
  wire prod_rounded_clamped2_carry_i_5_n_0;
  wire prod_rounded_clamped2_carry_i_6_n_0;
  wire prod_rounded_clamped2_carry_i_7_n_1;
  wire prod_rounded_clamped2_carry_i_7_n_2;
  wire prod_rounded_clamped2_carry_i_7_n_3;
  wire prod_rounded_clamped2_carry_i_7_n_4;
  wire prod_rounded_clamped2_carry_i_7_n_5;
  wire prod_rounded_clamped2_carry_i_7_n_6;
  wire prod_rounded_clamped2_carry_i_7_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [15:15]prod_rounded_clamped__0;
  wire prod_rounded_clamped_i_1_n_0;
  wire prod_rounded_clamped_i_1_n_1;
  wire prod_rounded_clamped_i_1_n_2;
  wire prod_rounded_clamped_i_1_n_3;
  wire prod_rounded_clamped_i_1_n_4;
  wire prod_rounded_clamped_i_1_n_5;
  wire prod_rounded_clamped_i_1_n_6;
  wire prod_rounded_clamped_i_1_n_7;
  wire prod_rounded_clamped_rep_n_0;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7_CO_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_rounded_clamped__0}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1_n_0,add_clamped1_carry_i_2_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_clamped1_carry_i_1
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped_i_1_n_4),
        .O(add_clamped1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hCCCE)) 
    add_clamped1_carry_i_2
       (.I0(prod_rounded_clamped_i_1_n_5),
        .I1(prod_rounded_clamped1),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped_i_1_n_4),
        .O(add_clamped1_carry_i_2_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,prod_rounded_clamped_rep_n_0,add_clamped2_carry_i_2__15_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_clamped2_carry_i_1
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped_i_1_n_4),
        .O(add_clamped2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h00F2)) 
    add_clamped2_carry_i_2__15
       (.I0(prod_rounded_clamped_i_1_n_4),
        .I1(prod_rounded_clamped_i_1_n_5),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1),
        .O(add_clamped2_carry_i_2__15_n_0));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(prod_rounded_clamped2),
        .I4(\delay_element_reg[3]_i_2_n_7 ),
        .O(add_clamped[0]));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(prod_rounded_clamped2),
        .I4(\delay_element_reg[11]_i_2_n_5 ),
        .O(add_clamped[10]));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(prod_rounded_clamped2),
        .I4(\delay_element_reg[11]_i_2_n_4 ),
        .O(add_clamped[11]));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(prod_rounded_clamped2),
        .I4(prod_rounded_clamped_i_1_n_7),
        .O(add_clamped[12]));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(prod_rounded_clamped2),
        .I4(prod_rounded_clamped_i_1_n_6),
        .O(add_clamped[13]));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(prod_rounded_clamped2),
        .I4(prod_rounded_clamped_i_1_n_5),
        .O(add_clamped[14]));
  LUT5 #(
    .INIT(32'h0000FF0E)) 
    \delay_element[15]_i_1 
       (.I0(prod_rounded_clamped_i_1_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_clamped2),
        .I4(add_clamped1),
        .O(add_clamped[15]));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(prod_rounded_clamped2),
        .I4(\delay_element_reg[3]_i_2_n_6 ),
        .O(add_clamped[1]));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(prod_rounded_clamped2),
        .I4(\delay_element_reg[3]_i_2_n_5 ),
        .O(add_clamped[2]));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(prod_rounded_clamped2),
        .I4(\delay_element_reg[3]_i_2_n_4 ),
        .O(add_clamped[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \delay_element[3]_i_3 
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(\delay_element[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(prod_rounded_clamped2),
        .I4(\delay_element_reg[7]_i_2_n_7 ),
        .O(add_clamped[4]));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(prod_rounded_clamped2),
        .I4(\delay_element_reg[7]_i_2_n_6 ),
        .O(add_clamped[5]));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(prod_rounded_clamped2),
        .I4(\delay_element_reg[7]_i_2_n_5 ),
        .O(add_clamped[6]));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(prod_rounded_clamped2),
        .I4(\delay_element_reg[7]_i_2_n_4 ),
        .O(add_clamped[7]));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(prod_rounded_clamped2),
        .I4(\delay_element_reg[11]_i_2_n_7 ),
        .O(add_clamped[8]));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(prod_rounded_clamped2),
        .I4(\delay_element_reg[11]_i_2_n_6 ),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(Q[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(Q[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(Q[11]),
        .R(i_rst_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \delay_element_reg[11]_i_2 
       (.CI(\delay_element_reg[7]_i_2_n_0 ),
        .CO({\delay_element_reg[11]_i_2_n_0 ,\delay_element_reg[11]_i_2_n_1 ,\delay_element_reg[11]_i_2_n_2 ,\delay_element_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_element_reg[11]_i_2_n_4 ,\delay_element_reg[11]_i_2_n_5 ,\delay_element_reg[11]_i_2_n_6 ,\delay_element_reg[11]_i_2_n_7 }),
        .S(p_1_in[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(Q[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(Q[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(Q[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(Q[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(Q[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(Q[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(Q[3]),
        .R(i_rst_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \delay_element_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\delay_element_reg[3]_i_2_n_0 ,\delay_element_reg[3]_i_2_n_1 ,\delay_element_reg[3]_i_2_n_2 ,\delay_element_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({\delay_element_reg[3]_i_2_n_4 ,\delay_element_reg[3]_i_2_n_5 ,\delay_element_reg[3]_i_2_n_6 ,\delay_element_reg[3]_i_2_n_7 }),
        .S({p_1_in[3:1],\delay_element[3]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(Q[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(Q[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(Q[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(Q[7]),
        .R(i_rst_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \delay_element_reg[7]_i_2 
       (.CI(\delay_element_reg[3]_i_2_n_0 ),
        .CO({\delay_element_reg[7]_i_2_n_0 ,\delay_element_reg[7]_i_2_n_1 ,\delay_element_reg[7]_i_2_n_2 ,\delay_element_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_element_reg[7]_i_2_n_4 ,\delay_element_reg[7]_i_2_n_5 ,\delay_element_reg[7]_i_2_n_6 ,\delay_element_reg[7]_i_2_n_7 }),
        .S(p_1_in[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(Q[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(Q[9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'h0E)) 
    prod_rounded_clamped
       (.I0(prod_rounded_clamped_i_1_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .O(prod_rounded_clamped__0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1_n_0,prod_rounded_clamped1_carry_i_2_n_0,prod_rounded_clamped_i_1_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_3__15_n_0,prod_rounded_clamped1_carry_i_4_n_0,prod_rounded_clamped1_carry_i_5_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1
       (.I0(prod_rounded_clamped2_carry_i_7_n_5),
        .I1(prod_rounded_clamped2_carry_i_7_n_4),
        .O(prod_rounded_clamped1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2
       (.I0(prod_rounded_clamped2_carry_i_7_n_7),
        .I1(prod_rounded_clamped2_carry_i_7_n_6),
        .O(prod_rounded_clamped1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_3__15
       (.I0(prod_rounded_clamped2_carry_i_7_n_5),
        .I1(prod_rounded_clamped2_carry_i_7_n_4),
        .O(prod_rounded_clamped1_carry_i_3__15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4
       (.I0(prod_rounded_clamped2_carry_i_7_n_7),
        .I1(prod_rounded_clamped2_carry_i_7_n_6),
        .O(prod_rounded_clamped1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_5
       (.I0(prod_rounded_clamped_i_1_n_5),
        .I1(prod_rounded_clamped_i_1_n_4),
        .O(prod_rounded_clamped1_carry_i_5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1_n_0,prod_rounded_clamped2_carry_i_2_n_0,prod_rounded_clamped2_carry_i_3_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4_n_0,prod_rounded_clamped2_carry_i_5_n_0,prod_rounded_clamped2_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1
       (.I0(prod_rounded_clamped2_carry_i_7_n_4),
        .I1(prod_rounded_clamped2_carry_i_7_n_5),
        .O(prod_rounded_clamped2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2
       (.I0(prod_rounded_clamped2_carry_i_7_n_7),
        .I1(prod_rounded_clamped2_carry_i_7_n_6),
        .O(prod_rounded_clamped2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3
       (.I0(prod_rounded_clamped_i_1_n_4),
        .O(prod_rounded_clamped2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4
       (.I0(prod_rounded_clamped2_carry_i_7_n_5),
        .I1(prod_rounded_clamped2_carry_i_7_n_4),
        .O(prod_rounded_clamped2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5
       (.I0(prod_rounded_clamped2_carry_i_7_n_7),
        .I1(prod_rounded_clamped2_carry_i_7_n_6),
        .O(prod_rounded_clamped2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6
       (.I0(prod_rounded_clamped_i_1_n_4),
        .I1(prod_rounded_clamped_i_1_n_5),
        .O(prod_rounded_clamped2_carry_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7
       (.CI(prod_rounded_clamped_i_1_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7_n_1,prod_rounded_clamped2_carry_i_7_n_2,prod_rounded_clamped2_carry_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7_n_4,prod_rounded_clamped2_carry_i_7_n_5,prod_rounded_clamped2_carry_i_7_n_6,prod_rounded_clamped2_carry_i_7_n_7}),
        .S(p_1_in[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_i_1
       (.CI(\delay_element_reg[11]_i_2_n_0 ),
        .CO({prod_rounded_clamped_i_1_n_0,prod_rounded_clamped_i_1_n_1,prod_rounded_clamped_i_1_n_2,prod_rounded_clamped_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_i_1_n_4,prod_rounded_clamped_i_1_n_5,prod_rounded_clamped_i_1_n_6,prod_rounded_clamped_i_1_n_7}),
        .S(p_1_in[15:12]));
  LUT3 #(
    .INIT(8'h0E)) 
    prod_rounded_clamped_rep
       (.I0(prod_rounded_clamped_i_1_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .O(prod_rounded_clamped_rep_n_0));
endmodule

(* ORIG_REF_NAME = "FIR_subblock" *) 
module FIR_subblock_0
   (\delay_element_reg[15]_0 ,
    Q,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]\delay_element_reg[15]_0 ;
  input [15:0]Q;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire add_carry__0_i_1_n_0;
  wire add_carry__0_i_2_n_0;
  wire add_carry__0_i_3_n_0;
  wire add_carry__0_i_4_n_0;
  wire add_carry__0_i_5_n_0;
  wire add_carry__0_i_5_n_1;
  wire add_carry__0_i_5_n_2;
  wire add_carry__0_i_5_n_3;
  wire add_carry__0_i_5_n_4;
  wire add_carry__0_i_5_n_5;
  wire add_carry__0_i_5_n_6;
  wire add_carry__0_i_5_n_7;
  wire add_carry__0_n_0;
  wire add_carry__0_n_1;
  wire add_carry__0_n_2;
  wire add_carry__0_n_3;
  wire add_carry__0_n_4;
  wire add_carry__0_n_5;
  wire add_carry__0_n_6;
  wire add_carry__0_n_7;
  wire add_carry__1_i_1_n_0;
  wire add_carry__1_i_2_n_0;
  wire add_carry__1_i_3_n_0;
  wire add_carry__1_i_4_n_0;
  wire add_carry__1_n_0;
  wire add_carry__1_n_1;
  wire add_carry__1_n_2;
  wire add_carry__1_n_3;
  wire add_carry__1_n_4;
  wire add_carry__1_n_5;
  wire add_carry__1_n_6;
  wire add_carry__1_n_7;
  wire add_carry__2_i_1_n_0;
  wire add_carry__2_i_2_n_0;
  wire add_carry__2_i_3_n_0;
  wire add_carry__2_i_4_n_0;
  wire add_carry__2_i_5_n_0;
  wire add_carry__2_n_0;
  wire add_carry__2_n_1;
  wire add_carry__2_n_2;
  wire add_carry__2_n_3;
  wire add_carry__2_n_4;
  wire add_carry__2_n_5;
  wire add_carry__2_n_6;
  wire add_carry__2_n_7;
  wire add_carry_i_1_n_0;
  wire add_carry_i_2_n_0;
  wire add_carry_i_3_n_0;
  wire add_carry_i_4_n_0;
  wire add_carry_i_5_n_0;
  wire add_carry_i_5_n_1;
  wire add_carry_i_5_n_2;
  wire add_carry_i_5_n_3;
  wire add_carry_i_5_n_4;
  wire add_carry_i_5_n_5;
  wire add_carry_i_5_n_6;
  wire add_carry_i_5_n_7;
  wire add_carry_i_6_n_0;
  wire add_carry_n_0;
  wire add_carry_n_1;
  wire add_carry_n_2;
  wire add_carry_n_3;
  wire add_carry_n_4;
  wire add_carry_n_5;
  wire add_carry_n_6;
  wire add_carry_n_7;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1__0_n_3;
  wire add_clamped1_carry_i_2__0_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__0_n_0;
  wire add_clamped2_carry_i_2_n_0;
  wire add_clamped2_carry_i_3_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]\delay_element_reg[15]_0 ;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__0_n_0;
  wire prod_rounded_clamped1_carry_i_2__0_n_0;
  wire prod_rounded_clamped1_carry_i_3_n_0;
  wire prod_rounded_clamped1_carry_i_3_n_1;
  wire prod_rounded_clamped1_carry_i_3_n_2;
  wire prod_rounded_clamped1_carry_i_3_n_3;
  wire prod_rounded_clamped1_carry_i_3_n_4;
  wire prod_rounded_clamped1_carry_i_3_n_5;
  wire prod_rounded_clamped1_carry_i_3_n_6;
  wire prod_rounded_clamped1_carry_i_3_n_7;
  wire prod_rounded_clamped1_carry_i_4__0_n_0;
  wire prod_rounded_clamped1_carry_i_5__0_n_0;
  wire prod_rounded_clamped1_carry_i_6_n_0;
  wire prod_rounded_clamped1_carry_i_7_n_0;
  wire prod_rounded_clamped1_carry_i_7_n_1;
  wire prod_rounded_clamped1_carry_i_7_n_2;
  wire prod_rounded_clamped1_carry_i_7_n_3;
  wire prod_rounded_clamped1_carry_i_7_n_4;
  wire prod_rounded_clamped1_carry_i_7_n_5;
  wire prod_rounded_clamped1_carry_i_7_n_6;
  wire prod_rounded_clamped1_carry_i_7_n_7;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1__0_n_0;
  wire prod_rounded_clamped2_carry_i_2__0_n_0;
  wire prod_rounded_clamped2_carry_i_3__0_n_0;
  wire prod_rounded_clamped2_carry_i_4__0_n_0;
  wire prod_rounded_clamped2_carry_i_5__0_n_0;
  wire prod_rounded_clamped2_carry_i_6__0_n_0;
  wire prod_rounded_clamped2_carry_i_7__0_n_1;
  wire prod_rounded_clamped2_carry_i_7__0_n_2;
  wire prod_rounded_clamped2_carry_i_7__0_n_3;
  wire prod_rounded_clamped2_carry_i_7__0_n_4;
  wire prod_rounded_clamped2_carry_i_7__0_n_5;
  wire prod_rounded_clamped2_carry_i_7__0_n_6;
  wire prod_rounded_clamped2_carry_i_7__0_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:1]NLW_add_clamped1_carry_i_1__0_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_i_1__0_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__0_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1_n_0,add_carry_i_2_n_0,add_carry_i_3_n_0,add_carry_i_4_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1_n_0,add_carry__0_i_2_n_0,add_carry__0_i_3_n_0,add_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1
       (.I0(add_carry__0_i_5_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[7]),
        .O(add_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2
       (.I0(add_carry__0_i_5_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[6]),
        .O(add_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3
       (.I0(add_carry__0_i_5_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[5]),
        .O(add_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4
       (.I0(add_carry__0_i_5_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[4]),
        .O(add_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry__0_i_5
       (.CI(add_carry_i_5_n_0),
        .CO({add_carry__0_i_5_n_0,add_carry__0_i_5_n_1,add_carry__0_i_5_n_2,add_carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_carry__0_i_5_n_4,add_carry__0_i_5_n_5,add_carry__0_i_5_n_6,add_carry__0_i_5_n_7}),
        .S(p_1_in[7:4]));
  CARRY4 add_carry__1
       (.CI(add_carry__0_n_0),
        .CO({add_carry__1_n_0,add_carry__1_n_1,add_carry__1_n_2,add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1_n_0,add_carry__1_i_2_n_0,add_carry__1_i_3_n_0,add_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1
       (.I0(prod_rounded_clamped1_carry_i_7_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[11]),
        .O(add_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2
       (.I0(prod_rounded_clamped1_carry_i_7_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[10]),
        .O(add_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3
       (.I0(prod_rounded_clamped1_carry_i_7_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[9]),
        .O(add_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4
       (.I0(prod_rounded_clamped1_carry_i_7_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[8]),
        .O(add_carry__1_i_4_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1_n_0,Q[14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2_n_0,add_carry__2_i_3_n_0,add_carry__2_i_4_n_0,add_carry__2_i_5_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3_n_4),
        .O(add_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3_n_4),
        .I3(Q[15]),
        .O(add_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3
       (.I0(prod_rounded_clamped1_carry_i_3_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[14]),
        .O(add_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4
       (.I0(prod_rounded_clamped1_carry_i_3_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[13]),
        .O(add_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5
       (.I0(prod_rounded_clamped1_carry_i_3_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[12]),
        .O(add_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1
       (.I0(add_carry_i_5_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[3]),
        .O(add_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2
       (.I0(add_carry_i_5_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[2]),
        .O(add_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3
       (.I0(add_carry_i_5_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[1]),
        .O(add_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4
       (.I0(add_carry_i_5_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[0]),
        .O(add_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry_i_5
       (.CI(1'b0),
        .CO({add_carry_i_5_n_0,add_carry_i_5_n_1,add_carry_i_5_n_2,add_carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_carry_i_5_n_4,add_carry_i_5_n_5,add_carry_i_5_n_6,add_carry_i_5_n_7}),
        .S({p_1_in[3:1],add_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_carry_i_6
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_carry__2_n_4}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1__0_n_3,add_clamped1_carry_i_2__0_n_0}));
  CARRY4 add_clamped1_carry_i_1__0
       (.CI(add_carry__2_n_0),
        .CO({NLW_add_clamped1_carry_i_1__0_CO_UNCONNECTED[3:1],add_clamped1_carry_i_1__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_add_clamped1_carry_i_1__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped1_carry_i_2__0
       (.I0(add_carry__2_n_5),
        .I1(add_carry__2_n_4),
        .O(add_clamped1_carry_i_2__0_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1__0_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2_n_0,add_clamped2_carry_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__0
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2
       (.I0(add_clamped1_carry_i_1__0_n_3),
        .O(add_clamped2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped2_carry_i_3
       (.I0(add_carry__2_n_4),
        .I1(add_carry__2_n_5),
        .O(add_clamped2_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(add_clamped[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(add_clamped[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(add_clamped[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(add_clamped[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(add_clamped[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(add_clamped[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(add_clamped[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(add_clamped[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(add_clamped[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(add_clamped[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(add_clamped[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(add_clamped[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(add_clamped[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(add_clamped[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(add_clamped[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(\delay_element_reg[15]_0 [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(\delay_element_reg[15]_0 [10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(\delay_element_reg[15]_0 [11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(\delay_element_reg[15]_0 [12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(\delay_element_reg[15]_0 [13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(\delay_element_reg[15]_0 [14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(\delay_element_reg[15]_0 [15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(\delay_element_reg[15]_0 [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(\delay_element_reg[15]_0 [2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(\delay_element_reg[15]_0 [3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(\delay_element_reg[15]_0 [4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(\delay_element_reg[15]_0 [5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(\delay_element_reg[15]_0 [6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(\delay_element_reg[15]_0 [7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(\delay_element_reg[15]_0 [8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(\delay_element_reg[15]_0 [9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__0_n_0,prod_rounded_clamped1_carry_i_2__0_n_0,prod_rounded_clamped1_carry_i_3_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__0_n_0,prod_rounded_clamped1_carry_i_5__0_n_0,prod_rounded_clamped1_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1__0
       (.I0(prod_rounded_clamped2_carry_i_7__0_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__0_n_4),
        .O(prod_rounded_clamped1_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2__0
       (.I0(prod_rounded_clamped2_carry_i_7__0_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__0_n_6),
        .O(prod_rounded_clamped1_carry_i_2__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_3
       (.CI(prod_rounded_clamped1_carry_i_7_n_0),
        .CO({prod_rounded_clamped1_carry_i_3_n_0,prod_rounded_clamped1_carry_i_3_n_1,prod_rounded_clamped1_carry_i_3_n_2,prod_rounded_clamped1_carry_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3_n_4,prod_rounded_clamped1_carry_i_3_n_5,prod_rounded_clamped1_carry_i_3_n_6,prod_rounded_clamped1_carry_i_3_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4__0
       (.I0(prod_rounded_clamped2_carry_i_7__0_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__0_n_4),
        .O(prod_rounded_clamped1_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5__0
       (.I0(prod_rounded_clamped2_carry_i_7__0_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__0_n_6),
        .O(prod_rounded_clamped1_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6
       (.I0(prod_rounded_clamped1_carry_i_3_n_5),
        .I1(prod_rounded_clamped1_carry_i_3_n_4),
        .O(prod_rounded_clamped1_carry_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7
       (.CI(add_carry__0_i_5_n_0),
        .CO({prod_rounded_clamped1_carry_i_7_n_0,prod_rounded_clamped1_carry_i_7_n_1,prod_rounded_clamped1_carry_i_7_n_2,prod_rounded_clamped1_carry_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_7_n_4,prod_rounded_clamped1_carry_i_7_n_5,prod_rounded_clamped1_carry_i_7_n_6,prod_rounded_clamped1_carry_i_7_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1__0_n_0,prod_rounded_clamped2_carry_i_2__0_n_0,prod_rounded_clamped2_carry_i_3__0_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4__0_n_0,prod_rounded_clamped2_carry_i_5__0_n_0,prod_rounded_clamped2_carry_i_6__0_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1__0
       (.I0(prod_rounded_clamped2_carry_i_7__0_n_4),
        .I1(prod_rounded_clamped2_carry_i_7__0_n_5),
        .O(prod_rounded_clamped2_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2__0
       (.I0(prod_rounded_clamped2_carry_i_7__0_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__0_n_6),
        .O(prod_rounded_clamped2_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3__0
       (.I0(prod_rounded_clamped1_carry_i_3_n_4),
        .O(prod_rounded_clamped2_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4__0
       (.I0(prod_rounded_clamped2_carry_i_7__0_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__0_n_4),
        .O(prod_rounded_clamped2_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5__0
       (.I0(prod_rounded_clamped2_carry_i_7__0_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__0_n_6),
        .O(prod_rounded_clamped2_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6__0
       (.I0(prod_rounded_clamped1_carry_i_3_n_4),
        .I1(prod_rounded_clamped1_carry_i_3_n_5),
        .O(prod_rounded_clamped2_carry_i_6__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__0
       (.CI(prod_rounded_clamped1_carry_i_3_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__0_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__0_n_1,prod_rounded_clamped2_carry_i_7__0_n_2,prod_rounded_clamped2_carry_i_7__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__0_n_4,prod_rounded_clamped2_carry_i_7__0_n_5,prod_rounded_clamped2_carry_i_7__0_n_6,prod_rounded_clamped2_carry_i_7__0_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock" *) 
module FIR_subblock_1
   (Q,
    add_carry__2_0,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]Q;
  input [15:0]add_carry__2_0;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire add_carry__0_i_1__0_n_0;
  wire add_carry__0_i_2__0_n_0;
  wire add_carry__0_i_3__0_n_0;
  wire add_carry__0_i_4__0_n_0;
  wire add_carry__0_i_5__0_n_0;
  wire add_carry__0_i_5__0_n_1;
  wire add_carry__0_i_5__0_n_2;
  wire add_carry__0_i_5__0_n_3;
  wire add_carry__0_i_5__0_n_4;
  wire add_carry__0_i_5__0_n_5;
  wire add_carry__0_i_5__0_n_6;
  wire add_carry__0_i_5__0_n_7;
  wire add_carry__0_n_0;
  wire add_carry__0_n_1;
  wire add_carry__0_n_2;
  wire add_carry__0_n_3;
  wire add_carry__0_n_4;
  wire add_carry__0_n_5;
  wire add_carry__0_n_6;
  wire add_carry__0_n_7;
  wire add_carry__1_i_1__0_n_0;
  wire add_carry__1_i_2__0_n_0;
  wire add_carry__1_i_3__0_n_0;
  wire add_carry__1_i_4__0_n_0;
  wire add_carry__1_n_0;
  wire add_carry__1_n_1;
  wire add_carry__1_n_2;
  wire add_carry__1_n_3;
  wire add_carry__1_n_4;
  wire add_carry__1_n_5;
  wire add_carry__1_n_6;
  wire add_carry__1_n_7;
  wire [15:0]add_carry__2_0;
  wire add_carry__2_i_1__0_n_0;
  wire add_carry__2_i_2__0_n_0;
  wire add_carry__2_i_3__0_n_0;
  wire add_carry__2_i_4__0_n_0;
  wire add_carry__2_i_5__0_n_0;
  wire add_carry__2_n_0;
  wire add_carry__2_n_1;
  wire add_carry__2_n_2;
  wire add_carry__2_n_3;
  wire add_carry__2_n_4;
  wire add_carry__2_n_5;
  wire add_carry__2_n_6;
  wire add_carry__2_n_7;
  wire add_carry_i_1__0_n_0;
  wire add_carry_i_2__0_n_0;
  wire add_carry_i_3__0_n_0;
  wire add_carry_i_4__0_n_0;
  wire add_carry_i_5__0_n_0;
  wire add_carry_i_5__0_n_1;
  wire add_carry_i_5__0_n_2;
  wire add_carry_i_5__0_n_3;
  wire add_carry_i_5__0_n_4;
  wire add_carry_i_5__0_n_5;
  wire add_carry_i_5__0_n_6;
  wire add_carry_i_5__0_n_7;
  wire add_carry_i_6__0_n_0;
  wire add_carry_n_0;
  wire add_carry_n_1;
  wire add_carry_n_2;
  wire add_carry_n_3;
  wire add_carry_n_4;
  wire add_carry_n_5;
  wire add_carry_n_6;
  wire add_carry_n_7;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1__1_n_3;
  wire add_clamped1_carry_i_2__1_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__1_n_0;
  wire add_clamped2_carry_i_2__0_n_0;
  wire add_clamped2_carry_i_3__0_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__1_n_0;
  wire prod_rounded_clamped1_carry_i_2__1_n_0;
  wire prod_rounded_clamped1_carry_i_3__0_n_0;
  wire prod_rounded_clamped1_carry_i_3__0_n_1;
  wire prod_rounded_clamped1_carry_i_3__0_n_2;
  wire prod_rounded_clamped1_carry_i_3__0_n_3;
  wire prod_rounded_clamped1_carry_i_3__0_n_4;
  wire prod_rounded_clamped1_carry_i_3__0_n_5;
  wire prod_rounded_clamped1_carry_i_3__0_n_6;
  wire prod_rounded_clamped1_carry_i_3__0_n_7;
  wire prod_rounded_clamped1_carry_i_4__1_n_0;
  wire prod_rounded_clamped1_carry_i_5__1_n_0;
  wire prod_rounded_clamped1_carry_i_6__0_n_0;
  wire prod_rounded_clamped1_carry_i_7__0_n_0;
  wire prod_rounded_clamped1_carry_i_7__0_n_1;
  wire prod_rounded_clamped1_carry_i_7__0_n_2;
  wire prod_rounded_clamped1_carry_i_7__0_n_3;
  wire prod_rounded_clamped1_carry_i_7__0_n_4;
  wire prod_rounded_clamped1_carry_i_7__0_n_5;
  wire prod_rounded_clamped1_carry_i_7__0_n_6;
  wire prod_rounded_clamped1_carry_i_7__0_n_7;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1__1_n_0;
  wire prod_rounded_clamped2_carry_i_2__1_n_0;
  wire prod_rounded_clamped2_carry_i_3__1_n_0;
  wire prod_rounded_clamped2_carry_i_4__1_n_0;
  wire prod_rounded_clamped2_carry_i_5__1_n_0;
  wire prod_rounded_clamped2_carry_i_6__1_n_0;
  wire prod_rounded_clamped2_carry_i_7__1_n_1;
  wire prod_rounded_clamped2_carry_i_7__1_n_2;
  wire prod_rounded_clamped2_carry_i_7__1_n_3;
  wire prod_rounded_clamped2_carry_i_7__1_n_4;
  wire prod_rounded_clamped2_carry_i_7__1_n_5;
  wire prod_rounded_clamped2_carry_i_7__1_n_6;
  wire prod_rounded_clamped2_carry_i_7__1_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:1]NLW_add_clamped1_carry_i_1__1_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_i_1__1_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__1_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1__0_n_0,add_carry_i_2__0_n_0,add_carry_i_3__0_n_0,add_carry_i_4__0_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1__0_n_0,add_carry__0_i_2__0_n_0,add_carry__0_i_3__0_n_0,add_carry__0_i_4__0_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1__0
       (.I0(add_carry__0_i_5__0_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[7]),
        .O(add_carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2__0
       (.I0(add_carry__0_i_5__0_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[6]),
        .O(add_carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3__0
       (.I0(add_carry__0_i_5__0_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[5]),
        .O(add_carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4__0
       (.I0(add_carry__0_i_5__0_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[4]),
        .O(add_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry__0_i_5__0
       (.CI(add_carry_i_5__0_n_0),
        .CO({add_carry__0_i_5__0_n_0,add_carry__0_i_5__0_n_1,add_carry__0_i_5__0_n_2,add_carry__0_i_5__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_carry__0_i_5__0_n_4,add_carry__0_i_5__0_n_5,add_carry__0_i_5__0_n_6,add_carry__0_i_5__0_n_7}),
        .S(p_1_in[7:4]));
  CARRY4 add_carry__1
       (.CI(add_carry__0_n_0),
        .CO({add_carry__1_n_0,add_carry__1_n_1,add_carry__1_n_2,add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1__0_n_0,add_carry__1_i_2__0_n_0,add_carry__1_i_3__0_n_0,add_carry__1_i_4__0_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1__0
       (.I0(prod_rounded_clamped1_carry_i_7__0_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[11]),
        .O(add_carry__1_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2__0
       (.I0(prod_rounded_clamped1_carry_i_7__0_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[10]),
        .O(add_carry__1_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3__0
       (.I0(prod_rounded_clamped1_carry_i_7__0_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[9]),
        .O(add_carry__1_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4__0
       (.I0(prod_rounded_clamped1_carry_i_7__0_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[8]),
        .O(add_carry__1_i_4__0_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1__0_n_0,add_carry__2_0[14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2__0_n_0,add_carry__2_i_3__0_n_0,add_carry__2_i_4__0_n_0,add_carry__2_i_5__0_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1__0
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__0_n_4),
        .O(add_carry__2_i_1__0_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2__0
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__0_n_4),
        .I3(add_carry__2_0[15]),
        .O(add_carry__2_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3__0
       (.I0(prod_rounded_clamped1_carry_i_3__0_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[14]),
        .O(add_carry__2_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4__0
       (.I0(prod_rounded_clamped1_carry_i_3__0_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[13]),
        .O(add_carry__2_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5__0
       (.I0(prod_rounded_clamped1_carry_i_3__0_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[12]),
        .O(add_carry__2_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1__0
       (.I0(add_carry_i_5__0_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[3]),
        .O(add_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2__0
       (.I0(add_carry_i_5__0_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[2]),
        .O(add_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3__0
       (.I0(add_carry_i_5__0_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[1]),
        .O(add_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4__0
       (.I0(add_carry_i_5__0_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[0]),
        .O(add_carry_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry_i_5__0
       (.CI(1'b0),
        .CO({add_carry_i_5__0_n_0,add_carry_i_5__0_n_1,add_carry_i_5__0_n_2,add_carry_i_5__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_carry_i_5__0_n_4,add_carry_i_5__0_n_5,add_carry_i_5__0_n_6,add_carry_i_5__0_n_7}),
        .S({p_1_in[3:1],add_carry_i_6__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_carry_i_6__0
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_carry_i_6__0_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_carry__2_n_4}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1__1_n_3,add_clamped1_carry_i_2__1_n_0}));
  CARRY4 add_clamped1_carry_i_1__1
       (.CI(add_carry__2_n_0),
        .CO({NLW_add_clamped1_carry_i_1__1_CO_UNCONNECTED[3:1],add_clamped1_carry_i_1__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_add_clamped1_carry_i_1__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped1_carry_i_2__1
       (.I0(add_carry__2_n_5),
        .I1(add_carry__2_n_4),
        .O(add_clamped1_carry_i_2__1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1__1_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2__0_n_0,add_clamped2_carry_i_3__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__1
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2__0
       (.I0(add_clamped1_carry_i_1__1_n_3),
        .O(add_clamped2_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped2_carry_i_3__0
       (.I0(add_carry__2_n_4),
        .I1(add_carry__2_n_5),
        .O(add_clamped2_carry_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(add_clamped[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(add_clamped[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(add_clamped[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(add_clamped[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(add_clamped[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(add_clamped[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(add_clamped[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(add_clamped[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(add_clamped[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(add_clamped[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(add_clamped[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(add_clamped[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(add_clamped[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(add_clamped[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(add_clamped[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(Q[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(Q[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(Q[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(Q[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(Q[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(Q[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(Q[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(Q[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(Q[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(Q[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(Q[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(Q[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(Q[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(Q[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(Q[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(Q[9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__1_n_0,prod_rounded_clamped1_carry_i_2__1_n_0,prod_rounded_clamped1_carry_i_3__0_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__1_n_0,prod_rounded_clamped1_carry_i_5__1_n_0,prod_rounded_clamped1_carry_i_6__0_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1__1
       (.I0(prod_rounded_clamped2_carry_i_7__1_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__1_n_4),
        .O(prod_rounded_clamped1_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2__1
       (.I0(prod_rounded_clamped2_carry_i_7__1_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__1_n_6),
        .O(prod_rounded_clamped1_carry_i_2__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_3__0
       (.CI(prod_rounded_clamped1_carry_i_7__0_n_0),
        .CO({prod_rounded_clamped1_carry_i_3__0_n_0,prod_rounded_clamped1_carry_i_3__0_n_1,prod_rounded_clamped1_carry_i_3__0_n_2,prod_rounded_clamped1_carry_i_3__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3__0_n_4,prod_rounded_clamped1_carry_i_3__0_n_5,prod_rounded_clamped1_carry_i_3__0_n_6,prod_rounded_clamped1_carry_i_3__0_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4__1
       (.I0(prod_rounded_clamped2_carry_i_7__1_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__1_n_4),
        .O(prod_rounded_clamped1_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5__1
       (.I0(prod_rounded_clamped2_carry_i_7__1_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__1_n_6),
        .O(prod_rounded_clamped1_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6__0
       (.I0(prod_rounded_clamped1_carry_i_3__0_n_5),
        .I1(prod_rounded_clamped1_carry_i_3__0_n_4),
        .O(prod_rounded_clamped1_carry_i_6__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7__0
       (.CI(add_carry__0_i_5__0_n_0),
        .CO({prod_rounded_clamped1_carry_i_7__0_n_0,prod_rounded_clamped1_carry_i_7__0_n_1,prod_rounded_clamped1_carry_i_7__0_n_2,prod_rounded_clamped1_carry_i_7__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_7__0_n_4,prod_rounded_clamped1_carry_i_7__0_n_5,prod_rounded_clamped1_carry_i_7__0_n_6,prod_rounded_clamped1_carry_i_7__0_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1__1_n_0,prod_rounded_clamped2_carry_i_2__1_n_0,prod_rounded_clamped2_carry_i_3__1_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4__1_n_0,prod_rounded_clamped2_carry_i_5__1_n_0,prod_rounded_clamped2_carry_i_6__1_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1__1
       (.I0(prod_rounded_clamped2_carry_i_7__1_n_4),
        .I1(prod_rounded_clamped2_carry_i_7__1_n_5),
        .O(prod_rounded_clamped2_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2__1
       (.I0(prod_rounded_clamped2_carry_i_7__1_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__1_n_6),
        .O(prod_rounded_clamped2_carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3__1
       (.I0(prod_rounded_clamped1_carry_i_3__0_n_4),
        .O(prod_rounded_clamped2_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4__1
       (.I0(prod_rounded_clamped2_carry_i_7__1_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__1_n_4),
        .O(prod_rounded_clamped2_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5__1
       (.I0(prod_rounded_clamped2_carry_i_7__1_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__1_n_6),
        .O(prod_rounded_clamped2_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6__1
       (.I0(prod_rounded_clamped1_carry_i_3__0_n_4),
        .I1(prod_rounded_clamped1_carry_i_3__0_n_5),
        .O(prod_rounded_clamped2_carry_i_6__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__1
       (.CI(prod_rounded_clamped1_carry_i_3__0_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__1_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__1_n_1,prod_rounded_clamped2_carry_i_7__1_n_2,prod_rounded_clamped2_carry_i_7__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__1_n_4,prod_rounded_clamped2_carry_i_7__1_n_5,prod_rounded_clamped2_carry_i_7__1_n_6,prod_rounded_clamped2_carry_i_7__1_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock" *) 
module FIR_subblock_10
   (\delay_element_reg[15]_0 ,
    Q,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]\delay_element_reg[15]_0 ;
  input [15:0]Q;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire add_carry__0_i_1__9_n_0;
  wire add_carry__0_i_2__9_n_0;
  wire add_carry__0_i_3__9_n_0;
  wire add_carry__0_i_4__9_n_0;
  wire add_carry__0_i_5__9_n_0;
  wire add_carry__0_i_5__9_n_1;
  wire add_carry__0_i_5__9_n_2;
  wire add_carry__0_i_5__9_n_3;
  wire add_carry__0_i_5__9_n_4;
  wire add_carry__0_i_5__9_n_5;
  wire add_carry__0_i_5__9_n_6;
  wire add_carry__0_i_5__9_n_7;
  wire add_carry__0_n_0;
  wire add_carry__0_n_1;
  wire add_carry__0_n_2;
  wire add_carry__0_n_3;
  wire add_carry__0_n_4;
  wire add_carry__0_n_5;
  wire add_carry__0_n_6;
  wire add_carry__0_n_7;
  wire add_carry__1_i_1__9_n_0;
  wire add_carry__1_i_2__9_n_0;
  wire add_carry__1_i_3__9_n_0;
  wire add_carry__1_i_4__9_n_0;
  wire add_carry__1_n_0;
  wire add_carry__1_n_1;
  wire add_carry__1_n_2;
  wire add_carry__1_n_3;
  wire add_carry__1_n_4;
  wire add_carry__1_n_5;
  wire add_carry__1_n_6;
  wire add_carry__1_n_7;
  wire add_carry__2_i_1__9_n_0;
  wire add_carry__2_i_2__9_n_0;
  wire add_carry__2_i_3__9_n_0;
  wire add_carry__2_i_4__9_n_0;
  wire add_carry__2_i_5__9_n_0;
  wire add_carry__2_n_0;
  wire add_carry__2_n_1;
  wire add_carry__2_n_2;
  wire add_carry__2_n_3;
  wire add_carry__2_n_4;
  wire add_carry__2_n_5;
  wire add_carry__2_n_6;
  wire add_carry__2_n_7;
  wire add_carry_i_1__9_n_0;
  wire add_carry_i_2__9_n_0;
  wire add_carry_i_3__9_n_0;
  wire add_carry_i_4__9_n_0;
  wire add_carry_i_5__9_n_0;
  wire add_carry_i_5__9_n_1;
  wire add_carry_i_5__9_n_2;
  wire add_carry_i_5__9_n_3;
  wire add_carry_i_5__9_n_4;
  wire add_carry_i_5__9_n_5;
  wire add_carry_i_5__9_n_6;
  wire add_carry_i_5__9_n_7;
  wire add_carry_i_6__9_n_0;
  wire add_carry_n_0;
  wire add_carry_n_1;
  wire add_carry_n_2;
  wire add_carry_n_3;
  wire add_carry_n_4;
  wire add_carry_n_5;
  wire add_carry_n_6;
  wire add_carry_n_7;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1__10_n_3;
  wire add_clamped1_carry_i_2__10_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__10_n_0;
  wire add_clamped2_carry_i_2__9_n_0;
  wire add_clamped2_carry_i_3__9_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]\delay_element_reg[15]_0 ;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__10_n_0;
  wire prod_rounded_clamped1_carry_i_2__10_n_0;
  wire prod_rounded_clamped1_carry_i_3__9_n_0;
  wire prod_rounded_clamped1_carry_i_3__9_n_1;
  wire prod_rounded_clamped1_carry_i_3__9_n_2;
  wire prod_rounded_clamped1_carry_i_3__9_n_3;
  wire prod_rounded_clamped1_carry_i_3__9_n_4;
  wire prod_rounded_clamped1_carry_i_3__9_n_5;
  wire prod_rounded_clamped1_carry_i_3__9_n_6;
  wire prod_rounded_clamped1_carry_i_3__9_n_7;
  wire prod_rounded_clamped1_carry_i_4__10_n_0;
  wire prod_rounded_clamped1_carry_i_5__10_n_0;
  wire prod_rounded_clamped1_carry_i_6__9_n_0;
  wire prod_rounded_clamped1_carry_i_7__9_n_0;
  wire prod_rounded_clamped1_carry_i_7__9_n_1;
  wire prod_rounded_clamped1_carry_i_7__9_n_2;
  wire prod_rounded_clamped1_carry_i_7__9_n_3;
  wire prod_rounded_clamped1_carry_i_7__9_n_4;
  wire prod_rounded_clamped1_carry_i_7__9_n_5;
  wire prod_rounded_clamped1_carry_i_7__9_n_6;
  wire prod_rounded_clamped1_carry_i_7__9_n_7;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1__10_n_0;
  wire prod_rounded_clamped2_carry_i_2__10_n_0;
  wire prod_rounded_clamped2_carry_i_3__10_n_0;
  wire prod_rounded_clamped2_carry_i_4__10_n_0;
  wire prod_rounded_clamped2_carry_i_5__10_n_0;
  wire prod_rounded_clamped2_carry_i_6__10_n_0;
  wire prod_rounded_clamped2_carry_i_7__10_n_1;
  wire prod_rounded_clamped2_carry_i_7__10_n_2;
  wire prod_rounded_clamped2_carry_i_7__10_n_3;
  wire prod_rounded_clamped2_carry_i_7__10_n_4;
  wire prod_rounded_clamped2_carry_i_7__10_n_5;
  wire prod_rounded_clamped2_carry_i_7__10_n_6;
  wire prod_rounded_clamped2_carry_i_7__10_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:1]NLW_add_clamped1_carry_i_1__10_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_i_1__10_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__10_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1__9_n_0,add_carry_i_2__9_n_0,add_carry_i_3__9_n_0,add_carry_i_4__9_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1__9_n_0,add_carry__0_i_2__9_n_0,add_carry__0_i_3__9_n_0,add_carry__0_i_4__9_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1__9
       (.I0(add_carry__0_i_5__9_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[7]),
        .O(add_carry__0_i_1__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2__9
       (.I0(add_carry__0_i_5__9_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[6]),
        .O(add_carry__0_i_2__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3__9
       (.I0(add_carry__0_i_5__9_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[5]),
        .O(add_carry__0_i_3__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4__9
       (.I0(add_carry__0_i_5__9_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[4]),
        .O(add_carry__0_i_4__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry__0_i_5__9
       (.CI(add_carry_i_5__9_n_0),
        .CO({add_carry__0_i_5__9_n_0,add_carry__0_i_5__9_n_1,add_carry__0_i_5__9_n_2,add_carry__0_i_5__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_carry__0_i_5__9_n_4,add_carry__0_i_5__9_n_5,add_carry__0_i_5__9_n_6,add_carry__0_i_5__9_n_7}),
        .S(p_1_in[7:4]));
  CARRY4 add_carry__1
       (.CI(add_carry__0_n_0),
        .CO({add_carry__1_n_0,add_carry__1_n_1,add_carry__1_n_2,add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1__9_n_0,add_carry__1_i_2__9_n_0,add_carry__1_i_3__9_n_0,add_carry__1_i_4__9_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1__9
       (.I0(prod_rounded_clamped1_carry_i_7__9_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[11]),
        .O(add_carry__1_i_1__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2__9
       (.I0(prod_rounded_clamped1_carry_i_7__9_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[10]),
        .O(add_carry__1_i_2__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3__9
       (.I0(prod_rounded_clamped1_carry_i_7__9_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[9]),
        .O(add_carry__1_i_3__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4__9
       (.I0(prod_rounded_clamped1_carry_i_7__9_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[8]),
        .O(add_carry__1_i_4__9_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1__9_n_0,Q[14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2__9_n_0,add_carry__2_i_3__9_n_0,add_carry__2_i_4__9_n_0,add_carry__2_i_5__9_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1__9
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__9_n_4),
        .O(add_carry__2_i_1__9_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2__9
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__9_n_4),
        .I3(Q[15]),
        .O(add_carry__2_i_2__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3__9
       (.I0(prod_rounded_clamped1_carry_i_3__9_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[14]),
        .O(add_carry__2_i_3__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4__9
       (.I0(prod_rounded_clamped1_carry_i_3__9_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[13]),
        .O(add_carry__2_i_4__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5__9
       (.I0(prod_rounded_clamped1_carry_i_3__9_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[12]),
        .O(add_carry__2_i_5__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1__9
       (.I0(add_carry_i_5__9_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[3]),
        .O(add_carry_i_1__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2__9
       (.I0(add_carry_i_5__9_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[2]),
        .O(add_carry_i_2__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3__9
       (.I0(add_carry_i_5__9_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[1]),
        .O(add_carry_i_3__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4__9
       (.I0(add_carry_i_5__9_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[0]),
        .O(add_carry_i_4__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry_i_5__9
       (.CI(1'b0),
        .CO({add_carry_i_5__9_n_0,add_carry_i_5__9_n_1,add_carry_i_5__9_n_2,add_carry_i_5__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_carry_i_5__9_n_4,add_carry_i_5__9_n_5,add_carry_i_5__9_n_6,add_carry_i_5__9_n_7}),
        .S({p_1_in[3:1],add_carry_i_6__9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_carry_i_6__9
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_carry_i_6__9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_carry__2_n_4}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1__10_n_3,add_clamped1_carry_i_2__10_n_0}));
  CARRY4 add_clamped1_carry_i_1__10
       (.CI(add_carry__2_n_0),
        .CO({NLW_add_clamped1_carry_i_1__10_CO_UNCONNECTED[3:1],add_clamped1_carry_i_1__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_add_clamped1_carry_i_1__10_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped1_carry_i_2__10
       (.I0(add_carry__2_n_5),
        .I1(add_carry__2_n_4),
        .O(add_clamped1_carry_i_2__10_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1__10_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2__9_n_0,add_clamped2_carry_i_3__9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__10
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2__9
       (.I0(add_clamped1_carry_i_1__10_n_3),
        .O(add_clamped2_carry_i_2__9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped2_carry_i_3__9
       (.I0(add_carry__2_n_4),
        .I1(add_carry__2_n_5),
        .O(add_clamped2_carry_i_3__9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(add_clamped[0]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(add_clamped[10]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(add_clamped[11]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(add_clamped[12]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(add_clamped[13]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(add_clamped[14]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(add_clamped[15]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(add_clamped[1]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(add_clamped[2]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(add_clamped[3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(add_clamped[4]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(add_clamped[5]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(add_clamped[6]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(add_clamped[7]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(add_clamped[8]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(\delay_element_reg[15]_0 [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(\delay_element_reg[15]_0 [10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(\delay_element_reg[15]_0 [11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(\delay_element_reg[15]_0 [12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(\delay_element_reg[15]_0 [13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(\delay_element_reg[15]_0 [14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(\delay_element_reg[15]_0 [15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(\delay_element_reg[15]_0 [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(\delay_element_reg[15]_0 [2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(\delay_element_reg[15]_0 [3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(\delay_element_reg[15]_0 [4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(\delay_element_reg[15]_0 [5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(\delay_element_reg[15]_0 [6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(\delay_element_reg[15]_0 [7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(\delay_element_reg[15]_0 [8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(\delay_element_reg[15]_0 [9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__10_n_0,prod_rounded_clamped1_carry_i_2__10_n_0,prod_rounded_clamped1_carry_i_3__9_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__10_n_0,prod_rounded_clamped1_carry_i_5__10_n_0,prod_rounded_clamped1_carry_i_6__9_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1__10
       (.I0(prod_rounded_clamped2_carry_i_7__10_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__10_n_4),
        .O(prod_rounded_clamped1_carry_i_1__10_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2__10
       (.I0(prod_rounded_clamped2_carry_i_7__10_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__10_n_6),
        .O(prod_rounded_clamped1_carry_i_2__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_3__9
       (.CI(prod_rounded_clamped1_carry_i_7__9_n_0),
        .CO({prod_rounded_clamped1_carry_i_3__9_n_0,prod_rounded_clamped1_carry_i_3__9_n_1,prod_rounded_clamped1_carry_i_3__9_n_2,prod_rounded_clamped1_carry_i_3__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3__9_n_4,prod_rounded_clamped1_carry_i_3__9_n_5,prod_rounded_clamped1_carry_i_3__9_n_6,prod_rounded_clamped1_carry_i_3__9_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4__10
       (.I0(prod_rounded_clamped2_carry_i_7__10_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__10_n_4),
        .O(prod_rounded_clamped1_carry_i_4__10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5__10
       (.I0(prod_rounded_clamped2_carry_i_7__10_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__10_n_6),
        .O(prod_rounded_clamped1_carry_i_5__10_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6__9
       (.I0(prod_rounded_clamped1_carry_i_3__9_n_5),
        .I1(prod_rounded_clamped1_carry_i_3__9_n_4),
        .O(prod_rounded_clamped1_carry_i_6__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7__9
       (.CI(add_carry__0_i_5__9_n_0),
        .CO({prod_rounded_clamped1_carry_i_7__9_n_0,prod_rounded_clamped1_carry_i_7__9_n_1,prod_rounded_clamped1_carry_i_7__9_n_2,prod_rounded_clamped1_carry_i_7__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_7__9_n_4,prod_rounded_clamped1_carry_i_7__9_n_5,prod_rounded_clamped1_carry_i_7__9_n_6,prod_rounded_clamped1_carry_i_7__9_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1__10_n_0,prod_rounded_clamped2_carry_i_2__10_n_0,prod_rounded_clamped2_carry_i_3__10_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4__10_n_0,prod_rounded_clamped2_carry_i_5__10_n_0,prod_rounded_clamped2_carry_i_6__10_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1__10
       (.I0(prod_rounded_clamped2_carry_i_7__10_n_4),
        .I1(prod_rounded_clamped2_carry_i_7__10_n_5),
        .O(prod_rounded_clamped2_carry_i_1__10_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2__10
       (.I0(prod_rounded_clamped2_carry_i_7__10_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__10_n_6),
        .O(prod_rounded_clamped2_carry_i_2__10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3__10
       (.I0(prod_rounded_clamped1_carry_i_3__9_n_4),
        .O(prod_rounded_clamped2_carry_i_3__10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4__10
       (.I0(prod_rounded_clamped2_carry_i_7__10_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__10_n_4),
        .O(prod_rounded_clamped2_carry_i_4__10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5__10
       (.I0(prod_rounded_clamped2_carry_i_7__10_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__10_n_6),
        .O(prod_rounded_clamped2_carry_i_5__10_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6__10
       (.I0(prod_rounded_clamped1_carry_i_3__9_n_4),
        .I1(prod_rounded_clamped1_carry_i_3__9_n_5),
        .O(prod_rounded_clamped2_carry_i_6__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__10
       (.CI(prod_rounded_clamped1_carry_i_3__9_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__10_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__10_n_1,prod_rounded_clamped2_carry_i_7__10_n_2,prod_rounded_clamped2_carry_i_7__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__10_n_4,prod_rounded_clamped2_carry_i_7__10_n_5,prod_rounded_clamped2_carry_i_7__10_n_6,prod_rounded_clamped2_carry_i_7__10_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock" *) 
module FIR_subblock_11
   (Q,
    add_carry__2_0,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]Q;
  input [15:0]add_carry__2_0;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire add_carry__0_i_1__10_n_0;
  wire add_carry__0_i_2__10_n_0;
  wire add_carry__0_i_3__10_n_0;
  wire add_carry__0_i_4__10_n_0;
  wire add_carry__0_i_5__10_n_0;
  wire add_carry__0_i_5__10_n_1;
  wire add_carry__0_i_5__10_n_2;
  wire add_carry__0_i_5__10_n_3;
  wire add_carry__0_i_5__10_n_4;
  wire add_carry__0_i_5__10_n_5;
  wire add_carry__0_i_5__10_n_6;
  wire add_carry__0_i_5__10_n_7;
  wire add_carry__0_n_0;
  wire add_carry__0_n_1;
  wire add_carry__0_n_2;
  wire add_carry__0_n_3;
  wire add_carry__0_n_4;
  wire add_carry__0_n_5;
  wire add_carry__0_n_6;
  wire add_carry__0_n_7;
  wire add_carry__1_i_1__10_n_0;
  wire add_carry__1_i_2__10_n_0;
  wire add_carry__1_i_3__10_n_0;
  wire add_carry__1_i_4__10_n_0;
  wire add_carry__1_n_0;
  wire add_carry__1_n_1;
  wire add_carry__1_n_2;
  wire add_carry__1_n_3;
  wire add_carry__1_n_4;
  wire add_carry__1_n_5;
  wire add_carry__1_n_6;
  wire add_carry__1_n_7;
  wire [15:0]add_carry__2_0;
  wire add_carry__2_i_1__10_n_0;
  wire add_carry__2_i_2__10_n_0;
  wire add_carry__2_i_3__10_n_0;
  wire add_carry__2_i_4__10_n_0;
  wire add_carry__2_i_5__10_n_0;
  wire add_carry__2_n_0;
  wire add_carry__2_n_1;
  wire add_carry__2_n_2;
  wire add_carry__2_n_3;
  wire add_carry__2_n_4;
  wire add_carry__2_n_5;
  wire add_carry__2_n_6;
  wire add_carry__2_n_7;
  wire add_carry_i_1__10_n_0;
  wire add_carry_i_2__10_n_0;
  wire add_carry_i_3__10_n_0;
  wire add_carry_i_4__10_n_0;
  wire add_carry_i_5__10_n_0;
  wire add_carry_i_5__10_n_1;
  wire add_carry_i_5__10_n_2;
  wire add_carry_i_5__10_n_3;
  wire add_carry_i_5__10_n_4;
  wire add_carry_i_5__10_n_5;
  wire add_carry_i_5__10_n_6;
  wire add_carry_i_5__10_n_7;
  wire add_carry_i_6__10_n_0;
  wire add_carry_n_0;
  wire add_carry_n_1;
  wire add_carry_n_2;
  wire add_carry_n_3;
  wire add_carry_n_4;
  wire add_carry_n_5;
  wire add_carry_n_6;
  wire add_carry_n_7;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1__11_n_3;
  wire add_clamped1_carry_i_2__11_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__11_n_0;
  wire add_clamped2_carry_i_2__10_n_0;
  wire add_clamped2_carry_i_3__10_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__11_n_0;
  wire prod_rounded_clamped1_carry_i_2__11_n_0;
  wire prod_rounded_clamped1_carry_i_3__10_n_0;
  wire prod_rounded_clamped1_carry_i_3__10_n_1;
  wire prod_rounded_clamped1_carry_i_3__10_n_2;
  wire prod_rounded_clamped1_carry_i_3__10_n_3;
  wire prod_rounded_clamped1_carry_i_3__10_n_4;
  wire prod_rounded_clamped1_carry_i_3__10_n_5;
  wire prod_rounded_clamped1_carry_i_3__10_n_6;
  wire prod_rounded_clamped1_carry_i_3__10_n_7;
  wire prod_rounded_clamped1_carry_i_4__11_n_0;
  wire prod_rounded_clamped1_carry_i_5__11_n_0;
  wire prod_rounded_clamped1_carry_i_6__10_n_0;
  wire prod_rounded_clamped1_carry_i_7__10_n_0;
  wire prod_rounded_clamped1_carry_i_7__10_n_1;
  wire prod_rounded_clamped1_carry_i_7__10_n_2;
  wire prod_rounded_clamped1_carry_i_7__10_n_3;
  wire prod_rounded_clamped1_carry_i_7__10_n_4;
  wire prod_rounded_clamped1_carry_i_7__10_n_5;
  wire prod_rounded_clamped1_carry_i_7__10_n_6;
  wire prod_rounded_clamped1_carry_i_7__10_n_7;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1__11_n_0;
  wire prod_rounded_clamped2_carry_i_2__11_n_0;
  wire prod_rounded_clamped2_carry_i_3__11_n_0;
  wire prod_rounded_clamped2_carry_i_4__11_n_0;
  wire prod_rounded_clamped2_carry_i_5__11_n_0;
  wire prod_rounded_clamped2_carry_i_6__11_n_0;
  wire prod_rounded_clamped2_carry_i_7__11_n_1;
  wire prod_rounded_clamped2_carry_i_7__11_n_2;
  wire prod_rounded_clamped2_carry_i_7__11_n_3;
  wire prod_rounded_clamped2_carry_i_7__11_n_4;
  wire prod_rounded_clamped2_carry_i_7__11_n_5;
  wire prod_rounded_clamped2_carry_i_7__11_n_6;
  wire prod_rounded_clamped2_carry_i_7__11_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:1]NLW_add_clamped1_carry_i_1__11_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_i_1__11_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__11_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1__10_n_0,add_carry_i_2__10_n_0,add_carry_i_3__10_n_0,add_carry_i_4__10_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1__10_n_0,add_carry__0_i_2__10_n_0,add_carry__0_i_3__10_n_0,add_carry__0_i_4__10_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1__10
       (.I0(add_carry__0_i_5__10_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[7]),
        .O(add_carry__0_i_1__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2__10
       (.I0(add_carry__0_i_5__10_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[6]),
        .O(add_carry__0_i_2__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3__10
       (.I0(add_carry__0_i_5__10_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[5]),
        .O(add_carry__0_i_3__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4__10
       (.I0(add_carry__0_i_5__10_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[4]),
        .O(add_carry__0_i_4__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry__0_i_5__10
       (.CI(add_carry_i_5__10_n_0),
        .CO({add_carry__0_i_5__10_n_0,add_carry__0_i_5__10_n_1,add_carry__0_i_5__10_n_2,add_carry__0_i_5__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_carry__0_i_5__10_n_4,add_carry__0_i_5__10_n_5,add_carry__0_i_5__10_n_6,add_carry__0_i_5__10_n_7}),
        .S(p_1_in[7:4]));
  CARRY4 add_carry__1
       (.CI(add_carry__0_n_0),
        .CO({add_carry__1_n_0,add_carry__1_n_1,add_carry__1_n_2,add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1__10_n_0,add_carry__1_i_2__10_n_0,add_carry__1_i_3__10_n_0,add_carry__1_i_4__10_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1__10
       (.I0(prod_rounded_clamped1_carry_i_7__10_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[11]),
        .O(add_carry__1_i_1__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2__10
       (.I0(prod_rounded_clamped1_carry_i_7__10_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[10]),
        .O(add_carry__1_i_2__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3__10
       (.I0(prod_rounded_clamped1_carry_i_7__10_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[9]),
        .O(add_carry__1_i_3__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4__10
       (.I0(prod_rounded_clamped1_carry_i_7__10_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[8]),
        .O(add_carry__1_i_4__10_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1__10_n_0,add_carry__2_0[14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2__10_n_0,add_carry__2_i_3__10_n_0,add_carry__2_i_4__10_n_0,add_carry__2_i_5__10_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1__10
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__10_n_4),
        .O(add_carry__2_i_1__10_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2__10
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__10_n_4),
        .I3(add_carry__2_0[15]),
        .O(add_carry__2_i_2__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3__10
       (.I0(prod_rounded_clamped1_carry_i_3__10_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[14]),
        .O(add_carry__2_i_3__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4__10
       (.I0(prod_rounded_clamped1_carry_i_3__10_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[13]),
        .O(add_carry__2_i_4__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5__10
       (.I0(prod_rounded_clamped1_carry_i_3__10_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[12]),
        .O(add_carry__2_i_5__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1__10
       (.I0(add_carry_i_5__10_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[3]),
        .O(add_carry_i_1__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2__10
       (.I0(add_carry_i_5__10_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[2]),
        .O(add_carry_i_2__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3__10
       (.I0(add_carry_i_5__10_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[1]),
        .O(add_carry_i_3__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4__10
       (.I0(add_carry_i_5__10_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[0]),
        .O(add_carry_i_4__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry_i_5__10
       (.CI(1'b0),
        .CO({add_carry_i_5__10_n_0,add_carry_i_5__10_n_1,add_carry_i_5__10_n_2,add_carry_i_5__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_carry_i_5__10_n_4,add_carry_i_5__10_n_5,add_carry_i_5__10_n_6,add_carry_i_5__10_n_7}),
        .S({p_1_in[3:1],add_carry_i_6__10_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_carry_i_6__10
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_carry_i_6__10_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_carry__2_n_4}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1__11_n_3,add_clamped1_carry_i_2__11_n_0}));
  CARRY4 add_clamped1_carry_i_1__11
       (.CI(add_carry__2_n_0),
        .CO({NLW_add_clamped1_carry_i_1__11_CO_UNCONNECTED[3:1],add_clamped1_carry_i_1__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_add_clamped1_carry_i_1__11_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped1_carry_i_2__11
       (.I0(add_carry__2_n_5),
        .I1(add_carry__2_n_4),
        .O(add_clamped1_carry_i_2__11_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1__11_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2__10_n_0,add_clamped2_carry_i_3__10_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__11
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2__10
       (.I0(add_clamped1_carry_i_1__11_n_3),
        .O(add_clamped2_carry_i_2__10_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped2_carry_i_3__10
       (.I0(add_carry__2_n_4),
        .I1(add_carry__2_n_5),
        .O(add_clamped2_carry_i_3__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(add_clamped[0]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(add_clamped[10]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(add_clamped[11]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(add_clamped[12]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(add_clamped[13]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(add_clamped[14]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(add_clamped[15]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(add_clamped[1]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(add_clamped[2]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(add_clamped[3]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(add_clamped[4]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(add_clamped[5]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(add_clamped[6]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(add_clamped[7]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(add_clamped[8]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(Q[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(Q[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(Q[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(Q[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(Q[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(Q[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(Q[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(Q[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(Q[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(Q[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(Q[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(Q[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(Q[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(Q[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(Q[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(Q[9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__11_n_0,prod_rounded_clamped1_carry_i_2__11_n_0,prod_rounded_clamped1_carry_i_3__10_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__11_n_0,prod_rounded_clamped1_carry_i_5__11_n_0,prod_rounded_clamped1_carry_i_6__10_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1__11
       (.I0(prod_rounded_clamped2_carry_i_7__11_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__11_n_4),
        .O(prod_rounded_clamped1_carry_i_1__11_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2__11
       (.I0(prod_rounded_clamped2_carry_i_7__11_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__11_n_6),
        .O(prod_rounded_clamped1_carry_i_2__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_3__10
       (.CI(prod_rounded_clamped1_carry_i_7__10_n_0),
        .CO({prod_rounded_clamped1_carry_i_3__10_n_0,prod_rounded_clamped1_carry_i_3__10_n_1,prod_rounded_clamped1_carry_i_3__10_n_2,prod_rounded_clamped1_carry_i_3__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3__10_n_4,prod_rounded_clamped1_carry_i_3__10_n_5,prod_rounded_clamped1_carry_i_3__10_n_6,prod_rounded_clamped1_carry_i_3__10_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4__11
       (.I0(prod_rounded_clamped2_carry_i_7__11_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__11_n_4),
        .O(prod_rounded_clamped1_carry_i_4__11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5__11
       (.I0(prod_rounded_clamped2_carry_i_7__11_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__11_n_6),
        .O(prod_rounded_clamped1_carry_i_5__11_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6__10
       (.I0(prod_rounded_clamped1_carry_i_3__10_n_5),
        .I1(prod_rounded_clamped1_carry_i_3__10_n_4),
        .O(prod_rounded_clamped1_carry_i_6__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7__10
       (.CI(add_carry__0_i_5__10_n_0),
        .CO({prod_rounded_clamped1_carry_i_7__10_n_0,prod_rounded_clamped1_carry_i_7__10_n_1,prod_rounded_clamped1_carry_i_7__10_n_2,prod_rounded_clamped1_carry_i_7__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_7__10_n_4,prod_rounded_clamped1_carry_i_7__10_n_5,prod_rounded_clamped1_carry_i_7__10_n_6,prod_rounded_clamped1_carry_i_7__10_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1__11_n_0,prod_rounded_clamped2_carry_i_2__11_n_0,prod_rounded_clamped2_carry_i_3__11_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4__11_n_0,prod_rounded_clamped2_carry_i_5__11_n_0,prod_rounded_clamped2_carry_i_6__11_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1__11
       (.I0(prod_rounded_clamped2_carry_i_7__11_n_4),
        .I1(prod_rounded_clamped2_carry_i_7__11_n_5),
        .O(prod_rounded_clamped2_carry_i_1__11_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2__11
       (.I0(prod_rounded_clamped2_carry_i_7__11_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__11_n_6),
        .O(prod_rounded_clamped2_carry_i_2__11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3__11
       (.I0(prod_rounded_clamped1_carry_i_3__10_n_4),
        .O(prod_rounded_clamped2_carry_i_3__11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4__11
       (.I0(prod_rounded_clamped2_carry_i_7__11_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__11_n_4),
        .O(prod_rounded_clamped2_carry_i_4__11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5__11
       (.I0(prod_rounded_clamped2_carry_i_7__11_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__11_n_6),
        .O(prod_rounded_clamped2_carry_i_5__11_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6__11
       (.I0(prod_rounded_clamped1_carry_i_3__10_n_4),
        .I1(prod_rounded_clamped1_carry_i_3__10_n_5),
        .O(prod_rounded_clamped2_carry_i_6__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__11
       (.CI(prod_rounded_clamped1_carry_i_3__10_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__11_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__11_n_1,prod_rounded_clamped2_carry_i_7__11_n_2,prod_rounded_clamped2_carry_i_7__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__11_n_4,prod_rounded_clamped2_carry_i_7__11_n_5,prod_rounded_clamped2_carry_i_7__11_n_6,prod_rounded_clamped2_carry_i_7__11_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock" *) 
module FIR_subblock_12
   (\delay_element_reg[15]_0 ,
    Q,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]\delay_element_reg[15]_0 ;
  input [15:0]Q;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire add_carry__0_i_1__11_n_0;
  wire add_carry__0_i_2__11_n_0;
  wire add_carry__0_i_3__11_n_0;
  wire add_carry__0_i_4__11_n_0;
  wire add_carry__0_i_5__11_n_0;
  wire add_carry__0_i_5__11_n_1;
  wire add_carry__0_i_5__11_n_2;
  wire add_carry__0_i_5__11_n_3;
  wire add_carry__0_i_5__11_n_4;
  wire add_carry__0_i_5__11_n_5;
  wire add_carry__0_i_5__11_n_6;
  wire add_carry__0_i_5__11_n_7;
  wire add_carry__0_n_0;
  wire add_carry__0_n_1;
  wire add_carry__0_n_2;
  wire add_carry__0_n_3;
  wire add_carry__0_n_4;
  wire add_carry__0_n_5;
  wire add_carry__0_n_6;
  wire add_carry__0_n_7;
  wire add_carry__1_i_1__11_n_0;
  wire add_carry__1_i_2__11_n_0;
  wire add_carry__1_i_3__11_n_0;
  wire add_carry__1_i_4__11_n_0;
  wire add_carry__1_n_0;
  wire add_carry__1_n_1;
  wire add_carry__1_n_2;
  wire add_carry__1_n_3;
  wire add_carry__1_n_4;
  wire add_carry__1_n_5;
  wire add_carry__1_n_6;
  wire add_carry__1_n_7;
  wire add_carry__2_i_1__11_n_0;
  wire add_carry__2_i_2__11_n_0;
  wire add_carry__2_i_3__11_n_0;
  wire add_carry__2_i_4__11_n_0;
  wire add_carry__2_i_5__11_n_0;
  wire add_carry__2_n_0;
  wire add_carry__2_n_1;
  wire add_carry__2_n_2;
  wire add_carry__2_n_3;
  wire add_carry__2_n_4;
  wire add_carry__2_n_5;
  wire add_carry__2_n_6;
  wire add_carry__2_n_7;
  wire add_carry_i_1__11_n_0;
  wire add_carry_i_2__11_n_0;
  wire add_carry_i_3__11_n_0;
  wire add_carry_i_4__11_n_0;
  wire add_carry_i_5__11_n_0;
  wire add_carry_i_5__11_n_1;
  wire add_carry_i_5__11_n_2;
  wire add_carry_i_5__11_n_3;
  wire add_carry_i_5__11_n_4;
  wire add_carry_i_5__11_n_5;
  wire add_carry_i_5__11_n_6;
  wire add_carry_i_5__11_n_7;
  wire add_carry_i_6__11_n_0;
  wire add_carry_n_0;
  wire add_carry_n_1;
  wire add_carry_n_2;
  wire add_carry_n_3;
  wire add_carry_n_4;
  wire add_carry_n_5;
  wire add_carry_n_6;
  wire add_carry_n_7;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1__12_n_3;
  wire add_clamped1_carry_i_2__12_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__12_n_0;
  wire add_clamped2_carry_i_2__11_n_0;
  wire add_clamped2_carry_i_3__11_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]\delay_element_reg[15]_0 ;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__12_n_0;
  wire prod_rounded_clamped1_carry_i_2__12_n_0;
  wire prod_rounded_clamped1_carry_i_3__11_n_0;
  wire prod_rounded_clamped1_carry_i_3__11_n_1;
  wire prod_rounded_clamped1_carry_i_3__11_n_2;
  wire prod_rounded_clamped1_carry_i_3__11_n_3;
  wire prod_rounded_clamped1_carry_i_3__11_n_4;
  wire prod_rounded_clamped1_carry_i_3__11_n_5;
  wire prod_rounded_clamped1_carry_i_3__11_n_6;
  wire prod_rounded_clamped1_carry_i_3__11_n_7;
  wire prod_rounded_clamped1_carry_i_4__12_n_0;
  wire prod_rounded_clamped1_carry_i_5__12_n_0;
  wire prod_rounded_clamped1_carry_i_6__11_n_0;
  wire prod_rounded_clamped1_carry_i_7__11_n_0;
  wire prod_rounded_clamped1_carry_i_7__11_n_1;
  wire prod_rounded_clamped1_carry_i_7__11_n_2;
  wire prod_rounded_clamped1_carry_i_7__11_n_3;
  wire prod_rounded_clamped1_carry_i_7__11_n_4;
  wire prod_rounded_clamped1_carry_i_7__11_n_5;
  wire prod_rounded_clamped1_carry_i_7__11_n_6;
  wire prod_rounded_clamped1_carry_i_7__11_n_7;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1__12_n_0;
  wire prod_rounded_clamped2_carry_i_2__12_n_0;
  wire prod_rounded_clamped2_carry_i_3__12_n_0;
  wire prod_rounded_clamped2_carry_i_4__12_n_0;
  wire prod_rounded_clamped2_carry_i_5__12_n_0;
  wire prod_rounded_clamped2_carry_i_6__12_n_0;
  wire prod_rounded_clamped2_carry_i_7__12_n_1;
  wire prod_rounded_clamped2_carry_i_7__12_n_2;
  wire prod_rounded_clamped2_carry_i_7__12_n_3;
  wire prod_rounded_clamped2_carry_i_7__12_n_4;
  wire prod_rounded_clamped2_carry_i_7__12_n_5;
  wire prod_rounded_clamped2_carry_i_7__12_n_6;
  wire prod_rounded_clamped2_carry_i_7__12_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:1]NLW_add_clamped1_carry_i_1__12_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_i_1__12_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__12_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1__11_n_0,add_carry_i_2__11_n_0,add_carry_i_3__11_n_0,add_carry_i_4__11_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1__11_n_0,add_carry__0_i_2__11_n_0,add_carry__0_i_3__11_n_0,add_carry__0_i_4__11_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1__11
       (.I0(add_carry__0_i_5__11_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[7]),
        .O(add_carry__0_i_1__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2__11
       (.I0(add_carry__0_i_5__11_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[6]),
        .O(add_carry__0_i_2__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3__11
       (.I0(add_carry__0_i_5__11_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[5]),
        .O(add_carry__0_i_3__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4__11
       (.I0(add_carry__0_i_5__11_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[4]),
        .O(add_carry__0_i_4__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry__0_i_5__11
       (.CI(add_carry_i_5__11_n_0),
        .CO({add_carry__0_i_5__11_n_0,add_carry__0_i_5__11_n_1,add_carry__0_i_5__11_n_2,add_carry__0_i_5__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_carry__0_i_5__11_n_4,add_carry__0_i_5__11_n_5,add_carry__0_i_5__11_n_6,add_carry__0_i_5__11_n_7}),
        .S(p_1_in[7:4]));
  CARRY4 add_carry__1
       (.CI(add_carry__0_n_0),
        .CO({add_carry__1_n_0,add_carry__1_n_1,add_carry__1_n_2,add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1__11_n_0,add_carry__1_i_2__11_n_0,add_carry__1_i_3__11_n_0,add_carry__1_i_4__11_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1__11
       (.I0(prod_rounded_clamped1_carry_i_7__11_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[11]),
        .O(add_carry__1_i_1__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2__11
       (.I0(prod_rounded_clamped1_carry_i_7__11_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[10]),
        .O(add_carry__1_i_2__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3__11
       (.I0(prod_rounded_clamped1_carry_i_7__11_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[9]),
        .O(add_carry__1_i_3__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4__11
       (.I0(prod_rounded_clamped1_carry_i_7__11_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[8]),
        .O(add_carry__1_i_4__11_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1__11_n_0,Q[14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2__11_n_0,add_carry__2_i_3__11_n_0,add_carry__2_i_4__11_n_0,add_carry__2_i_5__11_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1__11
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__11_n_4),
        .O(add_carry__2_i_1__11_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2__11
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__11_n_4),
        .I3(Q[15]),
        .O(add_carry__2_i_2__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3__11
       (.I0(prod_rounded_clamped1_carry_i_3__11_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[14]),
        .O(add_carry__2_i_3__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4__11
       (.I0(prod_rounded_clamped1_carry_i_3__11_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[13]),
        .O(add_carry__2_i_4__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5__11
       (.I0(prod_rounded_clamped1_carry_i_3__11_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[12]),
        .O(add_carry__2_i_5__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1__11
       (.I0(add_carry_i_5__11_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[3]),
        .O(add_carry_i_1__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2__11
       (.I0(add_carry_i_5__11_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[2]),
        .O(add_carry_i_2__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3__11
       (.I0(add_carry_i_5__11_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[1]),
        .O(add_carry_i_3__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4__11
       (.I0(add_carry_i_5__11_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[0]),
        .O(add_carry_i_4__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry_i_5__11
       (.CI(1'b0),
        .CO({add_carry_i_5__11_n_0,add_carry_i_5__11_n_1,add_carry_i_5__11_n_2,add_carry_i_5__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_carry_i_5__11_n_4,add_carry_i_5__11_n_5,add_carry_i_5__11_n_6,add_carry_i_5__11_n_7}),
        .S({p_1_in[3:1],add_carry_i_6__11_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_carry_i_6__11
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_carry_i_6__11_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_carry__2_n_4}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1__12_n_3,add_clamped1_carry_i_2__12_n_0}));
  CARRY4 add_clamped1_carry_i_1__12
       (.CI(add_carry__2_n_0),
        .CO({NLW_add_clamped1_carry_i_1__12_CO_UNCONNECTED[3:1],add_clamped1_carry_i_1__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_add_clamped1_carry_i_1__12_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped1_carry_i_2__12
       (.I0(add_carry__2_n_5),
        .I1(add_carry__2_n_4),
        .O(add_clamped1_carry_i_2__12_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1__12_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2__11_n_0,add_clamped2_carry_i_3__11_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__12
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2__11
       (.I0(add_clamped1_carry_i_1__12_n_3),
        .O(add_clamped2_carry_i_2__11_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped2_carry_i_3__11
       (.I0(add_carry__2_n_4),
        .I1(add_carry__2_n_5),
        .O(add_clamped2_carry_i_3__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(add_clamped[0]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(add_clamped[10]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(add_clamped[11]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(add_clamped[12]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(add_clamped[13]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(add_clamped[14]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(add_clamped[15]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(add_clamped[1]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(add_clamped[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(add_clamped[3]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(add_clamped[4]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(add_clamped[5]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(add_clamped[6]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(add_clamped[7]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(add_clamped[8]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(\delay_element_reg[15]_0 [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(\delay_element_reg[15]_0 [10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(\delay_element_reg[15]_0 [11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(\delay_element_reg[15]_0 [12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(\delay_element_reg[15]_0 [13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(\delay_element_reg[15]_0 [14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(\delay_element_reg[15]_0 [15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(\delay_element_reg[15]_0 [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(\delay_element_reg[15]_0 [2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(\delay_element_reg[15]_0 [3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(\delay_element_reg[15]_0 [4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(\delay_element_reg[15]_0 [5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(\delay_element_reg[15]_0 [6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(\delay_element_reg[15]_0 [7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(\delay_element_reg[15]_0 [8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(\delay_element_reg[15]_0 [9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__12_n_0,prod_rounded_clamped1_carry_i_2__12_n_0,prod_rounded_clamped1_carry_i_3__11_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__12_n_0,prod_rounded_clamped1_carry_i_5__12_n_0,prod_rounded_clamped1_carry_i_6__11_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1__12
       (.I0(prod_rounded_clamped2_carry_i_7__12_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__12_n_4),
        .O(prod_rounded_clamped1_carry_i_1__12_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2__12
       (.I0(prod_rounded_clamped2_carry_i_7__12_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__12_n_6),
        .O(prod_rounded_clamped1_carry_i_2__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_3__11
       (.CI(prod_rounded_clamped1_carry_i_7__11_n_0),
        .CO({prod_rounded_clamped1_carry_i_3__11_n_0,prod_rounded_clamped1_carry_i_3__11_n_1,prod_rounded_clamped1_carry_i_3__11_n_2,prod_rounded_clamped1_carry_i_3__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3__11_n_4,prod_rounded_clamped1_carry_i_3__11_n_5,prod_rounded_clamped1_carry_i_3__11_n_6,prod_rounded_clamped1_carry_i_3__11_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4__12
       (.I0(prod_rounded_clamped2_carry_i_7__12_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__12_n_4),
        .O(prod_rounded_clamped1_carry_i_4__12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5__12
       (.I0(prod_rounded_clamped2_carry_i_7__12_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__12_n_6),
        .O(prod_rounded_clamped1_carry_i_5__12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6__11
       (.I0(prod_rounded_clamped1_carry_i_3__11_n_5),
        .I1(prod_rounded_clamped1_carry_i_3__11_n_4),
        .O(prod_rounded_clamped1_carry_i_6__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7__11
       (.CI(add_carry__0_i_5__11_n_0),
        .CO({prod_rounded_clamped1_carry_i_7__11_n_0,prod_rounded_clamped1_carry_i_7__11_n_1,prod_rounded_clamped1_carry_i_7__11_n_2,prod_rounded_clamped1_carry_i_7__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_7__11_n_4,prod_rounded_clamped1_carry_i_7__11_n_5,prod_rounded_clamped1_carry_i_7__11_n_6,prod_rounded_clamped1_carry_i_7__11_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1__12_n_0,prod_rounded_clamped2_carry_i_2__12_n_0,prod_rounded_clamped2_carry_i_3__12_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4__12_n_0,prod_rounded_clamped2_carry_i_5__12_n_0,prod_rounded_clamped2_carry_i_6__12_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1__12
       (.I0(prod_rounded_clamped2_carry_i_7__12_n_4),
        .I1(prod_rounded_clamped2_carry_i_7__12_n_5),
        .O(prod_rounded_clamped2_carry_i_1__12_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2__12
       (.I0(prod_rounded_clamped2_carry_i_7__12_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__12_n_6),
        .O(prod_rounded_clamped2_carry_i_2__12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3__12
       (.I0(prod_rounded_clamped1_carry_i_3__11_n_4),
        .O(prod_rounded_clamped2_carry_i_3__12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4__12
       (.I0(prod_rounded_clamped2_carry_i_7__12_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__12_n_4),
        .O(prod_rounded_clamped2_carry_i_4__12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5__12
       (.I0(prod_rounded_clamped2_carry_i_7__12_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__12_n_6),
        .O(prod_rounded_clamped2_carry_i_5__12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6__12
       (.I0(prod_rounded_clamped1_carry_i_3__11_n_4),
        .I1(prod_rounded_clamped1_carry_i_3__11_n_5),
        .O(prod_rounded_clamped2_carry_i_6__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__12
       (.CI(prod_rounded_clamped1_carry_i_3__11_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__12_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__12_n_1,prod_rounded_clamped2_carry_i_7__12_n_2,prod_rounded_clamped2_carry_i_7__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__12_n_4,prod_rounded_clamped2_carry_i_7__12_n_5,prod_rounded_clamped2_carry_i_7__12_n_6,prod_rounded_clamped2_carry_i_7__12_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock" *) 
module FIR_subblock_13
   (Q,
    add_carry__2_0,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]Q;
  input [15:0]add_carry__2_0;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire add_carry__0_i_1__12_n_0;
  wire add_carry__0_i_2__12_n_0;
  wire add_carry__0_i_3__12_n_0;
  wire add_carry__0_i_4__12_n_0;
  wire add_carry__0_i_5__12_n_0;
  wire add_carry__0_i_5__12_n_1;
  wire add_carry__0_i_5__12_n_2;
  wire add_carry__0_i_5__12_n_3;
  wire add_carry__0_i_5__12_n_4;
  wire add_carry__0_i_5__12_n_5;
  wire add_carry__0_i_5__12_n_6;
  wire add_carry__0_i_5__12_n_7;
  wire add_carry__0_n_0;
  wire add_carry__0_n_1;
  wire add_carry__0_n_2;
  wire add_carry__0_n_3;
  wire add_carry__0_n_4;
  wire add_carry__0_n_5;
  wire add_carry__0_n_6;
  wire add_carry__0_n_7;
  wire add_carry__1_i_1__12_n_0;
  wire add_carry__1_i_2__12_n_0;
  wire add_carry__1_i_3__12_n_0;
  wire add_carry__1_i_4__12_n_0;
  wire add_carry__1_n_0;
  wire add_carry__1_n_1;
  wire add_carry__1_n_2;
  wire add_carry__1_n_3;
  wire add_carry__1_n_4;
  wire add_carry__1_n_5;
  wire add_carry__1_n_6;
  wire add_carry__1_n_7;
  wire [15:0]add_carry__2_0;
  wire add_carry__2_i_1__12_n_0;
  wire add_carry__2_i_2__12_n_0;
  wire add_carry__2_i_3__12_n_0;
  wire add_carry__2_i_4__12_n_0;
  wire add_carry__2_i_5__12_n_0;
  wire add_carry__2_n_0;
  wire add_carry__2_n_1;
  wire add_carry__2_n_2;
  wire add_carry__2_n_3;
  wire add_carry__2_n_4;
  wire add_carry__2_n_5;
  wire add_carry__2_n_6;
  wire add_carry__2_n_7;
  wire add_carry_i_1__12_n_0;
  wire add_carry_i_2__12_n_0;
  wire add_carry_i_3__12_n_0;
  wire add_carry_i_4__12_n_0;
  wire add_carry_i_5__12_n_0;
  wire add_carry_i_5__12_n_1;
  wire add_carry_i_5__12_n_2;
  wire add_carry_i_5__12_n_3;
  wire add_carry_i_5__12_n_4;
  wire add_carry_i_5__12_n_5;
  wire add_carry_i_5__12_n_6;
  wire add_carry_i_5__12_n_7;
  wire add_carry_i_6__12_n_0;
  wire add_carry_n_0;
  wire add_carry_n_1;
  wire add_carry_n_2;
  wire add_carry_n_3;
  wire add_carry_n_4;
  wire add_carry_n_5;
  wire add_carry_n_6;
  wire add_carry_n_7;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1__13_n_3;
  wire add_clamped1_carry_i_2__13_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__13_n_0;
  wire add_clamped2_carry_i_2__12_n_0;
  wire add_clamped2_carry_i_3__12_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__13_n_0;
  wire prod_rounded_clamped1_carry_i_2__13_n_0;
  wire prod_rounded_clamped1_carry_i_3__12_n_0;
  wire prod_rounded_clamped1_carry_i_3__12_n_1;
  wire prod_rounded_clamped1_carry_i_3__12_n_2;
  wire prod_rounded_clamped1_carry_i_3__12_n_3;
  wire prod_rounded_clamped1_carry_i_3__12_n_4;
  wire prod_rounded_clamped1_carry_i_3__12_n_5;
  wire prod_rounded_clamped1_carry_i_3__12_n_6;
  wire prod_rounded_clamped1_carry_i_3__12_n_7;
  wire prod_rounded_clamped1_carry_i_4__13_n_0;
  wire prod_rounded_clamped1_carry_i_5__13_n_0;
  wire prod_rounded_clamped1_carry_i_6__12_n_0;
  wire prod_rounded_clamped1_carry_i_7__12_n_0;
  wire prod_rounded_clamped1_carry_i_7__12_n_1;
  wire prod_rounded_clamped1_carry_i_7__12_n_2;
  wire prod_rounded_clamped1_carry_i_7__12_n_3;
  wire prod_rounded_clamped1_carry_i_7__12_n_4;
  wire prod_rounded_clamped1_carry_i_7__12_n_5;
  wire prod_rounded_clamped1_carry_i_7__12_n_6;
  wire prod_rounded_clamped1_carry_i_7__12_n_7;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1__13_n_0;
  wire prod_rounded_clamped2_carry_i_2__13_n_0;
  wire prod_rounded_clamped2_carry_i_3__13_n_0;
  wire prod_rounded_clamped2_carry_i_4__13_n_0;
  wire prod_rounded_clamped2_carry_i_5__13_n_0;
  wire prod_rounded_clamped2_carry_i_6__13_n_0;
  wire prod_rounded_clamped2_carry_i_7__13_n_1;
  wire prod_rounded_clamped2_carry_i_7__13_n_2;
  wire prod_rounded_clamped2_carry_i_7__13_n_3;
  wire prod_rounded_clamped2_carry_i_7__13_n_4;
  wire prod_rounded_clamped2_carry_i_7__13_n_5;
  wire prod_rounded_clamped2_carry_i_7__13_n_6;
  wire prod_rounded_clamped2_carry_i_7__13_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:1]NLW_add_clamped1_carry_i_1__13_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_i_1__13_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__13_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1__12_n_0,add_carry_i_2__12_n_0,add_carry_i_3__12_n_0,add_carry_i_4__12_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1__12_n_0,add_carry__0_i_2__12_n_0,add_carry__0_i_3__12_n_0,add_carry__0_i_4__12_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1__12
       (.I0(add_carry__0_i_5__12_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[7]),
        .O(add_carry__0_i_1__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2__12
       (.I0(add_carry__0_i_5__12_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[6]),
        .O(add_carry__0_i_2__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3__12
       (.I0(add_carry__0_i_5__12_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[5]),
        .O(add_carry__0_i_3__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4__12
       (.I0(add_carry__0_i_5__12_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[4]),
        .O(add_carry__0_i_4__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry__0_i_5__12
       (.CI(add_carry_i_5__12_n_0),
        .CO({add_carry__0_i_5__12_n_0,add_carry__0_i_5__12_n_1,add_carry__0_i_5__12_n_2,add_carry__0_i_5__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_carry__0_i_5__12_n_4,add_carry__0_i_5__12_n_5,add_carry__0_i_5__12_n_6,add_carry__0_i_5__12_n_7}),
        .S(p_1_in[7:4]));
  CARRY4 add_carry__1
       (.CI(add_carry__0_n_0),
        .CO({add_carry__1_n_0,add_carry__1_n_1,add_carry__1_n_2,add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1__12_n_0,add_carry__1_i_2__12_n_0,add_carry__1_i_3__12_n_0,add_carry__1_i_4__12_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1__12
       (.I0(prod_rounded_clamped1_carry_i_7__12_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[11]),
        .O(add_carry__1_i_1__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2__12
       (.I0(prod_rounded_clamped1_carry_i_7__12_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[10]),
        .O(add_carry__1_i_2__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3__12
       (.I0(prod_rounded_clamped1_carry_i_7__12_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[9]),
        .O(add_carry__1_i_3__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4__12
       (.I0(prod_rounded_clamped1_carry_i_7__12_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[8]),
        .O(add_carry__1_i_4__12_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1__12_n_0,add_carry__2_0[14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2__12_n_0,add_carry__2_i_3__12_n_0,add_carry__2_i_4__12_n_0,add_carry__2_i_5__12_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1__12
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__12_n_4),
        .O(add_carry__2_i_1__12_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2__12
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__12_n_4),
        .I3(add_carry__2_0[15]),
        .O(add_carry__2_i_2__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3__12
       (.I0(prod_rounded_clamped1_carry_i_3__12_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[14]),
        .O(add_carry__2_i_3__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4__12
       (.I0(prod_rounded_clamped1_carry_i_3__12_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[13]),
        .O(add_carry__2_i_4__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5__12
       (.I0(prod_rounded_clamped1_carry_i_3__12_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[12]),
        .O(add_carry__2_i_5__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1__12
       (.I0(add_carry_i_5__12_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[3]),
        .O(add_carry_i_1__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2__12
       (.I0(add_carry_i_5__12_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[2]),
        .O(add_carry_i_2__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3__12
       (.I0(add_carry_i_5__12_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[1]),
        .O(add_carry_i_3__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4__12
       (.I0(add_carry_i_5__12_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[0]),
        .O(add_carry_i_4__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry_i_5__12
       (.CI(1'b0),
        .CO({add_carry_i_5__12_n_0,add_carry_i_5__12_n_1,add_carry_i_5__12_n_2,add_carry_i_5__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_carry_i_5__12_n_4,add_carry_i_5__12_n_5,add_carry_i_5__12_n_6,add_carry_i_5__12_n_7}),
        .S({p_1_in[3:1],add_carry_i_6__12_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_carry_i_6__12
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_carry_i_6__12_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_carry__2_n_4}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1__13_n_3,add_clamped1_carry_i_2__13_n_0}));
  CARRY4 add_clamped1_carry_i_1__13
       (.CI(add_carry__2_n_0),
        .CO({NLW_add_clamped1_carry_i_1__13_CO_UNCONNECTED[3:1],add_clamped1_carry_i_1__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_add_clamped1_carry_i_1__13_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped1_carry_i_2__13
       (.I0(add_carry__2_n_5),
        .I1(add_carry__2_n_4),
        .O(add_clamped1_carry_i_2__13_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1__13_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2__12_n_0,add_clamped2_carry_i_3__12_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__13
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2__12
       (.I0(add_clamped1_carry_i_1__13_n_3),
        .O(add_clamped2_carry_i_2__12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped2_carry_i_3__12
       (.I0(add_carry__2_n_4),
        .I1(add_carry__2_n_5),
        .O(add_clamped2_carry_i_3__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(add_clamped[0]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(add_clamped[10]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(add_clamped[11]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(add_clamped[12]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(add_clamped[13]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(add_clamped[14]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(add_clamped[15]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(add_clamped[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(add_clamped[2]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(add_clamped[3]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(add_clamped[4]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(add_clamped[5]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(add_clamped[6]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(add_clamped[7]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(add_clamped[8]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(Q[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(Q[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(Q[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(Q[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(Q[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(Q[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(Q[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(Q[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(Q[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(Q[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(Q[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(Q[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(Q[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(Q[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(Q[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(Q[9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__13_n_0,prod_rounded_clamped1_carry_i_2__13_n_0,prod_rounded_clamped1_carry_i_3__12_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__13_n_0,prod_rounded_clamped1_carry_i_5__13_n_0,prod_rounded_clamped1_carry_i_6__12_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1__13
       (.I0(prod_rounded_clamped2_carry_i_7__13_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__13_n_4),
        .O(prod_rounded_clamped1_carry_i_1__13_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2__13
       (.I0(prod_rounded_clamped2_carry_i_7__13_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__13_n_6),
        .O(prod_rounded_clamped1_carry_i_2__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_3__12
       (.CI(prod_rounded_clamped1_carry_i_7__12_n_0),
        .CO({prod_rounded_clamped1_carry_i_3__12_n_0,prod_rounded_clamped1_carry_i_3__12_n_1,prod_rounded_clamped1_carry_i_3__12_n_2,prod_rounded_clamped1_carry_i_3__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3__12_n_4,prod_rounded_clamped1_carry_i_3__12_n_5,prod_rounded_clamped1_carry_i_3__12_n_6,prod_rounded_clamped1_carry_i_3__12_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4__13
       (.I0(prod_rounded_clamped2_carry_i_7__13_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__13_n_4),
        .O(prod_rounded_clamped1_carry_i_4__13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5__13
       (.I0(prod_rounded_clamped2_carry_i_7__13_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__13_n_6),
        .O(prod_rounded_clamped1_carry_i_5__13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6__12
       (.I0(prod_rounded_clamped1_carry_i_3__12_n_5),
        .I1(prod_rounded_clamped1_carry_i_3__12_n_4),
        .O(prod_rounded_clamped1_carry_i_6__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7__12
       (.CI(add_carry__0_i_5__12_n_0),
        .CO({prod_rounded_clamped1_carry_i_7__12_n_0,prod_rounded_clamped1_carry_i_7__12_n_1,prod_rounded_clamped1_carry_i_7__12_n_2,prod_rounded_clamped1_carry_i_7__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_7__12_n_4,prod_rounded_clamped1_carry_i_7__12_n_5,prod_rounded_clamped1_carry_i_7__12_n_6,prod_rounded_clamped1_carry_i_7__12_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1__13_n_0,prod_rounded_clamped2_carry_i_2__13_n_0,prod_rounded_clamped2_carry_i_3__13_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4__13_n_0,prod_rounded_clamped2_carry_i_5__13_n_0,prod_rounded_clamped2_carry_i_6__13_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1__13
       (.I0(prod_rounded_clamped2_carry_i_7__13_n_4),
        .I1(prod_rounded_clamped2_carry_i_7__13_n_5),
        .O(prod_rounded_clamped2_carry_i_1__13_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2__13
       (.I0(prod_rounded_clamped2_carry_i_7__13_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__13_n_6),
        .O(prod_rounded_clamped2_carry_i_2__13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3__13
       (.I0(prod_rounded_clamped1_carry_i_3__12_n_4),
        .O(prod_rounded_clamped2_carry_i_3__13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4__13
       (.I0(prod_rounded_clamped2_carry_i_7__13_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__13_n_4),
        .O(prod_rounded_clamped2_carry_i_4__13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5__13
       (.I0(prod_rounded_clamped2_carry_i_7__13_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__13_n_6),
        .O(prod_rounded_clamped2_carry_i_5__13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6__13
       (.I0(prod_rounded_clamped1_carry_i_3__12_n_4),
        .I1(prod_rounded_clamped1_carry_i_3__12_n_5),
        .O(prod_rounded_clamped2_carry_i_6__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__13
       (.CI(prod_rounded_clamped1_carry_i_3__12_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__13_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__13_n_1,prod_rounded_clamped2_carry_i_7__13_n_2,prod_rounded_clamped2_carry_i_7__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__13_n_4,prod_rounded_clamped2_carry_i_7__13_n_5,prod_rounded_clamped2_carry_i_7__13_n_6,prod_rounded_clamped2_carry_i_7__13_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock" *) 
module FIR_subblock_14
   (\delay_element_reg[15]_0 ,
    Q,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]\delay_element_reg[15]_0 ;
  input [15:0]Q;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire add_carry__0_i_1__13_n_0;
  wire add_carry__0_i_2__13_n_0;
  wire add_carry__0_i_3__13_n_0;
  wire add_carry__0_i_4__13_n_0;
  wire add_carry__0_i_5__13_n_0;
  wire add_carry__0_i_5__13_n_1;
  wire add_carry__0_i_5__13_n_2;
  wire add_carry__0_i_5__13_n_3;
  wire add_carry__0_i_5__13_n_4;
  wire add_carry__0_i_5__13_n_5;
  wire add_carry__0_i_5__13_n_6;
  wire add_carry__0_i_5__13_n_7;
  wire add_carry__0_n_0;
  wire add_carry__0_n_1;
  wire add_carry__0_n_2;
  wire add_carry__0_n_3;
  wire add_carry__0_n_4;
  wire add_carry__0_n_5;
  wire add_carry__0_n_6;
  wire add_carry__0_n_7;
  wire add_carry__1_i_1__13_n_0;
  wire add_carry__1_i_2__13_n_0;
  wire add_carry__1_i_3__13_n_0;
  wire add_carry__1_i_4__13_n_0;
  wire add_carry__1_n_0;
  wire add_carry__1_n_1;
  wire add_carry__1_n_2;
  wire add_carry__1_n_3;
  wire add_carry__1_n_4;
  wire add_carry__1_n_5;
  wire add_carry__1_n_6;
  wire add_carry__1_n_7;
  wire add_carry__2_i_1__13_n_0;
  wire add_carry__2_i_2__13_n_0;
  wire add_carry__2_i_3__13_n_0;
  wire add_carry__2_i_4__13_n_0;
  wire add_carry__2_i_5__13_n_0;
  wire add_carry__2_n_0;
  wire add_carry__2_n_1;
  wire add_carry__2_n_2;
  wire add_carry__2_n_3;
  wire add_carry__2_n_4;
  wire add_carry__2_n_5;
  wire add_carry__2_n_6;
  wire add_carry__2_n_7;
  wire add_carry_i_1__13_n_0;
  wire add_carry_i_2__13_n_0;
  wire add_carry_i_3__13_n_0;
  wire add_carry_i_4__13_n_0;
  wire add_carry_i_5__13_n_0;
  wire add_carry_i_5__13_n_1;
  wire add_carry_i_5__13_n_2;
  wire add_carry_i_5__13_n_3;
  wire add_carry_i_5__13_n_4;
  wire add_carry_i_5__13_n_5;
  wire add_carry_i_5__13_n_6;
  wire add_carry_i_5__13_n_7;
  wire add_carry_i_6__13_n_0;
  wire add_carry_n_0;
  wire add_carry_n_1;
  wire add_carry_n_2;
  wire add_carry_n_3;
  wire add_carry_n_4;
  wire add_carry_n_5;
  wire add_carry_n_6;
  wire add_carry_n_7;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1__14_n_3;
  wire add_clamped1_carry_i_2__14_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__14_n_0;
  wire add_clamped2_carry_i_2__13_n_0;
  wire add_clamped2_carry_i_3__13_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]\delay_element_reg[15]_0 ;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__14_n_0;
  wire prod_rounded_clamped1_carry_i_2__14_n_0;
  wire prod_rounded_clamped1_carry_i_3__13_n_0;
  wire prod_rounded_clamped1_carry_i_3__13_n_1;
  wire prod_rounded_clamped1_carry_i_3__13_n_2;
  wire prod_rounded_clamped1_carry_i_3__13_n_3;
  wire prod_rounded_clamped1_carry_i_3__13_n_4;
  wire prod_rounded_clamped1_carry_i_3__13_n_5;
  wire prod_rounded_clamped1_carry_i_3__13_n_6;
  wire prod_rounded_clamped1_carry_i_3__13_n_7;
  wire prod_rounded_clamped1_carry_i_4__14_n_0;
  wire prod_rounded_clamped1_carry_i_5__14_n_0;
  wire prod_rounded_clamped1_carry_i_6__13_n_0;
  wire prod_rounded_clamped1_carry_i_7__13_n_0;
  wire prod_rounded_clamped1_carry_i_7__13_n_1;
  wire prod_rounded_clamped1_carry_i_7__13_n_2;
  wire prod_rounded_clamped1_carry_i_7__13_n_3;
  wire prod_rounded_clamped1_carry_i_7__13_n_4;
  wire prod_rounded_clamped1_carry_i_7__13_n_5;
  wire prod_rounded_clamped1_carry_i_7__13_n_6;
  wire prod_rounded_clamped1_carry_i_7__13_n_7;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1__14_n_0;
  wire prod_rounded_clamped2_carry_i_2__14_n_0;
  wire prod_rounded_clamped2_carry_i_3__14_n_0;
  wire prod_rounded_clamped2_carry_i_4__14_n_0;
  wire prod_rounded_clamped2_carry_i_5__14_n_0;
  wire prod_rounded_clamped2_carry_i_6__14_n_0;
  wire prod_rounded_clamped2_carry_i_7__14_n_1;
  wire prod_rounded_clamped2_carry_i_7__14_n_2;
  wire prod_rounded_clamped2_carry_i_7__14_n_3;
  wire prod_rounded_clamped2_carry_i_7__14_n_4;
  wire prod_rounded_clamped2_carry_i_7__14_n_5;
  wire prod_rounded_clamped2_carry_i_7__14_n_6;
  wire prod_rounded_clamped2_carry_i_7__14_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:1]NLW_add_clamped1_carry_i_1__14_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_i_1__14_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__14_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1__13_n_0,add_carry_i_2__13_n_0,add_carry_i_3__13_n_0,add_carry_i_4__13_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1__13_n_0,add_carry__0_i_2__13_n_0,add_carry__0_i_3__13_n_0,add_carry__0_i_4__13_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1__13
       (.I0(add_carry__0_i_5__13_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[7]),
        .O(add_carry__0_i_1__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2__13
       (.I0(add_carry__0_i_5__13_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[6]),
        .O(add_carry__0_i_2__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3__13
       (.I0(add_carry__0_i_5__13_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[5]),
        .O(add_carry__0_i_3__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4__13
       (.I0(add_carry__0_i_5__13_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[4]),
        .O(add_carry__0_i_4__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry__0_i_5__13
       (.CI(add_carry_i_5__13_n_0),
        .CO({add_carry__0_i_5__13_n_0,add_carry__0_i_5__13_n_1,add_carry__0_i_5__13_n_2,add_carry__0_i_5__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_carry__0_i_5__13_n_4,add_carry__0_i_5__13_n_5,add_carry__0_i_5__13_n_6,add_carry__0_i_5__13_n_7}),
        .S(p_1_in[7:4]));
  CARRY4 add_carry__1
       (.CI(add_carry__0_n_0),
        .CO({add_carry__1_n_0,add_carry__1_n_1,add_carry__1_n_2,add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1__13_n_0,add_carry__1_i_2__13_n_0,add_carry__1_i_3__13_n_0,add_carry__1_i_4__13_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1__13
       (.I0(prod_rounded_clamped1_carry_i_7__13_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[11]),
        .O(add_carry__1_i_1__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2__13
       (.I0(prod_rounded_clamped1_carry_i_7__13_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[10]),
        .O(add_carry__1_i_2__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3__13
       (.I0(prod_rounded_clamped1_carry_i_7__13_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[9]),
        .O(add_carry__1_i_3__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4__13
       (.I0(prod_rounded_clamped1_carry_i_7__13_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[8]),
        .O(add_carry__1_i_4__13_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1__13_n_0,Q[14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2__13_n_0,add_carry__2_i_3__13_n_0,add_carry__2_i_4__13_n_0,add_carry__2_i_5__13_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1__13
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__13_n_4),
        .O(add_carry__2_i_1__13_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2__13
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__13_n_4),
        .I3(Q[15]),
        .O(add_carry__2_i_2__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3__13
       (.I0(prod_rounded_clamped1_carry_i_3__13_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[14]),
        .O(add_carry__2_i_3__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4__13
       (.I0(prod_rounded_clamped1_carry_i_3__13_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[13]),
        .O(add_carry__2_i_4__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5__13
       (.I0(prod_rounded_clamped1_carry_i_3__13_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[12]),
        .O(add_carry__2_i_5__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1__13
       (.I0(add_carry_i_5__13_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[3]),
        .O(add_carry_i_1__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2__13
       (.I0(add_carry_i_5__13_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[2]),
        .O(add_carry_i_2__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3__13
       (.I0(add_carry_i_5__13_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[1]),
        .O(add_carry_i_3__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4__13
       (.I0(add_carry_i_5__13_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[0]),
        .O(add_carry_i_4__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry_i_5__13
       (.CI(1'b0),
        .CO({add_carry_i_5__13_n_0,add_carry_i_5__13_n_1,add_carry_i_5__13_n_2,add_carry_i_5__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_carry_i_5__13_n_4,add_carry_i_5__13_n_5,add_carry_i_5__13_n_6,add_carry_i_5__13_n_7}),
        .S({p_1_in[3:1],add_carry_i_6__13_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_carry_i_6__13
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_carry_i_6__13_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_carry__2_n_4}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1__14_n_3,add_clamped1_carry_i_2__14_n_0}));
  CARRY4 add_clamped1_carry_i_1__14
       (.CI(add_carry__2_n_0),
        .CO({NLW_add_clamped1_carry_i_1__14_CO_UNCONNECTED[3:1],add_clamped1_carry_i_1__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_add_clamped1_carry_i_1__14_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped1_carry_i_2__14
       (.I0(add_carry__2_n_5),
        .I1(add_carry__2_n_4),
        .O(add_clamped1_carry_i_2__14_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1__14_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2__13_n_0,add_clamped2_carry_i_3__13_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__14
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2__13
       (.I0(add_clamped1_carry_i_1__14_n_3),
        .O(add_clamped2_carry_i_2__13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped2_carry_i_3__13
       (.I0(add_carry__2_n_4),
        .I1(add_carry__2_n_5),
        .O(add_clamped2_carry_i_3__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(add_clamped[0]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(add_clamped[10]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(add_clamped[11]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(add_clamped[12]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(add_clamped[13]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(add_clamped[14]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(add_clamped[15]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(add_clamped[1]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(add_clamped[2]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(add_clamped[3]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(add_clamped[4]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(add_clamped[5]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(add_clamped[6]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(add_clamped[7]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(add_clamped[8]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(\delay_element_reg[15]_0 [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(\delay_element_reg[15]_0 [10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(\delay_element_reg[15]_0 [11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(\delay_element_reg[15]_0 [12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(\delay_element_reg[15]_0 [13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(\delay_element_reg[15]_0 [14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(\delay_element_reg[15]_0 [15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(\delay_element_reg[15]_0 [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(\delay_element_reg[15]_0 [2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(\delay_element_reg[15]_0 [3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(\delay_element_reg[15]_0 [4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(\delay_element_reg[15]_0 [5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(\delay_element_reg[15]_0 [6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(\delay_element_reg[15]_0 [7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(\delay_element_reg[15]_0 [8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(\delay_element_reg[15]_0 [9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__14_n_0,prod_rounded_clamped1_carry_i_2__14_n_0,prod_rounded_clamped1_carry_i_3__13_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__14_n_0,prod_rounded_clamped1_carry_i_5__14_n_0,prod_rounded_clamped1_carry_i_6__13_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1__14
       (.I0(prod_rounded_clamped2_carry_i_7__14_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__14_n_4),
        .O(prod_rounded_clamped1_carry_i_1__14_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2__14
       (.I0(prod_rounded_clamped2_carry_i_7__14_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__14_n_6),
        .O(prod_rounded_clamped1_carry_i_2__14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_3__13
       (.CI(prod_rounded_clamped1_carry_i_7__13_n_0),
        .CO({prod_rounded_clamped1_carry_i_3__13_n_0,prod_rounded_clamped1_carry_i_3__13_n_1,prod_rounded_clamped1_carry_i_3__13_n_2,prod_rounded_clamped1_carry_i_3__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3__13_n_4,prod_rounded_clamped1_carry_i_3__13_n_5,prod_rounded_clamped1_carry_i_3__13_n_6,prod_rounded_clamped1_carry_i_3__13_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4__14
       (.I0(prod_rounded_clamped2_carry_i_7__14_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__14_n_4),
        .O(prod_rounded_clamped1_carry_i_4__14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5__14
       (.I0(prod_rounded_clamped2_carry_i_7__14_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__14_n_6),
        .O(prod_rounded_clamped1_carry_i_5__14_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6__13
       (.I0(prod_rounded_clamped1_carry_i_3__13_n_5),
        .I1(prod_rounded_clamped1_carry_i_3__13_n_4),
        .O(prod_rounded_clamped1_carry_i_6__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7__13
       (.CI(add_carry__0_i_5__13_n_0),
        .CO({prod_rounded_clamped1_carry_i_7__13_n_0,prod_rounded_clamped1_carry_i_7__13_n_1,prod_rounded_clamped1_carry_i_7__13_n_2,prod_rounded_clamped1_carry_i_7__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_7__13_n_4,prod_rounded_clamped1_carry_i_7__13_n_5,prod_rounded_clamped1_carry_i_7__13_n_6,prod_rounded_clamped1_carry_i_7__13_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1__14_n_0,prod_rounded_clamped2_carry_i_2__14_n_0,prod_rounded_clamped2_carry_i_3__14_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4__14_n_0,prod_rounded_clamped2_carry_i_5__14_n_0,prod_rounded_clamped2_carry_i_6__14_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1__14
       (.I0(prod_rounded_clamped2_carry_i_7__14_n_4),
        .I1(prod_rounded_clamped2_carry_i_7__14_n_5),
        .O(prod_rounded_clamped2_carry_i_1__14_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2__14
       (.I0(prod_rounded_clamped2_carry_i_7__14_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__14_n_6),
        .O(prod_rounded_clamped2_carry_i_2__14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3__14
       (.I0(prod_rounded_clamped1_carry_i_3__13_n_4),
        .O(prod_rounded_clamped2_carry_i_3__14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4__14
       (.I0(prod_rounded_clamped2_carry_i_7__14_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__14_n_4),
        .O(prod_rounded_clamped2_carry_i_4__14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5__14
       (.I0(prod_rounded_clamped2_carry_i_7__14_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__14_n_6),
        .O(prod_rounded_clamped2_carry_i_5__14_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6__14
       (.I0(prod_rounded_clamped1_carry_i_3__13_n_4),
        .I1(prod_rounded_clamped1_carry_i_3__13_n_5),
        .O(prod_rounded_clamped2_carry_i_6__14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__14
       (.CI(prod_rounded_clamped1_carry_i_3__13_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__14_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__14_n_1,prod_rounded_clamped2_carry_i_7__14_n_2,prod_rounded_clamped2_carry_i_7__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__14_n_4,prod_rounded_clamped2_carry_i_7__14_n_5,prod_rounded_clamped2_carry_i_7__14_n_6,prod_rounded_clamped2_carry_i_7__14_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock" *) 
module FIR_subblock_15
   (Q,
    add_carry__2_0,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]Q;
  input [15:0]add_carry__2_0;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire add_carry__0_i_1__14_n_0;
  wire add_carry__0_i_2__14_n_0;
  wire add_carry__0_i_3__14_n_0;
  wire add_carry__0_i_4__14_n_0;
  wire add_carry__0_i_5__14_n_0;
  wire add_carry__0_i_5__14_n_1;
  wire add_carry__0_i_5__14_n_2;
  wire add_carry__0_i_5__14_n_3;
  wire add_carry__0_i_5__14_n_4;
  wire add_carry__0_i_5__14_n_5;
  wire add_carry__0_i_5__14_n_6;
  wire add_carry__0_i_5__14_n_7;
  wire add_carry__0_n_0;
  wire add_carry__0_n_1;
  wire add_carry__0_n_2;
  wire add_carry__0_n_3;
  wire add_carry__0_n_4;
  wire add_carry__0_n_5;
  wire add_carry__0_n_6;
  wire add_carry__0_n_7;
  wire add_carry__1_i_1__14_n_0;
  wire add_carry__1_i_2__14_n_0;
  wire add_carry__1_i_3__14_n_0;
  wire add_carry__1_i_4__14_n_0;
  wire add_carry__1_n_0;
  wire add_carry__1_n_1;
  wire add_carry__1_n_2;
  wire add_carry__1_n_3;
  wire add_carry__1_n_4;
  wire add_carry__1_n_5;
  wire add_carry__1_n_6;
  wire add_carry__1_n_7;
  wire [15:0]add_carry__2_0;
  wire add_carry__2_i_1__14_n_0;
  wire add_carry__2_i_2__14_n_0;
  wire add_carry__2_i_3__14_n_0;
  wire add_carry__2_i_4__14_n_0;
  wire add_carry__2_i_5__14_n_0;
  wire add_carry__2_n_0;
  wire add_carry__2_n_1;
  wire add_carry__2_n_2;
  wire add_carry__2_n_3;
  wire add_carry__2_n_4;
  wire add_carry__2_n_5;
  wire add_carry__2_n_6;
  wire add_carry__2_n_7;
  wire add_carry_i_1__14_n_0;
  wire add_carry_i_2__14_n_0;
  wire add_carry_i_3__14_n_0;
  wire add_carry_i_4__14_n_0;
  wire add_carry_i_5__14_n_0;
  wire add_carry_i_5__14_n_1;
  wire add_carry_i_5__14_n_2;
  wire add_carry_i_5__14_n_3;
  wire add_carry_i_5__14_n_4;
  wire add_carry_i_5__14_n_5;
  wire add_carry_i_5__14_n_6;
  wire add_carry_i_5__14_n_7;
  wire add_carry_i_6__14_n_0;
  wire add_carry_n_0;
  wire add_carry_n_1;
  wire add_carry_n_2;
  wire add_carry_n_3;
  wire add_carry_n_4;
  wire add_carry_n_5;
  wire add_carry_n_6;
  wire add_carry_n_7;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1__15_n_3;
  wire add_clamped1_carry_i_2__15_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__15_n_0;
  wire add_clamped2_carry_i_2__14_n_0;
  wire add_clamped2_carry_i_3__14_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__15_n_0;
  wire prod_rounded_clamped1_carry_i_2__15_n_0;
  wire prod_rounded_clamped1_carry_i_3__14_n_0;
  wire prod_rounded_clamped1_carry_i_3__14_n_1;
  wire prod_rounded_clamped1_carry_i_3__14_n_2;
  wire prod_rounded_clamped1_carry_i_3__14_n_3;
  wire prod_rounded_clamped1_carry_i_3__14_n_4;
  wire prod_rounded_clamped1_carry_i_3__14_n_5;
  wire prod_rounded_clamped1_carry_i_3__14_n_6;
  wire prod_rounded_clamped1_carry_i_3__14_n_7;
  wire prod_rounded_clamped1_carry_i_4__15_n_0;
  wire prod_rounded_clamped1_carry_i_5__15_n_0;
  wire prod_rounded_clamped1_carry_i_6__14_n_0;
  wire prod_rounded_clamped1_carry_i_7__14_n_0;
  wire prod_rounded_clamped1_carry_i_7__14_n_1;
  wire prod_rounded_clamped1_carry_i_7__14_n_2;
  wire prod_rounded_clamped1_carry_i_7__14_n_3;
  wire prod_rounded_clamped1_carry_i_7__14_n_4;
  wire prod_rounded_clamped1_carry_i_7__14_n_5;
  wire prod_rounded_clamped1_carry_i_7__14_n_6;
  wire prod_rounded_clamped1_carry_i_7__14_n_7;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1__15_n_0;
  wire prod_rounded_clamped2_carry_i_2__15_n_0;
  wire prod_rounded_clamped2_carry_i_3__15_n_0;
  wire prod_rounded_clamped2_carry_i_4__15_n_0;
  wire prod_rounded_clamped2_carry_i_5__15_n_0;
  wire prod_rounded_clamped2_carry_i_6__15_n_0;
  wire prod_rounded_clamped2_carry_i_7__15_n_1;
  wire prod_rounded_clamped2_carry_i_7__15_n_2;
  wire prod_rounded_clamped2_carry_i_7__15_n_3;
  wire prod_rounded_clamped2_carry_i_7__15_n_4;
  wire prod_rounded_clamped2_carry_i_7__15_n_5;
  wire prod_rounded_clamped2_carry_i_7__15_n_6;
  wire prod_rounded_clamped2_carry_i_7__15_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:1]NLW_add_clamped1_carry_i_1__15_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_i_1__15_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__15_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1__14_n_0,add_carry_i_2__14_n_0,add_carry_i_3__14_n_0,add_carry_i_4__14_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1__14_n_0,add_carry__0_i_2__14_n_0,add_carry__0_i_3__14_n_0,add_carry__0_i_4__14_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1__14
       (.I0(add_carry__0_i_5__14_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[7]),
        .O(add_carry__0_i_1__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2__14
       (.I0(add_carry__0_i_5__14_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[6]),
        .O(add_carry__0_i_2__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3__14
       (.I0(add_carry__0_i_5__14_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[5]),
        .O(add_carry__0_i_3__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4__14
       (.I0(add_carry__0_i_5__14_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[4]),
        .O(add_carry__0_i_4__14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry__0_i_5__14
       (.CI(add_carry_i_5__14_n_0),
        .CO({add_carry__0_i_5__14_n_0,add_carry__0_i_5__14_n_1,add_carry__0_i_5__14_n_2,add_carry__0_i_5__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_carry__0_i_5__14_n_4,add_carry__0_i_5__14_n_5,add_carry__0_i_5__14_n_6,add_carry__0_i_5__14_n_7}),
        .S(p_1_in[7:4]));
  CARRY4 add_carry__1
       (.CI(add_carry__0_n_0),
        .CO({add_carry__1_n_0,add_carry__1_n_1,add_carry__1_n_2,add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1__14_n_0,add_carry__1_i_2__14_n_0,add_carry__1_i_3__14_n_0,add_carry__1_i_4__14_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1__14
       (.I0(prod_rounded_clamped1_carry_i_7__14_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[11]),
        .O(add_carry__1_i_1__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2__14
       (.I0(prod_rounded_clamped1_carry_i_7__14_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[10]),
        .O(add_carry__1_i_2__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3__14
       (.I0(prod_rounded_clamped1_carry_i_7__14_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[9]),
        .O(add_carry__1_i_3__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4__14
       (.I0(prod_rounded_clamped1_carry_i_7__14_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[8]),
        .O(add_carry__1_i_4__14_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1__14_n_0,add_carry__2_0[14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2__14_n_0,add_carry__2_i_3__14_n_0,add_carry__2_i_4__14_n_0,add_carry__2_i_5__14_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1__14
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__14_n_4),
        .O(add_carry__2_i_1__14_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2__14
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__14_n_4),
        .I3(add_carry__2_0[15]),
        .O(add_carry__2_i_2__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3__14
       (.I0(prod_rounded_clamped1_carry_i_3__14_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[14]),
        .O(add_carry__2_i_3__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4__14
       (.I0(prod_rounded_clamped1_carry_i_3__14_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[13]),
        .O(add_carry__2_i_4__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5__14
       (.I0(prod_rounded_clamped1_carry_i_3__14_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[12]),
        .O(add_carry__2_i_5__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1__14
       (.I0(add_carry_i_5__14_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[3]),
        .O(add_carry_i_1__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2__14
       (.I0(add_carry_i_5__14_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[2]),
        .O(add_carry_i_2__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3__14
       (.I0(add_carry_i_5__14_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[1]),
        .O(add_carry_i_3__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4__14
       (.I0(add_carry_i_5__14_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[0]),
        .O(add_carry_i_4__14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry_i_5__14
       (.CI(1'b0),
        .CO({add_carry_i_5__14_n_0,add_carry_i_5__14_n_1,add_carry_i_5__14_n_2,add_carry_i_5__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_carry_i_5__14_n_4,add_carry_i_5__14_n_5,add_carry_i_5__14_n_6,add_carry_i_5__14_n_7}),
        .S({p_1_in[3:1],add_carry_i_6__14_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_carry_i_6__14
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_carry_i_6__14_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_carry__2_n_4}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1__15_n_3,add_clamped1_carry_i_2__15_n_0}));
  CARRY4 add_clamped1_carry_i_1__15
       (.CI(add_carry__2_n_0),
        .CO({NLW_add_clamped1_carry_i_1__15_CO_UNCONNECTED[3:1],add_clamped1_carry_i_1__15_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_add_clamped1_carry_i_1__15_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped1_carry_i_2__15
       (.I0(add_carry__2_n_5),
        .I1(add_carry__2_n_4),
        .O(add_clamped1_carry_i_2__15_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1__15_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2__14_n_0,add_clamped2_carry_i_3__14_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__15
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2__14
       (.I0(add_clamped1_carry_i_1__15_n_3),
        .O(add_clamped2_carry_i_2__14_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped2_carry_i_3__14
       (.I0(add_carry__2_n_4),
        .I1(add_carry__2_n_5),
        .O(add_clamped2_carry_i_3__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(add_clamped[0]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(add_clamped[10]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(add_clamped[11]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(add_clamped[12]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(add_clamped[13]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(add_clamped[14]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(add_clamped[15]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(add_clamped[1]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(add_clamped[2]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(add_clamped[3]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(add_clamped[4]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(add_clamped[5]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(add_clamped[6]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(add_clamped[7]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(add_clamped[8]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(Q[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(Q[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(Q[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(Q[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(Q[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(Q[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(Q[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(Q[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(Q[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(Q[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(Q[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(Q[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(Q[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(Q[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(Q[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(Q[9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__15_n_0,prod_rounded_clamped1_carry_i_2__15_n_0,prod_rounded_clamped1_carry_i_3__14_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__15_n_0,prod_rounded_clamped1_carry_i_5__15_n_0,prod_rounded_clamped1_carry_i_6__14_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1__15
       (.I0(prod_rounded_clamped2_carry_i_7__15_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__15_n_4),
        .O(prod_rounded_clamped1_carry_i_1__15_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2__15
       (.I0(prod_rounded_clamped2_carry_i_7__15_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__15_n_6),
        .O(prod_rounded_clamped1_carry_i_2__15_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_3__14
       (.CI(prod_rounded_clamped1_carry_i_7__14_n_0),
        .CO({prod_rounded_clamped1_carry_i_3__14_n_0,prod_rounded_clamped1_carry_i_3__14_n_1,prod_rounded_clamped1_carry_i_3__14_n_2,prod_rounded_clamped1_carry_i_3__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3__14_n_4,prod_rounded_clamped1_carry_i_3__14_n_5,prod_rounded_clamped1_carry_i_3__14_n_6,prod_rounded_clamped1_carry_i_3__14_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4__15
       (.I0(prod_rounded_clamped2_carry_i_7__15_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__15_n_4),
        .O(prod_rounded_clamped1_carry_i_4__15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5__15
       (.I0(prod_rounded_clamped2_carry_i_7__15_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__15_n_6),
        .O(prod_rounded_clamped1_carry_i_5__15_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6__14
       (.I0(prod_rounded_clamped1_carry_i_3__14_n_5),
        .I1(prod_rounded_clamped1_carry_i_3__14_n_4),
        .O(prod_rounded_clamped1_carry_i_6__14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7__14
       (.CI(add_carry__0_i_5__14_n_0),
        .CO({prod_rounded_clamped1_carry_i_7__14_n_0,prod_rounded_clamped1_carry_i_7__14_n_1,prod_rounded_clamped1_carry_i_7__14_n_2,prod_rounded_clamped1_carry_i_7__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_7__14_n_4,prod_rounded_clamped1_carry_i_7__14_n_5,prod_rounded_clamped1_carry_i_7__14_n_6,prod_rounded_clamped1_carry_i_7__14_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1__15_n_0,prod_rounded_clamped2_carry_i_2__15_n_0,prod_rounded_clamped2_carry_i_3__15_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4__15_n_0,prod_rounded_clamped2_carry_i_5__15_n_0,prod_rounded_clamped2_carry_i_6__15_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1__15
       (.I0(prod_rounded_clamped2_carry_i_7__15_n_4),
        .I1(prod_rounded_clamped2_carry_i_7__15_n_5),
        .O(prod_rounded_clamped2_carry_i_1__15_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2__15
       (.I0(prod_rounded_clamped2_carry_i_7__15_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__15_n_6),
        .O(prod_rounded_clamped2_carry_i_2__15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3__15
       (.I0(prod_rounded_clamped1_carry_i_3__14_n_4),
        .O(prod_rounded_clamped2_carry_i_3__15_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4__15
       (.I0(prod_rounded_clamped2_carry_i_7__15_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__15_n_4),
        .O(prod_rounded_clamped2_carry_i_4__15_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5__15
       (.I0(prod_rounded_clamped2_carry_i_7__15_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__15_n_6),
        .O(prod_rounded_clamped2_carry_i_5__15_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6__15
       (.I0(prod_rounded_clamped1_carry_i_3__14_n_4),
        .I1(prod_rounded_clamped1_carry_i_3__14_n_5),
        .O(prod_rounded_clamped2_carry_i_6__15_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__15
       (.CI(prod_rounded_clamped1_carry_i_3__14_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__15_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__15_n_1,prod_rounded_clamped2_carry_i_7__15_n_2,prod_rounded_clamped2_carry_i_7__15_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__15_n_4,prod_rounded_clamped2_carry_i_7__15_n_5,prod_rounded_clamped2_carry_i_7__15_n_6,prod_rounded_clamped2_carry_i_7__15_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock" *) 
module FIR_subblock_2
   (\delay_element_reg[15]_0 ,
    Q,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]\delay_element_reg[15]_0 ;
  input [15:0]Q;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire add_carry__0_i_1__1_n_0;
  wire add_carry__0_i_2__1_n_0;
  wire add_carry__0_i_3__1_n_0;
  wire add_carry__0_i_4__1_n_0;
  wire add_carry__0_i_5__1_n_0;
  wire add_carry__0_i_5__1_n_1;
  wire add_carry__0_i_5__1_n_2;
  wire add_carry__0_i_5__1_n_3;
  wire add_carry__0_i_5__1_n_4;
  wire add_carry__0_i_5__1_n_5;
  wire add_carry__0_i_5__1_n_6;
  wire add_carry__0_i_5__1_n_7;
  wire add_carry__0_n_0;
  wire add_carry__0_n_1;
  wire add_carry__0_n_2;
  wire add_carry__0_n_3;
  wire add_carry__0_n_4;
  wire add_carry__0_n_5;
  wire add_carry__0_n_6;
  wire add_carry__0_n_7;
  wire add_carry__1_i_1__1_n_0;
  wire add_carry__1_i_2__1_n_0;
  wire add_carry__1_i_3__1_n_0;
  wire add_carry__1_i_4__1_n_0;
  wire add_carry__1_n_0;
  wire add_carry__1_n_1;
  wire add_carry__1_n_2;
  wire add_carry__1_n_3;
  wire add_carry__1_n_4;
  wire add_carry__1_n_5;
  wire add_carry__1_n_6;
  wire add_carry__1_n_7;
  wire add_carry__2_i_1__1_n_0;
  wire add_carry__2_i_2__1_n_0;
  wire add_carry__2_i_3__1_n_0;
  wire add_carry__2_i_4__1_n_0;
  wire add_carry__2_i_5__1_n_0;
  wire add_carry__2_n_0;
  wire add_carry__2_n_1;
  wire add_carry__2_n_2;
  wire add_carry__2_n_3;
  wire add_carry__2_n_4;
  wire add_carry__2_n_5;
  wire add_carry__2_n_6;
  wire add_carry__2_n_7;
  wire add_carry_i_1__1_n_0;
  wire add_carry_i_2__1_n_0;
  wire add_carry_i_3__1_n_0;
  wire add_carry_i_4__1_n_0;
  wire add_carry_i_5__1_n_0;
  wire add_carry_i_5__1_n_1;
  wire add_carry_i_5__1_n_2;
  wire add_carry_i_5__1_n_3;
  wire add_carry_i_5__1_n_4;
  wire add_carry_i_5__1_n_5;
  wire add_carry_i_5__1_n_6;
  wire add_carry_i_5__1_n_7;
  wire add_carry_i_6__1_n_0;
  wire add_carry_n_0;
  wire add_carry_n_1;
  wire add_carry_n_2;
  wire add_carry_n_3;
  wire add_carry_n_4;
  wire add_carry_n_5;
  wire add_carry_n_6;
  wire add_carry_n_7;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1__2_n_3;
  wire add_clamped1_carry_i_2__2_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__2_n_0;
  wire add_clamped2_carry_i_2__1_n_0;
  wire add_clamped2_carry_i_3__1_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]\delay_element_reg[15]_0 ;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__2_n_0;
  wire prod_rounded_clamped1_carry_i_2__2_n_0;
  wire prod_rounded_clamped1_carry_i_3__1_n_0;
  wire prod_rounded_clamped1_carry_i_3__1_n_1;
  wire prod_rounded_clamped1_carry_i_3__1_n_2;
  wire prod_rounded_clamped1_carry_i_3__1_n_3;
  wire prod_rounded_clamped1_carry_i_3__1_n_4;
  wire prod_rounded_clamped1_carry_i_3__1_n_5;
  wire prod_rounded_clamped1_carry_i_3__1_n_6;
  wire prod_rounded_clamped1_carry_i_3__1_n_7;
  wire prod_rounded_clamped1_carry_i_4__2_n_0;
  wire prod_rounded_clamped1_carry_i_5__2_n_0;
  wire prod_rounded_clamped1_carry_i_6__1_n_0;
  wire prod_rounded_clamped1_carry_i_7__1_n_0;
  wire prod_rounded_clamped1_carry_i_7__1_n_1;
  wire prod_rounded_clamped1_carry_i_7__1_n_2;
  wire prod_rounded_clamped1_carry_i_7__1_n_3;
  wire prod_rounded_clamped1_carry_i_7__1_n_4;
  wire prod_rounded_clamped1_carry_i_7__1_n_5;
  wire prod_rounded_clamped1_carry_i_7__1_n_6;
  wire prod_rounded_clamped1_carry_i_7__1_n_7;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1__2_n_0;
  wire prod_rounded_clamped2_carry_i_2__2_n_0;
  wire prod_rounded_clamped2_carry_i_3__2_n_0;
  wire prod_rounded_clamped2_carry_i_4__2_n_0;
  wire prod_rounded_clamped2_carry_i_5__2_n_0;
  wire prod_rounded_clamped2_carry_i_6__2_n_0;
  wire prod_rounded_clamped2_carry_i_7__2_n_1;
  wire prod_rounded_clamped2_carry_i_7__2_n_2;
  wire prod_rounded_clamped2_carry_i_7__2_n_3;
  wire prod_rounded_clamped2_carry_i_7__2_n_4;
  wire prod_rounded_clamped2_carry_i_7__2_n_5;
  wire prod_rounded_clamped2_carry_i_7__2_n_6;
  wire prod_rounded_clamped2_carry_i_7__2_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:1]NLW_add_clamped1_carry_i_1__2_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_i_1__2_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__2_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1__1_n_0,add_carry_i_2__1_n_0,add_carry_i_3__1_n_0,add_carry_i_4__1_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1__1_n_0,add_carry__0_i_2__1_n_0,add_carry__0_i_3__1_n_0,add_carry__0_i_4__1_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1__1
       (.I0(add_carry__0_i_5__1_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[7]),
        .O(add_carry__0_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2__1
       (.I0(add_carry__0_i_5__1_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[6]),
        .O(add_carry__0_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3__1
       (.I0(add_carry__0_i_5__1_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[5]),
        .O(add_carry__0_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4__1
       (.I0(add_carry__0_i_5__1_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[4]),
        .O(add_carry__0_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry__0_i_5__1
       (.CI(add_carry_i_5__1_n_0),
        .CO({add_carry__0_i_5__1_n_0,add_carry__0_i_5__1_n_1,add_carry__0_i_5__1_n_2,add_carry__0_i_5__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_carry__0_i_5__1_n_4,add_carry__0_i_5__1_n_5,add_carry__0_i_5__1_n_6,add_carry__0_i_5__1_n_7}),
        .S(p_1_in[7:4]));
  CARRY4 add_carry__1
       (.CI(add_carry__0_n_0),
        .CO({add_carry__1_n_0,add_carry__1_n_1,add_carry__1_n_2,add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1__1_n_0,add_carry__1_i_2__1_n_0,add_carry__1_i_3__1_n_0,add_carry__1_i_4__1_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1__1
       (.I0(prod_rounded_clamped1_carry_i_7__1_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[11]),
        .O(add_carry__1_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2__1
       (.I0(prod_rounded_clamped1_carry_i_7__1_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[10]),
        .O(add_carry__1_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3__1
       (.I0(prod_rounded_clamped1_carry_i_7__1_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[9]),
        .O(add_carry__1_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4__1
       (.I0(prod_rounded_clamped1_carry_i_7__1_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[8]),
        .O(add_carry__1_i_4__1_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1__1_n_0,Q[14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2__1_n_0,add_carry__2_i_3__1_n_0,add_carry__2_i_4__1_n_0,add_carry__2_i_5__1_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1__1
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__1_n_4),
        .O(add_carry__2_i_1__1_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2__1
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__1_n_4),
        .I3(Q[15]),
        .O(add_carry__2_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3__1
       (.I0(prod_rounded_clamped1_carry_i_3__1_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[14]),
        .O(add_carry__2_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4__1
       (.I0(prod_rounded_clamped1_carry_i_3__1_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[13]),
        .O(add_carry__2_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5__1
       (.I0(prod_rounded_clamped1_carry_i_3__1_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[12]),
        .O(add_carry__2_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1__1
       (.I0(add_carry_i_5__1_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[3]),
        .O(add_carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2__1
       (.I0(add_carry_i_5__1_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[2]),
        .O(add_carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3__1
       (.I0(add_carry_i_5__1_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[1]),
        .O(add_carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4__1
       (.I0(add_carry_i_5__1_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[0]),
        .O(add_carry_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry_i_5__1
       (.CI(1'b0),
        .CO({add_carry_i_5__1_n_0,add_carry_i_5__1_n_1,add_carry_i_5__1_n_2,add_carry_i_5__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_carry_i_5__1_n_4,add_carry_i_5__1_n_5,add_carry_i_5__1_n_6,add_carry_i_5__1_n_7}),
        .S({p_1_in[3:1],add_carry_i_6__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_carry_i_6__1
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_carry_i_6__1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_carry__2_n_4}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1__2_n_3,add_clamped1_carry_i_2__2_n_0}));
  CARRY4 add_clamped1_carry_i_1__2
       (.CI(add_carry__2_n_0),
        .CO({NLW_add_clamped1_carry_i_1__2_CO_UNCONNECTED[3:1],add_clamped1_carry_i_1__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_add_clamped1_carry_i_1__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped1_carry_i_2__2
       (.I0(add_carry__2_n_5),
        .I1(add_carry__2_n_4),
        .O(add_clamped1_carry_i_2__2_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1__2_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2__1_n_0,add_clamped2_carry_i_3__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__2
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2__1
       (.I0(add_clamped1_carry_i_1__2_n_3),
        .O(add_clamped2_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped2_carry_i_3__1
       (.I0(add_carry__2_n_4),
        .I1(add_carry__2_n_5),
        .O(add_clamped2_carry_i_3__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(add_clamped[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(add_clamped[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(add_clamped[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(add_clamped[12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(add_clamped[13]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(add_clamped[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(add_clamped[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(add_clamped[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(add_clamped[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(add_clamped[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(add_clamped[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(add_clamped[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(add_clamped[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(add_clamped[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(add_clamped[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(\delay_element_reg[15]_0 [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(\delay_element_reg[15]_0 [10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(\delay_element_reg[15]_0 [11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(\delay_element_reg[15]_0 [12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(\delay_element_reg[15]_0 [13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(\delay_element_reg[15]_0 [14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(\delay_element_reg[15]_0 [15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(\delay_element_reg[15]_0 [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(\delay_element_reg[15]_0 [2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(\delay_element_reg[15]_0 [3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(\delay_element_reg[15]_0 [4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(\delay_element_reg[15]_0 [5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(\delay_element_reg[15]_0 [6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(\delay_element_reg[15]_0 [7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(\delay_element_reg[15]_0 [8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(\delay_element_reg[15]_0 [9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__2_n_0,prod_rounded_clamped1_carry_i_2__2_n_0,prod_rounded_clamped1_carry_i_3__1_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__2_n_0,prod_rounded_clamped1_carry_i_5__2_n_0,prod_rounded_clamped1_carry_i_6__1_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1__2
       (.I0(prod_rounded_clamped2_carry_i_7__2_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__2_n_4),
        .O(prod_rounded_clamped1_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2__2
       (.I0(prod_rounded_clamped2_carry_i_7__2_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__2_n_6),
        .O(prod_rounded_clamped1_carry_i_2__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_3__1
       (.CI(prod_rounded_clamped1_carry_i_7__1_n_0),
        .CO({prod_rounded_clamped1_carry_i_3__1_n_0,prod_rounded_clamped1_carry_i_3__1_n_1,prod_rounded_clamped1_carry_i_3__1_n_2,prod_rounded_clamped1_carry_i_3__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3__1_n_4,prod_rounded_clamped1_carry_i_3__1_n_5,prod_rounded_clamped1_carry_i_3__1_n_6,prod_rounded_clamped1_carry_i_3__1_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4__2
       (.I0(prod_rounded_clamped2_carry_i_7__2_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__2_n_4),
        .O(prod_rounded_clamped1_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5__2
       (.I0(prod_rounded_clamped2_carry_i_7__2_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__2_n_6),
        .O(prod_rounded_clamped1_carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6__1
       (.I0(prod_rounded_clamped1_carry_i_3__1_n_5),
        .I1(prod_rounded_clamped1_carry_i_3__1_n_4),
        .O(prod_rounded_clamped1_carry_i_6__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7__1
       (.CI(add_carry__0_i_5__1_n_0),
        .CO({prod_rounded_clamped1_carry_i_7__1_n_0,prod_rounded_clamped1_carry_i_7__1_n_1,prod_rounded_clamped1_carry_i_7__1_n_2,prod_rounded_clamped1_carry_i_7__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_7__1_n_4,prod_rounded_clamped1_carry_i_7__1_n_5,prod_rounded_clamped1_carry_i_7__1_n_6,prod_rounded_clamped1_carry_i_7__1_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1__2_n_0,prod_rounded_clamped2_carry_i_2__2_n_0,prod_rounded_clamped2_carry_i_3__2_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4__2_n_0,prod_rounded_clamped2_carry_i_5__2_n_0,prod_rounded_clamped2_carry_i_6__2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1__2
       (.I0(prod_rounded_clamped2_carry_i_7__2_n_4),
        .I1(prod_rounded_clamped2_carry_i_7__2_n_5),
        .O(prod_rounded_clamped2_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2__2
       (.I0(prod_rounded_clamped2_carry_i_7__2_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__2_n_6),
        .O(prod_rounded_clamped2_carry_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3__2
       (.I0(prod_rounded_clamped1_carry_i_3__1_n_4),
        .O(prod_rounded_clamped2_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4__2
       (.I0(prod_rounded_clamped2_carry_i_7__2_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__2_n_4),
        .O(prod_rounded_clamped2_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5__2
       (.I0(prod_rounded_clamped2_carry_i_7__2_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__2_n_6),
        .O(prod_rounded_clamped2_carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6__2
       (.I0(prod_rounded_clamped1_carry_i_3__1_n_4),
        .I1(prod_rounded_clamped1_carry_i_3__1_n_5),
        .O(prod_rounded_clamped2_carry_i_6__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__2
       (.CI(prod_rounded_clamped1_carry_i_3__1_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__2_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__2_n_1,prod_rounded_clamped2_carry_i_7__2_n_2,prod_rounded_clamped2_carry_i_7__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__2_n_4,prod_rounded_clamped2_carry_i_7__2_n_5,prod_rounded_clamped2_carry_i_7__2_n_6,prod_rounded_clamped2_carry_i_7__2_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock" *) 
module FIR_subblock_3
   (Q,
    add_carry__2_0,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]Q;
  input [15:0]add_carry__2_0;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire add_carry__0_i_1__2_n_0;
  wire add_carry__0_i_2__2_n_0;
  wire add_carry__0_i_3__2_n_0;
  wire add_carry__0_i_4__2_n_0;
  wire add_carry__0_i_5__2_n_0;
  wire add_carry__0_i_5__2_n_1;
  wire add_carry__0_i_5__2_n_2;
  wire add_carry__0_i_5__2_n_3;
  wire add_carry__0_i_5__2_n_4;
  wire add_carry__0_i_5__2_n_5;
  wire add_carry__0_i_5__2_n_6;
  wire add_carry__0_i_5__2_n_7;
  wire add_carry__0_n_0;
  wire add_carry__0_n_1;
  wire add_carry__0_n_2;
  wire add_carry__0_n_3;
  wire add_carry__0_n_4;
  wire add_carry__0_n_5;
  wire add_carry__0_n_6;
  wire add_carry__0_n_7;
  wire add_carry__1_i_1__2_n_0;
  wire add_carry__1_i_2__2_n_0;
  wire add_carry__1_i_3__2_n_0;
  wire add_carry__1_i_4__2_n_0;
  wire add_carry__1_n_0;
  wire add_carry__1_n_1;
  wire add_carry__1_n_2;
  wire add_carry__1_n_3;
  wire add_carry__1_n_4;
  wire add_carry__1_n_5;
  wire add_carry__1_n_6;
  wire add_carry__1_n_7;
  wire [15:0]add_carry__2_0;
  wire add_carry__2_i_1__2_n_0;
  wire add_carry__2_i_2__2_n_0;
  wire add_carry__2_i_3__2_n_0;
  wire add_carry__2_i_4__2_n_0;
  wire add_carry__2_i_5__2_n_0;
  wire add_carry__2_n_0;
  wire add_carry__2_n_1;
  wire add_carry__2_n_2;
  wire add_carry__2_n_3;
  wire add_carry__2_n_4;
  wire add_carry__2_n_5;
  wire add_carry__2_n_6;
  wire add_carry__2_n_7;
  wire add_carry_i_1__2_n_0;
  wire add_carry_i_2__2_n_0;
  wire add_carry_i_3__2_n_0;
  wire add_carry_i_4__2_n_0;
  wire add_carry_i_5__2_n_0;
  wire add_carry_i_5__2_n_1;
  wire add_carry_i_5__2_n_2;
  wire add_carry_i_5__2_n_3;
  wire add_carry_i_5__2_n_4;
  wire add_carry_i_5__2_n_5;
  wire add_carry_i_5__2_n_6;
  wire add_carry_i_5__2_n_7;
  wire add_carry_i_6__2_n_0;
  wire add_carry_n_0;
  wire add_carry_n_1;
  wire add_carry_n_2;
  wire add_carry_n_3;
  wire add_carry_n_4;
  wire add_carry_n_5;
  wire add_carry_n_6;
  wire add_carry_n_7;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1__3_n_3;
  wire add_clamped1_carry_i_2__3_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__3_n_0;
  wire add_clamped2_carry_i_2__2_n_0;
  wire add_clamped2_carry_i_3__2_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__3_n_0;
  wire prod_rounded_clamped1_carry_i_2__3_n_0;
  wire prod_rounded_clamped1_carry_i_3__2_n_0;
  wire prod_rounded_clamped1_carry_i_3__2_n_1;
  wire prod_rounded_clamped1_carry_i_3__2_n_2;
  wire prod_rounded_clamped1_carry_i_3__2_n_3;
  wire prod_rounded_clamped1_carry_i_3__2_n_4;
  wire prod_rounded_clamped1_carry_i_3__2_n_5;
  wire prod_rounded_clamped1_carry_i_3__2_n_6;
  wire prod_rounded_clamped1_carry_i_3__2_n_7;
  wire prod_rounded_clamped1_carry_i_4__3_n_0;
  wire prod_rounded_clamped1_carry_i_5__3_n_0;
  wire prod_rounded_clamped1_carry_i_6__2_n_0;
  wire prod_rounded_clamped1_carry_i_7__2_n_0;
  wire prod_rounded_clamped1_carry_i_7__2_n_1;
  wire prod_rounded_clamped1_carry_i_7__2_n_2;
  wire prod_rounded_clamped1_carry_i_7__2_n_3;
  wire prod_rounded_clamped1_carry_i_7__2_n_4;
  wire prod_rounded_clamped1_carry_i_7__2_n_5;
  wire prod_rounded_clamped1_carry_i_7__2_n_6;
  wire prod_rounded_clamped1_carry_i_7__2_n_7;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1__3_n_0;
  wire prod_rounded_clamped2_carry_i_2__3_n_0;
  wire prod_rounded_clamped2_carry_i_3__3_n_0;
  wire prod_rounded_clamped2_carry_i_4__3_n_0;
  wire prod_rounded_clamped2_carry_i_5__3_n_0;
  wire prod_rounded_clamped2_carry_i_6__3_n_0;
  wire prod_rounded_clamped2_carry_i_7__3_n_1;
  wire prod_rounded_clamped2_carry_i_7__3_n_2;
  wire prod_rounded_clamped2_carry_i_7__3_n_3;
  wire prod_rounded_clamped2_carry_i_7__3_n_4;
  wire prod_rounded_clamped2_carry_i_7__3_n_5;
  wire prod_rounded_clamped2_carry_i_7__3_n_6;
  wire prod_rounded_clamped2_carry_i_7__3_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:1]NLW_add_clamped1_carry_i_1__3_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_i_1__3_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__3_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1__2_n_0,add_carry_i_2__2_n_0,add_carry_i_3__2_n_0,add_carry_i_4__2_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1__2_n_0,add_carry__0_i_2__2_n_0,add_carry__0_i_3__2_n_0,add_carry__0_i_4__2_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1__2
       (.I0(add_carry__0_i_5__2_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[7]),
        .O(add_carry__0_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2__2
       (.I0(add_carry__0_i_5__2_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[6]),
        .O(add_carry__0_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3__2
       (.I0(add_carry__0_i_5__2_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[5]),
        .O(add_carry__0_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4__2
       (.I0(add_carry__0_i_5__2_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[4]),
        .O(add_carry__0_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry__0_i_5__2
       (.CI(add_carry_i_5__2_n_0),
        .CO({add_carry__0_i_5__2_n_0,add_carry__0_i_5__2_n_1,add_carry__0_i_5__2_n_2,add_carry__0_i_5__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_carry__0_i_5__2_n_4,add_carry__0_i_5__2_n_5,add_carry__0_i_5__2_n_6,add_carry__0_i_5__2_n_7}),
        .S(p_1_in[7:4]));
  CARRY4 add_carry__1
       (.CI(add_carry__0_n_0),
        .CO({add_carry__1_n_0,add_carry__1_n_1,add_carry__1_n_2,add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1__2_n_0,add_carry__1_i_2__2_n_0,add_carry__1_i_3__2_n_0,add_carry__1_i_4__2_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1__2
       (.I0(prod_rounded_clamped1_carry_i_7__2_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[11]),
        .O(add_carry__1_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2__2
       (.I0(prod_rounded_clamped1_carry_i_7__2_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[10]),
        .O(add_carry__1_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3__2
       (.I0(prod_rounded_clamped1_carry_i_7__2_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[9]),
        .O(add_carry__1_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4__2
       (.I0(prod_rounded_clamped1_carry_i_7__2_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[8]),
        .O(add_carry__1_i_4__2_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1__2_n_0,add_carry__2_0[14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2__2_n_0,add_carry__2_i_3__2_n_0,add_carry__2_i_4__2_n_0,add_carry__2_i_5__2_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1__2
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__2_n_4),
        .O(add_carry__2_i_1__2_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2__2
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__2_n_4),
        .I3(add_carry__2_0[15]),
        .O(add_carry__2_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3__2
       (.I0(prod_rounded_clamped1_carry_i_3__2_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[14]),
        .O(add_carry__2_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4__2
       (.I0(prod_rounded_clamped1_carry_i_3__2_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[13]),
        .O(add_carry__2_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5__2
       (.I0(prod_rounded_clamped1_carry_i_3__2_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[12]),
        .O(add_carry__2_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1__2
       (.I0(add_carry_i_5__2_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[3]),
        .O(add_carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2__2
       (.I0(add_carry_i_5__2_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[2]),
        .O(add_carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3__2
       (.I0(add_carry_i_5__2_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[1]),
        .O(add_carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4__2
       (.I0(add_carry_i_5__2_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[0]),
        .O(add_carry_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry_i_5__2
       (.CI(1'b0),
        .CO({add_carry_i_5__2_n_0,add_carry_i_5__2_n_1,add_carry_i_5__2_n_2,add_carry_i_5__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_carry_i_5__2_n_4,add_carry_i_5__2_n_5,add_carry_i_5__2_n_6,add_carry_i_5__2_n_7}),
        .S({p_1_in[3:1],add_carry_i_6__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_carry_i_6__2
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_carry_i_6__2_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_carry__2_n_4}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1__3_n_3,add_clamped1_carry_i_2__3_n_0}));
  CARRY4 add_clamped1_carry_i_1__3
       (.CI(add_carry__2_n_0),
        .CO({NLW_add_clamped1_carry_i_1__3_CO_UNCONNECTED[3:1],add_clamped1_carry_i_1__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_add_clamped1_carry_i_1__3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped1_carry_i_2__3
       (.I0(add_carry__2_n_5),
        .I1(add_carry__2_n_4),
        .O(add_clamped1_carry_i_2__3_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1__3_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2__2_n_0,add_clamped2_carry_i_3__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__3
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2__2
       (.I0(add_clamped1_carry_i_1__3_n_3),
        .O(add_clamped2_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped2_carry_i_3__2
       (.I0(add_carry__2_n_4),
        .I1(add_carry__2_n_5),
        .O(add_clamped2_carry_i_3__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(add_clamped[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(add_clamped[10]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(add_clamped[11]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(add_clamped[12]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(add_clamped[13]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(add_clamped[14]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(add_clamped[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(add_clamped[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(add_clamped[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(add_clamped[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(add_clamped[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(add_clamped[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(add_clamped[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(add_clamped[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(add_clamped[8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(Q[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(Q[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(Q[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(Q[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(Q[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(Q[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(Q[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(Q[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(Q[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(Q[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(Q[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(Q[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(Q[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(Q[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(Q[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(Q[9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__3_n_0,prod_rounded_clamped1_carry_i_2__3_n_0,prod_rounded_clamped1_carry_i_3__2_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__3_n_0,prod_rounded_clamped1_carry_i_5__3_n_0,prod_rounded_clamped1_carry_i_6__2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1__3
       (.I0(prod_rounded_clamped2_carry_i_7__3_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__3_n_4),
        .O(prod_rounded_clamped1_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2__3
       (.I0(prod_rounded_clamped2_carry_i_7__3_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__3_n_6),
        .O(prod_rounded_clamped1_carry_i_2__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_3__2
       (.CI(prod_rounded_clamped1_carry_i_7__2_n_0),
        .CO({prod_rounded_clamped1_carry_i_3__2_n_0,prod_rounded_clamped1_carry_i_3__2_n_1,prod_rounded_clamped1_carry_i_3__2_n_2,prod_rounded_clamped1_carry_i_3__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3__2_n_4,prod_rounded_clamped1_carry_i_3__2_n_5,prod_rounded_clamped1_carry_i_3__2_n_6,prod_rounded_clamped1_carry_i_3__2_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4__3
       (.I0(prod_rounded_clamped2_carry_i_7__3_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__3_n_4),
        .O(prod_rounded_clamped1_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5__3
       (.I0(prod_rounded_clamped2_carry_i_7__3_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__3_n_6),
        .O(prod_rounded_clamped1_carry_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6__2
       (.I0(prod_rounded_clamped1_carry_i_3__2_n_5),
        .I1(prod_rounded_clamped1_carry_i_3__2_n_4),
        .O(prod_rounded_clamped1_carry_i_6__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7__2
       (.CI(add_carry__0_i_5__2_n_0),
        .CO({prod_rounded_clamped1_carry_i_7__2_n_0,prod_rounded_clamped1_carry_i_7__2_n_1,prod_rounded_clamped1_carry_i_7__2_n_2,prod_rounded_clamped1_carry_i_7__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_7__2_n_4,prod_rounded_clamped1_carry_i_7__2_n_5,prod_rounded_clamped1_carry_i_7__2_n_6,prod_rounded_clamped1_carry_i_7__2_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1__3_n_0,prod_rounded_clamped2_carry_i_2__3_n_0,prod_rounded_clamped2_carry_i_3__3_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4__3_n_0,prod_rounded_clamped2_carry_i_5__3_n_0,prod_rounded_clamped2_carry_i_6__3_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1__3
       (.I0(prod_rounded_clamped2_carry_i_7__3_n_4),
        .I1(prod_rounded_clamped2_carry_i_7__3_n_5),
        .O(prod_rounded_clamped2_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2__3
       (.I0(prod_rounded_clamped2_carry_i_7__3_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__3_n_6),
        .O(prod_rounded_clamped2_carry_i_2__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3__3
       (.I0(prod_rounded_clamped1_carry_i_3__2_n_4),
        .O(prod_rounded_clamped2_carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4__3
       (.I0(prod_rounded_clamped2_carry_i_7__3_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__3_n_4),
        .O(prod_rounded_clamped2_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5__3
       (.I0(prod_rounded_clamped2_carry_i_7__3_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__3_n_6),
        .O(prod_rounded_clamped2_carry_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6__3
       (.I0(prod_rounded_clamped1_carry_i_3__2_n_4),
        .I1(prod_rounded_clamped1_carry_i_3__2_n_5),
        .O(prod_rounded_clamped2_carry_i_6__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__3
       (.CI(prod_rounded_clamped1_carry_i_3__2_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__3_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__3_n_1,prod_rounded_clamped2_carry_i_7__3_n_2,prod_rounded_clamped2_carry_i_7__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__3_n_4,prod_rounded_clamped2_carry_i_7__3_n_5,prod_rounded_clamped2_carry_i_7__3_n_6,prod_rounded_clamped2_carry_i_7__3_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock" *) 
module FIR_subblock_4
   (\delay_element_reg[15]_0 ,
    Q,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]\delay_element_reg[15]_0 ;
  input [15:0]Q;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire add_carry__0_i_1__3_n_0;
  wire add_carry__0_i_2__3_n_0;
  wire add_carry__0_i_3__3_n_0;
  wire add_carry__0_i_4__3_n_0;
  wire add_carry__0_i_5__3_n_0;
  wire add_carry__0_i_5__3_n_1;
  wire add_carry__0_i_5__3_n_2;
  wire add_carry__0_i_5__3_n_3;
  wire add_carry__0_i_5__3_n_4;
  wire add_carry__0_i_5__3_n_5;
  wire add_carry__0_i_5__3_n_6;
  wire add_carry__0_i_5__3_n_7;
  wire add_carry__0_n_0;
  wire add_carry__0_n_1;
  wire add_carry__0_n_2;
  wire add_carry__0_n_3;
  wire add_carry__0_n_4;
  wire add_carry__0_n_5;
  wire add_carry__0_n_6;
  wire add_carry__0_n_7;
  wire add_carry__1_i_1__3_n_0;
  wire add_carry__1_i_2__3_n_0;
  wire add_carry__1_i_3__3_n_0;
  wire add_carry__1_i_4__3_n_0;
  wire add_carry__1_n_0;
  wire add_carry__1_n_1;
  wire add_carry__1_n_2;
  wire add_carry__1_n_3;
  wire add_carry__1_n_4;
  wire add_carry__1_n_5;
  wire add_carry__1_n_6;
  wire add_carry__1_n_7;
  wire add_carry__2_i_1__3_n_0;
  wire add_carry__2_i_2__3_n_0;
  wire add_carry__2_i_3__3_n_0;
  wire add_carry__2_i_4__3_n_0;
  wire add_carry__2_i_5__3_n_0;
  wire add_carry__2_n_0;
  wire add_carry__2_n_1;
  wire add_carry__2_n_2;
  wire add_carry__2_n_3;
  wire add_carry__2_n_4;
  wire add_carry__2_n_5;
  wire add_carry__2_n_6;
  wire add_carry__2_n_7;
  wire add_carry_i_1__3_n_0;
  wire add_carry_i_2__3_n_0;
  wire add_carry_i_3__3_n_0;
  wire add_carry_i_4__3_n_0;
  wire add_carry_i_5__3_n_0;
  wire add_carry_i_5__3_n_1;
  wire add_carry_i_5__3_n_2;
  wire add_carry_i_5__3_n_3;
  wire add_carry_i_5__3_n_4;
  wire add_carry_i_5__3_n_5;
  wire add_carry_i_5__3_n_6;
  wire add_carry_i_5__3_n_7;
  wire add_carry_i_6__3_n_0;
  wire add_carry_n_0;
  wire add_carry_n_1;
  wire add_carry_n_2;
  wire add_carry_n_3;
  wire add_carry_n_4;
  wire add_carry_n_5;
  wire add_carry_n_6;
  wire add_carry_n_7;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1__4_n_3;
  wire add_clamped1_carry_i_2__4_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__4_n_0;
  wire add_clamped2_carry_i_2__3_n_0;
  wire add_clamped2_carry_i_3__3_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]\delay_element_reg[15]_0 ;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__4_n_0;
  wire prod_rounded_clamped1_carry_i_2__4_n_0;
  wire prod_rounded_clamped1_carry_i_3__3_n_0;
  wire prod_rounded_clamped1_carry_i_3__3_n_1;
  wire prod_rounded_clamped1_carry_i_3__3_n_2;
  wire prod_rounded_clamped1_carry_i_3__3_n_3;
  wire prod_rounded_clamped1_carry_i_3__3_n_4;
  wire prod_rounded_clamped1_carry_i_3__3_n_5;
  wire prod_rounded_clamped1_carry_i_3__3_n_6;
  wire prod_rounded_clamped1_carry_i_3__3_n_7;
  wire prod_rounded_clamped1_carry_i_4__4_n_0;
  wire prod_rounded_clamped1_carry_i_5__4_n_0;
  wire prod_rounded_clamped1_carry_i_6__3_n_0;
  wire prod_rounded_clamped1_carry_i_7__3_n_0;
  wire prod_rounded_clamped1_carry_i_7__3_n_1;
  wire prod_rounded_clamped1_carry_i_7__3_n_2;
  wire prod_rounded_clamped1_carry_i_7__3_n_3;
  wire prod_rounded_clamped1_carry_i_7__3_n_4;
  wire prod_rounded_clamped1_carry_i_7__3_n_5;
  wire prod_rounded_clamped1_carry_i_7__3_n_6;
  wire prod_rounded_clamped1_carry_i_7__3_n_7;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1__4_n_0;
  wire prod_rounded_clamped2_carry_i_2__4_n_0;
  wire prod_rounded_clamped2_carry_i_3__4_n_0;
  wire prod_rounded_clamped2_carry_i_4__4_n_0;
  wire prod_rounded_clamped2_carry_i_5__4_n_0;
  wire prod_rounded_clamped2_carry_i_6__4_n_0;
  wire prod_rounded_clamped2_carry_i_7__4_n_1;
  wire prod_rounded_clamped2_carry_i_7__4_n_2;
  wire prod_rounded_clamped2_carry_i_7__4_n_3;
  wire prod_rounded_clamped2_carry_i_7__4_n_4;
  wire prod_rounded_clamped2_carry_i_7__4_n_5;
  wire prod_rounded_clamped2_carry_i_7__4_n_6;
  wire prod_rounded_clamped2_carry_i_7__4_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:1]NLW_add_clamped1_carry_i_1__4_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_i_1__4_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__4_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1__3_n_0,add_carry_i_2__3_n_0,add_carry_i_3__3_n_0,add_carry_i_4__3_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1__3_n_0,add_carry__0_i_2__3_n_0,add_carry__0_i_3__3_n_0,add_carry__0_i_4__3_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1__3
       (.I0(add_carry__0_i_5__3_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[7]),
        .O(add_carry__0_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2__3
       (.I0(add_carry__0_i_5__3_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[6]),
        .O(add_carry__0_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3__3
       (.I0(add_carry__0_i_5__3_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[5]),
        .O(add_carry__0_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4__3
       (.I0(add_carry__0_i_5__3_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[4]),
        .O(add_carry__0_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry__0_i_5__3
       (.CI(add_carry_i_5__3_n_0),
        .CO({add_carry__0_i_5__3_n_0,add_carry__0_i_5__3_n_1,add_carry__0_i_5__3_n_2,add_carry__0_i_5__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_carry__0_i_5__3_n_4,add_carry__0_i_5__3_n_5,add_carry__0_i_5__3_n_6,add_carry__0_i_5__3_n_7}),
        .S(p_1_in[7:4]));
  CARRY4 add_carry__1
       (.CI(add_carry__0_n_0),
        .CO({add_carry__1_n_0,add_carry__1_n_1,add_carry__1_n_2,add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1__3_n_0,add_carry__1_i_2__3_n_0,add_carry__1_i_3__3_n_0,add_carry__1_i_4__3_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1__3
       (.I0(prod_rounded_clamped1_carry_i_7__3_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[11]),
        .O(add_carry__1_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2__3
       (.I0(prod_rounded_clamped1_carry_i_7__3_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[10]),
        .O(add_carry__1_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3__3
       (.I0(prod_rounded_clamped1_carry_i_7__3_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[9]),
        .O(add_carry__1_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4__3
       (.I0(prod_rounded_clamped1_carry_i_7__3_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[8]),
        .O(add_carry__1_i_4__3_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1__3_n_0,Q[14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2__3_n_0,add_carry__2_i_3__3_n_0,add_carry__2_i_4__3_n_0,add_carry__2_i_5__3_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1__3
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__3_n_4),
        .O(add_carry__2_i_1__3_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2__3
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__3_n_4),
        .I3(Q[15]),
        .O(add_carry__2_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3__3
       (.I0(prod_rounded_clamped1_carry_i_3__3_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[14]),
        .O(add_carry__2_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4__3
       (.I0(prod_rounded_clamped1_carry_i_3__3_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[13]),
        .O(add_carry__2_i_4__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5__3
       (.I0(prod_rounded_clamped1_carry_i_3__3_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[12]),
        .O(add_carry__2_i_5__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1__3
       (.I0(add_carry_i_5__3_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[3]),
        .O(add_carry_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2__3
       (.I0(add_carry_i_5__3_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[2]),
        .O(add_carry_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3__3
       (.I0(add_carry_i_5__3_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[1]),
        .O(add_carry_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4__3
       (.I0(add_carry_i_5__3_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[0]),
        .O(add_carry_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry_i_5__3
       (.CI(1'b0),
        .CO({add_carry_i_5__3_n_0,add_carry_i_5__3_n_1,add_carry_i_5__3_n_2,add_carry_i_5__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_carry_i_5__3_n_4,add_carry_i_5__3_n_5,add_carry_i_5__3_n_6,add_carry_i_5__3_n_7}),
        .S({p_1_in[3:1],add_carry_i_6__3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_carry_i_6__3
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_carry_i_6__3_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_carry__2_n_4}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1__4_n_3,add_clamped1_carry_i_2__4_n_0}));
  CARRY4 add_clamped1_carry_i_1__4
       (.CI(add_carry__2_n_0),
        .CO({NLW_add_clamped1_carry_i_1__4_CO_UNCONNECTED[3:1],add_clamped1_carry_i_1__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_add_clamped1_carry_i_1__4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped1_carry_i_2__4
       (.I0(add_carry__2_n_5),
        .I1(add_carry__2_n_4),
        .O(add_clamped1_carry_i_2__4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1__4_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2__3_n_0,add_clamped2_carry_i_3__3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__4
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2__3
       (.I0(add_clamped1_carry_i_1__4_n_3),
        .O(add_clamped2_carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped2_carry_i_3__3
       (.I0(add_carry__2_n_4),
        .I1(add_carry__2_n_5),
        .O(add_clamped2_carry_i_3__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(add_clamped[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(add_clamped[10]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(add_clamped[11]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(add_clamped[12]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(add_clamped[13]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(add_clamped[14]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(add_clamped[15]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(add_clamped[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(add_clamped[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(add_clamped[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(add_clamped[4]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(add_clamped[5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(add_clamped[6]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(add_clamped[7]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(add_clamped[8]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(\delay_element_reg[15]_0 [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(\delay_element_reg[15]_0 [10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(\delay_element_reg[15]_0 [11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(\delay_element_reg[15]_0 [12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(\delay_element_reg[15]_0 [13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(\delay_element_reg[15]_0 [14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(\delay_element_reg[15]_0 [15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(\delay_element_reg[15]_0 [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(\delay_element_reg[15]_0 [2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(\delay_element_reg[15]_0 [3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(\delay_element_reg[15]_0 [4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(\delay_element_reg[15]_0 [5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(\delay_element_reg[15]_0 [6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(\delay_element_reg[15]_0 [7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(\delay_element_reg[15]_0 [8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(\delay_element_reg[15]_0 [9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__4_n_0,prod_rounded_clamped1_carry_i_2__4_n_0,prod_rounded_clamped1_carry_i_3__3_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__4_n_0,prod_rounded_clamped1_carry_i_5__4_n_0,prod_rounded_clamped1_carry_i_6__3_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1__4
       (.I0(prod_rounded_clamped2_carry_i_7__4_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__4_n_4),
        .O(prod_rounded_clamped1_carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2__4
       (.I0(prod_rounded_clamped2_carry_i_7__4_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__4_n_6),
        .O(prod_rounded_clamped1_carry_i_2__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_3__3
       (.CI(prod_rounded_clamped1_carry_i_7__3_n_0),
        .CO({prod_rounded_clamped1_carry_i_3__3_n_0,prod_rounded_clamped1_carry_i_3__3_n_1,prod_rounded_clamped1_carry_i_3__3_n_2,prod_rounded_clamped1_carry_i_3__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3__3_n_4,prod_rounded_clamped1_carry_i_3__3_n_5,prod_rounded_clamped1_carry_i_3__3_n_6,prod_rounded_clamped1_carry_i_3__3_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4__4
       (.I0(prod_rounded_clamped2_carry_i_7__4_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__4_n_4),
        .O(prod_rounded_clamped1_carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5__4
       (.I0(prod_rounded_clamped2_carry_i_7__4_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__4_n_6),
        .O(prod_rounded_clamped1_carry_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6__3
       (.I0(prod_rounded_clamped1_carry_i_3__3_n_5),
        .I1(prod_rounded_clamped1_carry_i_3__3_n_4),
        .O(prod_rounded_clamped1_carry_i_6__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7__3
       (.CI(add_carry__0_i_5__3_n_0),
        .CO({prod_rounded_clamped1_carry_i_7__3_n_0,prod_rounded_clamped1_carry_i_7__3_n_1,prod_rounded_clamped1_carry_i_7__3_n_2,prod_rounded_clamped1_carry_i_7__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_7__3_n_4,prod_rounded_clamped1_carry_i_7__3_n_5,prod_rounded_clamped1_carry_i_7__3_n_6,prod_rounded_clamped1_carry_i_7__3_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1__4_n_0,prod_rounded_clamped2_carry_i_2__4_n_0,prod_rounded_clamped2_carry_i_3__4_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4__4_n_0,prod_rounded_clamped2_carry_i_5__4_n_0,prod_rounded_clamped2_carry_i_6__4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1__4
       (.I0(prod_rounded_clamped2_carry_i_7__4_n_4),
        .I1(prod_rounded_clamped2_carry_i_7__4_n_5),
        .O(prod_rounded_clamped2_carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2__4
       (.I0(prod_rounded_clamped2_carry_i_7__4_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__4_n_6),
        .O(prod_rounded_clamped2_carry_i_2__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3__4
       (.I0(prod_rounded_clamped1_carry_i_3__3_n_4),
        .O(prod_rounded_clamped2_carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4__4
       (.I0(prod_rounded_clamped2_carry_i_7__4_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__4_n_4),
        .O(prod_rounded_clamped2_carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5__4
       (.I0(prod_rounded_clamped2_carry_i_7__4_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__4_n_6),
        .O(prod_rounded_clamped2_carry_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6__4
       (.I0(prod_rounded_clamped1_carry_i_3__3_n_4),
        .I1(prod_rounded_clamped1_carry_i_3__3_n_5),
        .O(prod_rounded_clamped2_carry_i_6__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__4
       (.CI(prod_rounded_clamped1_carry_i_3__3_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__4_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__4_n_1,prod_rounded_clamped2_carry_i_7__4_n_2,prod_rounded_clamped2_carry_i_7__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__4_n_4,prod_rounded_clamped2_carry_i_7__4_n_5,prod_rounded_clamped2_carry_i_7__4_n_6,prod_rounded_clamped2_carry_i_7__4_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock" *) 
module FIR_subblock_5
   (Q,
    add_carry__2_0,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]Q;
  input [15:0]add_carry__2_0;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire add_carry__0_i_1__4_n_0;
  wire add_carry__0_i_2__4_n_0;
  wire add_carry__0_i_3__4_n_0;
  wire add_carry__0_i_4__4_n_0;
  wire add_carry__0_i_5__4_n_0;
  wire add_carry__0_i_5__4_n_1;
  wire add_carry__0_i_5__4_n_2;
  wire add_carry__0_i_5__4_n_3;
  wire add_carry__0_i_5__4_n_4;
  wire add_carry__0_i_5__4_n_5;
  wire add_carry__0_i_5__4_n_6;
  wire add_carry__0_i_5__4_n_7;
  wire add_carry__0_n_0;
  wire add_carry__0_n_1;
  wire add_carry__0_n_2;
  wire add_carry__0_n_3;
  wire add_carry__0_n_4;
  wire add_carry__0_n_5;
  wire add_carry__0_n_6;
  wire add_carry__0_n_7;
  wire add_carry__1_i_1__4_n_0;
  wire add_carry__1_i_2__4_n_0;
  wire add_carry__1_i_3__4_n_0;
  wire add_carry__1_i_4__4_n_0;
  wire add_carry__1_n_0;
  wire add_carry__1_n_1;
  wire add_carry__1_n_2;
  wire add_carry__1_n_3;
  wire add_carry__1_n_4;
  wire add_carry__1_n_5;
  wire add_carry__1_n_6;
  wire add_carry__1_n_7;
  wire [15:0]add_carry__2_0;
  wire add_carry__2_i_1__4_n_0;
  wire add_carry__2_i_2__4_n_0;
  wire add_carry__2_i_3__4_n_0;
  wire add_carry__2_i_4__4_n_0;
  wire add_carry__2_i_5__4_n_0;
  wire add_carry__2_n_0;
  wire add_carry__2_n_1;
  wire add_carry__2_n_2;
  wire add_carry__2_n_3;
  wire add_carry__2_n_4;
  wire add_carry__2_n_5;
  wire add_carry__2_n_6;
  wire add_carry__2_n_7;
  wire add_carry_i_1__4_n_0;
  wire add_carry_i_2__4_n_0;
  wire add_carry_i_3__4_n_0;
  wire add_carry_i_4__4_n_0;
  wire add_carry_i_5__4_n_0;
  wire add_carry_i_5__4_n_1;
  wire add_carry_i_5__4_n_2;
  wire add_carry_i_5__4_n_3;
  wire add_carry_i_5__4_n_4;
  wire add_carry_i_5__4_n_5;
  wire add_carry_i_5__4_n_6;
  wire add_carry_i_5__4_n_7;
  wire add_carry_i_6__4_n_0;
  wire add_carry_n_0;
  wire add_carry_n_1;
  wire add_carry_n_2;
  wire add_carry_n_3;
  wire add_carry_n_4;
  wire add_carry_n_5;
  wire add_carry_n_6;
  wire add_carry_n_7;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1__5_n_3;
  wire add_clamped1_carry_i_2__5_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__5_n_0;
  wire add_clamped2_carry_i_2__4_n_0;
  wire add_clamped2_carry_i_3__4_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__5_n_0;
  wire prod_rounded_clamped1_carry_i_2__5_n_0;
  wire prod_rounded_clamped1_carry_i_3__4_n_0;
  wire prod_rounded_clamped1_carry_i_3__4_n_1;
  wire prod_rounded_clamped1_carry_i_3__4_n_2;
  wire prod_rounded_clamped1_carry_i_3__4_n_3;
  wire prod_rounded_clamped1_carry_i_3__4_n_4;
  wire prod_rounded_clamped1_carry_i_3__4_n_5;
  wire prod_rounded_clamped1_carry_i_3__4_n_6;
  wire prod_rounded_clamped1_carry_i_3__4_n_7;
  wire prod_rounded_clamped1_carry_i_4__5_n_0;
  wire prod_rounded_clamped1_carry_i_5__5_n_0;
  wire prod_rounded_clamped1_carry_i_6__4_n_0;
  wire prod_rounded_clamped1_carry_i_7__4_n_0;
  wire prod_rounded_clamped1_carry_i_7__4_n_1;
  wire prod_rounded_clamped1_carry_i_7__4_n_2;
  wire prod_rounded_clamped1_carry_i_7__4_n_3;
  wire prod_rounded_clamped1_carry_i_7__4_n_4;
  wire prod_rounded_clamped1_carry_i_7__4_n_5;
  wire prod_rounded_clamped1_carry_i_7__4_n_6;
  wire prod_rounded_clamped1_carry_i_7__4_n_7;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1__5_n_0;
  wire prod_rounded_clamped2_carry_i_2__5_n_0;
  wire prod_rounded_clamped2_carry_i_3__5_n_0;
  wire prod_rounded_clamped2_carry_i_4__5_n_0;
  wire prod_rounded_clamped2_carry_i_5__5_n_0;
  wire prod_rounded_clamped2_carry_i_6__5_n_0;
  wire prod_rounded_clamped2_carry_i_7__5_n_1;
  wire prod_rounded_clamped2_carry_i_7__5_n_2;
  wire prod_rounded_clamped2_carry_i_7__5_n_3;
  wire prod_rounded_clamped2_carry_i_7__5_n_4;
  wire prod_rounded_clamped2_carry_i_7__5_n_5;
  wire prod_rounded_clamped2_carry_i_7__5_n_6;
  wire prod_rounded_clamped2_carry_i_7__5_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:1]NLW_add_clamped1_carry_i_1__5_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_i_1__5_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__5_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1__4_n_0,add_carry_i_2__4_n_0,add_carry_i_3__4_n_0,add_carry_i_4__4_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1__4_n_0,add_carry__0_i_2__4_n_0,add_carry__0_i_3__4_n_0,add_carry__0_i_4__4_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1__4
       (.I0(add_carry__0_i_5__4_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[7]),
        .O(add_carry__0_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2__4
       (.I0(add_carry__0_i_5__4_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[6]),
        .O(add_carry__0_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3__4
       (.I0(add_carry__0_i_5__4_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[5]),
        .O(add_carry__0_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4__4
       (.I0(add_carry__0_i_5__4_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[4]),
        .O(add_carry__0_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry__0_i_5__4
       (.CI(add_carry_i_5__4_n_0),
        .CO({add_carry__0_i_5__4_n_0,add_carry__0_i_5__4_n_1,add_carry__0_i_5__4_n_2,add_carry__0_i_5__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_carry__0_i_5__4_n_4,add_carry__0_i_5__4_n_5,add_carry__0_i_5__4_n_6,add_carry__0_i_5__4_n_7}),
        .S(p_1_in[7:4]));
  CARRY4 add_carry__1
       (.CI(add_carry__0_n_0),
        .CO({add_carry__1_n_0,add_carry__1_n_1,add_carry__1_n_2,add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1__4_n_0,add_carry__1_i_2__4_n_0,add_carry__1_i_3__4_n_0,add_carry__1_i_4__4_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1__4
       (.I0(prod_rounded_clamped1_carry_i_7__4_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[11]),
        .O(add_carry__1_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2__4
       (.I0(prod_rounded_clamped1_carry_i_7__4_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[10]),
        .O(add_carry__1_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3__4
       (.I0(prod_rounded_clamped1_carry_i_7__4_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[9]),
        .O(add_carry__1_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4__4
       (.I0(prod_rounded_clamped1_carry_i_7__4_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[8]),
        .O(add_carry__1_i_4__4_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1__4_n_0,add_carry__2_0[14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2__4_n_0,add_carry__2_i_3__4_n_0,add_carry__2_i_4__4_n_0,add_carry__2_i_5__4_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1__4
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__4_n_4),
        .O(add_carry__2_i_1__4_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2__4
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__4_n_4),
        .I3(add_carry__2_0[15]),
        .O(add_carry__2_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3__4
       (.I0(prod_rounded_clamped1_carry_i_3__4_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[14]),
        .O(add_carry__2_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4__4
       (.I0(prod_rounded_clamped1_carry_i_3__4_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[13]),
        .O(add_carry__2_i_4__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5__4
       (.I0(prod_rounded_clamped1_carry_i_3__4_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[12]),
        .O(add_carry__2_i_5__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1__4
       (.I0(add_carry_i_5__4_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[3]),
        .O(add_carry_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2__4
       (.I0(add_carry_i_5__4_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[2]),
        .O(add_carry_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3__4
       (.I0(add_carry_i_5__4_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[1]),
        .O(add_carry_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4__4
       (.I0(add_carry_i_5__4_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[0]),
        .O(add_carry_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry_i_5__4
       (.CI(1'b0),
        .CO({add_carry_i_5__4_n_0,add_carry_i_5__4_n_1,add_carry_i_5__4_n_2,add_carry_i_5__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_carry_i_5__4_n_4,add_carry_i_5__4_n_5,add_carry_i_5__4_n_6,add_carry_i_5__4_n_7}),
        .S({p_1_in[3:1],add_carry_i_6__4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_carry_i_6__4
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_carry_i_6__4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_carry__2_n_4}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1__5_n_3,add_clamped1_carry_i_2__5_n_0}));
  CARRY4 add_clamped1_carry_i_1__5
       (.CI(add_carry__2_n_0),
        .CO({NLW_add_clamped1_carry_i_1__5_CO_UNCONNECTED[3:1],add_clamped1_carry_i_1__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_add_clamped1_carry_i_1__5_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped1_carry_i_2__5
       (.I0(add_carry__2_n_5),
        .I1(add_carry__2_n_4),
        .O(add_clamped1_carry_i_2__5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1__5_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2__4_n_0,add_clamped2_carry_i_3__4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__5
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2__4
       (.I0(add_clamped1_carry_i_1__5_n_3),
        .O(add_clamped2_carry_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped2_carry_i_3__4
       (.I0(add_carry__2_n_4),
        .I1(add_carry__2_n_5),
        .O(add_clamped2_carry_i_3__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(add_clamped[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(add_clamped[10]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(add_clamped[11]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(add_clamped[12]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(add_clamped[13]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(add_clamped[14]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(add_clamped[15]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(add_clamped[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(add_clamped[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(add_clamped[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(add_clamped[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(add_clamped[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(add_clamped[6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(add_clamped[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(add_clamped[8]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(Q[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(Q[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(Q[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(Q[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(Q[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(Q[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(Q[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(Q[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(Q[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(Q[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(Q[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(Q[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(Q[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(Q[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(Q[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(Q[9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__5_n_0,prod_rounded_clamped1_carry_i_2__5_n_0,prod_rounded_clamped1_carry_i_3__4_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__5_n_0,prod_rounded_clamped1_carry_i_5__5_n_0,prod_rounded_clamped1_carry_i_6__4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1__5
       (.I0(prod_rounded_clamped2_carry_i_7__5_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__5_n_4),
        .O(prod_rounded_clamped1_carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2__5
       (.I0(prod_rounded_clamped2_carry_i_7__5_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__5_n_6),
        .O(prod_rounded_clamped1_carry_i_2__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_3__4
       (.CI(prod_rounded_clamped1_carry_i_7__4_n_0),
        .CO({prod_rounded_clamped1_carry_i_3__4_n_0,prod_rounded_clamped1_carry_i_3__4_n_1,prod_rounded_clamped1_carry_i_3__4_n_2,prod_rounded_clamped1_carry_i_3__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3__4_n_4,prod_rounded_clamped1_carry_i_3__4_n_5,prod_rounded_clamped1_carry_i_3__4_n_6,prod_rounded_clamped1_carry_i_3__4_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4__5
       (.I0(prod_rounded_clamped2_carry_i_7__5_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__5_n_4),
        .O(prod_rounded_clamped1_carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5__5
       (.I0(prod_rounded_clamped2_carry_i_7__5_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__5_n_6),
        .O(prod_rounded_clamped1_carry_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6__4
       (.I0(prod_rounded_clamped1_carry_i_3__4_n_5),
        .I1(prod_rounded_clamped1_carry_i_3__4_n_4),
        .O(prod_rounded_clamped1_carry_i_6__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7__4
       (.CI(add_carry__0_i_5__4_n_0),
        .CO({prod_rounded_clamped1_carry_i_7__4_n_0,prod_rounded_clamped1_carry_i_7__4_n_1,prod_rounded_clamped1_carry_i_7__4_n_2,prod_rounded_clamped1_carry_i_7__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_7__4_n_4,prod_rounded_clamped1_carry_i_7__4_n_5,prod_rounded_clamped1_carry_i_7__4_n_6,prod_rounded_clamped1_carry_i_7__4_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1__5_n_0,prod_rounded_clamped2_carry_i_2__5_n_0,prod_rounded_clamped2_carry_i_3__5_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4__5_n_0,prod_rounded_clamped2_carry_i_5__5_n_0,prod_rounded_clamped2_carry_i_6__5_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1__5
       (.I0(prod_rounded_clamped2_carry_i_7__5_n_4),
        .I1(prod_rounded_clamped2_carry_i_7__5_n_5),
        .O(prod_rounded_clamped2_carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2__5
       (.I0(prod_rounded_clamped2_carry_i_7__5_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__5_n_6),
        .O(prod_rounded_clamped2_carry_i_2__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3__5
       (.I0(prod_rounded_clamped1_carry_i_3__4_n_4),
        .O(prod_rounded_clamped2_carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4__5
       (.I0(prod_rounded_clamped2_carry_i_7__5_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__5_n_4),
        .O(prod_rounded_clamped2_carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5__5
       (.I0(prod_rounded_clamped2_carry_i_7__5_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__5_n_6),
        .O(prod_rounded_clamped2_carry_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6__5
       (.I0(prod_rounded_clamped1_carry_i_3__4_n_4),
        .I1(prod_rounded_clamped1_carry_i_3__4_n_5),
        .O(prod_rounded_clamped2_carry_i_6__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__5
       (.CI(prod_rounded_clamped1_carry_i_3__4_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__5_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__5_n_1,prod_rounded_clamped2_carry_i_7__5_n_2,prod_rounded_clamped2_carry_i_7__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__5_n_4,prod_rounded_clamped2_carry_i_7__5_n_5,prod_rounded_clamped2_carry_i_7__5_n_6,prod_rounded_clamped2_carry_i_7__5_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock" *) 
module FIR_subblock_6
   (\delay_element_reg[15]_0 ,
    Q,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]\delay_element_reg[15]_0 ;
  input [15:0]Q;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire add_carry__0_i_1__5_n_0;
  wire add_carry__0_i_2__5_n_0;
  wire add_carry__0_i_3__5_n_0;
  wire add_carry__0_i_4__5_n_0;
  wire add_carry__0_i_5__5_n_0;
  wire add_carry__0_i_5__5_n_1;
  wire add_carry__0_i_5__5_n_2;
  wire add_carry__0_i_5__5_n_3;
  wire add_carry__0_i_5__5_n_4;
  wire add_carry__0_i_5__5_n_5;
  wire add_carry__0_i_5__5_n_6;
  wire add_carry__0_i_5__5_n_7;
  wire add_carry__0_n_0;
  wire add_carry__0_n_1;
  wire add_carry__0_n_2;
  wire add_carry__0_n_3;
  wire add_carry__0_n_4;
  wire add_carry__0_n_5;
  wire add_carry__0_n_6;
  wire add_carry__0_n_7;
  wire add_carry__1_i_1__5_n_0;
  wire add_carry__1_i_2__5_n_0;
  wire add_carry__1_i_3__5_n_0;
  wire add_carry__1_i_4__5_n_0;
  wire add_carry__1_n_0;
  wire add_carry__1_n_1;
  wire add_carry__1_n_2;
  wire add_carry__1_n_3;
  wire add_carry__1_n_4;
  wire add_carry__1_n_5;
  wire add_carry__1_n_6;
  wire add_carry__1_n_7;
  wire add_carry__2_i_1__5_n_0;
  wire add_carry__2_i_2__5_n_0;
  wire add_carry__2_i_3__5_n_0;
  wire add_carry__2_i_4__5_n_0;
  wire add_carry__2_i_5__5_n_0;
  wire add_carry__2_n_0;
  wire add_carry__2_n_1;
  wire add_carry__2_n_2;
  wire add_carry__2_n_3;
  wire add_carry__2_n_4;
  wire add_carry__2_n_5;
  wire add_carry__2_n_6;
  wire add_carry__2_n_7;
  wire add_carry_i_1__5_n_0;
  wire add_carry_i_2__5_n_0;
  wire add_carry_i_3__5_n_0;
  wire add_carry_i_4__5_n_0;
  wire add_carry_i_5__5_n_0;
  wire add_carry_i_5__5_n_1;
  wire add_carry_i_5__5_n_2;
  wire add_carry_i_5__5_n_3;
  wire add_carry_i_5__5_n_4;
  wire add_carry_i_5__5_n_5;
  wire add_carry_i_5__5_n_6;
  wire add_carry_i_5__5_n_7;
  wire add_carry_i_6__5_n_0;
  wire add_carry_n_0;
  wire add_carry_n_1;
  wire add_carry_n_2;
  wire add_carry_n_3;
  wire add_carry_n_4;
  wire add_carry_n_5;
  wire add_carry_n_6;
  wire add_carry_n_7;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1__6_n_3;
  wire add_clamped1_carry_i_2__6_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__6_n_0;
  wire add_clamped2_carry_i_2__5_n_0;
  wire add_clamped2_carry_i_3__5_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]\delay_element_reg[15]_0 ;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__6_n_0;
  wire prod_rounded_clamped1_carry_i_2__6_n_0;
  wire prod_rounded_clamped1_carry_i_3__5_n_0;
  wire prod_rounded_clamped1_carry_i_3__5_n_1;
  wire prod_rounded_clamped1_carry_i_3__5_n_2;
  wire prod_rounded_clamped1_carry_i_3__5_n_3;
  wire prod_rounded_clamped1_carry_i_3__5_n_4;
  wire prod_rounded_clamped1_carry_i_3__5_n_5;
  wire prod_rounded_clamped1_carry_i_3__5_n_6;
  wire prod_rounded_clamped1_carry_i_3__5_n_7;
  wire prod_rounded_clamped1_carry_i_4__6_n_0;
  wire prod_rounded_clamped1_carry_i_5__6_n_0;
  wire prod_rounded_clamped1_carry_i_6__5_n_0;
  wire prod_rounded_clamped1_carry_i_7__5_n_0;
  wire prod_rounded_clamped1_carry_i_7__5_n_1;
  wire prod_rounded_clamped1_carry_i_7__5_n_2;
  wire prod_rounded_clamped1_carry_i_7__5_n_3;
  wire prod_rounded_clamped1_carry_i_7__5_n_4;
  wire prod_rounded_clamped1_carry_i_7__5_n_5;
  wire prod_rounded_clamped1_carry_i_7__5_n_6;
  wire prod_rounded_clamped1_carry_i_7__5_n_7;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1__6_n_0;
  wire prod_rounded_clamped2_carry_i_2__6_n_0;
  wire prod_rounded_clamped2_carry_i_3__6_n_0;
  wire prod_rounded_clamped2_carry_i_4__6_n_0;
  wire prod_rounded_clamped2_carry_i_5__6_n_0;
  wire prod_rounded_clamped2_carry_i_6__6_n_0;
  wire prod_rounded_clamped2_carry_i_7__6_n_1;
  wire prod_rounded_clamped2_carry_i_7__6_n_2;
  wire prod_rounded_clamped2_carry_i_7__6_n_3;
  wire prod_rounded_clamped2_carry_i_7__6_n_4;
  wire prod_rounded_clamped2_carry_i_7__6_n_5;
  wire prod_rounded_clamped2_carry_i_7__6_n_6;
  wire prod_rounded_clamped2_carry_i_7__6_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:1]NLW_add_clamped1_carry_i_1__6_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_i_1__6_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__6_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1__5_n_0,add_carry_i_2__5_n_0,add_carry_i_3__5_n_0,add_carry_i_4__5_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1__5_n_0,add_carry__0_i_2__5_n_0,add_carry__0_i_3__5_n_0,add_carry__0_i_4__5_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1__5
       (.I0(add_carry__0_i_5__5_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[7]),
        .O(add_carry__0_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2__5
       (.I0(add_carry__0_i_5__5_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[6]),
        .O(add_carry__0_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3__5
       (.I0(add_carry__0_i_5__5_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[5]),
        .O(add_carry__0_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4__5
       (.I0(add_carry__0_i_5__5_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[4]),
        .O(add_carry__0_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry__0_i_5__5
       (.CI(add_carry_i_5__5_n_0),
        .CO({add_carry__0_i_5__5_n_0,add_carry__0_i_5__5_n_1,add_carry__0_i_5__5_n_2,add_carry__0_i_5__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_carry__0_i_5__5_n_4,add_carry__0_i_5__5_n_5,add_carry__0_i_5__5_n_6,add_carry__0_i_5__5_n_7}),
        .S(p_1_in[7:4]));
  CARRY4 add_carry__1
       (.CI(add_carry__0_n_0),
        .CO({add_carry__1_n_0,add_carry__1_n_1,add_carry__1_n_2,add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1__5_n_0,add_carry__1_i_2__5_n_0,add_carry__1_i_3__5_n_0,add_carry__1_i_4__5_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1__5
       (.I0(prod_rounded_clamped1_carry_i_7__5_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[11]),
        .O(add_carry__1_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2__5
       (.I0(prod_rounded_clamped1_carry_i_7__5_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[10]),
        .O(add_carry__1_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3__5
       (.I0(prod_rounded_clamped1_carry_i_7__5_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[9]),
        .O(add_carry__1_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4__5
       (.I0(prod_rounded_clamped1_carry_i_7__5_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[8]),
        .O(add_carry__1_i_4__5_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1__5_n_0,Q[14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2__5_n_0,add_carry__2_i_3__5_n_0,add_carry__2_i_4__5_n_0,add_carry__2_i_5__5_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1__5
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__5_n_4),
        .O(add_carry__2_i_1__5_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2__5
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__5_n_4),
        .I3(Q[15]),
        .O(add_carry__2_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3__5
       (.I0(prod_rounded_clamped1_carry_i_3__5_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[14]),
        .O(add_carry__2_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4__5
       (.I0(prod_rounded_clamped1_carry_i_3__5_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[13]),
        .O(add_carry__2_i_4__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5__5
       (.I0(prod_rounded_clamped1_carry_i_3__5_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[12]),
        .O(add_carry__2_i_5__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1__5
       (.I0(add_carry_i_5__5_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[3]),
        .O(add_carry_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2__5
       (.I0(add_carry_i_5__5_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[2]),
        .O(add_carry_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3__5
       (.I0(add_carry_i_5__5_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[1]),
        .O(add_carry_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4__5
       (.I0(add_carry_i_5__5_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[0]),
        .O(add_carry_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry_i_5__5
       (.CI(1'b0),
        .CO({add_carry_i_5__5_n_0,add_carry_i_5__5_n_1,add_carry_i_5__5_n_2,add_carry_i_5__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_carry_i_5__5_n_4,add_carry_i_5__5_n_5,add_carry_i_5__5_n_6,add_carry_i_5__5_n_7}),
        .S({p_1_in[3:1],add_carry_i_6__5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_carry_i_6__5
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_carry_i_6__5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_carry__2_n_4}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1__6_n_3,add_clamped1_carry_i_2__6_n_0}));
  CARRY4 add_clamped1_carry_i_1__6
       (.CI(add_carry__2_n_0),
        .CO({NLW_add_clamped1_carry_i_1__6_CO_UNCONNECTED[3:1],add_clamped1_carry_i_1__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_add_clamped1_carry_i_1__6_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped1_carry_i_2__6
       (.I0(add_carry__2_n_5),
        .I1(add_carry__2_n_4),
        .O(add_clamped1_carry_i_2__6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1__6_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2__5_n_0,add_clamped2_carry_i_3__5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__6
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2__5
       (.I0(add_clamped1_carry_i_1__6_n_3),
        .O(add_clamped2_carry_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped2_carry_i_3__5
       (.I0(add_carry__2_n_4),
        .I1(add_carry__2_n_5),
        .O(add_clamped2_carry_i_3__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(add_clamped[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(add_clamped[10]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(add_clamped[11]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(add_clamped[12]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(add_clamped[13]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(add_clamped[14]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(add_clamped[15]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(add_clamped[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(add_clamped[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(add_clamped[3]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(add_clamped[4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(add_clamped[5]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(add_clamped[6]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(add_clamped[7]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(add_clamped[8]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(\delay_element_reg[15]_0 [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(\delay_element_reg[15]_0 [10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(\delay_element_reg[15]_0 [11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(\delay_element_reg[15]_0 [12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(\delay_element_reg[15]_0 [13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(\delay_element_reg[15]_0 [14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(\delay_element_reg[15]_0 [15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(\delay_element_reg[15]_0 [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(\delay_element_reg[15]_0 [2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(\delay_element_reg[15]_0 [3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(\delay_element_reg[15]_0 [4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(\delay_element_reg[15]_0 [5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(\delay_element_reg[15]_0 [6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(\delay_element_reg[15]_0 [7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(\delay_element_reg[15]_0 [8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(\delay_element_reg[15]_0 [9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__6_n_0,prod_rounded_clamped1_carry_i_2__6_n_0,prod_rounded_clamped1_carry_i_3__5_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__6_n_0,prod_rounded_clamped1_carry_i_5__6_n_0,prod_rounded_clamped1_carry_i_6__5_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1__6
       (.I0(prod_rounded_clamped2_carry_i_7__6_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__6_n_4),
        .O(prod_rounded_clamped1_carry_i_1__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2__6
       (.I0(prod_rounded_clamped2_carry_i_7__6_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__6_n_6),
        .O(prod_rounded_clamped1_carry_i_2__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_3__5
       (.CI(prod_rounded_clamped1_carry_i_7__5_n_0),
        .CO({prod_rounded_clamped1_carry_i_3__5_n_0,prod_rounded_clamped1_carry_i_3__5_n_1,prod_rounded_clamped1_carry_i_3__5_n_2,prod_rounded_clamped1_carry_i_3__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3__5_n_4,prod_rounded_clamped1_carry_i_3__5_n_5,prod_rounded_clamped1_carry_i_3__5_n_6,prod_rounded_clamped1_carry_i_3__5_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4__6
       (.I0(prod_rounded_clamped2_carry_i_7__6_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__6_n_4),
        .O(prod_rounded_clamped1_carry_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5__6
       (.I0(prod_rounded_clamped2_carry_i_7__6_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__6_n_6),
        .O(prod_rounded_clamped1_carry_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6__5
       (.I0(prod_rounded_clamped1_carry_i_3__5_n_5),
        .I1(prod_rounded_clamped1_carry_i_3__5_n_4),
        .O(prod_rounded_clamped1_carry_i_6__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7__5
       (.CI(add_carry__0_i_5__5_n_0),
        .CO({prod_rounded_clamped1_carry_i_7__5_n_0,prod_rounded_clamped1_carry_i_7__5_n_1,prod_rounded_clamped1_carry_i_7__5_n_2,prod_rounded_clamped1_carry_i_7__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_7__5_n_4,prod_rounded_clamped1_carry_i_7__5_n_5,prod_rounded_clamped1_carry_i_7__5_n_6,prod_rounded_clamped1_carry_i_7__5_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1__6_n_0,prod_rounded_clamped2_carry_i_2__6_n_0,prod_rounded_clamped2_carry_i_3__6_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4__6_n_0,prod_rounded_clamped2_carry_i_5__6_n_0,prod_rounded_clamped2_carry_i_6__6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1__6
       (.I0(prod_rounded_clamped2_carry_i_7__6_n_4),
        .I1(prod_rounded_clamped2_carry_i_7__6_n_5),
        .O(prod_rounded_clamped2_carry_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2__6
       (.I0(prod_rounded_clamped2_carry_i_7__6_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__6_n_6),
        .O(prod_rounded_clamped2_carry_i_2__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3__6
       (.I0(prod_rounded_clamped1_carry_i_3__5_n_4),
        .O(prod_rounded_clamped2_carry_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4__6
       (.I0(prod_rounded_clamped2_carry_i_7__6_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__6_n_4),
        .O(prod_rounded_clamped2_carry_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5__6
       (.I0(prod_rounded_clamped2_carry_i_7__6_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__6_n_6),
        .O(prod_rounded_clamped2_carry_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6__6
       (.I0(prod_rounded_clamped1_carry_i_3__5_n_4),
        .I1(prod_rounded_clamped1_carry_i_3__5_n_5),
        .O(prod_rounded_clamped2_carry_i_6__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__6
       (.CI(prod_rounded_clamped1_carry_i_3__5_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__6_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__6_n_1,prod_rounded_clamped2_carry_i_7__6_n_2,prod_rounded_clamped2_carry_i_7__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__6_n_4,prod_rounded_clamped2_carry_i_7__6_n_5,prod_rounded_clamped2_carry_i_7__6_n_6,prod_rounded_clamped2_carry_i_7__6_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock" *) 
module FIR_subblock_7
   (Q,
    add_carry__2_0,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]Q;
  input [15:0]add_carry__2_0;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire add_carry__0_i_1__6_n_0;
  wire add_carry__0_i_2__6_n_0;
  wire add_carry__0_i_3__6_n_0;
  wire add_carry__0_i_4__6_n_0;
  wire add_carry__0_i_5__6_n_0;
  wire add_carry__0_i_5__6_n_1;
  wire add_carry__0_i_5__6_n_2;
  wire add_carry__0_i_5__6_n_3;
  wire add_carry__0_i_5__6_n_4;
  wire add_carry__0_i_5__6_n_5;
  wire add_carry__0_i_5__6_n_6;
  wire add_carry__0_i_5__6_n_7;
  wire add_carry__0_n_0;
  wire add_carry__0_n_1;
  wire add_carry__0_n_2;
  wire add_carry__0_n_3;
  wire add_carry__0_n_4;
  wire add_carry__0_n_5;
  wire add_carry__0_n_6;
  wire add_carry__0_n_7;
  wire add_carry__1_i_1__6_n_0;
  wire add_carry__1_i_2__6_n_0;
  wire add_carry__1_i_3__6_n_0;
  wire add_carry__1_i_4__6_n_0;
  wire add_carry__1_n_0;
  wire add_carry__1_n_1;
  wire add_carry__1_n_2;
  wire add_carry__1_n_3;
  wire add_carry__1_n_4;
  wire add_carry__1_n_5;
  wire add_carry__1_n_6;
  wire add_carry__1_n_7;
  wire [15:0]add_carry__2_0;
  wire add_carry__2_i_1__6_n_0;
  wire add_carry__2_i_2__6_n_0;
  wire add_carry__2_i_3__6_n_0;
  wire add_carry__2_i_4__6_n_0;
  wire add_carry__2_i_5__6_n_0;
  wire add_carry__2_n_0;
  wire add_carry__2_n_1;
  wire add_carry__2_n_2;
  wire add_carry__2_n_3;
  wire add_carry__2_n_4;
  wire add_carry__2_n_5;
  wire add_carry__2_n_6;
  wire add_carry__2_n_7;
  wire add_carry_i_1__6_n_0;
  wire add_carry_i_2__6_n_0;
  wire add_carry_i_3__6_n_0;
  wire add_carry_i_4__6_n_0;
  wire add_carry_i_5__6_n_0;
  wire add_carry_i_5__6_n_1;
  wire add_carry_i_5__6_n_2;
  wire add_carry_i_5__6_n_3;
  wire add_carry_i_5__6_n_4;
  wire add_carry_i_5__6_n_5;
  wire add_carry_i_5__6_n_6;
  wire add_carry_i_5__6_n_7;
  wire add_carry_i_6__6_n_0;
  wire add_carry_n_0;
  wire add_carry_n_1;
  wire add_carry_n_2;
  wire add_carry_n_3;
  wire add_carry_n_4;
  wire add_carry_n_5;
  wire add_carry_n_6;
  wire add_carry_n_7;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1__7_n_3;
  wire add_clamped1_carry_i_2__7_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__7_n_0;
  wire add_clamped2_carry_i_2__6_n_0;
  wire add_clamped2_carry_i_3__6_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__7_n_0;
  wire prod_rounded_clamped1_carry_i_2__7_n_0;
  wire prod_rounded_clamped1_carry_i_3__6_n_0;
  wire prod_rounded_clamped1_carry_i_3__6_n_1;
  wire prod_rounded_clamped1_carry_i_3__6_n_2;
  wire prod_rounded_clamped1_carry_i_3__6_n_3;
  wire prod_rounded_clamped1_carry_i_3__6_n_4;
  wire prod_rounded_clamped1_carry_i_3__6_n_5;
  wire prod_rounded_clamped1_carry_i_3__6_n_6;
  wire prod_rounded_clamped1_carry_i_3__6_n_7;
  wire prod_rounded_clamped1_carry_i_4__7_n_0;
  wire prod_rounded_clamped1_carry_i_5__7_n_0;
  wire prod_rounded_clamped1_carry_i_6__6_n_0;
  wire prod_rounded_clamped1_carry_i_7__6_n_0;
  wire prod_rounded_clamped1_carry_i_7__6_n_1;
  wire prod_rounded_clamped1_carry_i_7__6_n_2;
  wire prod_rounded_clamped1_carry_i_7__6_n_3;
  wire prod_rounded_clamped1_carry_i_7__6_n_4;
  wire prod_rounded_clamped1_carry_i_7__6_n_5;
  wire prod_rounded_clamped1_carry_i_7__6_n_6;
  wire prod_rounded_clamped1_carry_i_7__6_n_7;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1__7_n_0;
  wire prod_rounded_clamped2_carry_i_2__7_n_0;
  wire prod_rounded_clamped2_carry_i_3__7_n_0;
  wire prod_rounded_clamped2_carry_i_4__7_n_0;
  wire prod_rounded_clamped2_carry_i_5__7_n_0;
  wire prod_rounded_clamped2_carry_i_6__7_n_0;
  wire prod_rounded_clamped2_carry_i_7__7_n_1;
  wire prod_rounded_clamped2_carry_i_7__7_n_2;
  wire prod_rounded_clamped2_carry_i_7__7_n_3;
  wire prod_rounded_clamped2_carry_i_7__7_n_4;
  wire prod_rounded_clamped2_carry_i_7__7_n_5;
  wire prod_rounded_clamped2_carry_i_7__7_n_6;
  wire prod_rounded_clamped2_carry_i_7__7_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:1]NLW_add_clamped1_carry_i_1__7_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_i_1__7_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__7_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1__6_n_0,add_carry_i_2__6_n_0,add_carry_i_3__6_n_0,add_carry_i_4__6_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1__6_n_0,add_carry__0_i_2__6_n_0,add_carry__0_i_3__6_n_0,add_carry__0_i_4__6_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1__6
       (.I0(add_carry__0_i_5__6_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[7]),
        .O(add_carry__0_i_1__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2__6
       (.I0(add_carry__0_i_5__6_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[6]),
        .O(add_carry__0_i_2__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3__6
       (.I0(add_carry__0_i_5__6_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[5]),
        .O(add_carry__0_i_3__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4__6
       (.I0(add_carry__0_i_5__6_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[4]),
        .O(add_carry__0_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry__0_i_5__6
       (.CI(add_carry_i_5__6_n_0),
        .CO({add_carry__0_i_5__6_n_0,add_carry__0_i_5__6_n_1,add_carry__0_i_5__6_n_2,add_carry__0_i_5__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_carry__0_i_5__6_n_4,add_carry__0_i_5__6_n_5,add_carry__0_i_5__6_n_6,add_carry__0_i_5__6_n_7}),
        .S(p_1_in[7:4]));
  CARRY4 add_carry__1
       (.CI(add_carry__0_n_0),
        .CO({add_carry__1_n_0,add_carry__1_n_1,add_carry__1_n_2,add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1__6_n_0,add_carry__1_i_2__6_n_0,add_carry__1_i_3__6_n_0,add_carry__1_i_4__6_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1__6
       (.I0(prod_rounded_clamped1_carry_i_7__6_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[11]),
        .O(add_carry__1_i_1__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2__6
       (.I0(prod_rounded_clamped1_carry_i_7__6_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[10]),
        .O(add_carry__1_i_2__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3__6
       (.I0(prod_rounded_clamped1_carry_i_7__6_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[9]),
        .O(add_carry__1_i_3__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4__6
       (.I0(prod_rounded_clamped1_carry_i_7__6_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[8]),
        .O(add_carry__1_i_4__6_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1__6_n_0,add_carry__2_0[14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2__6_n_0,add_carry__2_i_3__6_n_0,add_carry__2_i_4__6_n_0,add_carry__2_i_5__6_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1__6
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__6_n_4),
        .O(add_carry__2_i_1__6_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2__6
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__6_n_4),
        .I3(add_carry__2_0[15]),
        .O(add_carry__2_i_2__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3__6
       (.I0(prod_rounded_clamped1_carry_i_3__6_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[14]),
        .O(add_carry__2_i_3__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4__6
       (.I0(prod_rounded_clamped1_carry_i_3__6_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[13]),
        .O(add_carry__2_i_4__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5__6
       (.I0(prod_rounded_clamped1_carry_i_3__6_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[12]),
        .O(add_carry__2_i_5__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1__6
       (.I0(add_carry_i_5__6_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[3]),
        .O(add_carry_i_1__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2__6
       (.I0(add_carry_i_5__6_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[2]),
        .O(add_carry_i_2__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3__6
       (.I0(add_carry_i_5__6_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[1]),
        .O(add_carry_i_3__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4__6
       (.I0(add_carry_i_5__6_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[0]),
        .O(add_carry_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry_i_5__6
       (.CI(1'b0),
        .CO({add_carry_i_5__6_n_0,add_carry_i_5__6_n_1,add_carry_i_5__6_n_2,add_carry_i_5__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_carry_i_5__6_n_4,add_carry_i_5__6_n_5,add_carry_i_5__6_n_6,add_carry_i_5__6_n_7}),
        .S({p_1_in[3:1],add_carry_i_6__6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_carry_i_6__6
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_carry_i_6__6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_carry__2_n_4}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1__7_n_3,add_clamped1_carry_i_2__7_n_0}));
  CARRY4 add_clamped1_carry_i_1__7
       (.CI(add_carry__2_n_0),
        .CO({NLW_add_clamped1_carry_i_1__7_CO_UNCONNECTED[3:1],add_clamped1_carry_i_1__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_add_clamped1_carry_i_1__7_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped1_carry_i_2__7
       (.I0(add_carry__2_n_5),
        .I1(add_carry__2_n_4),
        .O(add_clamped1_carry_i_2__7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1__7_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2__6_n_0,add_clamped2_carry_i_3__6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__7
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2__6
       (.I0(add_clamped1_carry_i_1__7_n_3),
        .O(add_clamped2_carry_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped2_carry_i_3__6
       (.I0(add_carry__2_n_4),
        .I1(add_carry__2_n_5),
        .O(add_clamped2_carry_i_3__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(add_clamped[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(add_clamped[10]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(add_clamped[11]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(add_clamped[12]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(add_clamped[13]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(add_clamped[14]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(add_clamped[15]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(add_clamped[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(add_clamped[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(add_clamped[3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(add_clamped[4]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(add_clamped[5]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(add_clamped[6]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(add_clamped[7]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(add_clamped[8]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(Q[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(Q[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(Q[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(Q[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(Q[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(Q[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(Q[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(Q[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(Q[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(Q[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(Q[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(Q[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(Q[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(Q[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(Q[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(Q[9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__7_n_0,prod_rounded_clamped1_carry_i_2__7_n_0,prod_rounded_clamped1_carry_i_3__6_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__7_n_0,prod_rounded_clamped1_carry_i_5__7_n_0,prod_rounded_clamped1_carry_i_6__6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1__7
       (.I0(prod_rounded_clamped2_carry_i_7__7_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__7_n_4),
        .O(prod_rounded_clamped1_carry_i_1__7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2__7
       (.I0(prod_rounded_clamped2_carry_i_7__7_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__7_n_6),
        .O(prod_rounded_clamped1_carry_i_2__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_3__6
       (.CI(prod_rounded_clamped1_carry_i_7__6_n_0),
        .CO({prod_rounded_clamped1_carry_i_3__6_n_0,prod_rounded_clamped1_carry_i_3__6_n_1,prod_rounded_clamped1_carry_i_3__6_n_2,prod_rounded_clamped1_carry_i_3__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3__6_n_4,prod_rounded_clamped1_carry_i_3__6_n_5,prod_rounded_clamped1_carry_i_3__6_n_6,prod_rounded_clamped1_carry_i_3__6_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4__7
       (.I0(prod_rounded_clamped2_carry_i_7__7_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__7_n_4),
        .O(prod_rounded_clamped1_carry_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5__7
       (.I0(prod_rounded_clamped2_carry_i_7__7_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__7_n_6),
        .O(prod_rounded_clamped1_carry_i_5__7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6__6
       (.I0(prod_rounded_clamped1_carry_i_3__6_n_5),
        .I1(prod_rounded_clamped1_carry_i_3__6_n_4),
        .O(prod_rounded_clamped1_carry_i_6__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7__6
       (.CI(add_carry__0_i_5__6_n_0),
        .CO({prod_rounded_clamped1_carry_i_7__6_n_0,prod_rounded_clamped1_carry_i_7__6_n_1,prod_rounded_clamped1_carry_i_7__6_n_2,prod_rounded_clamped1_carry_i_7__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_7__6_n_4,prod_rounded_clamped1_carry_i_7__6_n_5,prod_rounded_clamped1_carry_i_7__6_n_6,prod_rounded_clamped1_carry_i_7__6_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1__7_n_0,prod_rounded_clamped2_carry_i_2__7_n_0,prod_rounded_clamped2_carry_i_3__7_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4__7_n_0,prod_rounded_clamped2_carry_i_5__7_n_0,prod_rounded_clamped2_carry_i_6__7_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1__7
       (.I0(prod_rounded_clamped2_carry_i_7__7_n_4),
        .I1(prod_rounded_clamped2_carry_i_7__7_n_5),
        .O(prod_rounded_clamped2_carry_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2__7
       (.I0(prod_rounded_clamped2_carry_i_7__7_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__7_n_6),
        .O(prod_rounded_clamped2_carry_i_2__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3__7
       (.I0(prod_rounded_clamped1_carry_i_3__6_n_4),
        .O(prod_rounded_clamped2_carry_i_3__7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4__7
       (.I0(prod_rounded_clamped2_carry_i_7__7_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__7_n_4),
        .O(prod_rounded_clamped2_carry_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5__7
       (.I0(prod_rounded_clamped2_carry_i_7__7_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__7_n_6),
        .O(prod_rounded_clamped2_carry_i_5__7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6__7
       (.I0(prod_rounded_clamped1_carry_i_3__6_n_4),
        .I1(prod_rounded_clamped1_carry_i_3__6_n_5),
        .O(prod_rounded_clamped2_carry_i_6__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__7
       (.CI(prod_rounded_clamped1_carry_i_3__6_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__7_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__7_n_1,prod_rounded_clamped2_carry_i_7__7_n_2,prod_rounded_clamped2_carry_i_7__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__7_n_4,prod_rounded_clamped2_carry_i_7__7_n_5,prod_rounded_clamped2_carry_i_7__7_n_6,prod_rounded_clamped2_carry_i_7__7_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock" *) 
module FIR_subblock_8
   (\delay_element_reg[15]_0 ,
    Q,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]\delay_element_reg[15]_0 ;
  input [15:0]Q;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire add_carry__0_i_1__7_n_0;
  wire add_carry__0_i_2__7_n_0;
  wire add_carry__0_i_3__7_n_0;
  wire add_carry__0_i_4__7_n_0;
  wire add_carry__0_i_5__7_n_0;
  wire add_carry__0_i_5__7_n_1;
  wire add_carry__0_i_5__7_n_2;
  wire add_carry__0_i_5__7_n_3;
  wire add_carry__0_i_5__7_n_4;
  wire add_carry__0_i_5__7_n_5;
  wire add_carry__0_i_5__7_n_6;
  wire add_carry__0_i_5__7_n_7;
  wire add_carry__0_n_0;
  wire add_carry__0_n_1;
  wire add_carry__0_n_2;
  wire add_carry__0_n_3;
  wire add_carry__0_n_4;
  wire add_carry__0_n_5;
  wire add_carry__0_n_6;
  wire add_carry__0_n_7;
  wire add_carry__1_i_1__7_n_0;
  wire add_carry__1_i_2__7_n_0;
  wire add_carry__1_i_3__7_n_0;
  wire add_carry__1_i_4__7_n_0;
  wire add_carry__1_n_0;
  wire add_carry__1_n_1;
  wire add_carry__1_n_2;
  wire add_carry__1_n_3;
  wire add_carry__1_n_4;
  wire add_carry__1_n_5;
  wire add_carry__1_n_6;
  wire add_carry__1_n_7;
  wire add_carry__2_i_1__7_n_0;
  wire add_carry__2_i_2__7_n_0;
  wire add_carry__2_i_3__7_n_0;
  wire add_carry__2_i_4__7_n_0;
  wire add_carry__2_i_5__7_n_0;
  wire add_carry__2_n_0;
  wire add_carry__2_n_1;
  wire add_carry__2_n_2;
  wire add_carry__2_n_3;
  wire add_carry__2_n_4;
  wire add_carry__2_n_5;
  wire add_carry__2_n_6;
  wire add_carry__2_n_7;
  wire add_carry_i_1__7_n_0;
  wire add_carry_i_2__7_n_0;
  wire add_carry_i_3__7_n_0;
  wire add_carry_i_4__7_n_0;
  wire add_carry_i_5__7_n_0;
  wire add_carry_i_5__7_n_1;
  wire add_carry_i_5__7_n_2;
  wire add_carry_i_5__7_n_3;
  wire add_carry_i_5__7_n_4;
  wire add_carry_i_5__7_n_5;
  wire add_carry_i_5__7_n_6;
  wire add_carry_i_5__7_n_7;
  wire add_carry_i_6__7_n_0;
  wire add_carry_n_0;
  wire add_carry_n_1;
  wire add_carry_n_2;
  wire add_carry_n_3;
  wire add_carry_n_4;
  wire add_carry_n_5;
  wire add_carry_n_6;
  wire add_carry_n_7;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1__8_n_3;
  wire add_clamped1_carry_i_2__8_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__8_n_0;
  wire add_clamped2_carry_i_2__7_n_0;
  wire add_clamped2_carry_i_3__7_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]\delay_element_reg[15]_0 ;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__8_n_0;
  wire prod_rounded_clamped1_carry_i_2__8_n_0;
  wire prod_rounded_clamped1_carry_i_3__7_n_0;
  wire prod_rounded_clamped1_carry_i_3__7_n_1;
  wire prod_rounded_clamped1_carry_i_3__7_n_2;
  wire prod_rounded_clamped1_carry_i_3__7_n_3;
  wire prod_rounded_clamped1_carry_i_3__7_n_4;
  wire prod_rounded_clamped1_carry_i_3__7_n_5;
  wire prod_rounded_clamped1_carry_i_3__7_n_6;
  wire prod_rounded_clamped1_carry_i_3__7_n_7;
  wire prod_rounded_clamped1_carry_i_4__8_n_0;
  wire prod_rounded_clamped1_carry_i_5__8_n_0;
  wire prod_rounded_clamped1_carry_i_6__7_n_0;
  wire prod_rounded_clamped1_carry_i_7__7_n_0;
  wire prod_rounded_clamped1_carry_i_7__7_n_1;
  wire prod_rounded_clamped1_carry_i_7__7_n_2;
  wire prod_rounded_clamped1_carry_i_7__7_n_3;
  wire prod_rounded_clamped1_carry_i_7__7_n_4;
  wire prod_rounded_clamped1_carry_i_7__7_n_5;
  wire prod_rounded_clamped1_carry_i_7__7_n_6;
  wire prod_rounded_clamped1_carry_i_7__7_n_7;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1__8_n_0;
  wire prod_rounded_clamped2_carry_i_2__8_n_0;
  wire prod_rounded_clamped2_carry_i_3__8_n_0;
  wire prod_rounded_clamped2_carry_i_4__8_n_0;
  wire prod_rounded_clamped2_carry_i_5__8_n_0;
  wire prod_rounded_clamped2_carry_i_6__8_n_0;
  wire prod_rounded_clamped2_carry_i_7__8_n_1;
  wire prod_rounded_clamped2_carry_i_7__8_n_2;
  wire prod_rounded_clamped2_carry_i_7__8_n_3;
  wire prod_rounded_clamped2_carry_i_7__8_n_4;
  wire prod_rounded_clamped2_carry_i_7__8_n_5;
  wire prod_rounded_clamped2_carry_i_7__8_n_6;
  wire prod_rounded_clamped2_carry_i_7__8_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:1]NLW_add_clamped1_carry_i_1__8_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_i_1__8_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__8_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1__7_n_0,add_carry_i_2__7_n_0,add_carry_i_3__7_n_0,add_carry_i_4__7_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1__7_n_0,add_carry__0_i_2__7_n_0,add_carry__0_i_3__7_n_0,add_carry__0_i_4__7_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1__7
       (.I0(add_carry__0_i_5__7_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[7]),
        .O(add_carry__0_i_1__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2__7
       (.I0(add_carry__0_i_5__7_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[6]),
        .O(add_carry__0_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3__7
       (.I0(add_carry__0_i_5__7_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[5]),
        .O(add_carry__0_i_3__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4__7
       (.I0(add_carry__0_i_5__7_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[4]),
        .O(add_carry__0_i_4__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry__0_i_5__7
       (.CI(add_carry_i_5__7_n_0),
        .CO({add_carry__0_i_5__7_n_0,add_carry__0_i_5__7_n_1,add_carry__0_i_5__7_n_2,add_carry__0_i_5__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_carry__0_i_5__7_n_4,add_carry__0_i_5__7_n_5,add_carry__0_i_5__7_n_6,add_carry__0_i_5__7_n_7}),
        .S(p_1_in[7:4]));
  CARRY4 add_carry__1
       (.CI(add_carry__0_n_0),
        .CO({add_carry__1_n_0,add_carry__1_n_1,add_carry__1_n_2,add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1__7_n_0,add_carry__1_i_2__7_n_0,add_carry__1_i_3__7_n_0,add_carry__1_i_4__7_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1__7
       (.I0(prod_rounded_clamped1_carry_i_7__7_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[11]),
        .O(add_carry__1_i_1__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2__7
       (.I0(prod_rounded_clamped1_carry_i_7__7_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[10]),
        .O(add_carry__1_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3__7
       (.I0(prod_rounded_clamped1_carry_i_7__7_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[9]),
        .O(add_carry__1_i_3__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4__7
       (.I0(prod_rounded_clamped1_carry_i_7__7_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[8]),
        .O(add_carry__1_i_4__7_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1__7_n_0,Q[14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2__7_n_0,add_carry__2_i_3__7_n_0,add_carry__2_i_4__7_n_0,add_carry__2_i_5__7_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1__7
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__7_n_4),
        .O(add_carry__2_i_1__7_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2__7
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__7_n_4),
        .I3(Q[15]),
        .O(add_carry__2_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3__7
       (.I0(prod_rounded_clamped1_carry_i_3__7_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[14]),
        .O(add_carry__2_i_3__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4__7
       (.I0(prod_rounded_clamped1_carry_i_3__7_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[13]),
        .O(add_carry__2_i_4__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5__7
       (.I0(prod_rounded_clamped1_carry_i_3__7_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[12]),
        .O(add_carry__2_i_5__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1__7
       (.I0(add_carry_i_5__7_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[3]),
        .O(add_carry_i_1__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2__7
       (.I0(add_carry_i_5__7_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[2]),
        .O(add_carry_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3__7
       (.I0(add_carry_i_5__7_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[1]),
        .O(add_carry_i_3__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4__7
       (.I0(add_carry_i_5__7_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(Q[0]),
        .O(add_carry_i_4__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry_i_5__7
       (.CI(1'b0),
        .CO({add_carry_i_5__7_n_0,add_carry_i_5__7_n_1,add_carry_i_5__7_n_2,add_carry_i_5__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_carry_i_5__7_n_4,add_carry_i_5__7_n_5,add_carry_i_5__7_n_6,add_carry_i_5__7_n_7}),
        .S({p_1_in[3:1],add_carry_i_6__7_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_carry_i_6__7
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_carry_i_6__7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_carry__2_n_4}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1__8_n_3,add_clamped1_carry_i_2__8_n_0}));
  CARRY4 add_clamped1_carry_i_1__8
       (.CI(add_carry__2_n_0),
        .CO({NLW_add_clamped1_carry_i_1__8_CO_UNCONNECTED[3:1],add_clamped1_carry_i_1__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_add_clamped1_carry_i_1__8_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped1_carry_i_2__8
       (.I0(add_carry__2_n_5),
        .I1(add_carry__2_n_4),
        .O(add_clamped1_carry_i_2__8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1__8_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2__7_n_0,add_clamped2_carry_i_3__7_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__8
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2__7
       (.I0(add_clamped1_carry_i_1__8_n_3),
        .O(add_clamped2_carry_i_2__7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped2_carry_i_3__7
       (.I0(add_carry__2_n_4),
        .I1(add_carry__2_n_5),
        .O(add_clamped2_carry_i_3__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(add_clamped[0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(add_clamped[10]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(add_clamped[11]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(add_clamped[12]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(add_clamped[13]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(add_clamped[14]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(add_clamped[15]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(add_clamped[1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(add_clamped[2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(add_clamped[3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(add_clamped[4]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(add_clamped[5]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(add_clamped[6]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(add_clamped[7]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(add_clamped[8]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(\delay_element_reg[15]_0 [0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(\delay_element_reg[15]_0 [10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(\delay_element_reg[15]_0 [11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(\delay_element_reg[15]_0 [12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(\delay_element_reg[15]_0 [13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(\delay_element_reg[15]_0 [14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(\delay_element_reg[15]_0 [15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(\delay_element_reg[15]_0 [1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(\delay_element_reg[15]_0 [2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(\delay_element_reg[15]_0 [3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(\delay_element_reg[15]_0 [4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(\delay_element_reg[15]_0 [5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(\delay_element_reg[15]_0 [6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(\delay_element_reg[15]_0 [7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(\delay_element_reg[15]_0 [8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(\delay_element_reg[15]_0 [9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__8_n_0,prod_rounded_clamped1_carry_i_2__8_n_0,prod_rounded_clamped1_carry_i_3__7_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__8_n_0,prod_rounded_clamped1_carry_i_5__8_n_0,prod_rounded_clamped1_carry_i_6__7_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1__8
       (.I0(prod_rounded_clamped2_carry_i_7__8_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__8_n_4),
        .O(prod_rounded_clamped1_carry_i_1__8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2__8
       (.I0(prod_rounded_clamped2_carry_i_7__8_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__8_n_6),
        .O(prod_rounded_clamped1_carry_i_2__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_3__7
       (.CI(prod_rounded_clamped1_carry_i_7__7_n_0),
        .CO({prod_rounded_clamped1_carry_i_3__7_n_0,prod_rounded_clamped1_carry_i_3__7_n_1,prod_rounded_clamped1_carry_i_3__7_n_2,prod_rounded_clamped1_carry_i_3__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3__7_n_4,prod_rounded_clamped1_carry_i_3__7_n_5,prod_rounded_clamped1_carry_i_3__7_n_6,prod_rounded_clamped1_carry_i_3__7_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4__8
       (.I0(prod_rounded_clamped2_carry_i_7__8_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__8_n_4),
        .O(prod_rounded_clamped1_carry_i_4__8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5__8
       (.I0(prod_rounded_clamped2_carry_i_7__8_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__8_n_6),
        .O(prod_rounded_clamped1_carry_i_5__8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6__7
       (.I0(prod_rounded_clamped1_carry_i_3__7_n_5),
        .I1(prod_rounded_clamped1_carry_i_3__7_n_4),
        .O(prod_rounded_clamped1_carry_i_6__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7__7
       (.CI(add_carry__0_i_5__7_n_0),
        .CO({prod_rounded_clamped1_carry_i_7__7_n_0,prod_rounded_clamped1_carry_i_7__7_n_1,prod_rounded_clamped1_carry_i_7__7_n_2,prod_rounded_clamped1_carry_i_7__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_7__7_n_4,prod_rounded_clamped1_carry_i_7__7_n_5,prod_rounded_clamped1_carry_i_7__7_n_6,prod_rounded_clamped1_carry_i_7__7_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1__8_n_0,prod_rounded_clamped2_carry_i_2__8_n_0,prod_rounded_clamped2_carry_i_3__8_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4__8_n_0,prod_rounded_clamped2_carry_i_5__8_n_0,prod_rounded_clamped2_carry_i_6__8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1__8
       (.I0(prod_rounded_clamped2_carry_i_7__8_n_4),
        .I1(prod_rounded_clamped2_carry_i_7__8_n_5),
        .O(prod_rounded_clamped2_carry_i_1__8_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2__8
       (.I0(prod_rounded_clamped2_carry_i_7__8_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__8_n_6),
        .O(prod_rounded_clamped2_carry_i_2__8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3__8
       (.I0(prod_rounded_clamped1_carry_i_3__7_n_4),
        .O(prod_rounded_clamped2_carry_i_3__8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4__8
       (.I0(prod_rounded_clamped2_carry_i_7__8_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__8_n_4),
        .O(prod_rounded_clamped2_carry_i_4__8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5__8
       (.I0(prod_rounded_clamped2_carry_i_7__8_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__8_n_6),
        .O(prod_rounded_clamped2_carry_i_5__8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6__8
       (.I0(prod_rounded_clamped1_carry_i_3__7_n_4),
        .I1(prod_rounded_clamped1_carry_i_3__7_n_5),
        .O(prod_rounded_clamped2_carry_i_6__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__8
       (.CI(prod_rounded_clamped1_carry_i_3__7_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__8_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__8_n_1,prod_rounded_clamped2_carry_i_7__8_n_2,prod_rounded_clamped2_carry_i_7__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__8_n_4,prod_rounded_clamped2_carry_i_7__8_n_5,prod_rounded_clamped2_carry_i_7__8_n_6,prod_rounded_clamped2_carry_i_7__8_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock" *) 
module FIR_subblock_9
   (Q,
    add_carry__2_0,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    input_signal);
  output [15:0]Q;
  input [15:0]add_carry__2_0;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]input_signal;

  wire [15:0]Q;
  wire add_carry__0_i_1__8_n_0;
  wire add_carry__0_i_2__8_n_0;
  wire add_carry__0_i_3__8_n_0;
  wire add_carry__0_i_4__8_n_0;
  wire add_carry__0_i_5__8_n_0;
  wire add_carry__0_i_5__8_n_1;
  wire add_carry__0_i_5__8_n_2;
  wire add_carry__0_i_5__8_n_3;
  wire add_carry__0_i_5__8_n_4;
  wire add_carry__0_i_5__8_n_5;
  wire add_carry__0_i_5__8_n_6;
  wire add_carry__0_i_5__8_n_7;
  wire add_carry__0_n_0;
  wire add_carry__0_n_1;
  wire add_carry__0_n_2;
  wire add_carry__0_n_3;
  wire add_carry__0_n_4;
  wire add_carry__0_n_5;
  wire add_carry__0_n_6;
  wire add_carry__0_n_7;
  wire add_carry__1_i_1__8_n_0;
  wire add_carry__1_i_2__8_n_0;
  wire add_carry__1_i_3__8_n_0;
  wire add_carry__1_i_4__8_n_0;
  wire add_carry__1_n_0;
  wire add_carry__1_n_1;
  wire add_carry__1_n_2;
  wire add_carry__1_n_3;
  wire add_carry__1_n_4;
  wire add_carry__1_n_5;
  wire add_carry__1_n_6;
  wire add_carry__1_n_7;
  wire [15:0]add_carry__2_0;
  wire add_carry__2_i_1__8_n_0;
  wire add_carry__2_i_2__8_n_0;
  wire add_carry__2_i_3__8_n_0;
  wire add_carry__2_i_4__8_n_0;
  wire add_carry__2_i_5__8_n_0;
  wire add_carry__2_n_0;
  wire add_carry__2_n_1;
  wire add_carry__2_n_2;
  wire add_carry__2_n_3;
  wire add_carry__2_n_4;
  wire add_carry__2_n_5;
  wire add_carry__2_n_6;
  wire add_carry__2_n_7;
  wire add_carry_i_1__8_n_0;
  wire add_carry_i_2__8_n_0;
  wire add_carry_i_3__8_n_0;
  wire add_carry_i_4__8_n_0;
  wire add_carry_i_5__8_n_0;
  wire add_carry_i_5__8_n_1;
  wire add_carry_i_5__8_n_2;
  wire add_carry_i_5__8_n_3;
  wire add_carry_i_5__8_n_4;
  wire add_carry_i_5__8_n_5;
  wire add_carry_i_5__8_n_6;
  wire add_carry_i_5__8_n_7;
  wire add_carry_i_6__8_n_0;
  wire add_carry_n_0;
  wire add_carry_n_1;
  wire add_carry_n_2;
  wire add_carry_n_3;
  wire add_carry_n_4;
  wire add_carry_n_5;
  wire add_carry_n_6;
  wire add_carry_n_7;
  wire [15:0]add_clamped;
  wire add_clamped1;
  wire add_clamped1_carry_i_1__9_n_3;
  wire add_clamped1_carry_i_2__9_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__9_n_0;
  wire add_clamped2_carry_i_2__8_n_0;
  wire add_clamped2_carry_i_3__8_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [13:0]input_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire pipeline_register_reg_n_100;
  wire pipeline_register_reg_n_101;
  wire pipeline_register_reg_n_102;
  wire pipeline_register_reg_n_103;
  wire pipeline_register_reg_n_104;
  wire pipeline_register_reg_n_105;
  wire pipeline_register_reg_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__9_n_0;
  wire prod_rounded_clamped1_carry_i_2__9_n_0;
  wire prod_rounded_clamped1_carry_i_3__8_n_0;
  wire prod_rounded_clamped1_carry_i_3__8_n_1;
  wire prod_rounded_clamped1_carry_i_3__8_n_2;
  wire prod_rounded_clamped1_carry_i_3__8_n_3;
  wire prod_rounded_clamped1_carry_i_3__8_n_4;
  wire prod_rounded_clamped1_carry_i_3__8_n_5;
  wire prod_rounded_clamped1_carry_i_3__8_n_6;
  wire prod_rounded_clamped1_carry_i_3__8_n_7;
  wire prod_rounded_clamped1_carry_i_4__9_n_0;
  wire prod_rounded_clamped1_carry_i_5__9_n_0;
  wire prod_rounded_clamped1_carry_i_6__8_n_0;
  wire prod_rounded_clamped1_carry_i_7__8_n_0;
  wire prod_rounded_clamped1_carry_i_7__8_n_1;
  wire prod_rounded_clamped1_carry_i_7__8_n_2;
  wire prod_rounded_clamped1_carry_i_7__8_n_3;
  wire prod_rounded_clamped1_carry_i_7__8_n_4;
  wire prod_rounded_clamped1_carry_i_7__8_n_5;
  wire prod_rounded_clamped1_carry_i_7__8_n_6;
  wire prod_rounded_clamped1_carry_i_7__8_n_7;
  wire prod_rounded_clamped1_carry_n_2;
  wire prod_rounded_clamped1_carry_n_3;
  wire prod_rounded_clamped2;
  wire prod_rounded_clamped2_carry_i_1__9_n_0;
  wire prod_rounded_clamped2_carry_i_2__9_n_0;
  wire prod_rounded_clamped2_carry_i_3__9_n_0;
  wire prod_rounded_clamped2_carry_i_4__9_n_0;
  wire prod_rounded_clamped2_carry_i_5__9_n_0;
  wire prod_rounded_clamped2_carry_i_6__9_n_0;
  wire prod_rounded_clamped2_carry_i_7__9_n_1;
  wire prod_rounded_clamped2_carry_i_7__9_n_2;
  wire prod_rounded_clamped2_carry_i_7__9_n_3;
  wire prod_rounded_clamped2_carry_i_7__9_n_4;
  wire prod_rounded_clamped2_carry_i_7__9_n_5;
  wire prod_rounded_clamped2_carry_i_7__9_n_6;
  wire prod_rounded_clamped2_carry_i_7__9_n_7;
  wire prod_rounded_clamped2_carry_n_2;
  wire prod_rounded_clamped2_carry_n_3;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:1]NLW_add_clamped1_carry_i_1__9_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_i_1__9_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pipeline_register_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pipeline_register_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_pipeline_register_reg_P_UNCONNECTED;
  wire [47:0]NLW_pipeline_register_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__9_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1__8_n_0,add_carry_i_2__8_n_0,add_carry_i_3__8_n_0,add_carry_i_4__8_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1__8_n_0,add_carry__0_i_2__8_n_0,add_carry__0_i_3__8_n_0,add_carry__0_i_4__8_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1__8
       (.I0(add_carry__0_i_5__8_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[7]),
        .O(add_carry__0_i_1__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2__8
       (.I0(add_carry__0_i_5__8_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[6]),
        .O(add_carry__0_i_2__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3__8
       (.I0(add_carry__0_i_5__8_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[5]),
        .O(add_carry__0_i_3__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4__8
       (.I0(add_carry__0_i_5__8_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[4]),
        .O(add_carry__0_i_4__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry__0_i_5__8
       (.CI(add_carry_i_5__8_n_0),
        .CO({add_carry__0_i_5__8_n_0,add_carry__0_i_5__8_n_1,add_carry__0_i_5__8_n_2,add_carry__0_i_5__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_carry__0_i_5__8_n_4,add_carry__0_i_5__8_n_5,add_carry__0_i_5__8_n_6,add_carry__0_i_5__8_n_7}),
        .S(p_1_in[7:4]));
  CARRY4 add_carry__1
       (.CI(add_carry__0_n_0),
        .CO({add_carry__1_n_0,add_carry__1_n_1,add_carry__1_n_2,add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(add_carry__2_0[11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1__8_n_0,add_carry__1_i_2__8_n_0,add_carry__1_i_3__8_n_0,add_carry__1_i_4__8_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1__8
       (.I0(prod_rounded_clamped1_carry_i_7__8_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[11]),
        .O(add_carry__1_i_1__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2__8
       (.I0(prod_rounded_clamped1_carry_i_7__8_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[10]),
        .O(add_carry__1_i_2__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3__8
       (.I0(prod_rounded_clamped1_carry_i_7__8_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[9]),
        .O(add_carry__1_i_3__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4__8
       (.I0(prod_rounded_clamped1_carry_i_7__8_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[8]),
        .O(add_carry__1_i_4__8_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1__8_n_0,add_carry__2_0[14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2__8_n_0,add_carry__2_i_3__8_n_0,add_carry__2_i_4__8_n_0,add_carry__2_i_5__8_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1__8
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__8_n_4),
        .O(add_carry__2_i_1__8_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2__8
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__8_n_4),
        .I3(add_carry__2_0[15]),
        .O(add_carry__2_i_2__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3__8
       (.I0(prod_rounded_clamped1_carry_i_3__8_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[14]),
        .O(add_carry__2_i_3__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4__8
       (.I0(prod_rounded_clamped1_carry_i_3__8_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[13]),
        .O(add_carry__2_i_4__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5__8
       (.I0(prod_rounded_clamped1_carry_i_3__8_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[12]),
        .O(add_carry__2_i_5__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1__8
       (.I0(add_carry_i_5__8_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[3]),
        .O(add_carry_i_1__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2__8
       (.I0(add_carry_i_5__8_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[2]),
        .O(add_carry_i_2__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3__8
       (.I0(add_carry_i_5__8_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[1]),
        .O(add_carry_i_3__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4__8
       (.I0(add_carry_i_5__8_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(add_carry__2_0[0]),
        .O(add_carry_i_4__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_carry_i_5__8
       (.CI(1'b0),
        .CO({add_carry_i_5__8_n_0,add_carry_i_5__8_n_1,add_carry_i_5__8_n_2,add_carry_i_5__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_carry_i_5__8_n_4,add_carry_i_5__8_n_5,add_carry_i_5__8_n_6,add_carry_i_5__8_n_7}),
        .S({p_1_in[3:1],add_carry_i_6__8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_carry_i_6__8
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_carry_i_6__8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_carry__2_n_4}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_1__9_n_3,add_clamped1_carry_i_2__9_n_0}));
  CARRY4 add_clamped1_carry_i_1__9
       (.CI(add_carry__2_n_0),
        .CO({NLW_add_clamped1_carry_i_1__9_CO_UNCONNECTED[3:1],add_clamped1_carry_i_1__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_add_clamped1_carry_i_1__9_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped1_carry_i_2__9
       (.I0(add_carry__2_n_5),
        .I1(add_carry__2_n_4),
        .O(add_clamped1_carry_i_2__9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],add_clamped2,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1__9_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2__8_n_0,add_clamped2_carry_i_3__8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__9
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2__8
       (.I0(add_clamped1_carry_i_1__9_n_3),
        .O(add_clamped2_carry_i_2__8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    add_clamped2_carry_i_3__8
       (.I0(add_carry__2_n_4),
        .I1(add_carry__2_n_5),
        .O(add_clamped2_carry_i_3__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(add_clamped[0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(add_clamped[10]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(add_clamped[11]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(add_clamped[12]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(add_clamped[13]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(add_clamped[14]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(add_clamped[15]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(add_clamped[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(add_clamped[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(add_clamped[3]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(add_clamped[4]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(add_clamped[5]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(add_clamped[6]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(add_clamped[7]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(add_clamped[8]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(add_clamped[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[0]),
        .Q(Q[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[10]),
        .Q(Q[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[11]),
        .Q(Q[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[12]),
        .Q(Q[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[13]),
        .Q(Q[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[14]),
        .Q(Q[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[15]),
        .Q(Q[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[1]),
        .Q(Q[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[2]),
        .Q(Q[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[3]),
        .Q(Q[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[4]),
        .Q(Q[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[5]),
        .Q(Q[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[6]),
        .Q(Q[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[7]),
        .Q(Q[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[8]),
        .Q(Q[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_clamped[9]),
        .Q(Q[9]),
        .R(i_rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    pipeline_register_reg
       (.A({input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal[13],input_signal}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pipeline_register_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pipeline_register_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pipeline_register_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pipeline_register_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pipeline_register_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pipeline_register_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_pipeline_register_reg_P_UNCONNECTED[47:28],p_1_in,p_0_in,pipeline_register_reg_n_99,pipeline_register_reg_n_100,pipeline_register_reg_n_101,pipeline_register_reg_n_102,pipeline_register_reg_n_103,pipeline_register_reg_n_104,pipeline_register_reg_n_105}),
        .PATTERNBDETECT(NLW_pipeline_register_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pipeline_register_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pipeline_register_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(i_rst_IBUF),
        .UNDERFLOW(NLW_pipeline_register_reg_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__9_n_0,prod_rounded_clamped1_carry_i_2__9_n_0,prod_rounded_clamped1_carry_i_3__8_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__9_n_0,prod_rounded_clamped1_carry_i_5__9_n_0,prod_rounded_clamped1_carry_i_6__8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_1__9
       (.I0(prod_rounded_clamped2_carry_i_7__9_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__9_n_4),
        .O(prod_rounded_clamped1_carry_i_1__9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped1_carry_i_2__9
       (.I0(prod_rounded_clamped2_carry_i_7__9_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__9_n_6),
        .O(prod_rounded_clamped1_carry_i_2__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_3__8
       (.CI(prod_rounded_clamped1_carry_i_7__8_n_0),
        .CO({prod_rounded_clamped1_carry_i_3__8_n_0,prod_rounded_clamped1_carry_i_3__8_n_1,prod_rounded_clamped1_carry_i_3__8_n_2,prod_rounded_clamped1_carry_i_3__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3__8_n_4,prod_rounded_clamped1_carry_i_3__8_n_5,prod_rounded_clamped1_carry_i_3__8_n_6,prod_rounded_clamped1_carry_i_3__8_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_4__9
       (.I0(prod_rounded_clamped2_carry_i_7__9_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__9_n_4),
        .O(prod_rounded_clamped1_carry_i_4__9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5__9
       (.I0(prod_rounded_clamped2_carry_i_7__9_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__9_n_6),
        .O(prod_rounded_clamped1_carry_i_5__9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6__8
       (.I0(prod_rounded_clamped1_carry_i_3__8_n_5),
        .I1(prod_rounded_clamped1_carry_i_3__8_n_4),
        .O(prod_rounded_clamped1_carry_i_6__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7__8
       (.CI(add_carry__0_i_5__8_n_0),
        .CO({prod_rounded_clamped1_carry_i_7__8_n_0,prod_rounded_clamped1_carry_i_7__8_n_1,prod_rounded_clamped1_carry_i_7__8_n_2,prod_rounded_clamped1_carry_i_7__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_7__8_n_4,prod_rounded_clamped1_carry_i_7__8_n_5,prod_rounded_clamped1_carry_i_7__8_n_6,prod_rounded_clamped1_carry_i_7__8_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED[3],prod_rounded_clamped2,prod_rounded_clamped2_carry_n_2,prod_rounded_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped2_carry_i_1__9_n_0,prod_rounded_clamped2_carry_i_2__9_n_0,prod_rounded_clamped2_carry_i_3__9_n_0}),
        .O(NLW_prod_rounded_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped2_carry_i_4__9_n_0,prod_rounded_clamped2_carry_i_5__9_n_0,prod_rounded_clamped2_carry_i_6__9_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_1__9
       (.I0(prod_rounded_clamped2_carry_i_7__9_n_4),
        .I1(prod_rounded_clamped2_carry_i_7__9_n_5),
        .O(prod_rounded_clamped2_carry_i_1__9_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped2_carry_i_2__9
       (.I0(prod_rounded_clamped2_carry_i_7__9_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__9_n_6),
        .O(prod_rounded_clamped2_carry_i_2__9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped2_carry_i_3__9
       (.I0(prod_rounded_clamped1_carry_i_3__8_n_4),
        .O(prod_rounded_clamped2_carry_i_3__9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_4__9
       (.I0(prod_rounded_clamped2_carry_i_7__9_n_5),
        .I1(prod_rounded_clamped2_carry_i_7__9_n_4),
        .O(prod_rounded_clamped2_carry_i_4__9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped2_carry_i_5__9
       (.I0(prod_rounded_clamped2_carry_i_7__9_n_7),
        .I1(prod_rounded_clamped2_carry_i_7__9_n_6),
        .O(prod_rounded_clamped2_carry_i_5__9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped2_carry_i_6__9
       (.I0(prod_rounded_clamped1_carry_i_3__8_n_4),
        .I1(prod_rounded_clamped1_carry_i_3__8_n_5),
        .O(prod_rounded_clamped2_carry_i_6__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__9
       (.CI(prod_rounded_clamped1_carry_i_3__8_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__9_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__9_n_1,prod_rounded_clamped2_carry_i_7__9_n_2,prod_rounded_clamped2_carry_i_7__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__9_n_4,prod_rounded_clamped2_carry_i_7__9_n_5,prod_rounded_clamped2_carry_i_7__9_n_6,prod_rounded_clamped2_carry_i_7__9_n_7}),
        .S(p_1_in[19:16]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
