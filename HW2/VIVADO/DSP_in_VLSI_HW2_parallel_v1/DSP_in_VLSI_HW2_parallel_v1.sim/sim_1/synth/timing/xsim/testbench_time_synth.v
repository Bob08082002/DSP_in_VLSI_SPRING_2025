// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Mar 25 19:30:19 2025
// Host        : DESKTOP-T5CR5M4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW2/VIVADO/DSP_in_VLSI_HW2_parallel_v1/DSP_in_VLSI_HW2_parallel_v1.sim/sim_1/synth/timing/xsim/testbench_time_synth.v
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
    FilterIn1,
    FilterIn2,
    ValidOut,
    FilterOut1,
    FilterOut2);
  input clk;
  input i_rst;
  input ValidIn;
  input [13:0]FilterIn1;
  input [13:0]FilterIn2;
  output ValidOut;
  output [15:0]FilterOut1;
  output [15:0]FilterOut2;

  wire [13:0]FilterIn1;
  wire [13:0]FilterIn1_IBUF;
  wire [13:0]FilterIn2;
  wire [13:0]FilterIn2_IBUF;
  wire [15:0]FilterOut1;
  wire [15:0]FilterOut1_OBUF;
  wire [15:0]FilterOut2;
  wire [15:0]FilterOut2_OBUF;
  wire ValidIn;
  wire ValidIn_IBUF;
  wire ValidOut;
  wire ValidOut_OBUF;
  wire add_clamped1;
  wire add_clamped2;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire i_rst;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[10] ;
  wire [15:0]\interconnet[11] ;
  wire [15:0]\interconnet[12] ;
  wire [15:0]\interconnet[13] ;
  wire [15:0]\interconnet[14] ;
  wire [15:0]\interconnet[15] ;
  wire [15:0]\interconnet[16] ;
  wire [15:0]\interconnet[17] ;
  wire [15:0]\interconnet[1] ;
  wire [15:0]\interconnet[2] ;
  wire [15:0]\interconnet[3] ;
  wire [15:0]\interconnet[4] ;
  wire [15:0]\interconnet[5] ;
  wire [15:0]\interconnet[6] ;
  wire [15:0]\interconnet[7] ;
  wire [15:0]\interconnet[8] ;
  wire [15:0]\interconnet[9] ;
  wire [15:15]prod_rounded_clamped;
  wire [13:0]prod_rounded_clamped_1;
  wire [14:14]prod_rounded_clamped__31;
  wire tap_2kplus1_00_n_10;
  wire tap_2kplus1_00_n_11;
  wire tap_2kplus1_00_n_12;
  wire tap_2kplus1_00_n_13;
  wire tap_2kplus1_00_n_14;
  wire tap_2kplus1_00_n_15;
  wire tap_2kplus1_00_n_16;
  wire tap_2kplus1_00_n_17;
  wire tap_2kplus1_00_n_4;
  wire tap_2kplus1_00_n_5;
  wire tap_2kplus1_00_n_6;
  wire tap_2kplus1_00_n_7;
  wire tap_2kplus1_00_n_8;
  wire tap_2kplus1_00_n_9;
  wire valid_in_FF1;

initial begin
 $sdf_annotate("testbench_time_synth.sdf",,,,"tool_control");
end
  IBUF \FilterIn1_IBUF[0]_inst 
       (.I(FilterIn1[0]),
        .O(FilterIn1_IBUF[0]));
  IBUF \FilterIn1_IBUF[10]_inst 
       (.I(FilterIn1[10]),
        .O(FilterIn1_IBUF[10]));
  IBUF \FilterIn1_IBUF[11]_inst 
       (.I(FilterIn1[11]),
        .O(FilterIn1_IBUF[11]));
  IBUF \FilterIn1_IBUF[12]_inst 
       (.I(FilterIn1[12]),
        .O(FilterIn1_IBUF[12]));
  IBUF \FilterIn1_IBUF[13]_inst 
       (.I(FilterIn1[13]),
        .O(FilterIn1_IBUF[13]));
  IBUF \FilterIn1_IBUF[1]_inst 
       (.I(FilterIn1[1]),
        .O(FilterIn1_IBUF[1]));
  IBUF \FilterIn1_IBUF[2]_inst 
       (.I(FilterIn1[2]),
        .O(FilterIn1_IBUF[2]));
  IBUF \FilterIn1_IBUF[3]_inst 
       (.I(FilterIn1[3]),
        .O(FilterIn1_IBUF[3]));
  IBUF \FilterIn1_IBUF[4]_inst 
       (.I(FilterIn1[4]),
        .O(FilterIn1_IBUF[4]));
  IBUF \FilterIn1_IBUF[5]_inst 
       (.I(FilterIn1[5]),
        .O(FilterIn1_IBUF[5]));
  IBUF \FilterIn1_IBUF[6]_inst 
       (.I(FilterIn1[6]),
        .O(FilterIn1_IBUF[6]));
  IBUF \FilterIn1_IBUF[7]_inst 
       (.I(FilterIn1[7]),
        .O(FilterIn1_IBUF[7]));
  IBUF \FilterIn1_IBUF[8]_inst 
       (.I(FilterIn1[8]),
        .O(FilterIn1_IBUF[8]));
  IBUF \FilterIn1_IBUF[9]_inst 
       (.I(FilterIn1[9]),
        .O(FilterIn1_IBUF[9]));
  IBUF \FilterIn2_IBUF[0]_inst 
       (.I(FilterIn2[0]),
        .O(FilterIn2_IBUF[0]));
  IBUF \FilterIn2_IBUF[10]_inst 
       (.I(FilterIn2[10]),
        .O(FilterIn2_IBUF[10]));
  IBUF \FilterIn2_IBUF[11]_inst 
       (.I(FilterIn2[11]),
        .O(FilterIn2_IBUF[11]));
  IBUF \FilterIn2_IBUF[12]_inst 
       (.I(FilterIn2[12]),
        .O(FilterIn2_IBUF[12]));
  IBUF \FilterIn2_IBUF[13]_inst 
       (.I(FilterIn2[13]),
        .O(FilterIn2_IBUF[13]));
  IBUF \FilterIn2_IBUF[1]_inst 
       (.I(FilterIn2[1]),
        .O(FilterIn2_IBUF[1]));
  IBUF \FilterIn2_IBUF[2]_inst 
       (.I(FilterIn2[2]),
        .O(FilterIn2_IBUF[2]));
  IBUF \FilterIn2_IBUF[3]_inst 
       (.I(FilterIn2[3]),
        .O(FilterIn2_IBUF[3]));
  IBUF \FilterIn2_IBUF[4]_inst 
       (.I(FilterIn2[4]),
        .O(FilterIn2_IBUF[4]));
  IBUF \FilterIn2_IBUF[5]_inst 
       (.I(FilterIn2[5]),
        .O(FilterIn2_IBUF[5]));
  IBUF \FilterIn2_IBUF[6]_inst 
       (.I(FilterIn2[6]),
        .O(FilterIn2_IBUF[6]));
  IBUF \FilterIn2_IBUF[7]_inst 
       (.I(FilterIn2[7]),
        .O(FilterIn2_IBUF[7]));
  IBUF \FilterIn2_IBUF[8]_inst 
       (.I(FilterIn2[8]),
        .O(FilterIn2_IBUF[8]));
  IBUF \FilterIn2_IBUF[9]_inst 
       (.I(FilterIn2[9]),
        .O(FilterIn2_IBUF[9]));
  OBUF \FilterOut1_OBUF[0]_inst 
       (.I(FilterOut1_OBUF[0]),
        .O(FilterOut1[0]));
  OBUF \FilterOut1_OBUF[10]_inst 
       (.I(FilterOut1_OBUF[10]),
        .O(FilterOut1[10]));
  OBUF \FilterOut1_OBUF[11]_inst 
       (.I(FilterOut1_OBUF[11]),
        .O(FilterOut1[11]));
  OBUF \FilterOut1_OBUF[12]_inst 
       (.I(FilterOut1_OBUF[12]),
        .O(FilterOut1[12]));
  OBUF \FilterOut1_OBUF[13]_inst 
       (.I(FilterOut1_OBUF[13]),
        .O(FilterOut1[13]));
  OBUF \FilterOut1_OBUF[14]_inst 
       (.I(FilterOut1_OBUF[14]),
        .O(FilterOut1[14]));
  OBUF \FilterOut1_OBUF[15]_inst 
       (.I(FilterOut1_OBUF[15]),
        .O(FilterOut1[15]));
  OBUF \FilterOut1_OBUF[1]_inst 
       (.I(FilterOut1_OBUF[1]),
        .O(FilterOut1[1]));
  OBUF \FilterOut1_OBUF[2]_inst 
       (.I(FilterOut1_OBUF[2]),
        .O(FilterOut1[2]));
  OBUF \FilterOut1_OBUF[3]_inst 
       (.I(FilterOut1_OBUF[3]),
        .O(FilterOut1[3]));
  OBUF \FilterOut1_OBUF[4]_inst 
       (.I(FilterOut1_OBUF[4]),
        .O(FilterOut1[4]));
  OBUF \FilterOut1_OBUF[5]_inst 
       (.I(FilterOut1_OBUF[5]),
        .O(FilterOut1[5]));
  OBUF \FilterOut1_OBUF[6]_inst 
       (.I(FilterOut1_OBUF[6]),
        .O(FilterOut1[6]));
  OBUF \FilterOut1_OBUF[7]_inst 
       (.I(FilterOut1_OBUF[7]),
        .O(FilterOut1[7]));
  OBUF \FilterOut1_OBUF[8]_inst 
       (.I(FilterOut1_OBUF[8]),
        .O(FilterOut1[8]));
  OBUF \FilterOut1_OBUF[9]_inst 
       (.I(FilterOut1_OBUF[9]),
        .O(FilterOut1[9]));
  OBUF \FilterOut2_OBUF[0]_inst 
       (.I(FilterOut2_OBUF[0]),
        .O(FilterOut2[0]));
  OBUF \FilterOut2_OBUF[10]_inst 
       (.I(FilterOut2_OBUF[10]),
        .O(FilterOut2[10]));
  OBUF \FilterOut2_OBUF[11]_inst 
       (.I(FilterOut2_OBUF[11]),
        .O(FilterOut2[11]));
  OBUF \FilterOut2_OBUF[12]_inst 
       (.I(FilterOut2_OBUF[12]),
        .O(FilterOut2[12]));
  OBUF \FilterOut2_OBUF[13]_inst 
       (.I(FilterOut2_OBUF[13]),
        .O(FilterOut2[13]));
  OBUF \FilterOut2_OBUF[14]_inst 
       (.I(FilterOut2_OBUF[14]),
        .O(FilterOut2[14]));
  OBUF \FilterOut2_OBUF[15]_inst 
       (.I(FilterOut2_OBUF[15]),
        .O(FilterOut2[15]));
  OBUF \FilterOut2_OBUF[1]_inst 
       (.I(FilterOut2_OBUF[1]),
        .O(FilterOut2[1]));
  OBUF \FilterOut2_OBUF[2]_inst 
       (.I(FilterOut2_OBUF[2]),
        .O(FilterOut2[2]));
  OBUF \FilterOut2_OBUF[3]_inst 
       (.I(FilterOut2_OBUF[3]),
        .O(FilterOut2[3]));
  OBUF \FilterOut2_OBUF[4]_inst 
       (.I(FilterOut2_OBUF[4]),
        .O(FilterOut2[4]));
  OBUF \FilterOut2_OBUF[5]_inst 
       (.I(FilterOut2_OBUF[5]),
        .O(FilterOut2[5]));
  OBUF \FilterOut2_OBUF[6]_inst 
       (.I(FilterOut2_OBUF[6]),
        .O(FilterOut2[6]));
  OBUF \FilterOut2_OBUF[7]_inst 
       (.I(FilterOut2_OBUF[7]),
        .O(FilterOut2[7]));
  OBUF \FilterOut2_OBUF[8]_inst 
       (.I(FilterOut2_OBUF[8]),
        .O(FilterOut2[8]));
  OBUF \FilterOut2_OBUF[9]_inst 
       (.I(FilterOut2_OBUF[9]),
        .O(FilterOut2[9]));
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
  FDRE #(
    .INIT(1'b0)) 
    \output_FF1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[8] [0]),
        .Q(FilterOut1_OBUF[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF1_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[8] [10]),
        .Q(FilterOut1_OBUF[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF1_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[8] [11]),
        .Q(FilterOut1_OBUF[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF1_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[8] [12]),
        .Q(FilterOut1_OBUF[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF1_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[8] [13]),
        .Q(FilterOut1_OBUF[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF1_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[8] [14]),
        .Q(FilterOut1_OBUF[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF1_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[8] [15]),
        .Q(FilterOut1_OBUF[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[8] [1]),
        .Q(FilterOut1_OBUF[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[8] [2]),
        .Q(FilterOut1_OBUF[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[8] [3]),
        .Q(FilterOut1_OBUF[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[8] [4]),
        .Q(FilterOut1_OBUF[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[8] [5]),
        .Q(FilterOut1_OBUF[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[8] [6]),
        .Q(FilterOut1_OBUF[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[8] [7]),
        .Q(FilterOut1_OBUF[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF1_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[8] [8]),
        .Q(FilterOut1_OBUF[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF1_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[8] [9]),
        .Q(FilterOut1_OBUF[9]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[17] [0]),
        .Q(FilterOut2_OBUF[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF2_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[17] [10]),
        .Q(FilterOut2_OBUF[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF2_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[17] [11]),
        .Q(FilterOut2_OBUF[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF2_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[17] [12]),
        .Q(FilterOut2_OBUF[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF2_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[17] [13]),
        .Q(FilterOut2_OBUF[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF2_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[17] [14]),
        .Q(FilterOut2_OBUF[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF2_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[17] [15]),
        .Q(FilterOut2_OBUF[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[17] [1]),
        .Q(FilterOut2_OBUF[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[17] [2]),
        .Q(FilterOut2_OBUF[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[17] [3]),
        .Q(FilterOut2_OBUF[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[17] [4]),
        .Q(FilterOut2_OBUF[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[17] [5]),
        .Q(FilterOut2_OBUF[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[17] [6]),
        .Q(FilterOut2_OBUF[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[17] [7]),
        .Q(FilterOut2_OBUF[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF2_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[17] [8]),
        .Q(FilterOut2_OBUF[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_FF2_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\interconnet[17] [9]),
        .Q(FilterOut2_OBUF[9]),
        .R(i_rst_IBUF));
  FIR_subblock_parallel tap_2k_00
       (.A(FilterIn2_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[9] (\interconnet[9] ),
        .prod_0_0(FilterIn1_IBUF));
  FIR_subblock_parallel_0 tap_2k_01
       (.A(FilterIn2_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[10] (\interconnet[10] ),
        .\interconnet[9] (\interconnet[9] ),
        .prod_0_0(FilterIn1_IBUF));
  FIR_subblock_parallel_1 tap_2k_02
       (.A(FilterIn2_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[10] (\interconnet[10] ),
        .\interconnet[11] (\interconnet[11] ),
        .prod_0_0(FilterIn1_IBUF));
  FIR_subblock_parallel_2 tap_2k_03
       (.A(FilterIn2_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[11] (\interconnet[11] ),
        .\interconnet[12] (\interconnet[12] ),
        .prod_0_0(FilterIn1_IBUF));
  FIR_subblock_parallel_3 tap_2k_04
       (.A(FilterIn2_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[12] (\interconnet[12] ),
        .\interconnet[13] (\interconnet[13] ),
        .prod_0_0(FilterIn1_IBUF));
  FIR_subblock_parallel_4 tap_2k_05
       (.A(FilterIn2_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[13] (\interconnet[13] ),
        .\interconnet[14] (\interconnet[14] ),
        .prod_0_0(FilterIn1_IBUF));
  FIR_subblock_parallel_5 tap_2k_06
       (.A(FilterIn2_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[14] (\interconnet[14] ),
        .\interconnet[15] (\interconnet[15] ),
        .prod_0_0(FilterIn1_IBUF));
  FIR_subblock_parallel_6 tap_2k_07
       (.A(FilterIn2_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[15] (\interconnet[15] ),
        .\interconnet[16] (\interconnet[16] ),
        .prod_0_0(FilterIn1_IBUF));
  FIR_subblock_init_last tap_2k_08
       (.A(FilterIn2_IBUF),
        .I1(\interconnet[17] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[16] (\interconnet[16] ));
  FIR_subblock_init_last_7 tap_2kplus1_00
       (.CO(add_clamped2),
        .S({tap_2kplus1_00_n_4,tap_2kplus1_00_n_5,tap_2kplus1_00_n_6,tap_2kplus1_00_n_7}),
        .add_clamped1_carry_i_3_0(add_clamped1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .prod_0({tap_2kplus1_00_n_8,tap_2kplus1_00_n_9,tap_2kplus1_00_n_10,tap_2kplus1_00_n_11}),
        .prod_1({tap_2kplus1_00_n_12,tap_2kplus1_00_n_13,tap_2kplus1_00_n_14,tap_2kplus1_00_n_15}),
        .prod_2({tap_2kplus1_00_n_16,tap_2kplus1_00_n_17}),
        .prod_3(FilterIn1_IBUF),
        .prod_rounded_clamped(prod_rounded_clamped),
        .prod_rounded_clamped_1(prod_rounded_clamped_1),
        .prod_rounded_clamped__31(prod_rounded_clamped__31));
  FIR_subblock_parallel_8 tap_2kplus1_01
       (.A(FilterIn2_IBUF),
        .CO(add_clamped2),
        .S({tap_2kplus1_00_n_4,tap_2kplus1_00_n_5,tap_2kplus1_00_n_6,tap_2kplus1_00_n_7}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\delay_element_reg[11]_0 ({tap_2kplus1_00_n_12,tap_2kplus1_00_n_13,tap_2kplus1_00_n_14,tap_2kplus1_00_n_15}),
        .\delay_element_reg[15]_0 ({tap_2kplus1_00_n_16,tap_2kplus1_00_n_17}),
        .\delay_element_reg[15]_1 (add_clamped1),
        .\delay_element_reg[7]_0 ({tap_2kplus1_00_n_8,tap_2kplus1_00_n_9,tap_2kplus1_00_n_10,tap_2kplus1_00_n_11}),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[1] (\interconnet[1] ),
        .prod_0_0(FilterIn1_IBUF),
        .prod_1_0(prod_rounded_clamped_1),
        .prod_rounded_clamped(prod_rounded_clamped),
        .prod_rounded_clamped__31(prod_rounded_clamped__31));
  FIR_subblock_parallel_9 tap_2kplus1_02
       (.A(FilterIn2_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[1] (\interconnet[1] ),
        .\interconnet[2] (\interconnet[2] ),
        .prod_0_0(FilterIn1_IBUF));
  FIR_subblock_parallel_10 tap_2kplus1_03
       (.A(FilterIn2_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[2] (\interconnet[2] ),
        .\interconnet[3] (\interconnet[3] ),
        .prod_0_0(FilterIn1_IBUF));
  FIR_subblock_parallel_11 tap_2kplus1_04
       (.A(FilterIn2_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[3] (\interconnet[3] ),
        .\interconnet[4] (\interconnet[4] ),
        .prod_0_0(FilterIn1_IBUF));
  FIR_subblock_parallel_12 tap_2kplus1_05
       (.A(FilterIn2_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[4] (\interconnet[4] ),
        .\interconnet[5] (\interconnet[5] ),
        .prod_0_0(FilterIn1_IBUF));
  FIR_subblock_parallel_13 tap_2kplus1_06
       (.A(FilterIn2_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[5] (\interconnet[5] ),
        .\interconnet[6] (\interconnet[6] ),
        .prod_0_0(FilterIn1_IBUF));
  FIR_subblock_parallel_14 tap_2kplus1_07
       (.A(FilterIn2_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[6] (\interconnet[6] ),
        .\interconnet[7] (\interconnet[7] ),
        .prod_0_0(FilterIn1_IBUF));
  FIR_subblock_parallel_15 tap_2kplus1_08
       (.A(FilterIn2_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .\interconnet[7] (\interconnet[7] ),
        .output_signal(\interconnet[8] ),
        .prod_0_0(FilterIn1_IBUF));
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
        .Q(ValidOut_OBUF),
        .R(i_rst_IBUF));
endmodule

module FIR_subblock_init_last
   (I1,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    \interconnet[16] );
  output [15:0]I1;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [15:0]\interconnet[16] ;

  wire [13:0]A;
  wire [15:0]I1;
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
  wire add_clamped1;
  wire add_clamped1_carry_i_1__0_n_3;
  wire add_clamped1_carry_i_2__0_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2;
  wire add_clamped2_carry_i_1__0_n_0;
  wire add_clamped2_carry_i_2__0_n_0;
  wire add_clamped2_carry_i_3__0_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[16] ;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire prod_n_100;
  wire prod_n_101;
  wire prod_n_102;
  wire prod_n_103;
  wire prod_n_104;
  wire prod_n_105;
  wire prod_n_99;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1__0_n_0;
  wire prod_rounded_clamped1_carry_i_2__0_n_0;
  wire prod_rounded_clamped1_carry_i_3__0_n_0;
  wire prod_rounded_clamped1_carry_i_3__0_n_1;
  wire prod_rounded_clamped1_carry_i_3__0_n_2;
  wire prod_rounded_clamped1_carry_i_3__0_n_3;
  wire prod_rounded_clamped1_carry_i_3__0_n_4;
  wire prod_rounded_clamped1_carry_i_3__0_n_5;
  wire prod_rounded_clamped1_carry_i_3__0_n_6;
  wire prod_rounded_clamped1_carry_i_3__0_n_7;
  wire prod_rounded_clamped1_carry_i_4__0_n_0;
  wire prod_rounded_clamped1_carry_i_5__0_n_0;
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
  wire NLW_prod_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_OVERFLOW_UNCONNECTED;
  wire NLW_prod_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_P_UNCONNECTED;
  wire [47:0]NLW_prod_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7__0_CO_UNCONNECTED;

  CARRY4 add_carry
       (.CI(1'b0),
        .CO({add_carry_n_0,add_carry_n_1,add_carry_n_2,add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[16] [3:0]),
        .O({add_carry_n_4,add_carry_n_5,add_carry_n_6,add_carry_n_7}),
        .S({add_carry_i_1_n_0,add_carry_i_2_n_0,add_carry_i_3_n_0,add_carry_i_4_n_0}));
  CARRY4 add_carry__0
       (.CI(add_carry_n_0),
        .CO({add_carry__0_n_0,add_carry__0_n_1,add_carry__0_n_2,add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[16] [7:4]),
        .O({add_carry__0_n_4,add_carry__0_n_5,add_carry__0_n_6,add_carry__0_n_7}),
        .S({add_carry__0_i_1_n_0,add_carry__0_i_2_n_0,add_carry__0_i_3_n_0,add_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_1
       (.I0(add_carry__0_i_5_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(\interconnet[16] [7]),
        .O(add_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_2
       (.I0(add_carry__0_i_5_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(\interconnet[16] [6]),
        .O(add_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_3
       (.I0(add_carry__0_i_5_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(\interconnet[16] [5]),
        .O(add_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__0_i_4
       (.I0(add_carry__0_i_5_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(\interconnet[16] [4]),
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
        .DI(\interconnet[16] [11:8]),
        .O({add_carry__1_n_4,add_carry__1_n_5,add_carry__1_n_6,add_carry__1_n_7}),
        .S({add_carry__1_i_1_n_0,add_carry__1_i_2_n_0,add_carry__1_i_3_n_0,add_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_1
       (.I0(prod_rounded_clamped1_carry_i_7__0_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(\interconnet[16] [11]),
        .O(add_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_2
       (.I0(prod_rounded_clamped1_carry_i_7__0_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(\interconnet[16] [10]),
        .O(add_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_3
       (.I0(prod_rounded_clamped1_carry_i_7__0_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(\interconnet[16] [9]),
        .O(add_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__1_i_4
       (.I0(prod_rounded_clamped1_carry_i_7__0_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(\interconnet[16] [8]),
        .O(add_carry__1_i_4_n_0));
  CARRY4 add_carry__2
       (.CI(add_carry__1_n_0),
        .CO({add_carry__2_n_0,add_carry__2_n_1,add_carry__2_n_2,add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({add_carry__2_i_1_n_0,\interconnet[16] [14:12]}),
        .O({add_carry__2_n_4,add_carry__2_n_5,add_carry__2_n_6,add_carry__2_n_7}),
        .S({add_carry__2_i_2_n_0,add_carry__2_i_3_n_0,add_carry__2_i_4_n_0,add_carry__2_i_5_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_carry__2_i_1
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__0_n_4),
        .O(add_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_carry__2_i_2
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3__0_n_4),
        .I3(\interconnet[16] [15]),
        .O(add_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_3
       (.I0(prod_rounded_clamped1_carry_i_3__0_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(\interconnet[16] [14]),
        .O(add_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_4
       (.I0(prod_rounded_clamped1_carry_i_3__0_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(\interconnet[16] [13]),
        .O(add_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry__2_i_5
       (.I0(prod_rounded_clamped1_carry_i_3__0_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(\interconnet[16] [12]),
        .O(add_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_1
       (.I0(add_carry_i_5_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(\interconnet[16] [3]),
        .O(add_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_2
       (.I0(add_carry_i_5_n_5),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(\interconnet[16] [2]),
        .O(add_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_3
       (.I0(add_carry_i_5_n_6),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(\interconnet[16] [1]),
        .O(add_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_carry_i_4
       (.I0(add_carry_i_5_n_7),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .I3(\interconnet[16] [0]),
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
        .S({1'b0,1'b0,add_clamped2_carry_i_2__0_n_0,add_clamped2_carry_i_3__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_1__0
       (.I0(add_carry__2_n_4),
        .O(add_clamped2_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_clamped2_carry_i_2__0
       (.I0(add_clamped1_carry_i_1__0_n_3),
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
    \output_FF2[0]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_7),
        .O(I1[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \output_FF2[10]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_5),
        .O(I1[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \output_FF2[11]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_4),
        .O(I1[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \output_FF2[12]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_7),
        .O(I1[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \output_FF2[13]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_6),
        .O(I1[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \output_FF2[14]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__2_n_5),
        .O(I1[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \output_FF2[15]_i_1 
       (.I0(add_carry__2_n_4),
        .I1(add_clamped2),
        .I2(add_clamped1),
        .O(I1[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \output_FF2[1]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_6),
        .O(I1[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \output_FF2[2]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_5),
        .O(I1[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \output_FF2[3]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry_n_4),
        .O(I1[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \output_FF2[4]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_7),
        .O(I1[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \output_FF2[5]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_6),
        .O(I1[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \output_FF2[6]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_5),
        .O(I1[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \output_FF2[7]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__0_n_4),
        .O(I1[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \output_FF2[8]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_7),
        .O(I1[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \output_FF2[9]_i_1 
       (.I0(add_clamped1),
        .I1(add_clamped2),
        .I2(add_carry__1_n_6),
        .O(I1[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_n_99,prod_n_100,prod_n_101,prod_n_102,prod_n_103,prod_n_104,prod_n_105}),
        .PATTERNBDETECT(NLW_prod_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1__0_n_0,prod_rounded_clamped1_carry_i_2__0_n_0,prod_rounded_clamped1_carry_i_3__0_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4__0_n_0,prod_rounded_clamped1_carry_i_5__0_n_0,prod_rounded_clamped1_carry_i_6__0_n_0}));
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
  CARRY4 prod_rounded_clamped1_carry_i_3__0
       (.CI(prod_rounded_clamped1_carry_i_7__0_n_0),
        .CO({prod_rounded_clamped1_carry_i_3__0_n_0,prod_rounded_clamped1_carry_i_3__0_n_1,prod_rounded_clamped1_carry_i_3__0_n_2,prod_rounded_clamped1_carry_i_3__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped1_carry_i_3__0_n_4,prod_rounded_clamped1_carry_i_3__0_n_5,prod_rounded_clamped1_carry_i_3__0_n_6,prod_rounded_clamped1_carry_i_3__0_n_7}),
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
    prod_rounded_clamped1_carry_i_6__0
       (.I0(prod_rounded_clamped1_carry_i_3__0_n_5),
        .I1(prod_rounded_clamped1_carry_i_3__0_n_4),
        .O(prod_rounded_clamped1_carry_i_6__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7__0
       (.CI(add_carry__0_i_5_n_0),
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
       (.I0(prod_rounded_clamped1_carry_i_3__0_n_4),
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
       (.I0(prod_rounded_clamped1_carry_i_3__0_n_4),
        .I1(prod_rounded_clamped1_carry_i_3__0_n_5),
        .O(prod_rounded_clamped2_carry_i_6__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7__0
       (.CI(prod_rounded_clamped1_carry_i_3__0_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7__0_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7__0_n_1,prod_rounded_clamped2_carry_i_7__0_n_2,prod_rounded_clamped2_carry_i_7__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7__0_n_4,prod_rounded_clamped2_carry_i_7__0_n_5,prod_rounded_clamped2_carry_i_7__0_n_6,prod_rounded_clamped2_carry_i_7__0_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock_init_last" *) 
module FIR_subblock_init_last_7
   (CO,
    add_clamped1_carry_i_3_0,
    prod_rounded_clamped,
    prod_rounded_clamped__31,
    S,
    prod_0,
    prod_1,
    prod_2,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    prod_3,
    prod_rounded_clamped_1);
  output [0:0]CO;
  output [0:0]add_clamped1_carry_i_3_0;
  output [0:0]prod_rounded_clamped;
  output [0:0]prod_rounded_clamped__31;
  output [3:0]S;
  output [3:0]prod_0;
  output [3:0]prod_1;
  output [1:0]prod_2;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]prod_3;
  input [13:0]prod_rounded_clamped_1;

  wire [0:0]CO;
  wire [3:0]S;
  wire add_1_carry__0_i_10_n_0;
  wire add_1_carry__0_i_10_n_1;
  wire add_1_carry__0_i_10_n_2;
  wire add_1_carry__0_i_10_n_3;
  wire add_1_carry__0_i_10_n_4;
  wire add_1_carry__0_i_10_n_5;
  wire add_1_carry__0_i_10_n_6;
  wire add_1_carry__0_i_10_n_7;
  wire add_1_carry_i_10_n_0;
  wire add_1_carry_i_10_n_1;
  wire add_1_carry_i_10_n_2;
  wire add_1_carry_i_10_n_3;
  wire add_1_carry_i_10_n_4;
  wire add_1_carry_i_10_n_5;
  wire add_1_carry_i_10_n_6;
  wire add_1_carry_i_10_n_7;
  wire add_1_carry_i_12_n_0;
  wire add_clamped1_carry_i_1_n_0;
  wire add_clamped1_carry_i_2_n_0;
  wire [0:0]add_clamped1_carry_i_3_0;
  wire add_clamped1_carry_i_3_n_0;
  wire add_clamped1_carry_n_3;
  wire add_clamped2_carry_i_1_n_0;
  wire add_clamped2_carry_i_2_n_0;
  wire add_clamped2_carry_i_3_n_0;
  wire add_clamped2_carry_n_3;
  wire clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [3:0]prod_0;
  wire [3:0]prod_1;
  wire [1:0]prod_2;
  wire [13:0]prod_3;
  wire prod_n_100;
  wire prod_n_101;
  wire prod_n_102;
  wire prod_n_103;
  wire prod_n_104;
  wire prod_n_105;
  wire prod_n_99;
  wire [0:0]prod_rounded_clamped;
  wire prod_rounded_clamped1;
  wire prod_rounded_clamped1_carry_i_1_n_0;
  wire prod_rounded_clamped1_carry_i_2_n_0;
  wire prod_rounded_clamped1_carry_i_3_n_0;
  wire prod_rounded_clamped1_carry_i_3_n_1;
  wire prod_rounded_clamped1_carry_i_3_n_2;
  wire prod_rounded_clamped1_carry_i_3_n_3;
  wire prod_rounded_clamped1_carry_i_3_n_4;
  wire prod_rounded_clamped1_carry_i_3_n_5;
  wire prod_rounded_clamped1_carry_i_3_n_6;
  wire prod_rounded_clamped1_carry_i_3_n_7;
  wire prod_rounded_clamped1_carry_i_4_n_0;
  wire prod_rounded_clamped1_carry_i_5_n_0;
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
  wire [13:0]prod_rounded_clamped_1;
  wire [0:0]prod_rounded_clamped__31;
  wire [3:2]NLW_add_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped1_carry_O_UNCONNECTED;
  wire [3:2]NLW_add_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_add_clamped2_carry_O_UNCONNECTED;
  wire NLW_prod_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_OVERFLOW_UNCONNECTED;
  wire NLW_prod_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_P_UNCONNECTED;
  wire [47:0]NLW_prod_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped1_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped2_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped2_carry_i_7_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0_i_10
       (.CI(add_1_carry_i_10_n_0),
        .CO({add_1_carry__0_i_10_n_0,add_1_carry__0_i_10_n_1,add_1_carry__0_i_10_n_2,add_1_carry__0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_1_carry__0_i_10_n_4,add_1_carry__0_i_10_n_5,add_1_carry__0_i_10_n_6,add_1_carry__0_i_10_n_7}),
        .S(p_1_in[7:4]));
  LUT6 #(
    .INIT(64'h55555555AAAA55A6)) 
    add_1_carry__0_i_5
       (.I0(prod_rounded_clamped_1[7]),
        .I1(add_1_carry__0_i_10_n_4),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1),
        .I4(CO),
        .I5(add_clamped1_carry_i_3_0),
        .O(prod_0[3]));
  LUT6 #(
    .INIT(64'h55555555AAAA55A6)) 
    add_1_carry__0_i_6
       (.I0(prod_rounded_clamped_1[6]),
        .I1(add_1_carry__0_i_10_n_5),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1),
        .I4(CO),
        .I5(add_clamped1_carry_i_3_0),
        .O(prod_0[2]));
  LUT6 #(
    .INIT(64'h55555555AAAA55A6)) 
    add_1_carry__0_i_7
       (.I0(prod_rounded_clamped_1[5]),
        .I1(add_1_carry__0_i_10_n_6),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1),
        .I4(CO),
        .I5(add_clamped1_carry_i_3_0),
        .O(prod_0[1]));
  LUT6 #(
    .INIT(64'h55555555AAAA55A6)) 
    add_1_carry__0_i_8
       (.I0(prod_rounded_clamped_1[4]),
        .I1(add_1_carry__0_i_10_n_7),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1),
        .I4(CO),
        .I5(add_clamped1_carry_i_3_0),
        .O(prod_0[0]));
  LUT6 #(
    .INIT(64'h55555555AAAA55A6)) 
    add_1_carry__1_i_5
       (.I0(prod_rounded_clamped_1[11]),
        .I1(prod_rounded_clamped1_carry_i_7_n_4),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1),
        .I4(CO),
        .I5(add_clamped1_carry_i_3_0),
        .O(prod_1[3]));
  LUT6 #(
    .INIT(64'h55555555AAAA55A6)) 
    add_1_carry__1_i_6
       (.I0(prod_rounded_clamped_1[10]),
        .I1(prod_rounded_clamped1_carry_i_7_n_5),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1),
        .I4(CO),
        .I5(add_clamped1_carry_i_3_0),
        .O(prod_1[2]));
  LUT6 #(
    .INIT(64'h55555555AAAA55A6)) 
    add_1_carry__1_i_7
       (.I0(prod_rounded_clamped_1[9]),
        .I1(prod_rounded_clamped1_carry_i_7_n_6),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1),
        .I4(CO),
        .I5(add_clamped1_carry_i_3_0),
        .O(prod_1[1]));
  LUT6 #(
    .INIT(64'h55555555AAAA55A6)) 
    add_1_carry__1_i_8
       (.I0(prod_rounded_clamped_1[8]),
        .I1(prod_rounded_clamped1_carry_i_7_n_7),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1),
        .I4(CO),
        .I5(add_clamped1_carry_i_3_0),
        .O(prod_1[0]));
  LUT6 #(
    .INIT(64'h55555555AAAA55A6)) 
    add_1_carry__2_i_6
       (.I0(prod_rounded_clamped_1[13]),
        .I1(prod_rounded_clamped1_carry_i_3_n_6),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1),
        .I4(CO),
        .I5(add_clamped1_carry_i_3_0),
        .O(prod_2[1]));
  LUT6 #(
    .INIT(64'h55555555AAAA55A6)) 
    add_1_carry__2_i_7
       (.I0(prod_rounded_clamped_1[12]),
        .I1(prod_rounded_clamped1_carry_i_3_n_7),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1),
        .I4(CO),
        .I5(add_clamped1_carry_i_3_0),
        .O(prod_2[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    add_1_carry__2_i_8
       (.I0(prod_rounded_clamped1_carry_i_3_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .O(prod_rounded_clamped));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    add_1_carry__2_i_9
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3_n_5),
        .O(prod_rounded_clamped__31));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry_i_10
       (.CI(1'b0),
        .CO({add_1_carry_i_10_n_0,add_1_carry_i_10_n_1,add_1_carry_i_10_n_2,add_1_carry_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_1_carry_i_10_n_4,add_1_carry_i_10_n_5,add_1_carry_i_10_n_6,add_1_carry_i_10_n_7}),
        .S({p_1_in[3:1],add_1_carry_i_12_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_1_carry_i_12
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_1_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h55555555AAAA55A6)) 
    add_1_carry_i_5
       (.I0(prod_rounded_clamped_1[3]),
        .I1(add_1_carry_i_10_n_4),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1),
        .I4(CO),
        .I5(add_clamped1_carry_i_3_0),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h55555555AAAA55A6)) 
    add_1_carry_i_6
       (.I0(prod_rounded_clamped_1[2]),
        .I1(add_1_carry_i_10_n_5),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1),
        .I4(CO),
        .I5(add_clamped1_carry_i_3_0),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h55555555AAAA55A6)) 
    add_1_carry_i_7
       (.I0(prod_rounded_clamped_1[1]),
        .I1(add_1_carry_i_10_n_6),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1),
        .I4(CO),
        .I5(add_clamped1_carry_i_3_0),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h55555555AAAA55A6)) 
    add_1_carry_i_8
       (.I0(prod_rounded_clamped_1[0]),
        .I1(add_1_carry_i_10_n_7),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1),
        .I4(CO),
        .I5(add_clamped1_carry_i_3_0),
        .O(S[0]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped1_carry_CO_UNCONNECTED[3:2],add_clamped1_carry_i_3_0,add_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped1_carry_i_1_n_0}),
        .O(NLW_add_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped1_carry_i_2_n_0,add_clamped1_carry_i_3_n_0}));
  LUT3 #(
    .INIT(8'h0E)) 
    add_clamped1_carry_i_1
       (.I0(prod_rounded_clamped1_carry_i_3_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .O(add_clamped1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hAB)) 
    add_clamped1_carry_i_2
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3_n_4),
        .O(add_clamped1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'hCCCE)) 
    add_clamped1_carry_i_3
       (.I0(prod_rounded_clamped1_carry_i_3_n_5),
        .I1(prod_rounded_clamped1),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1_carry_i_3_n_4),
        .O(add_clamped1_carry_i_3_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 add_clamped2_carry
       (.CI(1'b0),
        .CO({NLW_add_clamped2_carry_CO_UNCONNECTED[3:2],CO,add_clamped2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,add_clamped2_carry_i_1_n_0}),
        .O(NLW_add_clamped2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,add_clamped2_carry_i_2_n_0,add_clamped2_carry_i_3_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    add_clamped2_carry_i_1
       (.I0(prod_rounded_clamped1),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1_carry_i_3_n_4),
        .O(add_clamped2_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    add_clamped2_carry_i_2
       (.I0(prod_rounded_clamped1_carry_i_3_n_4),
        .I1(prod_rounded_clamped2),
        .I2(prod_rounded_clamped1),
        .O(add_clamped2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h00F2)) 
    add_clamped2_carry_i_3
       (.I0(prod_rounded_clamped1_carry_i_3_n_4),
        .I1(prod_rounded_clamped1_carry_i_3_n_5),
        .I2(prod_rounded_clamped2),
        .I3(prod_rounded_clamped1),
        .O(add_clamped2_carry_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod
       (.A({prod_3[13],prod_3[13],prod_3[13],prod_3[13],prod_3[13],prod_3[13],prod_3[13],prod_3[13],prod_3[13],prod_3[13],prod_3[13],prod_3[13],prod_3[13],prod_3[13],prod_3[13],prod_3[13],prod_3}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_n_99,prod_n_100,prod_n_101,prod_n_102,prod_n_103,prod_n_104,prod_n_105}),
        .PATTERNBDETECT(NLW_prod_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped1_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped1_carry_CO_UNCONNECTED[3],prod_rounded_clamped1,prod_rounded_clamped1_carry_n_2,prod_rounded_clamped1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped1_carry_i_1_n_0,prod_rounded_clamped1_carry_i_2_n_0,prod_rounded_clamped1_carry_i_3_n_4}),
        .O(NLW_prod_rounded_clamped1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped1_carry_i_4_n_0,prod_rounded_clamped1_carry_i_5_n_0,prod_rounded_clamped1_carry_i_6_n_0}));
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
    prod_rounded_clamped1_carry_i_4
       (.I0(prod_rounded_clamped2_carry_i_7_n_5),
        .I1(prod_rounded_clamped2_carry_i_7_n_4),
        .O(prod_rounded_clamped1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped1_carry_i_5
       (.I0(prod_rounded_clamped2_carry_i_7_n_7),
        .I1(prod_rounded_clamped2_carry_i_7_n_6),
        .O(prod_rounded_clamped1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped1_carry_i_6
       (.I0(prod_rounded_clamped1_carry_i_3_n_5),
        .I1(prod_rounded_clamped1_carry_i_3_n_4),
        .O(prod_rounded_clamped1_carry_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped1_carry_i_7
       (.CI(add_1_carry__0_i_10_n_0),
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
       (.I0(prod_rounded_clamped1_carry_i_3_n_4),
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
       (.I0(prod_rounded_clamped1_carry_i_3_n_4),
        .I1(prod_rounded_clamped1_carry_i_3_n_5),
        .O(prod_rounded_clamped2_carry_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped2_carry_i_7
       (.CI(prod_rounded_clamped1_carry_i_3_n_0),
        .CO({NLW_prod_rounded_clamped2_carry_i_7_CO_UNCONNECTED[3],prod_rounded_clamped2_carry_i_7_n_1,prod_rounded_clamped2_carry_i_7_n_2,prod_rounded_clamped2_carry_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped2_carry_i_7_n_4,prod_rounded_clamped2_carry_i_7_n_5,prod_rounded_clamped2_carry_i_7_n_6,prod_rounded_clamped2_carry_i_7_n_7}),
        .S(p_1_in[19:16]));
endmodule

module FIR_subblock_parallel
   (\interconnet[9] ,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    prod_0_0);
  output [15:0]\interconnet[9] ;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [13:0]prod_0_0;

  wire [13:0]A;
  wire add_0_carry__0_i_1__7_n_0;
  wire add_0_carry__0_i_2__7_n_0;
  wire add_0_carry__0_i_3__7_n_0;
  wire add_0_carry__0_i_4__7_n_0;
  wire add_0_carry__0_i_5__7_n_0;
  wire add_0_carry__0_i_5__7_n_1;
  wire add_0_carry__0_i_5__7_n_2;
  wire add_0_carry__0_i_5__7_n_3;
  wire add_0_carry__0_i_5__7_n_4;
  wire add_0_carry__0_i_5__7_n_5;
  wire add_0_carry__0_i_5__7_n_6;
  wire add_0_carry__0_i_5__7_n_7;
  wire add_0_carry__0_n_0;
  wire add_0_carry__0_n_1;
  wire add_0_carry__0_n_2;
  wire add_0_carry__0_n_3;
  wire add_0_carry__1_i_1__7_n_0;
  wire add_0_carry__1_i_2__7_n_0;
  wire add_0_carry__1_i_3__7_n_0;
  wire add_0_carry__1_i_4__7_n_0;
  wire add_0_carry__1_n_0;
  wire add_0_carry__1_n_1;
  wire add_0_carry__1_n_2;
  wire add_0_carry__1_n_3;
  wire add_0_carry__2_i_1__7_n_0;
  wire add_0_carry__2_i_2__7_n_0;
  wire add_0_carry__2_i_3__7_n_0;
  wire add_0_carry__2_i_4__7_n_0;
  wire add_0_carry__2_n_1;
  wire add_0_carry__2_n_2;
  wire add_0_carry__2_n_3;
  wire add_0_carry_i_1__7_n_0;
  wire add_0_carry_i_2__7_n_0;
  wire add_0_carry_i_3__7_n_0;
  wire add_0_carry_i_4__7_n_0;
  wire add_0_carry_i_5__7_n_0;
  wire add_0_carry_i_5__7_n_1;
  wire add_0_carry_i_5__7_n_2;
  wire add_0_carry_i_5__7_n_3;
  wire add_0_carry_i_5__7_n_4;
  wire add_0_carry_i_5__7_n_5;
  wire add_0_carry_i_5__7_n_6;
  wire add_0_carry_i_5__7_n_7;
  wire add_0_carry_i_6__7_n_0;
  wire add_0_carry_n_0;
  wire add_0_carry_n_1;
  wire add_0_carry_n_2;
  wire add_0_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]delay_element;
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
  wire [15:0]\interconnet[9] ;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [13:0]prod_0_0;
  wire [27:7]prod_0__0;
  wire prod_0_n_100;
  wire prod_0_n_101;
  wire prod_0_n_102;
  wire prod_0_n_103;
  wire prod_0_n_104;
  wire prod_0_n_105;
  wire prod_0_n_99;
  wire prod_1_n_100;
  wire prod_1_n_101;
  wire prod_1_n_102;
  wire prod_1_n_103;
  wire prod_1_n_104;
  wire prod_1_n_105;
  wire prod_1_n_99;
  wire prod_rounded_clamped_01;
  wire prod_rounded_clamped_01_carry_i_1__7_n_0;
  wire prod_rounded_clamped_01_carry_i_2__7_n_0;
  wire prod_rounded_clamped_01_carry_i_3__7_n_0;
  wire prod_rounded_clamped_01_carry_i_3__7_n_1;
  wire prod_rounded_clamped_01_carry_i_3__7_n_2;
  wire prod_rounded_clamped_01_carry_i_3__7_n_3;
  wire prod_rounded_clamped_01_carry_i_3__7_n_4;
  wire prod_rounded_clamped_01_carry_i_3__7_n_5;
  wire prod_rounded_clamped_01_carry_i_3__7_n_6;
  wire prod_rounded_clamped_01_carry_i_3__7_n_7;
  wire prod_rounded_clamped_01_carry_i_4__7_n_0;
  wire prod_rounded_clamped_01_carry_i_5__7_n_0;
  wire prod_rounded_clamped_01_carry_i_6__7_n_0;
  wire prod_rounded_clamped_01_carry_i_7__7_n_0;
  wire prod_rounded_clamped_01_carry_i_7__7_n_1;
  wire prod_rounded_clamped_01_carry_i_7__7_n_2;
  wire prod_rounded_clamped_01_carry_i_7__7_n_3;
  wire prod_rounded_clamped_01_carry_i_7__7_n_4;
  wire prod_rounded_clamped_01_carry_i_7__7_n_5;
  wire prod_rounded_clamped_01_carry_i_7__7_n_6;
  wire prod_rounded_clamped_01_carry_i_7__7_n_7;
  wire prod_rounded_clamped_01_carry_n_2;
  wire prod_rounded_clamped_01_carry_n_3;
  wire prod_rounded_clamped_02;
  wire prod_rounded_clamped_02_carry_i_1__7_n_0;
  wire prod_rounded_clamped_02_carry_i_2__7_n_0;
  wire prod_rounded_clamped_02_carry_i_3__7_n_0;
  wire prod_rounded_clamped_02_carry_i_4__7_n_0;
  wire prod_rounded_clamped_02_carry_i_5__7_n_0;
  wire prod_rounded_clamped_02_carry_i_6__7_n_0;
  wire prod_rounded_clamped_02_carry_i_7__7_n_1;
  wire prod_rounded_clamped_02_carry_i_7__7_n_2;
  wire prod_rounded_clamped_02_carry_i_7__7_n_3;
  wire prod_rounded_clamped_02_carry_i_7__7_n_4;
  wire prod_rounded_clamped_02_carry_i_7__7_n_5;
  wire prod_rounded_clamped_02_carry_i_7__7_n_6;
  wire prod_rounded_clamped_02_carry_i_7__7_n_7;
  wire prod_rounded_clamped_02_carry_n_2;
  wire prod_rounded_clamped_02_carry_n_3;
  wire [15:0]prod_rounded_clamped_1;
  wire prod_rounded_clamped_11;
  wire prod_rounded_clamped_11_carry_i_1_n_0;
  wire prod_rounded_clamped_11_carry_i_2_n_0;
  wire prod_rounded_clamped_11_carry_i_3_n_0;
  wire prod_rounded_clamped_11_carry_i_3_n_1;
  wire prod_rounded_clamped_11_carry_i_3_n_2;
  wire prod_rounded_clamped_11_carry_i_3_n_3;
  wire prod_rounded_clamped_11_carry_i_3_n_4;
  wire prod_rounded_clamped_11_carry_i_3_n_5;
  wire prod_rounded_clamped_11_carry_i_3_n_6;
  wire prod_rounded_clamped_11_carry_i_3_n_7;
  wire prod_rounded_clamped_11_carry_i_4_n_0;
  wire prod_rounded_clamped_11_carry_i_5_n_0;
  wire prod_rounded_clamped_11_carry_i_6_n_0;
  wire prod_rounded_clamped_11_carry_n_2;
  wire prod_rounded_clamped_11_carry_n_3;
  wire prod_rounded_clamped_12;
  wire prod_rounded_clamped_12_carry_i_1_n_0;
  wire prod_rounded_clamped_12_carry_i_2_n_0;
  wire prod_rounded_clamped_12_carry_i_3_n_0;
  wire prod_rounded_clamped_12_carry_i_4_n_0;
  wire prod_rounded_clamped_12_carry_i_5_n_0;
  wire prod_rounded_clamped_12_carry_i_6_n_0;
  wire prod_rounded_clamped_12_carry_i_7_n_1;
  wire prod_rounded_clamped_12_carry_i_7_n_2;
  wire prod_rounded_clamped_12_carry_i_7_n_3;
  wire prod_rounded_clamped_12_carry_i_7_n_4;
  wire prod_rounded_clamped_12_carry_i_7_n_5;
  wire prod_rounded_clamped_12_carry_i_7_n_6;
  wire prod_rounded_clamped_12_carry_i_7_n_7;
  wire prod_rounded_clamped_12_carry_n_2;
  wire prod_rounded_clamped_12_carry_n_3;
  wire [3:3]NLW_add_0_carry__2_CO_UNCONNECTED;
  wire NLW_prod_0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_0_OVERFLOW_UNCONNECTED;
  wire NLW_prod_0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_0_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_0_P_UNCONNECTED;
  wire [47:0]NLW_prod_0_PCOUT_UNCONNECTED;
  wire NLW_prod_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_1_OVERFLOW_UNCONNECTED;
  wire NLW_prod_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_1_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_1_P_UNCONNECTED;
  wire [47:0]NLW_prod_1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_i_7__7_CO_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_i_7_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry
       (.CI(1'b0),
        .CO({add_0_carry_n_0,add_0_carry_n_1,add_0_carry_n_2,add_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[3:0]),
        .O(\interconnet[9] [3:0]),
        .S({add_0_carry_i_1__7_n_0,add_0_carry_i_2__7_n_0,add_0_carry_i_3__7_n_0,add_0_carry_i_4__7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0
       (.CI(add_0_carry_n_0),
        .CO({add_0_carry__0_n_0,add_0_carry__0_n_1,add_0_carry__0_n_2,add_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[7:4]),
        .O(\interconnet[9] [7:4]),
        .S({add_0_carry__0_i_1__7_n_0,add_0_carry__0_i_2__7_n_0,add_0_carry__0_i_3__7_n_0,add_0_carry__0_i_4__7_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_1__7
       (.I0(add_0_carry__0_i_5__7_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[7]),
        .O(add_0_carry__0_i_1__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_2__7
       (.I0(add_0_carry__0_i_5__7_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[6]),
        .O(add_0_carry__0_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_3__7
       (.I0(add_0_carry__0_i_5__7_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[5]),
        .O(add_0_carry__0_i_3__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_4__7
       (.I0(add_0_carry__0_i_5__7_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[4]),
        .O(add_0_carry__0_i_4__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0_i_5__7
       (.CI(add_0_carry_i_5__7_n_0),
        .CO({add_0_carry__0_i_5__7_n_0,add_0_carry__0_i_5__7_n_1,add_0_carry__0_i_5__7_n_2,add_0_carry__0_i_5__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_0_carry__0_i_5__7_n_4,add_0_carry__0_i_5__7_n_5,add_0_carry__0_i_5__7_n_6,add_0_carry__0_i_5__7_n_7}),
        .S(prod_0__0[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__1
       (.CI(add_0_carry__0_n_0),
        .CO({add_0_carry__1_n_0,add_0_carry__1_n_1,add_0_carry__1_n_2,add_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[11:8]),
        .O(\interconnet[9] [11:8]),
        .S({add_0_carry__1_i_1__7_n_0,add_0_carry__1_i_2__7_n_0,add_0_carry__1_i_3__7_n_0,add_0_carry__1_i_4__7_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_1__7
       (.I0(prod_rounded_clamped_01_carry_i_7__7_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[11]),
        .O(add_0_carry__1_i_1__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_2__7
       (.I0(prod_rounded_clamped_01_carry_i_7__7_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[10]),
        .O(add_0_carry__1_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_3__7
       (.I0(prod_rounded_clamped_01_carry_i_7__7_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[9]),
        .O(add_0_carry__1_i_3__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_4__7
       (.I0(prod_rounded_clamped_01_carry_i_7__7_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[8]),
        .O(add_0_carry__1_i_4__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__2
       (.CI(add_0_carry__1_n_0),
        .CO({NLW_add_0_carry__2_CO_UNCONNECTED[3],add_0_carry__2_n_1,add_0_carry__2_n_2,add_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_element[14:12]}),
        .O(\interconnet[9] [15:12]),
        .S({add_0_carry__2_i_1__7_n_0,add_0_carry__2_i_2__7_n_0,add_0_carry__2_i_3__7_n_0,add_0_carry__2_i_4__7_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_0_carry__2_i_1__7
       (.I0(prod_rounded_clamped_01),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01_carry_i_3__7_n_4),
        .I3(delay_element[15]),
        .O(add_0_carry__2_i_1__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_2__7
       (.I0(prod_rounded_clamped_01_carry_i_3__7_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[14]),
        .O(add_0_carry__2_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_3__7
       (.I0(prod_rounded_clamped_01_carry_i_3__7_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[13]),
        .O(add_0_carry__2_i_3__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_4__7
       (.I0(prod_rounded_clamped_01_carry_i_3__7_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[12]),
        .O(add_0_carry__2_i_4__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_1__7
       (.I0(add_0_carry_i_5__7_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[3]),
        .O(add_0_carry_i_1__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_2__7
       (.I0(add_0_carry_i_5__7_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[2]),
        .O(add_0_carry_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_3__7
       (.I0(add_0_carry_i_5__7_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[1]),
        .O(add_0_carry_i_3__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_4__7
       (.I0(add_0_carry_i_5__7_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[0]),
        .O(add_0_carry_i_4__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry_i_5__7
       (.CI(1'b0),
        .CO({add_0_carry_i_5__7_n_0,add_0_carry_i_5__7_n_1,add_0_carry_i_5__7_n_2,add_0_carry_i_5__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_0__0[8]}),
        .O({add_0_carry_i_5__7_n_4,add_0_carry_i_5__7_n_5,add_0_carry_i_5__7_n_6,add_0_carry_i_5__7_n_7}),
        .S({prod_0__0[11:9],add_0_carry_i_6__7_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_0_carry_i_6__7
       (.I0(prod_0__0[8]),
        .I1(prod_0__0[7]),
        .O(add_0_carry_i_6__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[0]_i_1 
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(\delay_element_reg[3]_i_2_n_7 ),
        .O(prod_rounded_clamped_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[10]_i_1 
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(\delay_element_reg[11]_i_2_n_5 ),
        .O(prod_rounded_clamped_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[11]_i_1 
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(\delay_element_reg[11]_i_2_n_4 ),
        .O(prod_rounded_clamped_1[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[12]_i_1 
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3_n_7),
        .O(prod_rounded_clamped_1[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[13]_i_1 
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3_n_6),
        .O(prod_rounded_clamped_1[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[14]_i_1 
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3_n_5),
        .O(prod_rounded_clamped_1[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \delay_element[15]_i_1 
       (.I0(prod_rounded_clamped_11_carry_i_3_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .O(prod_rounded_clamped_1[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[1]_i_1 
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(\delay_element_reg[3]_i_2_n_6 ),
        .O(prod_rounded_clamped_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[2]_i_1 
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(\delay_element_reg[3]_i_2_n_5 ),
        .O(prod_rounded_clamped_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[3]_i_1 
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(\delay_element_reg[3]_i_2_n_4 ),
        .O(prod_rounded_clamped_1[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \delay_element[3]_i_3 
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(\delay_element[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[4]_i_1 
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(\delay_element_reg[7]_i_2_n_7 ),
        .O(prod_rounded_clamped_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[5]_i_1 
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(\delay_element_reg[7]_i_2_n_6 ),
        .O(prod_rounded_clamped_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[6]_i_1 
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(\delay_element_reg[7]_i_2_n_5 ),
        .O(prod_rounded_clamped_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[7]_i_1 
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(\delay_element_reg[7]_i_2_n_4 ),
        .O(prod_rounded_clamped_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[8]_i_1 
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(\delay_element_reg[11]_i_2_n_7 ),
        .O(prod_rounded_clamped_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \delay_element[9]_i_1 
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(\delay_element_reg[11]_i_2_n_6 ),
        .O(prod_rounded_clamped_1[9]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(prod_rounded_clamped_1[0]),
        .Q(delay_element[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(prod_rounded_clamped_1[10]),
        .Q(delay_element[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(prod_rounded_clamped_1[11]),
        .Q(delay_element[11]),
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
        .D(prod_rounded_clamped_1[12]),
        .Q(delay_element[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(prod_rounded_clamped_1[13]),
        .Q(delay_element[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(prod_rounded_clamped_1[14]),
        .Q(delay_element[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(prod_rounded_clamped_1[15]),
        .Q(delay_element[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(prod_rounded_clamped_1[1]),
        .Q(delay_element[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(prod_rounded_clamped_1[2]),
        .Q(delay_element[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(prod_rounded_clamped_1[3]),
        .Q(delay_element[3]),
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
        .D(prod_rounded_clamped_1[4]),
        .Q(delay_element[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(prod_rounded_clamped_1[5]),
        .Q(delay_element[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(prod_rounded_clamped_1[6]),
        .Q(delay_element[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(prod_rounded_clamped_1[7]),
        .Q(delay_element[7]),
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
        .D(prod_rounded_clamped_1[8]),
        .Q(delay_element[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(prod_rounded_clamped_1[9]),
        .Q(delay_element[9]),
        .R(i_rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_0
       (.A({prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_0_P_UNCONNECTED[47:28],prod_0__0,prod_0_n_99,prod_0_n_100,prod_0_n_101,prod_0_n_102,prod_0_n_103,prod_0_n_104,prod_0_n_105}),
        .PATTERNBDETECT(NLW_prod_0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_1
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_1_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_1_n_99,prod_1_n_100,prod_1_n_101,prod_1_n_102,prod_1_n_103,prod_1_n_104,prod_1_n_105}),
        .PATTERNBDETECT(NLW_prod_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_1_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_01_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED[3],prod_rounded_clamped_01,prod_rounded_clamped_01_carry_n_2,prod_rounded_clamped_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_01_carry_i_1__7_n_0,prod_rounded_clamped_01_carry_i_2__7_n_0,prod_rounded_clamped_01_carry_i_3__7_n_4}),
        .O(NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_01_carry_i_4__7_n_0,prod_rounded_clamped_01_carry_i_5__7_n_0,prod_rounded_clamped_01_carry_i_6__7_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_1__7
       (.I0(prod_rounded_clamped_02_carry_i_7__7_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__7_n_4),
        .O(prod_rounded_clamped_01_carry_i_1__7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_01_carry_i_2__7
       (.I0(prod_rounded_clamped_02_carry_i_7__7_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__7_n_6),
        .O(prod_rounded_clamped_01_carry_i_2__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_3__7
       (.CI(prod_rounded_clamped_01_carry_i_7__7_n_0),
        .CO({prod_rounded_clamped_01_carry_i_3__7_n_0,prod_rounded_clamped_01_carry_i_3__7_n_1,prod_rounded_clamped_01_carry_i_3__7_n_2,prod_rounded_clamped_01_carry_i_3__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_3__7_n_4,prod_rounded_clamped_01_carry_i_3__7_n_5,prod_rounded_clamped_01_carry_i_3__7_n_6,prod_rounded_clamped_01_carry_i_3__7_n_7}),
        .S(prod_0__0[23:20]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_4__7
       (.I0(prod_rounded_clamped_02_carry_i_7__7_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__7_n_4),
        .O(prod_rounded_clamped_01_carry_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_5__7
       (.I0(prod_rounded_clamped_02_carry_i_7__7_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__7_n_6),
        .O(prod_rounded_clamped_01_carry_i_5__7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_6__7
       (.I0(prod_rounded_clamped_01_carry_i_3__7_n_5),
        .I1(prod_rounded_clamped_01_carry_i_3__7_n_4),
        .O(prod_rounded_clamped_01_carry_i_6__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_7__7
       (.CI(add_0_carry__0_i_5__7_n_0),
        .CO({prod_rounded_clamped_01_carry_i_7__7_n_0,prod_rounded_clamped_01_carry_i_7__7_n_1,prod_rounded_clamped_01_carry_i_7__7_n_2,prod_rounded_clamped_01_carry_i_7__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_7__7_n_4,prod_rounded_clamped_01_carry_i_7__7_n_5,prod_rounded_clamped_01_carry_i_7__7_n_6,prod_rounded_clamped_01_carry_i_7__7_n_7}),
        .S(prod_0__0[19:16]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_02_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED[3],prod_rounded_clamped_02,prod_rounded_clamped_02_carry_n_2,prod_rounded_clamped_02_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_02_carry_i_1__7_n_0,prod_rounded_clamped_02_carry_i_2__7_n_0,prod_rounded_clamped_02_carry_i_3__7_n_0}),
        .O(NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_02_carry_i_4__7_n_0,prod_rounded_clamped_02_carry_i_5__7_n_0,prod_rounded_clamped_02_carry_i_6__7_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_1__7
       (.I0(prod_rounded_clamped_02_carry_i_7__7_n_4),
        .I1(prod_rounded_clamped_02_carry_i_7__7_n_5),
        .O(prod_rounded_clamped_02_carry_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_02_carry_i_2__7
       (.I0(prod_rounded_clamped_02_carry_i_7__7_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__7_n_6),
        .O(prod_rounded_clamped_02_carry_i_2__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_02_carry_i_3__7
       (.I0(prod_rounded_clamped_01_carry_i_3__7_n_4),
        .O(prod_rounded_clamped_02_carry_i_3__7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_4__7
       (.I0(prod_rounded_clamped_02_carry_i_7__7_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__7_n_4),
        .O(prod_rounded_clamped_02_carry_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_5__7
       (.I0(prod_rounded_clamped_02_carry_i_7__7_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__7_n_6),
        .O(prod_rounded_clamped_02_carry_i_5__7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_6__7
       (.I0(prod_rounded_clamped_01_carry_i_3__7_n_4),
        .I1(prod_rounded_clamped_01_carry_i_3__7_n_5),
        .O(prod_rounded_clamped_02_carry_i_6__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_02_carry_i_7__7
       (.CI(prod_rounded_clamped_01_carry_i_3__7_n_0),
        .CO({NLW_prod_rounded_clamped_02_carry_i_7__7_CO_UNCONNECTED[3],prod_rounded_clamped_02_carry_i_7__7_n_1,prod_rounded_clamped_02_carry_i_7__7_n_2,prod_rounded_clamped_02_carry_i_7__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_02_carry_i_7__7_n_4,prod_rounded_clamped_02_carry_i_7__7_n_5,prod_rounded_clamped_02_carry_i_7__7_n_6,prod_rounded_clamped_02_carry_i_7__7_n_7}),
        .S(prod_0__0[27:24]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_11_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED[3],prod_rounded_clamped_11,prod_rounded_clamped_11_carry_n_2,prod_rounded_clamped_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_11_carry_i_1_n_0,prod_rounded_clamped_11_carry_i_2_n_0,prod_rounded_clamped_11_carry_i_3_n_4}),
        .O(NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_11_carry_i_4_n_0,prod_rounded_clamped_11_carry_i_5_n_0,prod_rounded_clamped_11_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_1
       (.I0(prod_rounded_clamped_12_carry_i_7_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7_n_4),
        .O(prod_rounded_clamped_11_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_11_carry_i_2
       (.I0(prod_rounded_clamped_12_carry_i_7_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7_n_6),
        .O(prod_rounded_clamped_11_carry_i_2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_3
       (.CI(\delay_element_reg[11]_i_2_n_0 ),
        .CO({prod_rounded_clamped_11_carry_i_3_n_0,prod_rounded_clamped_11_carry_i_3_n_1,prod_rounded_clamped_11_carry_i_3_n_2,prod_rounded_clamped_11_carry_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_3_n_4,prod_rounded_clamped_11_carry_i_3_n_5,prod_rounded_clamped_11_carry_i_3_n_6,prod_rounded_clamped_11_carry_i_3_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_4
       (.I0(prod_rounded_clamped_12_carry_i_7_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7_n_4),
        .O(prod_rounded_clamped_11_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_5
       (.I0(prod_rounded_clamped_12_carry_i_7_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7_n_6),
        .O(prod_rounded_clamped_11_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_6
       (.I0(prod_rounded_clamped_11_carry_i_3_n_5),
        .I1(prod_rounded_clamped_11_carry_i_3_n_4),
        .O(prod_rounded_clamped_11_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_12_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED[3],prod_rounded_clamped_12,prod_rounded_clamped_12_carry_n_2,prod_rounded_clamped_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_12_carry_i_1_n_0,prod_rounded_clamped_12_carry_i_2_n_0,prod_rounded_clamped_12_carry_i_3_n_0}),
        .O(NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_12_carry_i_4_n_0,prod_rounded_clamped_12_carry_i_5_n_0,prod_rounded_clamped_12_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_1
       (.I0(prod_rounded_clamped_12_carry_i_7_n_4),
        .I1(prod_rounded_clamped_12_carry_i_7_n_5),
        .O(prod_rounded_clamped_12_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_12_carry_i_2
       (.I0(prod_rounded_clamped_12_carry_i_7_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7_n_6),
        .O(prod_rounded_clamped_12_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_12_carry_i_3
       (.I0(prod_rounded_clamped_11_carry_i_3_n_4),
        .O(prod_rounded_clamped_12_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_4
       (.I0(prod_rounded_clamped_12_carry_i_7_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7_n_4),
        .O(prod_rounded_clamped_12_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_5
       (.I0(prod_rounded_clamped_12_carry_i_7_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7_n_6),
        .O(prod_rounded_clamped_12_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_6
       (.I0(prod_rounded_clamped_11_carry_i_3_n_4),
        .I1(prod_rounded_clamped_11_carry_i_3_n_5),
        .O(prod_rounded_clamped_12_carry_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_12_carry_i_7
       (.CI(prod_rounded_clamped_11_carry_i_3_n_0),
        .CO({NLW_prod_rounded_clamped_12_carry_i_7_CO_UNCONNECTED[3],prod_rounded_clamped_12_carry_i_7_n_1,prod_rounded_clamped_12_carry_i_7_n_2,prod_rounded_clamped_12_carry_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_12_carry_i_7_n_4,prod_rounded_clamped_12_carry_i_7_n_5,prod_rounded_clamped_12_carry_i_7_n_6,prod_rounded_clamped_12_carry_i_7_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock_parallel" *) 
module FIR_subblock_parallel_0
   (\interconnet[10] ,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    prod_0_0,
    \interconnet[9] );
  output [15:0]\interconnet[10] ;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [13:0]prod_0_0;
  input [15:0]\interconnet[9] ;

  wire [13:0]A;
  wire add_0_carry__0_i_1__8_n_0;
  wire add_0_carry__0_i_2__8_n_0;
  wire add_0_carry__0_i_3__8_n_0;
  wire add_0_carry__0_i_4__8_n_0;
  wire add_0_carry__0_i_5__8_n_0;
  wire add_0_carry__0_i_5__8_n_1;
  wire add_0_carry__0_i_5__8_n_2;
  wire add_0_carry__0_i_5__8_n_3;
  wire add_0_carry__0_i_5__8_n_4;
  wire add_0_carry__0_i_5__8_n_5;
  wire add_0_carry__0_i_5__8_n_6;
  wire add_0_carry__0_i_5__8_n_7;
  wire add_0_carry__0_n_0;
  wire add_0_carry__0_n_1;
  wire add_0_carry__0_n_2;
  wire add_0_carry__0_n_3;
  wire add_0_carry__1_i_1__8_n_0;
  wire add_0_carry__1_i_2__8_n_0;
  wire add_0_carry__1_i_3__8_n_0;
  wire add_0_carry__1_i_4__8_n_0;
  wire add_0_carry__1_n_0;
  wire add_0_carry__1_n_1;
  wire add_0_carry__1_n_2;
  wire add_0_carry__1_n_3;
  wire add_0_carry__2_i_1__8_n_0;
  wire add_0_carry__2_i_2__8_n_0;
  wire add_0_carry__2_i_3__8_n_0;
  wire add_0_carry__2_i_4__8_n_0;
  wire add_0_carry__2_n_1;
  wire add_0_carry__2_n_2;
  wire add_0_carry__2_n_3;
  wire add_0_carry_i_1__8_n_0;
  wire add_0_carry_i_2__8_n_0;
  wire add_0_carry_i_3__8_n_0;
  wire add_0_carry_i_4__8_n_0;
  wire add_0_carry_i_5__8_n_0;
  wire add_0_carry_i_5__8_n_1;
  wire add_0_carry_i_5__8_n_2;
  wire add_0_carry_i_5__8_n_3;
  wire add_0_carry_i_5__8_n_4;
  wire add_0_carry_i_5__8_n_5;
  wire add_0_carry_i_5__8_n_6;
  wire add_0_carry_i_5__8_n_7;
  wire add_0_carry_i_6__8_n_0;
  wire add_0_carry_n_0;
  wire add_0_carry_n_1;
  wire add_0_carry_n_2;
  wire add_0_carry_n_3;
  wire [15:0]add_1;
  wire add_1_carry__0_i_1__7_n_0;
  wire add_1_carry__0_i_2__7_n_0;
  wire add_1_carry__0_i_3__7_n_0;
  wire add_1_carry__0_i_4__7_n_0;
  wire add_1_carry__0_i_5__7_n_0;
  wire add_1_carry__0_i_5__7_n_1;
  wire add_1_carry__0_i_5__7_n_2;
  wire add_1_carry__0_i_5__7_n_3;
  wire add_1_carry__0_i_5__7_n_4;
  wire add_1_carry__0_i_5__7_n_5;
  wire add_1_carry__0_i_5__7_n_6;
  wire add_1_carry__0_i_5__7_n_7;
  wire add_1_carry__0_n_0;
  wire add_1_carry__0_n_1;
  wire add_1_carry__0_n_2;
  wire add_1_carry__0_n_3;
  wire add_1_carry__1_i_1__7_n_0;
  wire add_1_carry__1_i_2__7_n_0;
  wire add_1_carry__1_i_3__7_n_0;
  wire add_1_carry__1_i_4__7_n_0;
  wire add_1_carry__1_n_0;
  wire add_1_carry__1_n_1;
  wire add_1_carry__1_n_2;
  wire add_1_carry__1_n_3;
  wire add_1_carry__2_i_1__7_n_0;
  wire add_1_carry__2_i_2__7_n_0;
  wire add_1_carry__2_i_3__7_n_0;
  wire add_1_carry__2_i_4__7_n_0;
  wire add_1_carry__2_n_1;
  wire add_1_carry__2_n_2;
  wire add_1_carry__2_n_3;
  wire add_1_carry_i_1__7_n_0;
  wire add_1_carry_i_2__7_n_0;
  wire add_1_carry_i_3__7_n_0;
  wire add_1_carry_i_4__7_n_0;
  wire add_1_carry_i_5__7_n_0;
  wire add_1_carry_i_5__7_n_1;
  wire add_1_carry_i_5__7_n_2;
  wire add_1_carry_i_5__7_n_3;
  wire add_1_carry_i_5__7_n_4;
  wire add_1_carry_i_5__7_n_5;
  wire add_1_carry_i_5__7_n_6;
  wire add_1_carry_i_5__7_n_7;
  wire add_1_carry_i_6__7_n_0;
  wire add_1_carry_n_0;
  wire add_1_carry_n_1;
  wire add_1_carry_n_2;
  wire add_1_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]delay_element;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[10] ;
  wire [15:0]\interconnet[9] ;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [13:0]prod_0_0;
  wire [27:7]prod_0__0;
  wire prod_0_n_100;
  wire prod_0_n_101;
  wire prod_0_n_102;
  wire prod_0_n_103;
  wire prod_0_n_104;
  wire prod_0_n_105;
  wire prod_0_n_99;
  wire prod_1_n_100;
  wire prod_1_n_101;
  wire prod_1_n_102;
  wire prod_1_n_103;
  wire prod_1_n_104;
  wire prod_1_n_105;
  wire prod_1_n_99;
  wire prod_rounded_clamped_01;
  wire prod_rounded_clamped_01_carry_i_1__8_n_0;
  wire prod_rounded_clamped_01_carry_i_2__8_n_0;
  wire prod_rounded_clamped_01_carry_i_3__8_n_0;
  wire prod_rounded_clamped_01_carry_i_3__8_n_1;
  wire prod_rounded_clamped_01_carry_i_3__8_n_2;
  wire prod_rounded_clamped_01_carry_i_3__8_n_3;
  wire prod_rounded_clamped_01_carry_i_3__8_n_4;
  wire prod_rounded_clamped_01_carry_i_3__8_n_5;
  wire prod_rounded_clamped_01_carry_i_3__8_n_6;
  wire prod_rounded_clamped_01_carry_i_3__8_n_7;
  wire prod_rounded_clamped_01_carry_i_4__8_n_0;
  wire prod_rounded_clamped_01_carry_i_5__8_n_0;
  wire prod_rounded_clamped_01_carry_i_6__8_n_0;
  wire prod_rounded_clamped_01_carry_i_7__8_n_0;
  wire prod_rounded_clamped_01_carry_i_7__8_n_1;
  wire prod_rounded_clamped_01_carry_i_7__8_n_2;
  wire prod_rounded_clamped_01_carry_i_7__8_n_3;
  wire prod_rounded_clamped_01_carry_i_7__8_n_4;
  wire prod_rounded_clamped_01_carry_i_7__8_n_5;
  wire prod_rounded_clamped_01_carry_i_7__8_n_6;
  wire prod_rounded_clamped_01_carry_i_7__8_n_7;
  wire prod_rounded_clamped_01_carry_n_2;
  wire prod_rounded_clamped_01_carry_n_3;
  wire prod_rounded_clamped_02;
  wire prod_rounded_clamped_02_carry_i_1__8_n_0;
  wire prod_rounded_clamped_02_carry_i_2__8_n_0;
  wire prod_rounded_clamped_02_carry_i_3__8_n_0;
  wire prod_rounded_clamped_02_carry_i_4__8_n_0;
  wire prod_rounded_clamped_02_carry_i_5__8_n_0;
  wire prod_rounded_clamped_02_carry_i_6__8_n_0;
  wire prod_rounded_clamped_02_carry_i_7__8_n_1;
  wire prod_rounded_clamped_02_carry_i_7__8_n_2;
  wire prod_rounded_clamped_02_carry_i_7__8_n_3;
  wire prod_rounded_clamped_02_carry_i_7__8_n_4;
  wire prod_rounded_clamped_02_carry_i_7__8_n_5;
  wire prod_rounded_clamped_02_carry_i_7__8_n_6;
  wire prod_rounded_clamped_02_carry_i_7__8_n_7;
  wire prod_rounded_clamped_02_carry_n_2;
  wire prod_rounded_clamped_02_carry_n_3;
  wire prod_rounded_clamped_11;
  wire prod_rounded_clamped_11_carry_i_1__8_n_0;
  wire prod_rounded_clamped_11_carry_i_2__8_n_0;
  wire prod_rounded_clamped_11_carry_i_3__8_n_0;
  wire prod_rounded_clamped_11_carry_i_3__8_n_1;
  wire prod_rounded_clamped_11_carry_i_3__8_n_2;
  wire prod_rounded_clamped_11_carry_i_3__8_n_3;
  wire prod_rounded_clamped_11_carry_i_3__8_n_4;
  wire prod_rounded_clamped_11_carry_i_3__8_n_5;
  wire prod_rounded_clamped_11_carry_i_3__8_n_6;
  wire prod_rounded_clamped_11_carry_i_3__8_n_7;
  wire prod_rounded_clamped_11_carry_i_4__8_n_0;
  wire prod_rounded_clamped_11_carry_i_5__8_n_0;
  wire prod_rounded_clamped_11_carry_i_6__8_n_0;
  wire prod_rounded_clamped_11_carry_i_7__7_n_0;
  wire prod_rounded_clamped_11_carry_i_7__7_n_1;
  wire prod_rounded_clamped_11_carry_i_7__7_n_2;
  wire prod_rounded_clamped_11_carry_i_7__7_n_3;
  wire prod_rounded_clamped_11_carry_i_7__7_n_4;
  wire prod_rounded_clamped_11_carry_i_7__7_n_5;
  wire prod_rounded_clamped_11_carry_i_7__7_n_6;
  wire prod_rounded_clamped_11_carry_i_7__7_n_7;
  wire prod_rounded_clamped_11_carry_n_2;
  wire prod_rounded_clamped_11_carry_n_3;
  wire prod_rounded_clamped_12;
  wire prod_rounded_clamped_12_carry_i_1__8_n_0;
  wire prod_rounded_clamped_12_carry_i_2__8_n_0;
  wire prod_rounded_clamped_12_carry_i_3__8_n_0;
  wire prod_rounded_clamped_12_carry_i_4__8_n_0;
  wire prod_rounded_clamped_12_carry_i_5__8_n_0;
  wire prod_rounded_clamped_12_carry_i_6__8_n_0;
  wire prod_rounded_clamped_12_carry_i_7__8_n_1;
  wire prod_rounded_clamped_12_carry_i_7__8_n_2;
  wire prod_rounded_clamped_12_carry_i_7__8_n_3;
  wire prod_rounded_clamped_12_carry_i_7__8_n_4;
  wire prod_rounded_clamped_12_carry_i_7__8_n_5;
  wire prod_rounded_clamped_12_carry_i_7__8_n_6;
  wire prod_rounded_clamped_12_carry_i_7__8_n_7;
  wire prod_rounded_clamped_12_carry_n_2;
  wire prod_rounded_clamped_12_carry_n_3;
  wire [3:3]NLW_add_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_1_carry__2_CO_UNCONNECTED;
  wire NLW_prod_0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_0_OVERFLOW_UNCONNECTED;
  wire NLW_prod_0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_0_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_0_P_UNCONNECTED;
  wire [47:0]NLW_prod_0_PCOUT_UNCONNECTED;
  wire NLW_prod_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_1_OVERFLOW_UNCONNECTED;
  wire NLW_prod_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_1_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_1_P_UNCONNECTED;
  wire [47:0]NLW_prod_1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_i_7__8_CO_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_i_7__8_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry
       (.CI(1'b0),
        .CO({add_0_carry_n_0,add_0_carry_n_1,add_0_carry_n_2,add_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[3:0]),
        .O(\interconnet[10] [3:0]),
        .S({add_0_carry_i_1__8_n_0,add_0_carry_i_2__8_n_0,add_0_carry_i_3__8_n_0,add_0_carry_i_4__8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0
       (.CI(add_0_carry_n_0),
        .CO({add_0_carry__0_n_0,add_0_carry__0_n_1,add_0_carry__0_n_2,add_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[7:4]),
        .O(\interconnet[10] [7:4]),
        .S({add_0_carry__0_i_1__8_n_0,add_0_carry__0_i_2__8_n_0,add_0_carry__0_i_3__8_n_0,add_0_carry__0_i_4__8_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_1__8
       (.I0(add_0_carry__0_i_5__8_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[7]),
        .O(add_0_carry__0_i_1__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_2__8
       (.I0(add_0_carry__0_i_5__8_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[6]),
        .O(add_0_carry__0_i_2__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_3__8
       (.I0(add_0_carry__0_i_5__8_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[5]),
        .O(add_0_carry__0_i_3__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_4__8
       (.I0(add_0_carry__0_i_5__8_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[4]),
        .O(add_0_carry__0_i_4__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0_i_5__8
       (.CI(add_0_carry_i_5__8_n_0),
        .CO({add_0_carry__0_i_5__8_n_0,add_0_carry__0_i_5__8_n_1,add_0_carry__0_i_5__8_n_2,add_0_carry__0_i_5__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_0_carry__0_i_5__8_n_4,add_0_carry__0_i_5__8_n_5,add_0_carry__0_i_5__8_n_6,add_0_carry__0_i_5__8_n_7}),
        .S(prod_0__0[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__1
       (.CI(add_0_carry__0_n_0),
        .CO({add_0_carry__1_n_0,add_0_carry__1_n_1,add_0_carry__1_n_2,add_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[11:8]),
        .O(\interconnet[10] [11:8]),
        .S({add_0_carry__1_i_1__8_n_0,add_0_carry__1_i_2__8_n_0,add_0_carry__1_i_3__8_n_0,add_0_carry__1_i_4__8_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_1__8
       (.I0(prod_rounded_clamped_01_carry_i_7__8_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[11]),
        .O(add_0_carry__1_i_1__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_2__8
       (.I0(prod_rounded_clamped_01_carry_i_7__8_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[10]),
        .O(add_0_carry__1_i_2__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_3__8
       (.I0(prod_rounded_clamped_01_carry_i_7__8_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[9]),
        .O(add_0_carry__1_i_3__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_4__8
       (.I0(prod_rounded_clamped_01_carry_i_7__8_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[8]),
        .O(add_0_carry__1_i_4__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__2
       (.CI(add_0_carry__1_n_0),
        .CO({NLW_add_0_carry__2_CO_UNCONNECTED[3],add_0_carry__2_n_1,add_0_carry__2_n_2,add_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_element[14:12]}),
        .O(\interconnet[10] [15:12]),
        .S({add_0_carry__2_i_1__8_n_0,add_0_carry__2_i_2__8_n_0,add_0_carry__2_i_3__8_n_0,add_0_carry__2_i_4__8_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_0_carry__2_i_1__8
       (.I0(prod_rounded_clamped_01),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01_carry_i_3__8_n_4),
        .I3(delay_element[15]),
        .O(add_0_carry__2_i_1__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_2__8
       (.I0(prod_rounded_clamped_01_carry_i_3__8_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[14]),
        .O(add_0_carry__2_i_2__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_3__8
       (.I0(prod_rounded_clamped_01_carry_i_3__8_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[13]),
        .O(add_0_carry__2_i_3__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_4__8
       (.I0(prod_rounded_clamped_01_carry_i_3__8_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[12]),
        .O(add_0_carry__2_i_4__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_1__8
       (.I0(add_0_carry_i_5__8_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[3]),
        .O(add_0_carry_i_1__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_2__8
       (.I0(add_0_carry_i_5__8_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[2]),
        .O(add_0_carry_i_2__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_3__8
       (.I0(add_0_carry_i_5__8_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[1]),
        .O(add_0_carry_i_3__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_4__8
       (.I0(add_0_carry_i_5__8_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[0]),
        .O(add_0_carry_i_4__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry_i_5__8
       (.CI(1'b0),
        .CO({add_0_carry_i_5__8_n_0,add_0_carry_i_5__8_n_1,add_0_carry_i_5__8_n_2,add_0_carry_i_5__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_0__0[8]}),
        .O({add_0_carry_i_5__8_n_4,add_0_carry_i_5__8_n_5,add_0_carry_i_5__8_n_6,add_0_carry_i_5__8_n_7}),
        .S({prod_0__0[11:9],add_0_carry_i_6__8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_0_carry_i_6__8
       (.I0(prod_0__0[8]),
        .I1(prod_0__0[7]),
        .O(add_0_carry_i_6__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry
       (.CI(1'b0),
        .CO({add_1_carry_n_0,add_1_carry_n_1,add_1_carry_n_2,add_1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[9] [3:0]),
        .O(add_1[3:0]),
        .S({add_1_carry_i_1__7_n_0,add_1_carry_i_2__7_n_0,add_1_carry_i_3__7_n_0,add_1_carry_i_4__7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0
       (.CI(add_1_carry_n_0),
        .CO({add_1_carry__0_n_0,add_1_carry__0_n_1,add_1_carry__0_n_2,add_1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[9] [7:4]),
        .O(add_1[7:4]),
        .S({add_1_carry__0_i_1__7_n_0,add_1_carry__0_i_2__7_n_0,add_1_carry__0_i_3__7_n_0,add_1_carry__0_i_4__7_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_1__7
       (.I0(add_1_carry__0_i_5__7_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[9] [7]),
        .O(add_1_carry__0_i_1__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_2__7
       (.I0(add_1_carry__0_i_5__7_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[9] [6]),
        .O(add_1_carry__0_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_3__7
       (.I0(add_1_carry__0_i_5__7_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[9] [5]),
        .O(add_1_carry__0_i_3__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_4__7
       (.I0(add_1_carry__0_i_5__7_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[9] [4]),
        .O(add_1_carry__0_i_4__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0_i_5__7
       (.CI(add_1_carry_i_5__7_n_0),
        .CO({add_1_carry__0_i_5__7_n_0,add_1_carry__0_i_5__7_n_1,add_1_carry__0_i_5__7_n_2,add_1_carry__0_i_5__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_1_carry__0_i_5__7_n_4,add_1_carry__0_i_5__7_n_5,add_1_carry__0_i_5__7_n_6,add_1_carry__0_i_5__7_n_7}),
        .S(p_1_in[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__1
       (.CI(add_1_carry__0_n_0),
        .CO({add_1_carry__1_n_0,add_1_carry__1_n_1,add_1_carry__1_n_2,add_1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[9] [11:8]),
        .O(add_1[11:8]),
        .S({add_1_carry__1_i_1__7_n_0,add_1_carry__1_i_2__7_n_0,add_1_carry__1_i_3__7_n_0,add_1_carry__1_i_4__7_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_1__7
       (.I0(prod_rounded_clamped_11_carry_i_7__7_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[9] [11]),
        .O(add_1_carry__1_i_1__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_2__7
       (.I0(prod_rounded_clamped_11_carry_i_7__7_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[9] [10]),
        .O(add_1_carry__1_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_3__7
       (.I0(prod_rounded_clamped_11_carry_i_7__7_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[9] [9]),
        .O(add_1_carry__1_i_3__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_4__7
       (.I0(prod_rounded_clamped_11_carry_i_7__7_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[9] [8]),
        .O(add_1_carry__1_i_4__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__2
       (.CI(add_1_carry__1_n_0),
        .CO({NLW_add_1_carry__2_CO_UNCONNECTED[3],add_1_carry__2_n_1,add_1_carry__2_n_2,add_1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\interconnet[9] [14:12]}),
        .O(add_1[15:12]),
        .S({add_1_carry__2_i_1__7_n_0,add_1_carry__2_i_2__7_n_0,add_1_carry__2_i_3__7_n_0,add_1_carry__2_i_4__7_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_1_carry__2_i_1__7
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__8_n_4),
        .I3(\interconnet[9] [15]),
        .O(add_1_carry__2_i_1__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_2__7
       (.I0(prod_rounded_clamped_11_carry_i_3__8_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[9] [14]),
        .O(add_1_carry__2_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_3__7
       (.I0(prod_rounded_clamped_11_carry_i_3__8_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[9] [13]),
        .O(add_1_carry__2_i_3__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_4__7
       (.I0(prod_rounded_clamped_11_carry_i_3__8_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[9] [12]),
        .O(add_1_carry__2_i_4__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_1__7
       (.I0(add_1_carry_i_5__7_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[9] [3]),
        .O(add_1_carry_i_1__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_2__7
       (.I0(add_1_carry_i_5__7_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[9] [2]),
        .O(add_1_carry_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_3__7
       (.I0(add_1_carry_i_5__7_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[9] [1]),
        .O(add_1_carry_i_3__7_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_4__7
       (.I0(add_1_carry_i_5__7_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[9] [0]),
        .O(add_1_carry_i_4__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry_i_5__7
       (.CI(1'b0),
        .CO({add_1_carry_i_5__7_n_0,add_1_carry_i_5__7_n_1,add_1_carry_i_5__7_n_2,add_1_carry_i_5__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_1_carry_i_5__7_n_4,add_1_carry_i_5__7_n_5,add_1_carry_i_5__7_n_6,add_1_carry_i_5__7_n_7}),
        .S({p_1_in[3:1],add_1_carry_i_6__7_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_1_carry_i_6__7
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_1_carry_i_6__7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[0]),
        .Q(delay_element[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[10]),
        .Q(delay_element[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[11]),
        .Q(delay_element[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[12]),
        .Q(delay_element[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[13]),
        .Q(delay_element[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[14]),
        .Q(delay_element[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[15]),
        .Q(delay_element[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[1]),
        .Q(delay_element[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[2]),
        .Q(delay_element[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[3]),
        .Q(delay_element[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[4]),
        .Q(delay_element[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[5]),
        .Q(delay_element[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[6]),
        .Q(delay_element[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[7]),
        .Q(delay_element[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[8]),
        .Q(delay_element[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[9]),
        .Q(delay_element[9]),
        .R(i_rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_0
       (.A({prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_0_P_UNCONNECTED[47:28],prod_0__0,prod_0_n_99,prod_0_n_100,prod_0_n_101,prod_0_n_102,prod_0_n_103,prod_0_n_104,prod_0_n_105}),
        .PATTERNBDETECT(NLW_prod_0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_1
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_1_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_1_n_99,prod_1_n_100,prod_1_n_101,prod_1_n_102,prod_1_n_103,prod_1_n_104,prod_1_n_105}),
        .PATTERNBDETECT(NLW_prod_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_1_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_01_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED[3],prod_rounded_clamped_01,prod_rounded_clamped_01_carry_n_2,prod_rounded_clamped_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_01_carry_i_1__8_n_0,prod_rounded_clamped_01_carry_i_2__8_n_0,prod_rounded_clamped_01_carry_i_3__8_n_4}),
        .O(NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_01_carry_i_4__8_n_0,prod_rounded_clamped_01_carry_i_5__8_n_0,prod_rounded_clamped_01_carry_i_6__8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_1__8
       (.I0(prod_rounded_clamped_02_carry_i_7__8_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__8_n_4),
        .O(prod_rounded_clamped_01_carry_i_1__8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_01_carry_i_2__8
       (.I0(prod_rounded_clamped_02_carry_i_7__8_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__8_n_6),
        .O(prod_rounded_clamped_01_carry_i_2__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_3__8
       (.CI(prod_rounded_clamped_01_carry_i_7__8_n_0),
        .CO({prod_rounded_clamped_01_carry_i_3__8_n_0,prod_rounded_clamped_01_carry_i_3__8_n_1,prod_rounded_clamped_01_carry_i_3__8_n_2,prod_rounded_clamped_01_carry_i_3__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_3__8_n_4,prod_rounded_clamped_01_carry_i_3__8_n_5,prod_rounded_clamped_01_carry_i_3__8_n_6,prod_rounded_clamped_01_carry_i_3__8_n_7}),
        .S(prod_0__0[23:20]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_4__8
       (.I0(prod_rounded_clamped_02_carry_i_7__8_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__8_n_4),
        .O(prod_rounded_clamped_01_carry_i_4__8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_5__8
       (.I0(prod_rounded_clamped_02_carry_i_7__8_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__8_n_6),
        .O(prod_rounded_clamped_01_carry_i_5__8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_6__8
       (.I0(prod_rounded_clamped_01_carry_i_3__8_n_5),
        .I1(prod_rounded_clamped_01_carry_i_3__8_n_4),
        .O(prod_rounded_clamped_01_carry_i_6__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_7__8
       (.CI(add_0_carry__0_i_5__8_n_0),
        .CO({prod_rounded_clamped_01_carry_i_7__8_n_0,prod_rounded_clamped_01_carry_i_7__8_n_1,prod_rounded_clamped_01_carry_i_7__8_n_2,prod_rounded_clamped_01_carry_i_7__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_7__8_n_4,prod_rounded_clamped_01_carry_i_7__8_n_5,prod_rounded_clamped_01_carry_i_7__8_n_6,prod_rounded_clamped_01_carry_i_7__8_n_7}),
        .S(prod_0__0[19:16]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_02_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED[3],prod_rounded_clamped_02,prod_rounded_clamped_02_carry_n_2,prod_rounded_clamped_02_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_02_carry_i_1__8_n_0,prod_rounded_clamped_02_carry_i_2__8_n_0,prod_rounded_clamped_02_carry_i_3__8_n_0}),
        .O(NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_02_carry_i_4__8_n_0,prod_rounded_clamped_02_carry_i_5__8_n_0,prod_rounded_clamped_02_carry_i_6__8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_1__8
       (.I0(prod_rounded_clamped_02_carry_i_7__8_n_4),
        .I1(prod_rounded_clamped_02_carry_i_7__8_n_5),
        .O(prod_rounded_clamped_02_carry_i_1__8_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_02_carry_i_2__8
       (.I0(prod_rounded_clamped_02_carry_i_7__8_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__8_n_6),
        .O(prod_rounded_clamped_02_carry_i_2__8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_02_carry_i_3__8
       (.I0(prod_rounded_clamped_01_carry_i_3__8_n_4),
        .O(prod_rounded_clamped_02_carry_i_3__8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_4__8
       (.I0(prod_rounded_clamped_02_carry_i_7__8_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__8_n_4),
        .O(prod_rounded_clamped_02_carry_i_4__8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_5__8
       (.I0(prod_rounded_clamped_02_carry_i_7__8_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__8_n_6),
        .O(prod_rounded_clamped_02_carry_i_5__8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_6__8
       (.I0(prod_rounded_clamped_01_carry_i_3__8_n_4),
        .I1(prod_rounded_clamped_01_carry_i_3__8_n_5),
        .O(prod_rounded_clamped_02_carry_i_6__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_02_carry_i_7__8
       (.CI(prod_rounded_clamped_01_carry_i_3__8_n_0),
        .CO({NLW_prod_rounded_clamped_02_carry_i_7__8_CO_UNCONNECTED[3],prod_rounded_clamped_02_carry_i_7__8_n_1,prod_rounded_clamped_02_carry_i_7__8_n_2,prod_rounded_clamped_02_carry_i_7__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_02_carry_i_7__8_n_4,prod_rounded_clamped_02_carry_i_7__8_n_5,prod_rounded_clamped_02_carry_i_7__8_n_6,prod_rounded_clamped_02_carry_i_7__8_n_7}),
        .S(prod_0__0[27:24]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_11_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED[3],prod_rounded_clamped_11,prod_rounded_clamped_11_carry_n_2,prod_rounded_clamped_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_11_carry_i_1__8_n_0,prod_rounded_clamped_11_carry_i_2__8_n_0,prod_rounded_clamped_11_carry_i_3__8_n_4}),
        .O(NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_11_carry_i_4__8_n_0,prod_rounded_clamped_11_carry_i_5__8_n_0,prod_rounded_clamped_11_carry_i_6__8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_1__8
       (.I0(prod_rounded_clamped_12_carry_i_7__8_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__8_n_4),
        .O(prod_rounded_clamped_11_carry_i_1__8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_11_carry_i_2__8
       (.I0(prod_rounded_clamped_12_carry_i_7__8_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__8_n_6),
        .O(prod_rounded_clamped_11_carry_i_2__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_3__8
       (.CI(prod_rounded_clamped_11_carry_i_7__7_n_0),
        .CO({prod_rounded_clamped_11_carry_i_3__8_n_0,prod_rounded_clamped_11_carry_i_3__8_n_1,prod_rounded_clamped_11_carry_i_3__8_n_2,prod_rounded_clamped_11_carry_i_3__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_3__8_n_4,prod_rounded_clamped_11_carry_i_3__8_n_5,prod_rounded_clamped_11_carry_i_3__8_n_6,prod_rounded_clamped_11_carry_i_3__8_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_4__8
       (.I0(prod_rounded_clamped_12_carry_i_7__8_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__8_n_4),
        .O(prod_rounded_clamped_11_carry_i_4__8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_5__8
       (.I0(prod_rounded_clamped_12_carry_i_7__8_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__8_n_6),
        .O(prod_rounded_clamped_11_carry_i_5__8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_6__8
       (.I0(prod_rounded_clamped_11_carry_i_3__8_n_5),
        .I1(prod_rounded_clamped_11_carry_i_3__8_n_4),
        .O(prod_rounded_clamped_11_carry_i_6__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_7__7
       (.CI(add_1_carry__0_i_5__7_n_0),
        .CO({prod_rounded_clamped_11_carry_i_7__7_n_0,prod_rounded_clamped_11_carry_i_7__7_n_1,prod_rounded_clamped_11_carry_i_7__7_n_2,prod_rounded_clamped_11_carry_i_7__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_7__7_n_4,prod_rounded_clamped_11_carry_i_7__7_n_5,prod_rounded_clamped_11_carry_i_7__7_n_6,prod_rounded_clamped_11_carry_i_7__7_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_12_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED[3],prod_rounded_clamped_12,prod_rounded_clamped_12_carry_n_2,prod_rounded_clamped_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_12_carry_i_1__8_n_0,prod_rounded_clamped_12_carry_i_2__8_n_0,prod_rounded_clamped_12_carry_i_3__8_n_0}),
        .O(NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_12_carry_i_4__8_n_0,prod_rounded_clamped_12_carry_i_5__8_n_0,prod_rounded_clamped_12_carry_i_6__8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_1__8
       (.I0(prod_rounded_clamped_12_carry_i_7__8_n_4),
        .I1(prod_rounded_clamped_12_carry_i_7__8_n_5),
        .O(prod_rounded_clamped_12_carry_i_1__8_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_12_carry_i_2__8
       (.I0(prod_rounded_clamped_12_carry_i_7__8_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__8_n_6),
        .O(prod_rounded_clamped_12_carry_i_2__8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_12_carry_i_3__8
       (.I0(prod_rounded_clamped_11_carry_i_3__8_n_4),
        .O(prod_rounded_clamped_12_carry_i_3__8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_4__8
       (.I0(prod_rounded_clamped_12_carry_i_7__8_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__8_n_4),
        .O(prod_rounded_clamped_12_carry_i_4__8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_5__8
       (.I0(prod_rounded_clamped_12_carry_i_7__8_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__8_n_6),
        .O(prod_rounded_clamped_12_carry_i_5__8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_6__8
       (.I0(prod_rounded_clamped_11_carry_i_3__8_n_4),
        .I1(prod_rounded_clamped_11_carry_i_3__8_n_5),
        .O(prod_rounded_clamped_12_carry_i_6__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_12_carry_i_7__8
       (.CI(prod_rounded_clamped_11_carry_i_3__8_n_0),
        .CO({NLW_prod_rounded_clamped_12_carry_i_7__8_CO_UNCONNECTED[3],prod_rounded_clamped_12_carry_i_7__8_n_1,prod_rounded_clamped_12_carry_i_7__8_n_2,prod_rounded_clamped_12_carry_i_7__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_12_carry_i_7__8_n_4,prod_rounded_clamped_12_carry_i_7__8_n_5,prod_rounded_clamped_12_carry_i_7__8_n_6,prod_rounded_clamped_12_carry_i_7__8_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock_parallel" *) 
module FIR_subblock_parallel_1
   (\interconnet[11] ,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    prod_0_0,
    \interconnet[10] );
  output [15:0]\interconnet[11] ;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [13:0]prod_0_0;
  input [15:0]\interconnet[10] ;

  wire [13:0]A;
  wire add_0_carry__0_i_1__9_n_0;
  wire add_0_carry__0_i_2__9_n_0;
  wire add_0_carry__0_i_3__9_n_0;
  wire add_0_carry__0_i_4__9_n_0;
  wire add_0_carry__0_i_5__9_n_0;
  wire add_0_carry__0_i_5__9_n_1;
  wire add_0_carry__0_i_5__9_n_2;
  wire add_0_carry__0_i_5__9_n_3;
  wire add_0_carry__0_i_5__9_n_4;
  wire add_0_carry__0_i_5__9_n_5;
  wire add_0_carry__0_i_5__9_n_6;
  wire add_0_carry__0_i_5__9_n_7;
  wire add_0_carry__0_n_0;
  wire add_0_carry__0_n_1;
  wire add_0_carry__0_n_2;
  wire add_0_carry__0_n_3;
  wire add_0_carry__1_i_1__9_n_0;
  wire add_0_carry__1_i_2__9_n_0;
  wire add_0_carry__1_i_3__9_n_0;
  wire add_0_carry__1_i_4__9_n_0;
  wire add_0_carry__1_n_0;
  wire add_0_carry__1_n_1;
  wire add_0_carry__1_n_2;
  wire add_0_carry__1_n_3;
  wire add_0_carry__2_i_1__9_n_0;
  wire add_0_carry__2_i_2__9_n_0;
  wire add_0_carry__2_i_3__9_n_0;
  wire add_0_carry__2_i_4__9_n_0;
  wire add_0_carry__2_n_1;
  wire add_0_carry__2_n_2;
  wire add_0_carry__2_n_3;
  wire add_0_carry_i_1__9_n_0;
  wire add_0_carry_i_2__9_n_0;
  wire add_0_carry_i_3__9_n_0;
  wire add_0_carry_i_4__9_n_0;
  wire add_0_carry_i_5__9_n_0;
  wire add_0_carry_i_5__9_n_1;
  wire add_0_carry_i_5__9_n_2;
  wire add_0_carry_i_5__9_n_3;
  wire add_0_carry_i_5__9_n_4;
  wire add_0_carry_i_5__9_n_5;
  wire add_0_carry_i_5__9_n_6;
  wire add_0_carry_i_5__9_n_7;
  wire add_0_carry_i_6__9_n_0;
  wire add_0_carry_n_0;
  wire add_0_carry_n_1;
  wire add_0_carry_n_2;
  wire add_0_carry_n_3;
  wire [15:0]add_1;
  wire add_1_carry__0_i_1__8_n_0;
  wire add_1_carry__0_i_2__8_n_0;
  wire add_1_carry__0_i_3__8_n_0;
  wire add_1_carry__0_i_4__8_n_0;
  wire add_1_carry__0_i_5__8_n_0;
  wire add_1_carry__0_i_5__8_n_1;
  wire add_1_carry__0_i_5__8_n_2;
  wire add_1_carry__0_i_5__8_n_3;
  wire add_1_carry__0_i_5__8_n_4;
  wire add_1_carry__0_i_5__8_n_5;
  wire add_1_carry__0_i_5__8_n_6;
  wire add_1_carry__0_i_5__8_n_7;
  wire add_1_carry__0_n_0;
  wire add_1_carry__0_n_1;
  wire add_1_carry__0_n_2;
  wire add_1_carry__0_n_3;
  wire add_1_carry__1_i_1__8_n_0;
  wire add_1_carry__1_i_2__8_n_0;
  wire add_1_carry__1_i_3__8_n_0;
  wire add_1_carry__1_i_4__8_n_0;
  wire add_1_carry__1_n_0;
  wire add_1_carry__1_n_1;
  wire add_1_carry__1_n_2;
  wire add_1_carry__1_n_3;
  wire add_1_carry__2_i_1__8_n_0;
  wire add_1_carry__2_i_2__8_n_0;
  wire add_1_carry__2_i_3__8_n_0;
  wire add_1_carry__2_i_4__8_n_0;
  wire add_1_carry__2_n_1;
  wire add_1_carry__2_n_2;
  wire add_1_carry__2_n_3;
  wire add_1_carry_i_1__8_n_0;
  wire add_1_carry_i_2__8_n_0;
  wire add_1_carry_i_3__8_n_0;
  wire add_1_carry_i_4__8_n_0;
  wire add_1_carry_i_5__8_n_0;
  wire add_1_carry_i_5__8_n_1;
  wire add_1_carry_i_5__8_n_2;
  wire add_1_carry_i_5__8_n_3;
  wire add_1_carry_i_5__8_n_4;
  wire add_1_carry_i_5__8_n_5;
  wire add_1_carry_i_5__8_n_6;
  wire add_1_carry_i_5__8_n_7;
  wire add_1_carry_i_6__8_n_0;
  wire add_1_carry_n_0;
  wire add_1_carry_n_1;
  wire add_1_carry_n_2;
  wire add_1_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]delay_element;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[10] ;
  wire [15:0]\interconnet[11] ;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [13:0]prod_0_0;
  wire [27:7]prod_0__0;
  wire prod_0_n_100;
  wire prod_0_n_101;
  wire prod_0_n_102;
  wire prod_0_n_103;
  wire prod_0_n_104;
  wire prod_0_n_105;
  wire prod_0_n_99;
  wire prod_1_n_100;
  wire prod_1_n_101;
  wire prod_1_n_102;
  wire prod_1_n_103;
  wire prod_1_n_104;
  wire prod_1_n_105;
  wire prod_1_n_99;
  wire prod_rounded_clamped_01;
  wire prod_rounded_clamped_01_carry_i_1__9_n_0;
  wire prod_rounded_clamped_01_carry_i_2__9_n_0;
  wire prod_rounded_clamped_01_carry_i_3__9_n_0;
  wire prod_rounded_clamped_01_carry_i_3__9_n_1;
  wire prod_rounded_clamped_01_carry_i_3__9_n_2;
  wire prod_rounded_clamped_01_carry_i_3__9_n_3;
  wire prod_rounded_clamped_01_carry_i_3__9_n_4;
  wire prod_rounded_clamped_01_carry_i_3__9_n_5;
  wire prod_rounded_clamped_01_carry_i_3__9_n_6;
  wire prod_rounded_clamped_01_carry_i_3__9_n_7;
  wire prod_rounded_clamped_01_carry_i_4__9_n_0;
  wire prod_rounded_clamped_01_carry_i_5__9_n_0;
  wire prod_rounded_clamped_01_carry_i_6__9_n_0;
  wire prod_rounded_clamped_01_carry_i_7__9_n_0;
  wire prod_rounded_clamped_01_carry_i_7__9_n_1;
  wire prod_rounded_clamped_01_carry_i_7__9_n_2;
  wire prod_rounded_clamped_01_carry_i_7__9_n_3;
  wire prod_rounded_clamped_01_carry_i_7__9_n_4;
  wire prod_rounded_clamped_01_carry_i_7__9_n_5;
  wire prod_rounded_clamped_01_carry_i_7__9_n_6;
  wire prod_rounded_clamped_01_carry_i_7__9_n_7;
  wire prod_rounded_clamped_01_carry_n_2;
  wire prod_rounded_clamped_01_carry_n_3;
  wire prod_rounded_clamped_02;
  wire prod_rounded_clamped_02_carry_i_1__9_n_0;
  wire prod_rounded_clamped_02_carry_i_2__9_n_0;
  wire prod_rounded_clamped_02_carry_i_3__9_n_0;
  wire prod_rounded_clamped_02_carry_i_4__9_n_0;
  wire prod_rounded_clamped_02_carry_i_5__9_n_0;
  wire prod_rounded_clamped_02_carry_i_6__9_n_0;
  wire prod_rounded_clamped_02_carry_i_7__9_n_1;
  wire prod_rounded_clamped_02_carry_i_7__9_n_2;
  wire prod_rounded_clamped_02_carry_i_7__9_n_3;
  wire prod_rounded_clamped_02_carry_i_7__9_n_4;
  wire prod_rounded_clamped_02_carry_i_7__9_n_5;
  wire prod_rounded_clamped_02_carry_i_7__9_n_6;
  wire prod_rounded_clamped_02_carry_i_7__9_n_7;
  wire prod_rounded_clamped_02_carry_n_2;
  wire prod_rounded_clamped_02_carry_n_3;
  wire prod_rounded_clamped_11;
  wire prod_rounded_clamped_11_carry_i_1__9_n_0;
  wire prod_rounded_clamped_11_carry_i_2__9_n_0;
  wire prod_rounded_clamped_11_carry_i_3__9_n_0;
  wire prod_rounded_clamped_11_carry_i_3__9_n_1;
  wire prod_rounded_clamped_11_carry_i_3__9_n_2;
  wire prod_rounded_clamped_11_carry_i_3__9_n_3;
  wire prod_rounded_clamped_11_carry_i_3__9_n_4;
  wire prod_rounded_clamped_11_carry_i_3__9_n_5;
  wire prod_rounded_clamped_11_carry_i_3__9_n_6;
  wire prod_rounded_clamped_11_carry_i_3__9_n_7;
  wire prod_rounded_clamped_11_carry_i_4__9_n_0;
  wire prod_rounded_clamped_11_carry_i_5__9_n_0;
  wire prod_rounded_clamped_11_carry_i_6__9_n_0;
  wire prod_rounded_clamped_11_carry_i_7__8_n_0;
  wire prod_rounded_clamped_11_carry_i_7__8_n_1;
  wire prod_rounded_clamped_11_carry_i_7__8_n_2;
  wire prod_rounded_clamped_11_carry_i_7__8_n_3;
  wire prod_rounded_clamped_11_carry_i_7__8_n_4;
  wire prod_rounded_clamped_11_carry_i_7__8_n_5;
  wire prod_rounded_clamped_11_carry_i_7__8_n_6;
  wire prod_rounded_clamped_11_carry_i_7__8_n_7;
  wire prod_rounded_clamped_11_carry_n_2;
  wire prod_rounded_clamped_11_carry_n_3;
  wire prod_rounded_clamped_12;
  wire prod_rounded_clamped_12_carry_i_1__9_n_0;
  wire prod_rounded_clamped_12_carry_i_2__9_n_0;
  wire prod_rounded_clamped_12_carry_i_3__9_n_0;
  wire prod_rounded_clamped_12_carry_i_4__9_n_0;
  wire prod_rounded_clamped_12_carry_i_5__9_n_0;
  wire prod_rounded_clamped_12_carry_i_6__9_n_0;
  wire prod_rounded_clamped_12_carry_i_7__9_n_1;
  wire prod_rounded_clamped_12_carry_i_7__9_n_2;
  wire prod_rounded_clamped_12_carry_i_7__9_n_3;
  wire prod_rounded_clamped_12_carry_i_7__9_n_4;
  wire prod_rounded_clamped_12_carry_i_7__9_n_5;
  wire prod_rounded_clamped_12_carry_i_7__9_n_6;
  wire prod_rounded_clamped_12_carry_i_7__9_n_7;
  wire prod_rounded_clamped_12_carry_n_2;
  wire prod_rounded_clamped_12_carry_n_3;
  wire [3:3]NLW_add_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_1_carry__2_CO_UNCONNECTED;
  wire NLW_prod_0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_0_OVERFLOW_UNCONNECTED;
  wire NLW_prod_0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_0_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_0_P_UNCONNECTED;
  wire [47:0]NLW_prod_0_PCOUT_UNCONNECTED;
  wire NLW_prod_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_1_OVERFLOW_UNCONNECTED;
  wire NLW_prod_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_1_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_1_P_UNCONNECTED;
  wire [47:0]NLW_prod_1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_i_7__9_CO_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_i_7__9_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry
       (.CI(1'b0),
        .CO({add_0_carry_n_0,add_0_carry_n_1,add_0_carry_n_2,add_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[3:0]),
        .O(\interconnet[11] [3:0]),
        .S({add_0_carry_i_1__9_n_0,add_0_carry_i_2__9_n_0,add_0_carry_i_3__9_n_0,add_0_carry_i_4__9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0
       (.CI(add_0_carry_n_0),
        .CO({add_0_carry__0_n_0,add_0_carry__0_n_1,add_0_carry__0_n_2,add_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[7:4]),
        .O(\interconnet[11] [7:4]),
        .S({add_0_carry__0_i_1__9_n_0,add_0_carry__0_i_2__9_n_0,add_0_carry__0_i_3__9_n_0,add_0_carry__0_i_4__9_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_1__9
       (.I0(add_0_carry__0_i_5__9_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[7]),
        .O(add_0_carry__0_i_1__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_2__9
       (.I0(add_0_carry__0_i_5__9_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[6]),
        .O(add_0_carry__0_i_2__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_3__9
       (.I0(add_0_carry__0_i_5__9_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[5]),
        .O(add_0_carry__0_i_3__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_4__9
       (.I0(add_0_carry__0_i_5__9_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[4]),
        .O(add_0_carry__0_i_4__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0_i_5__9
       (.CI(add_0_carry_i_5__9_n_0),
        .CO({add_0_carry__0_i_5__9_n_0,add_0_carry__0_i_5__9_n_1,add_0_carry__0_i_5__9_n_2,add_0_carry__0_i_5__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_0_carry__0_i_5__9_n_4,add_0_carry__0_i_5__9_n_5,add_0_carry__0_i_5__9_n_6,add_0_carry__0_i_5__9_n_7}),
        .S(prod_0__0[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__1
       (.CI(add_0_carry__0_n_0),
        .CO({add_0_carry__1_n_0,add_0_carry__1_n_1,add_0_carry__1_n_2,add_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[11:8]),
        .O(\interconnet[11] [11:8]),
        .S({add_0_carry__1_i_1__9_n_0,add_0_carry__1_i_2__9_n_0,add_0_carry__1_i_3__9_n_0,add_0_carry__1_i_4__9_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_1__9
       (.I0(prod_rounded_clamped_01_carry_i_7__9_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[11]),
        .O(add_0_carry__1_i_1__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_2__9
       (.I0(prod_rounded_clamped_01_carry_i_7__9_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[10]),
        .O(add_0_carry__1_i_2__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_3__9
       (.I0(prod_rounded_clamped_01_carry_i_7__9_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[9]),
        .O(add_0_carry__1_i_3__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_4__9
       (.I0(prod_rounded_clamped_01_carry_i_7__9_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[8]),
        .O(add_0_carry__1_i_4__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__2
       (.CI(add_0_carry__1_n_0),
        .CO({NLW_add_0_carry__2_CO_UNCONNECTED[3],add_0_carry__2_n_1,add_0_carry__2_n_2,add_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_element[14:12]}),
        .O(\interconnet[11] [15:12]),
        .S({add_0_carry__2_i_1__9_n_0,add_0_carry__2_i_2__9_n_0,add_0_carry__2_i_3__9_n_0,add_0_carry__2_i_4__9_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_0_carry__2_i_1__9
       (.I0(prod_rounded_clamped_01),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01_carry_i_3__9_n_4),
        .I3(delay_element[15]),
        .O(add_0_carry__2_i_1__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_2__9
       (.I0(prod_rounded_clamped_01_carry_i_3__9_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[14]),
        .O(add_0_carry__2_i_2__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_3__9
       (.I0(prod_rounded_clamped_01_carry_i_3__9_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[13]),
        .O(add_0_carry__2_i_3__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_4__9
       (.I0(prod_rounded_clamped_01_carry_i_3__9_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[12]),
        .O(add_0_carry__2_i_4__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_1__9
       (.I0(add_0_carry_i_5__9_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[3]),
        .O(add_0_carry_i_1__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_2__9
       (.I0(add_0_carry_i_5__9_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[2]),
        .O(add_0_carry_i_2__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_3__9
       (.I0(add_0_carry_i_5__9_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[1]),
        .O(add_0_carry_i_3__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_4__9
       (.I0(add_0_carry_i_5__9_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[0]),
        .O(add_0_carry_i_4__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry_i_5__9
       (.CI(1'b0),
        .CO({add_0_carry_i_5__9_n_0,add_0_carry_i_5__9_n_1,add_0_carry_i_5__9_n_2,add_0_carry_i_5__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_0__0[8]}),
        .O({add_0_carry_i_5__9_n_4,add_0_carry_i_5__9_n_5,add_0_carry_i_5__9_n_6,add_0_carry_i_5__9_n_7}),
        .S({prod_0__0[11:9],add_0_carry_i_6__9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_0_carry_i_6__9
       (.I0(prod_0__0[8]),
        .I1(prod_0__0[7]),
        .O(add_0_carry_i_6__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry
       (.CI(1'b0),
        .CO({add_1_carry_n_0,add_1_carry_n_1,add_1_carry_n_2,add_1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[10] [3:0]),
        .O(add_1[3:0]),
        .S({add_1_carry_i_1__8_n_0,add_1_carry_i_2__8_n_0,add_1_carry_i_3__8_n_0,add_1_carry_i_4__8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0
       (.CI(add_1_carry_n_0),
        .CO({add_1_carry__0_n_0,add_1_carry__0_n_1,add_1_carry__0_n_2,add_1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[10] [7:4]),
        .O(add_1[7:4]),
        .S({add_1_carry__0_i_1__8_n_0,add_1_carry__0_i_2__8_n_0,add_1_carry__0_i_3__8_n_0,add_1_carry__0_i_4__8_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_1__8
       (.I0(add_1_carry__0_i_5__8_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[10] [7]),
        .O(add_1_carry__0_i_1__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_2__8
       (.I0(add_1_carry__0_i_5__8_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[10] [6]),
        .O(add_1_carry__0_i_2__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_3__8
       (.I0(add_1_carry__0_i_5__8_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[10] [5]),
        .O(add_1_carry__0_i_3__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_4__8
       (.I0(add_1_carry__0_i_5__8_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[10] [4]),
        .O(add_1_carry__0_i_4__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0_i_5__8
       (.CI(add_1_carry_i_5__8_n_0),
        .CO({add_1_carry__0_i_5__8_n_0,add_1_carry__0_i_5__8_n_1,add_1_carry__0_i_5__8_n_2,add_1_carry__0_i_5__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_1_carry__0_i_5__8_n_4,add_1_carry__0_i_5__8_n_5,add_1_carry__0_i_5__8_n_6,add_1_carry__0_i_5__8_n_7}),
        .S(p_1_in[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__1
       (.CI(add_1_carry__0_n_0),
        .CO({add_1_carry__1_n_0,add_1_carry__1_n_1,add_1_carry__1_n_2,add_1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[10] [11:8]),
        .O(add_1[11:8]),
        .S({add_1_carry__1_i_1__8_n_0,add_1_carry__1_i_2__8_n_0,add_1_carry__1_i_3__8_n_0,add_1_carry__1_i_4__8_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_1__8
       (.I0(prod_rounded_clamped_11_carry_i_7__8_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[10] [11]),
        .O(add_1_carry__1_i_1__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_2__8
       (.I0(prod_rounded_clamped_11_carry_i_7__8_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[10] [10]),
        .O(add_1_carry__1_i_2__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_3__8
       (.I0(prod_rounded_clamped_11_carry_i_7__8_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[10] [9]),
        .O(add_1_carry__1_i_3__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_4__8
       (.I0(prod_rounded_clamped_11_carry_i_7__8_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[10] [8]),
        .O(add_1_carry__1_i_4__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__2
       (.CI(add_1_carry__1_n_0),
        .CO({NLW_add_1_carry__2_CO_UNCONNECTED[3],add_1_carry__2_n_1,add_1_carry__2_n_2,add_1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\interconnet[10] [14:12]}),
        .O(add_1[15:12]),
        .S({add_1_carry__2_i_1__8_n_0,add_1_carry__2_i_2__8_n_0,add_1_carry__2_i_3__8_n_0,add_1_carry__2_i_4__8_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_1_carry__2_i_1__8
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__9_n_4),
        .I3(\interconnet[10] [15]),
        .O(add_1_carry__2_i_1__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_2__8
       (.I0(prod_rounded_clamped_11_carry_i_3__9_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[10] [14]),
        .O(add_1_carry__2_i_2__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_3__8
       (.I0(prod_rounded_clamped_11_carry_i_3__9_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[10] [13]),
        .O(add_1_carry__2_i_3__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_4__8
       (.I0(prod_rounded_clamped_11_carry_i_3__9_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[10] [12]),
        .O(add_1_carry__2_i_4__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_1__8
       (.I0(add_1_carry_i_5__8_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[10] [3]),
        .O(add_1_carry_i_1__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_2__8
       (.I0(add_1_carry_i_5__8_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[10] [2]),
        .O(add_1_carry_i_2__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_3__8
       (.I0(add_1_carry_i_5__8_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[10] [1]),
        .O(add_1_carry_i_3__8_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_4__8
       (.I0(add_1_carry_i_5__8_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[10] [0]),
        .O(add_1_carry_i_4__8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry_i_5__8
       (.CI(1'b0),
        .CO({add_1_carry_i_5__8_n_0,add_1_carry_i_5__8_n_1,add_1_carry_i_5__8_n_2,add_1_carry_i_5__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_1_carry_i_5__8_n_4,add_1_carry_i_5__8_n_5,add_1_carry_i_5__8_n_6,add_1_carry_i_5__8_n_7}),
        .S({p_1_in[3:1],add_1_carry_i_6__8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_1_carry_i_6__8
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_1_carry_i_6__8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[0]),
        .Q(delay_element[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[10]),
        .Q(delay_element[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[11]),
        .Q(delay_element[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[12]),
        .Q(delay_element[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[13]),
        .Q(delay_element[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[14]),
        .Q(delay_element[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[15]),
        .Q(delay_element[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[1]),
        .Q(delay_element[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[2]),
        .Q(delay_element[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[3]),
        .Q(delay_element[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[4]),
        .Q(delay_element[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[5]),
        .Q(delay_element[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[6]),
        .Q(delay_element[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[7]),
        .Q(delay_element[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[8]),
        .Q(delay_element[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[9]),
        .Q(delay_element[9]),
        .R(i_rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_0
       (.A({prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_0_P_UNCONNECTED[47:28],prod_0__0,prod_0_n_99,prod_0_n_100,prod_0_n_101,prod_0_n_102,prod_0_n_103,prod_0_n_104,prod_0_n_105}),
        .PATTERNBDETECT(NLW_prod_0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_1
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_1_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_1_n_99,prod_1_n_100,prod_1_n_101,prod_1_n_102,prod_1_n_103,prod_1_n_104,prod_1_n_105}),
        .PATTERNBDETECT(NLW_prod_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_1_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_01_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED[3],prod_rounded_clamped_01,prod_rounded_clamped_01_carry_n_2,prod_rounded_clamped_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_01_carry_i_1__9_n_0,prod_rounded_clamped_01_carry_i_2__9_n_0,prod_rounded_clamped_01_carry_i_3__9_n_4}),
        .O(NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_01_carry_i_4__9_n_0,prod_rounded_clamped_01_carry_i_5__9_n_0,prod_rounded_clamped_01_carry_i_6__9_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_1__9
       (.I0(prod_rounded_clamped_02_carry_i_7__9_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__9_n_4),
        .O(prod_rounded_clamped_01_carry_i_1__9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_01_carry_i_2__9
       (.I0(prod_rounded_clamped_02_carry_i_7__9_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__9_n_6),
        .O(prod_rounded_clamped_01_carry_i_2__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_3__9
       (.CI(prod_rounded_clamped_01_carry_i_7__9_n_0),
        .CO({prod_rounded_clamped_01_carry_i_3__9_n_0,prod_rounded_clamped_01_carry_i_3__9_n_1,prod_rounded_clamped_01_carry_i_3__9_n_2,prod_rounded_clamped_01_carry_i_3__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_3__9_n_4,prod_rounded_clamped_01_carry_i_3__9_n_5,prod_rounded_clamped_01_carry_i_3__9_n_6,prod_rounded_clamped_01_carry_i_3__9_n_7}),
        .S(prod_0__0[23:20]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_4__9
       (.I0(prod_rounded_clamped_02_carry_i_7__9_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__9_n_4),
        .O(prod_rounded_clamped_01_carry_i_4__9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_5__9
       (.I0(prod_rounded_clamped_02_carry_i_7__9_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__9_n_6),
        .O(prod_rounded_clamped_01_carry_i_5__9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_6__9
       (.I0(prod_rounded_clamped_01_carry_i_3__9_n_5),
        .I1(prod_rounded_clamped_01_carry_i_3__9_n_4),
        .O(prod_rounded_clamped_01_carry_i_6__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_7__9
       (.CI(add_0_carry__0_i_5__9_n_0),
        .CO({prod_rounded_clamped_01_carry_i_7__9_n_0,prod_rounded_clamped_01_carry_i_7__9_n_1,prod_rounded_clamped_01_carry_i_7__9_n_2,prod_rounded_clamped_01_carry_i_7__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_7__9_n_4,prod_rounded_clamped_01_carry_i_7__9_n_5,prod_rounded_clamped_01_carry_i_7__9_n_6,prod_rounded_clamped_01_carry_i_7__9_n_7}),
        .S(prod_0__0[19:16]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_02_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED[3],prod_rounded_clamped_02,prod_rounded_clamped_02_carry_n_2,prod_rounded_clamped_02_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_02_carry_i_1__9_n_0,prod_rounded_clamped_02_carry_i_2__9_n_0,prod_rounded_clamped_02_carry_i_3__9_n_0}),
        .O(NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_02_carry_i_4__9_n_0,prod_rounded_clamped_02_carry_i_5__9_n_0,prod_rounded_clamped_02_carry_i_6__9_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_1__9
       (.I0(prod_rounded_clamped_02_carry_i_7__9_n_4),
        .I1(prod_rounded_clamped_02_carry_i_7__9_n_5),
        .O(prod_rounded_clamped_02_carry_i_1__9_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_02_carry_i_2__9
       (.I0(prod_rounded_clamped_02_carry_i_7__9_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__9_n_6),
        .O(prod_rounded_clamped_02_carry_i_2__9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_02_carry_i_3__9
       (.I0(prod_rounded_clamped_01_carry_i_3__9_n_4),
        .O(prod_rounded_clamped_02_carry_i_3__9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_4__9
       (.I0(prod_rounded_clamped_02_carry_i_7__9_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__9_n_4),
        .O(prod_rounded_clamped_02_carry_i_4__9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_5__9
       (.I0(prod_rounded_clamped_02_carry_i_7__9_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__9_n_6),
        .O(prod_rounded_clamped_02_carry_i_5__9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_6__9
       (.I0(prod_rounded_clamped_01_carry_i_3__9_n_4),
        .I1(prod_rounded_clamped_01_carry_i_3__9_n_5),
        .O(prod_rounded_clamped_02_carry_i_6__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_02_carry_i_7__9
       (.CI(prod_rounded_clamped_01_carry_i_3__9_n_0),
        .CO({NLW_prod_rounded_clamped_02_carry_i_7__9_CO_UNCONNECTED[3],prod_rounded_clamped_02_carry_i_7__9_n_1,prod_rounded_clamped_02_carry_i_7__9_n_2,prod_rounded_clamped_02_carry_i_7__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_02_carry_i_7__9_n_4,prod_rounded_clamped_02_carry_i_7__9_n_5,prod_rounded_clamped_02_carry_i_7__9_n_6,prod_rounded_clamped_02_carry_i_7__9_n_7}),
        .S(prod_0__0[27:24]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_11_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED[3],prod_rounded_clamped_11,prod_rounded_clamped_11_carry_n_2,prod_rounded_clamped_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_11_carry_i_1__9_n_0,prod_rounded_clamped_11_carry_i_2__9_n_0,prod_rounded_clamped_11_carry_i_3__9_n_4}),
        .O(NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_11_carry_i_4__9_n_0,prod_rounded_clamped_11_carry_i_5__9_n_0,prod_rounded_clamped_11_carry_i_6__9_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_1__9
       (.I0(prod_rounded_clamped_12_carry_i_7__9_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__9_n_4),
        .O(prod_rounded_clamped_11_carry_i_1__9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_11_carry_i_2__9
       (.I0(prod_rounded_clamped_12_carry_i_7__9_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__9_n_6),
        .O(prod_rounded_clamped_11_carry_i_2__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_3__9
       (.CI(prod_rounded_clamped_11_carry_i_7__8_n_0),
        .CO({prod_rounded_clamped_11_carry_i_3__9_n_0,prod_rounded_clamped_11_carry_i_3__9_n_1,prod_rounded_clamped_11_carry_i_3__9_n_2,prod_rounded_clamped_11_carry_i_3__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_3__9_n_4,prod_rounded_clamped_11_carry_i_3__9_n_5,prod_rounded_clamped_11_carry_i_3__9_n_6,prod_rounded_clamped_11_carry_i_3__9_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_4__9
       (.I0(prod_rounded_clamped_12_carry_i_7__9_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__9_n_4),
        .O(prod_rounded_clamped_11_carry_i_4__9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_5__9
       (.I0(prod_rounded_clamped_12_carry_i_7__9_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__9_n_6),
        .O(prod_rounded_clamped_11_carry_i_5__9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_6__9
       (.I0(prod_rounded_clamped_11_carry_i_3__9_n_5),
        .I1(prod_rounded_clamped_11_carry_i_3__9_n_4),
        .O(prod_rounded_clamped_11_carry_i_6__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_7__8
       (.CI(add_1_carry__0_i_5__8_n_0),
        .CO({prod_rounded_clamped_11_carry_i_7__8_n_0,prod_rounded_clamped_11_carry_i_7__8_n_1,prod_rounded_clamped_11_carry_i_7__8_n_2,prod_rounded_clamped_11_carry_i_7__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_7__8_n_4,prod_rounded_clamped_11_carry_i_7__8_n_5,prod_rounded_clamped_11_carry_i_7__8_n_6,prod_rounded_clamped_11_carry_i_7__8_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_12_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED[3],prod_rounded_clamped_12,prod_rounded_clamped_12_carry_n_2,prod_rounded_clamped_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_12_carry_i_1__9_n_0,prod_rounded_clamped_12_carry_i_2__9_n_0,prod_rounded_clamped_12_carry_i_3__9_n_0}),
        .O(NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_12_carry_i_4__9_n_0,prod_rounded_clamped_12_carry_i_5__9_n_0,prod_rounded_clamped_12_carry_i_6__9_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_1__9
       (.I0(prod_rounded_clamped_12_carry_i_7__9_n_4),
        .I1(prod_rounded_clamped_12_carry_i_7__9_n_5),
        .O(prod_rounded_clamped_12_carry_i_1__9_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_12_carry_i_2__9
       (.I0(prod_rounded_clamped_12_carry_i_7__9_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__9_n_6),
        .O(prod_rounded_clamped_12_carry_i_2__9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_12_carry_i_3__9
       (.I0(prod_rounded_clamped_11_carry_i_3__9_n_4),
        .O(prod_rounded_clamped_12_carry_i_3__9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_4__9
       (.I0(prod_rounded_clamped_12_carry_i_7__9_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__9_n_4),
        .O(prod_rounded_clamped_12_carry_i_4__9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_5__9
       (.I0(prod_rounded_clamped_12_carry_i_7__9_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__9_n_6),
        .O(prod_rounded_clamped_12_carry_i_5__9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_6__9
       (.I0(prod_rounded_clamped_11_carry_i_3__9_n_4),
        .I1(prod_rounded_clamped_11_carry_i_3__9_n_5),
        .O(prod_rounded_clamped_12_carry_i_6__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_12_carry_i_7__9
       (.CI(prod_rounded_clamped_11_carry_i_3__9_n_0),
        .CO({NLW_prod_rounded_clamped_12_carry_i_7__9_CO_UNCONNECTED[3],prod_rounded_clamped_12_carry_i_7__9_n_1,prod_rounded_clamped_12_carry_i_7__9_n_2,prod_rounded_clamped_12_carry_i_7__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_12_carry_i_7__9_n_4,prod_rounded_clamped_12_carry_i_7__9_n_5,prod_rounded_clamped_12_carry_i_7__9_n_6,prod_rounded_clamped_12_carry_i_7__9_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock_parallel" *) 
module FIR_subblock_parallel_10
   (\interconnet[3] ,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    prod_0_0,
    \interconnet[2] );
  output [15:0]\interconnet[3] ;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [13:0]prod_0_0;
  input [15:0]\interconnet[2] ;

  wire [13:0]A;
  wire add_0_carry__0_i_1__1_n_0;
  wire add_0_carry__0_i_2__1_n_0;
  wire add_0_carry__0_i_3__1_n_0;
  wire add_0_carry__0_i_4__1_n_0;
  wire add_0_carry__0_i_5__1_n_0;
  wire add_0_carry__0_i_5__1_n_1;
  wire add_0_carry__0_i_5__1_n_2;
  wire add_0_carry__0_i_5__1_n_3;
  wire add_0_carry__0_i_5__1_n_4;
  wire add_0_carry__0_i_5__1_n_5;
  wire add_0_carry__0_i_5__1_n_6;
  wire add_0_carry__0_i_5__1_n_7;
  wire add_0_carry__0_n_0;
  wire add_0_carry__0_n_1;
  wire add_0_carry__0_n_2;
  wire add_0_carry__0_n_3;
  wire add_0_carry__1_i_1__1_n_0;
  wire add_0_carry__1_i_2__1_n_0;
  wire add_0_carry__1_i_3__1_n_0;
  wire add_0_carry__1_i_4__1_n_0;
  wire add_0_carry__1_n_0;
  wire add_0_carry__1_n_1;
  wire add_0_carry__1_n_2;
  wire add_0_carry__1_n_3;
  wire add_0_carry__2_i_1__1_n_0;
  wire add_0_carry__2_i_2__1_n_0;
  wire add_0_carry__2_i_3__1_n_0;
  wire add_0_carry__2_i_4__1_n_0;
  wire add_0_carry__2_n_1;
  wire add_0_carry__2_n_2;
  wire add_0_carry__2_n_3;
  wire add_0_carry_i_1__1_n_0;
  wire add_0_carry_i_2__1_n_0;
  wire add_0_carry_i_3__1_n_0;
  wire add_0_carry_i_4__1_n_0;
  wire add_0_carry_i_5__1_n_0;
  wire add_0_carry_i_5__1_n_1;
  wire add_0_carry_i_5__1_n_2;
  wire add_0_carry_i_5__1_n_3;
  wire add_0_carry_i_5__1_n_4;
  wire add_0_carry_i_5__1_n_5;
  wire add_0_carry_i_5__1_n_6;
  wire add_0_carry_i_5__1_n_7;
  wire add_0_carry_i_6__1_n_0;
  wire add_0_carry_n_0;
  wire add_0_carry_n_1;
  wire add_0_carry_n_2;
  wire add_0_carry_n_3;
  wire [15:0]add_1;
  wire add_1_carry__0_i_1__1_n_0;
  wire add_1_carry__0_i_2__1_n_0;
  wire add_1_carry__0_i_3__1_n_0;
  wire add_1_carry__0_i_4__1_n_0;
  wire add_1_carry__0_i_5__1_n_0;
  wire add_1_carry__0_i_5__1_n_1;
  wire add_1_carry__0_i_5__1_n_2;
  wire add_1_carry__0_i_5__1_n_3;
  wire add_1_carry__0_i_5__1_n_4;
  wire add_1_carry__0_i_5__1_n_5;
  wire add_1_carry__0_i_5__1_n_6;
  wire add_1_carry__0_i_5__1_n_7;
  wire add_1_carry__0_n_0;
  wire add_1_carry__0_n_1;
  wire add_1_carry__0_n_2;
  wire add_1_carry__0_n_3;
  wire add_1_carry__1_i_1__1_n_0;
  wire add_1_carry__1_i_2__1_n_0;
  wire add_1_carry__1_i_3__1_n_0;
  wire add_1_carry__1_i_4__1_n_0;
  wire add_1_carry__1_n_0;
  wire add_1_carry__1_n_1;
  wire add_1_carry__1_n_2;
  wire add_1_carry__1_n_3;
  wire add_1_carry__2_i_1__1_n_0;
  wire add_1_carry__2_i_2__1_n_0;
  wire add_1_carry__2_i_3__1_n_0;
  wire add_1_carry__2_i_4__1_n_0;
  wire add_1_carry__2_n_1;
  wire add_1_carry__2_n_2;
  wire add_1_carry__2_n_3;
  wire add_1_carry_i_1__1_n_0;
  wire add_1_carry_i_2__1_n_0;
  wire add_1_carry_i_3__1_n_0;
  wire add_1_carry_i_4__1_n_0;
  wire add_1_carry_i_5__1_n_0;
  wire add_1_carry_i_5__1_n_1;
  wire add_1_carry_i_5__1_n_2;
  wire add_1_carry_i_5__1_n_3;
  wire add_1_carry_i_5__1_n_4;
  wire add_1_carry_i_5__1_n_5;
  wire add_1_carry_i_5__1_n_6;
  wire add_1_carry_i_5__1_n_7;
  wire add_1_carry_i_6__1_n_0;
  wire add_1_carry_n_0;
  wire add_1_carry_n_1;
  wire add_1_carry_n_2;
  wire add_1_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]delay_element;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[2] ;
  wire [15:0]\interconnet[3] ;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [13:0]prod_0_0;
  wire [27:7]prod_0__0;
  wire prod_0_n_100;
  wire prod_0_n_101;
  wire prod_0_n_102;
  wire prod_0_n_103;
  wire prod_0_n_104;
  wire prod_0_n_105;
  wire prod_0_n_99;
  wire prod_1_n_100;
  wire prod_1_n_101;
  wire prod_1_n_102;
  wire prod_1_n_103;
  wire prod_1_n_104;
  wire prod_1_n_105;
  wire prod_1_n_99;
  wire prod_rounded_clamped_01;
  wire prod_rounded_clamped_01_carry_i_1__1_n_0;
  wire prod_rounded_clamped_01_carry_i_2__1_n_0;
  wire prod_rounded_clamped_01_carry_i_3__1_n_0;
  wire prod_rounded_clamped_01_carry_i_3__1_n_1;
  wire prod_rounded_clamped_01_carry_i_3__1_n_2;
  wire prod_rounded_clamped_01_carry_i_3__1_n_3;
  wire prod_rounded_clamped_01_carry_i_3__1_n_4;
  wire prod_rounded_clamped_01_carry_i_3__1_n_5;
  wire prod_rounded_clamped_01_carry_i_3__1_n_6;
  wire prod_rounded_clamped_01_carry_i_3__1_n_7;
  wire prod_rounded_clamped_01_carry_i_4__1_n_0;
  wire prod_rounded_clamped_01_carry_i_5__1_n_0;
  wire prod_rounded_clamped_01_carry_i_6__1_n_0;
  wire prod_rounded_clamped_01_carry_i_7__1_n_0;
  wire prod_rounded_clamped_01_carry_i_7__1_n_1;
  wire prod_rounded_clamped_01_carry_i_7__1_n_2;
  wire prod_rounded_clamped_01_carry_i_7__1_n_3;
  wire prod_rounded_clamped_01_carry_i_7__1_n_4;
  wire prod_rounded_clamped_01_carry_i_7__1_n_5;
  wire prod_rounded_clamped_01_carry_i_7__1_n_6;
  wire prod_rounded_clamped_01_carry_i_7__1_n_7;
  wire prod_rounded_clamped_01_carry_n_2;
  wire prod_rounded_clamped_01_carry_n_3;
  wire prod_rounded_clamped_02;
  wire prod_rounded_clamped_02_carry_i_1__1_n_0;
  wire prod_rounded_clamped_02_carry_i_2__1_n_0;
  wire prod_rounded_clamped_02_carry_i_3__1_n_0;
  wire prod_rounded_clamped_02_carry_i_4__1_n_0;
  wire prod_rounded_clamped_02_carry_i_5__1_n_0;
  wire prod_rounded_clamped_02_carry_i_6__1_n_0;
  wire prod_rounded_clamped_02_carry_i_7__1_n_1;
  wire prod_rounded_clamped_02_carry_i_7__1_n_2;
  wire prod_rounded_clamped_02_carry_i_7__1_n_3;
  wire prod_rounded_clamped_02_carry_i_7__1_n_4;
  wire prod_rounded_clamped_02_carry_i_7__1_n_5;
  wire prod_rounded_clamped_02_carry_i_7__1_n_6;
  wire prod_rounded_clamped_02_carry_i_7__1_n_7;
  wire prod_rounded_clamped_02_carry_n_2;
  wire prod_rounded_clamped_02_carry_n_3;
  wire prod_rounded_clamped_11;
  wire prod_rounded_clamped_11_carry_i_1__2_n_0;
  wire prod_rounded_clamped_11_carry_i_2__2_n_0;
  wire prod_rounded_clamped_11_carry_i_3__2_n_0;
  wire prod_rounded_clamped_11_carry_i_3__2_n_1;
  wire prod_rounded_clamped_11_carry_i_3__2_n_2;
  wire prod_rounded_clamped_11_carry_i_3__2_n_3;
  wire prod_rounded_clamped_11_carry_i_3__2_n_4;
  wire prod_rounded_clamped_11_carry_i_3__2_n_5;
  wire prod_rounded_clamped_11_carry_i_3__2_n_6;
  wire prod_rounded_clamped_11_carry_i_3__2_n_7;
  wire prod_rounded_clamped_11_carry_i_4__2_n_0;
  wire prod_rounded_clamped_11_carry_i_5__2_n_0;
  wire prod_rounded_clamped_11_carry_i_6__2_n_0;
  wire prod_rounded_clamped_11_carry_i_7__1_n_0;
  wire prod_rounded_clamped_11_carry_i_7__1_n_1;
  wire prod_rounded_clamped_11_carry_i_7__1_n_2;
  wire prod_rounded_clamped_11_carry_i_7__1_n_3;
  wire prod_rounded_clamped_11_carry_i_7__1_n_4;
  wire prod_rounded_clamped_11_carry_i_7__1_n_5;
  wire prod_rounded_clamped_11_carry_i_7__1_n_6;
  wire prod_rounded_clamped_11_carry_i_7__1_n_7;
  wire prod_rounded_clamped_11_carry_n_2;
  wire prod_rounded_clamped_11_carry_n_3;
  wire prod_rounded_clamped_12;
  wire prod_rounded_clamped_12_carry_i_1__2_n_0;
  wire prod_rounded_clamped_12_carry_i_2__2_n_0;
  wire prod_rounded_clamped_12_carry_i_3__2_n_0;
  wire prod_rounded_clamped_12_carry_i_4__2_n_0;
  wire prod_rounded_clamped_12_carry_i_5__2_n_0;
  wire prod_rounded_clamped_12_carry_i_6__2_n_0;
  wire prod_rounded_clamped_12_carry_i_7__2_n_1;
  wire prod_rounded_clamped_12_carry_i_7__2_n_2;
  wire prod_rounded_clamped_12_carry_i_7__2_n_3;
  wire prod_rounded_clamped_12_carry_i_7__2_n_4;
  wire prod_rounded_clamped_12_carry_i_7__2_n_5;
  wire prod_rounded_clamped_12_carry_i_7__2_n_6;
  wire prod_rounded_clamped_12_carry_i_7__2_n_7;
  wire prod_rounded_clamped_12_carry_n_2;
  wire prod_rounded_clamped_12_carry_n_3;
  wire [3:3]NLW_add_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_1_carry__2_CO_UNCONNECTED;
  wire NLW_prod_0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_0_OVERFLOW_UNCONNECTED;
  wire NLW_prod_0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_0_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_0_P_UNCONNECTED;
  wire [47:0]NLW_prod_0_PCOUT_UNCONNECTED;
  wire NLW_prod_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_1_OVERFLOW_UNCONNECTED;
  wire NLW_prod_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_1_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_1_P_UNCONNECTED;
  wire [47:0]NLW_prod_1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_i_7__1_CO_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_i_7__2_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry
       (.CI(1'b0),
        .CO({add_0_carry_n_0,add_0_carry_n_1,add_0_carry_n_2,add_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[3:0]),
        .O(\interconnet[3] [3:0]),
        .S({add_0_carry_i_1__1_n_0,add_0_carry_i_2__1_n_0,add_0_carry_i_3__1_n_0,add_0_carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0
       (.CI(add_0_carry_n_0),
        .CO({add_0_carry__0_n_0,add_0_carry__0_n_1,add_0_carry__0_n_2,add_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[7:4]),
        .O(\interconnet[3] [7:4]),
        .S({add_0_carry__0_i_1__1_n_0,add_0_carry__0_i_2__1_n_0,add_0_carry__0_i_3__1_n_0,add_0_carry__0_i_4__1_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_1__1
       (.I0(add_0_carry__0_i_5__1_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[7]),
        .O(add_0_carry__0_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_2__1
       (.I0(add_0_carry__0_i_5__1_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[6]),
        .O(add_0_carry__0_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_3__1
       (.I0(add_0_carry__0_i_5__1_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[5]),
        .O(add_0_carry__0_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_4__1
       (.I0(add_0_carry__0_i_5__1_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[4]),
        .O(add_0_carry__0_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0_i_5__1
       (.CI(add_0_carry_i_5__1_n_0),
        .CO({add_0_carry__0_i_5__1_n_0,add_0_carry__0_i_5__1_n_1,add_0_carry__0_i_5__1_n_2,add_0_carry__0_i_5__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_0_carry__0_i_5__1_n_4,add_0_carry__0_i_5__1_n_5,add_0_carry__0_i_5__1_n_6,add_0_carry__0_i_5__1_n_7}),
        .S(prod_0__0[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__1
       (.CI(add_0_carry__0_n_0),
        .CO({add_0_carry__1_n_0,add_0_carry__1_n_1,add_0_carry__1_n_2,add_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[11:8]),
        .O(\interconnet[3] [11:8]),
        .S({add_0_carry__1_i_1__1_n_0,add_0_carry__1_i_2__1_n_0,add_0_carry__1_i_3__1_n_0,add_0_carry__1_i_4__1_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_1__1
       (.I0(prod_rounded_clamped_01_carry_i_7__1_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[11]),
        .O(add_0_carry__1_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_2__1
       (.I0(prod_rounded_clamped_01_carry_i_7__1_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[10]),
        .O(add_0_carry__1_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_3__1
       (.I0(prod_rounded_clamped_01_carry_i_7__1_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[9]),
        .O(add_0_carry__1_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_4__1
       (.I0(prod_rounded_clamped_01_carry_i_7__1_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[8]),
        .O(add_0_carry__1_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__2
       (.CI(add_0_carry__1_n_0),
        .CO({NLW_add_0_carry__2_CO_UNCONNECTED[3],add_0_carry__2_n_1,add_0_carry__2_n_2,add_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_element[14:12]}),
        .O(\interconnet[3] [15:12]),
        .S({add_0_carry__2_i_1__1_n_0,add_0_carry__2_i_2__1_n_0,add_0_carry__2_i_3__1_n_0,add_0_carry__2_i_4__1_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_0_carry__2_i_1__1
       (.I0(prod_rounded_clamped_01),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01_carry_i_3__1_n_4),
        .I3(delay_element[15]),
        .O(add_0_carry__2_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_2__1
       (.I0(prod_rounded_clamped_01_carry_i_3__1_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[14]),
        .O(add_0_carry__2_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_3__1
       (.I0(prod_rounded_clamped_01_carry_i_3__1_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[13]),
        .O(add_0_carry__2_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_4__1
       (.I0(prod_rounded_clamped_01_carry_i_3__1_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[12]),
        .O(add_0_carry__2_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_1__1
       (.I0(add_0_carry_i_5__1_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[3]),
        .O(add_0_carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_2__1
       (.I0(add_0_carry_i_5__1_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[2]),
        .O(add_0_carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_3__1
       (.I0(add_0_carry_i_5__1_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[1]),
        .O(add_0_carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_4__1
       (.I0(add_0_carry_i_5__1_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[0]),
        .O(add_0_carry_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry_i_5__1
       (.CI(1'b0),
        .CO({add_0_carry_i_5__1_n_0,add_0_carry_i_5__1_n_1,add_0_carry_i_5__1_n_2,add_0_carry_i_5__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_0__0[8]}),
        .O({add_0_carry_i_5__1_n_4,add_0_carry_i_5__1_n_5,add_0_carry_i_5__1_n_6,add_0_carry_i_5__1_n_7}),
        .S({prod_0__0[11:9],add_0_carry_i_6__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_0_carry_i_6__1
       (.I0(prod_0__0[8]),
        .I1(prod_0__0[7]),
        .O(add_0_carry_i_6__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry
       (.CI(1'b0),
        .CO({add_1_carry_n_0,add_1_carry_n_1,add_1_carry_n_2,add_1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[2] [3:0]),
        .O(add_1[3:0]),
        .S({add_1_carry_i_1__1_n_0,add_1_carry_i_2__1_n_0,add_1_carry_i_3__1_n_0,add_1_carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0
       (.CI(add_1_carry_n_0),
        .CO({add_1_carry__0_n_0,add_1_carry__0_n_1,add_1_carry__0_n_2,add_1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[2] [7:4]),
        .O(add_1[7:4]),
        .S({add_1_carry__0_i_1__1_n_0,add_1_carry__0_i_2__1_n_0,add_1_carry__0_i_3__1_n_0,add_1_carry__0_i_4__1_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_1__1
       (.I0(add_1_carry__0_i_5__1_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[2] [7]),
        .O(add_1_carry__0_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_2__1
       (.I0(add_1_carry__0_i_5__1_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[2] [6]),
        .O(add_1_carry__0_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_3__1
       (.I0(add_1_carry__0_i_5__1_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[2] [5]),
        .O(add_1_carry__0_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_4__1
       (.I0(add_1_carry__0_i_5__1_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[2] [4]),
        .O(add_1_carry__0_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0_i_5__1
       (.CI(add_1_carry_i_5__1_n_0),
        .CO({add_1_carry__0_i_5__1_n_0,add_1_carry__0_i_5__1_n_1,add_1_carry__0_i_5__1_n_2,add_1_carry__0_i_5__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_1_carry__0_i_5__1_n_4,add_1_carry__0_i_5__1_n_5,add_1_carry__0_i_5__1_n_6,add_1_carry__0_i_5__1_n_7}),
        .S(p_1_in[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__1
       (.CI(add_1_carry__0_n_0),
        .CO({add_1_carry__1_n_0,add_1_carry__1_n_1,add_1_carry__1_n_2,add_1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[2] [11:8]),
        .O(add_1[11:8]),
        .S({add_1_carry__1_i_1__1_n_0,add_1_carry__1_i_2__1_n_0,add_1_carry__1_i_3__1_n_0,add_1_carry__1_i_4__1_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_1__1
       (.I0(prod_rounded_clamped_11_carry_i_7__1_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[2] [11]),
        .O(add_1_carry__1_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_2__1
       (.I0(prod_rounded_clamped_11_carry_i_7__1_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[2] [10]),
        .O(add_1_carry__1_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_3__1
       (.I0(prod_rounded_clamped_11_carry_i_7__1_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[2] [9]),
        .O(add_1_carry__1_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_4__1
       (.I0(prod_rounded_clamped_11_carry_i_7__1_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[2] [8]),
        .O(add_1_carry__1_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__2
       (.CI(add_1_carry__1_n_0),
        .CO({NLW_add_1_carry__2_CO_UNCONNECTED[3],add_1_carry__2_n_1,add_1_carry__2_n_2,add_1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\interconnet[2] [14:12]}),
        .O(add_1[15:12]),
        .S({add_1_carry__2_i_1__1_n_0,add_1_carry__2_i_2__1_n_0,add_1_carry__2_i_3__1_n_0,add_1_carry__2_i_4__1_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_1_carry__2_i_1__1
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__2_n_4),
        .I3(\interconnet[2] [15]),
        .O(add_1_carry__2_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_2__1
       (.I0(prod_rounded_clamped_11_carry_i_3__2_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[2] [14]),
        .O(add_1_carry__2_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_3__1
       (.I0(prod_rounded_clamped_11_carry_i_3__2_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[2] [13]),
        .O(add_1_carry__2_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_4__1
       (.I0(prod_rounded_clamped_11_carry_i_3__2_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[2] [12]),
        .O(add_1_carry__2_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_1__1
       (.I0(add_1_carry_i_5__1_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[2] [3]),
        .O(add_1_carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_2__1
       (.I0(add_1_carry_i_5__1_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[2] [2]),
        .O(add_1_carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_3__1
       (.I0(add_1_carry_i_5__1_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[2] [1]),
        .O(add_1_carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_4__1
       (.I0(add_1_carry_i_5__1_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[2] [0]),
        .O(add_1_carry_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry_i_5__1
       (.CI(1'b0),
        .CO({add_1_carry_i_5__1_n_0,add_1_carry_i_5__1_n_1,add_1_carry_i_5__1_n_2,add_1_carry_i_5__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_1_carry_i_5__1_n_4,add_1_carry_i_5__1_n_5,add_1_carry_i_5__1_n_6,add_1_carry_i_5__1_n_7}),
        .S({p_1_in[3:1],add_1_carry_i_6__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_1_carry_i_6__1
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_1_carry_i_6__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[0]),
        .Q(delay_element[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[10]),
        .Q(delay_element[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[11]),
        .Q(delay_element[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[12]),
        .Q(delay_element[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[13]),
        .Q(delay_element[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[14]),
        .Q(delay_element[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[15]),
        .Q(delay_element[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[1]),
        .Q(delay_element[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[2]),
        .Q(delay_element[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[3]),
        .Q(delay_element[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[4]),
        .Q(delay_element[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[5]),
        .Q(delay_element[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[6]),
        .Q(delay_element[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[7]),
        .Q(delay_element[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[8]),
        .Q(delay_element[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[9]),
        .Q(delay_element[9]),
        .R(i_rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_0
       (.A({prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_0_P_UNCONNECTED[47:28],prod_0__0,prod_0_n_99,prod_0_n_100,prod_0_n_101,prod_0_n_102,prod_0_n_103,prod_0_n_104,prod_0_n_105}),
        .PATTERNBDETECT(NLW_prod_0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_1
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_1_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_1_n_99,prod_1_n_100,prod_1_n_101,prod_1_n_102,prod_1_n_103,prod_1_n_104,prod_1_n_105}),
        .PATTERNBDETECT(NLW_prod_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_1_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_01_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED[3],prod_rounded_clamped_01,prod_rounded_clamped_01_carry_n_2,prod_rounded_clamped_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_01_carry_i_1__1_n_0,prod_rounded_clamped_01_carry_i_2__1_n_0,prod_rounded_clamped_01_carry_i_3__1_n_4}),
        .O(NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_01_carry_i_4__1_n_0,prod_rounded_clamped_01_carry_i_5__1_n_0,prod_rounded_clamped_01_carry_i_6__1_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_1__1
       (.I0(prod_rounded_clamped_02_carry_i_7__1_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__1_n_4),
        .O(prod_rounded_clamped_01_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_01_carry_i_2__1
       (.I0(prod_rounded_clamped_02_carry_i_7__1_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__1_n_6),
        .O(prod_rounded_clamped_01_carry_i_2__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_3__1
       (.CI(prod_rounded_clamped_01_carry_i_7__1_n_0),
        .CO({prod_rounded_clamped_01_carry_i_3__1_n_0,prod_rounded_clamped_01_carry_i_3__1_n_1,prod_rounded_clamped_01_carry_i_3__1_n_2,prod_rounded_clamped_01_carry_i_3__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_3__1_n_4,prod_rounded_clamped_01_carry_i_3__1_n_5,prod_rounded_clamped_01_carry_i_3__1_n_6,prod_rounded_clamped_01_carry_i_3__1_n_7}),
        .S(prod_0__0[23:20]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_4__1
       (.I0(prod_rounded_clamped_02_carry_i_7__1_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__1_n_4),
        .O(prod_rounded_clamped_01_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_5__1
       (.I0(prod_rounded_clamped_02_carry_i_7__1_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__1_n_6),
        .O(prod_rounded_clamped_01_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_6__1
       (.I0(prod_rounded_clamped_01_carry_i_3__1_n_5),
        .I1(prod_rounded_clamped_01_carry_i_3__1_n_4),
        .O(prod_rounded_clamped_01_carry_i_6__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_7__1
       (.CI(add_0_carry__0_i_5__1_n_0),
        .CO({prod_rounded_clamped_01_carry_i_7__1_n_0,prod_rounded_clamped_01_carry_i_7__1_n_1,prod_rounded_clamped_01_carry_i_7__1_n_2,prod_rounded_clamped_01_carry_i_7__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_7__1_n_4,prod_rounded_clamped_01_carry_i_7__1_n_5,prod_rounded_clamped_01_carry_i_7__1_n_6,prod_rounded_clamped_01_carry_i_7__1_n_7}),
        .S(prod_0__0[19:16]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_02_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED[3],prod_rounded_clamped_02,prod_rounded_clamped_02_carry_n_2,prod_rounded_clamped_02_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_02_carry_i_1__1_n_0,prod_rounded_clamped_02_carry_i_2__1_n_0,prod_rounded_clamped_02_carry_i_3__1_n_0}),
        .O(NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_02_carry_i_4__1_n_0,prod_rounded_clamped_02_carry_i_5__1_n_0,prod_rounded_clamped_02_carry_i_6__1_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_1__1
       (.I0(prod_rounded_clamped_02_carry_i_7__1_n_4),
        .I1(prod_rounded_clamped_02_carry_i_7__1_n_5),
        .O(prod_rounded_clamped_02_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_02_carry_i_2__1
       (.I0(prod_rounded_clamped_02_carry_i_7__1_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__1_n_6),
        .O(prod_rounded_clamped_02_carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_02_carry_i_3__1
       (.I0(prod_rounded_clamped_01_carry_i_3__1_n_4),
        .O(prod_rounded_clamped_02_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_4__1
       (.I0(prod_rounded_clamped_02_carry_i_7__1_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__1_n_4),
        .O(prod_rounded_clamped_02_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_5__1
       (.I0(prod_rounded_clamped_02_carry_i_7__1_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__1_n_6),
        .O(prod_rounded_clamped_02_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_6__1
       (.I0(prod_rounded_clamped_01_carry_i_3__1_n_4),
        .I1(prod_rounded_clamped_01_carry_i_3__1_n_5),
        .O(prod_rounded_clamped_02_carry_i_6__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_02_carry_i_7__1
       (.CI(prod_rounded_clamped_01_carry_i_3__1_n_0),
        .CO({NLW_prod_rounded_clamped_02_carry_i_7__1_CO_UNCONNECTED[3],prod_rounded_clamped_02_carry_i_7__1_n_1,prod_rounded_clamped_02_carry_i_7__1_n_2,prod_rounded_clamped_02_carry_i_7__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_02_carry_i_7__1_n_4,prod_rounded_clamped_02_carry_i_7__1_n_5,prod_rounded_clamped_02_carry_i_7__1_n_6,prod_rounded_clamped_02_carry_i_7__1_n_7}),
        .S(prod_0__0[27:24]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_11_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED[3],prod_rounded_clamped_11,prod_rounded_clamped_11_carry_n_2,prod_rounded_clamped_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_11_carry_i_1__2_n_0,prod_rounded_clamped_11_carry_i_2__2_n_0,prod_rounded_clamped_11_carry_i_3__2_n_4}),
        .O(NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_11_carry_i_4__2_n_0,prod_rounded_clamped_11_carry_i_5__2_n_0,prod_rounded_clamped_11_carry_i_6__2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_1__2
       (.I0(prod_rounded_clamped_12_carry_i_7__2_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__2_n_4),
        .O(prod_rounded_clamped_11_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_11_carry_i_2__2
       (.I0(prod_rounded_clamped_12_carry_i_7__2_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__2_n_6),
        .O(prod_rounded_clamped_11_carry_i_2__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_3__2
       (.CI(prod_rounded_clamped_11_carry_i_7__1_n_0),
        .CO({prod_rounded_clamped_11_carry_i_3__2_n_0,prod_rounded_clamped_11_carry_i_3__2_n_1,prod_rounded_clamped_11_carry_i_3__2_n_2,prod_rounded_clamped_11_carry_i_3__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_3__2_n_4,prod_rounded_clamped_11_carry_i_3__2_n_5,prod_rounded_clamped_11_carry_i_3__2_n_6,prod_rounded_clamped_11_carry_i_3__2_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_4__2
       (.I0(prod_rounded_clamped_12_carry_i_7__2_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__2_n_4),
        .O(prod_rounded_clamped_11_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_5__2
       (.I0(prod_rounded_clamped_12_carry_i_7__2_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__2_n_6),
        .O(prod_rounded_clamped_11_carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_6__2
       (.I0(prod_rounded_clamped_11_carry_i_3__2_n_5),
        .I1(prod_rounded_clamped_11_carry_i_3__2_n_4),
        .O(prod_rounded_clamped_11_carry_i_6__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_7__1
       (.CI(add_1_carry__0_i_5__1_n_0),
        .CO({prod_rounded_clamped_11_carry_i_7__1_n_0,prod_rounded_clamped_11_carry_i_7__1_n_1,prod_rounded_clamped_11_carry_i_7__1_n_2,prod_rounded_clamped_11_carry_i_7__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_7__1_n_4,prod_rounded_clamped_11_carry_i_7__1_n_5,prod_rounded_clamped_11_carry_i_7__1_n_6,prod_rounded_clamped_11_carry_i_7__1_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_12_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED[3],prod_rounded_clamped_12,prod_rounded_clamped_12_carry_n_2,prod_rounded_clamped_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_12_carry_i_1__2_n_0,prod_rounded_clamped_12_carry_i_2__2_n_0,prod_rounded_clamped_12_carry_i_3__2_n_0}),
        .O(NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_12_carry_i_4__2_n_0,prod_rounded_clamped_12_carry_i_5__2_n_0,prod_rounded_clamped_12_carry_i_6__2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_1__2
       (.I0(prod_rounded_clamped_12_carry_i_7__2_n_4),
        .I1(prod_rounded_clamped_12_carry_i_7__2_n_5),
        .O(prod_rounded_clamped_12_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_12_carry_i_2__2
       (.I0(prod_rounded_clamped_12_carry_i_7__2_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__2_n_6),
        .O(prod_rounded_clamped_12_carry_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_12_carry_i_3__2
       (.I0(prod_rounded_clamped_11_carry_i_3__2_n_4),
        .O(prod_rounded_clamped_12_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_4__2
       (.I0(prod_rounded_clamped_12_carry_i_7__2_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__2_n_4),
        .O(prod_rounded_clamped_12_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_5__2
       (.I0(prod_rounded_clamped_12_carry_i_7__2_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__2_n_6),
        .O(prod_rounded_clamped_12_carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_6__2
       (.I0(prod_rounded_clamped_11_carry_i_3__2_n_4),
        .I1(prod_rounded_clamped_11_carry_i_3__2_n_5),
        .O(prod_rounded_clamped_12_carry_i_6__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_12_carry_i_7__2
       (.CI(prod_rounded_clamped_11_carry_i_3__2_n_0),
        .CO({NLW_prod_rounded_clamped_12_carry_i_7__2_CO_UNCONNECTED[3],prod_rounded_clamped_12_carry_i_7__2_n_1,prod_rounded_clamped_12_carry_i_7__2_n_2,prod_rounded_clamped_12_carry_i_7__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_12_carry_i_7__2_n_4,prod_rounded_clamped_12_carry_i_7__2_n_5,prod_rounded_clamped_12_carry_i_7__2_n_6,prod_rounded_clamped_12_carry_i_7__2_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock_parallel" *) 
module FIR_subblock_parallel_11
   (\interconnet[4] ,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    prod_0_0,
    \interconnet[3] );
  output [15:0]\interconnet[4] ;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [13:0]prod_0_0;
  input [15:0]\interconnet[3] ;

  wire [13:0]A;
  wire add_0_carry__0_i_1__2_n_0;
  wire add_0_carry__0_i_2__2_n_0;
  wire add_0_carry__0_i_3__2_n_0;
  wire add_0_carry__0_i_4__2_n_0;
  wire add_0_carry__0_i_5__2_n_0;
  wire add_0_carry__0_i_5__2_n_1;
  wire add_0_carry__0_i_5__2_n_2;
  wire add_0_carry__0_i_5__2_n_3;
  wire add_0_carry__0_i_5__2_n_4;
  wire add_0_carry__0_i_5__2_n_5;
  wire add_0_carry__0_i_5__2_n_6;
  wire add_0_carry__0_i_5__2_n_7;
  wire add_0_carry__0_n_0;
  wire add_0_carry__0_n_1;
  wire add_0_carry__0_n_2;
  wire add_0_carry__0_n_3;
  wire add_0_carry__1_i_1__2_n_0;
  wire add_0_carry__1_i_2__2_n_0;
  wire add_0_carry__1_i_3__2_n_0;
  wire add_0_carry__1_i_4__2_n_0;
  wire add_0_carry__1_n_0;
  wire add_0_carry__1_n_1;
  wire add_0_carry__1_n_2;
  wire add_0_carry__1_n_3;
  wire add_0_carry__2_i_1__2_n_0;
  wire add_0_carry__2_i_2__2_n_0;
  wire add_0_carry__2_i_3__2_n_0;
  wire add_0_carry__2_i_4__2_n_0;
  wire add_0_carry__2_n_1;
  wire add_0_carry__2_n_2;
  wire add_0_carry__2_n_3;
  wire add_0_carry_i_1__2_n_0;
  wire add_0_carry_i_2__2_n_0;
  wire add_0_carry_i_3__2_n_0;
  wire add_0_carry_i_4__2_n_0;
  wire add_0_carry_i_5__2_n_0;
  wire add_0_carry_i_5__2_n_1;
  wire add_0_carry_i_5__2_n_2;
  wire add_0_carry_i_5__2_n_3;
  wire add_0_carry_i_5__2_n_4;
  wire add_0_carry_i_5__2_n_5;
  wire add_0_carry_i_5__2_n_6;
  wire add_0_carry_i_5__2_n_7;
  wire add_0_carry_i_6__2_n_0;
  wire add_0_carry_n_0;
  wire add_0_carry_n_1;
  wire add_0_carry_n_2;
  wire add_0_carry_n_3;
  wire [15:0]add_1;
  wire add_1_carry__0_i_1__2_n_0;
  wire add_1_carry__0_i_2__2_n_0;
  wire add_1_carry__0_i_3__2_n_0;
  wire add_1_carry__0_i_4__2_n_0;
  wire add_1_carry__0_i_5__2_n_0;
  wire add_1_carry__0_i_5__2_n_1;
  wire add_1_carry__0_i_5__2_n_2;
  wire add_1_carry__0_i_5__2_n_3;
  wire add_1_carry__0_i_5__2_n_4;
  wire add_1_carry__0_i_5__2_n_5;
  wire add_1_carry__0_i_5__2_n_6;
  wire add_1_carry__0_i_5__2_n_7;
  wire add_1_carry__0_n_0;
  wire add_1_carry__0_n_1;
  wire add_1_carry__0_n_2;
  wire add_1_carry__0_n_3;
  wire add_1_carry__1_i_1__2_n_0;
  wire add_1_carry__1_i_2__2_n_0;
  wire add_1_carry__1_i_3__2_n_0;
  wire add_1_carry__1_i_4__2_n_0;
  wire add_1_carry__1_n_0;
  wire add_1_carry__1_n_1;
  wire add_1_carry__1_n_2;
  wire add_1_carry__1_n_3;
  wire add_1_carry__2_i_1__2_n_0;
  wire add_1_carry__2_i_2__2_n_0;
  wire add_1_carry__2_i_3__2_n_0;
  wire add_1_carry__2_i_4__2_n_0;
  wire add_1_carry__2_n_1;
  wire add_1_carry__2_n_2;
  wire add_1_carry__2_n_3;
  wire add_1_carry_i_1__2_n_0;
  wire add_1_carry_i_2__2_n_0;
  wire add_1_carry_i_3__2_n_0;
  wire add_1_carry_i_4__2_n_0;
  wire add_1_carry_i_5__2_n_0;
  wire add_1_carry_i_5__2_n_1;
  wire add_1_carry_i_5__2_n_2;
  wire add_1_carry_i_5__2_n_3;
  wire add_1_carry_i_5__2_n_4;
  wire add_1_carry_i_5__2_n_5;
  wire add_1_carry_i_5__2_n_6;
  wire add_1_carry_i_5__2_n_7;
  wire add_1_carry_i_6__2_n_0;
  wire add_1_carry_n_0;
  wire add_1_carry_n_1;
  wire add_1_carry_n_2;
  wire add_1_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]delay_element;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[3] ;
  wire [15:0]\interconnet[4] ;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [13:0]prod_0_0;
  wire [27:7]prod_0__0;
  wire prod_0_n_100;
  wire prod_0_n_101;
  wire prod_0_n_102;
  wire prod_0_n_103;
  wire prod_0_n_104;
  wire prod_0_n_105;
  wire prod_0_n_99;
  wire prod_1_n_100;
  wire prod_1_n_101;
  wire prod_1_n_102;
  wire prod_1_n_103;
  wire prod_1_n_104;
  wire prod_1_n_105;
  wire prod_1_n_99;
  wire prod_rounded_clamped_01;
  wire prod_rounded_clamped_01_carry_i_1__2_n_0;
  wire prod_rounded_clamped_01_carry_i_2__2_n_0;
  wire prod_rounded_clamped_01_carry_i_3__2_n_0;
  wire prod_rounded_clamped_01_carry_i_3__2_n_1;
  wire prod_rounded_clamped_01_carry_i_3__2_n_2;
  wire prod_rounded_clamped_01_carry_i_3__2_n_3;
  wire prod_rounded_clamped_01_carry_i_3__2_n_4;
  wire prod_rounded_clamped_01_carry_i_3__2_n_5;
  wire prod_rounded_clamped_01_carry_i_3__2_n_6;
  wire prod_rounded_clamped_01_carry_i_3__2_n_7;
  wire prod_rounded_clamped_01_carry_i_4__2_n_0;
  wire prod_rounded_clamped_01_carry_i_5__2_n_0;
  wire prod_rounded_clamped_01_carry_i_6__2_n_0;
  wire prod_rounded_clamped_01_carry_i_7__2_n_0;
  wire prod_rounded_clamped_01_carry_i_7__2_n_1;
  wire prod_rounded_clamped_01_carry_i_7__2_n_2;
  wire prod_rounded_clamped_01_carry_i_7__2_n_3;
  wire prod_rounded_clamped_01_carry_i_7__2_n_4;
  wire prod_rounded_clamped_01_carry_i_7__2_n_5;
  wire prod_rounded_clamped_01_carry_i_7__2_n_6;
  wire prod_rounded_clamped_01_carry_i_7__2_n_7;
  wire prod_rounded_clamped_01_carry_n_2;
  wire prod_rounded_clamped_01_carry_n_3;
  wire prod_rounded_clamped_02;
  wire prod_rounded_clamped_02_carry_i_1__2_n_0;
  wire prod_rounded_clamped_02_carry_i_2__2_n_0;
  wire prod_rounded_clamped_02_carry_i_3__2_n_0;
  wire prod_rounded_clamped_02_carry_i_4__2_n_0;
  wire prod_rounded_clamped_02_carry_i_5__2_n_0;
  wire prod_rounded_clamped_02_carry_i_6__2_n_0;
  wire prod_rounded_clamped_02_carry_i_7__2_n_1;
  wire prod_rounded_clamped_02_carry_i_7__2_n_2;
  wire prod_rounded_clamped_02_carry_i_7__2_n_3;
  wire prod_rounded_clamped_02_carry_i_7__2_n_4;
  wire prod_rounded_clamped_02_carry_i_7__2_n_5;
  wire prod_rounded_clamped_02_carry_i_7__2_n_6;
  wire prod_rounded_clamped_02_carry_i_7__2_n_7;
  wire prod_rounded_clamped_02_carry_n_2;
  wire prod_rounded_clamped_02_carry_n_3;
  wire prod_rounded_clamped_11;
  wire prod_rounded_clamped_11_carry_i_1__3_n_0;
  wire prod_rounded_clamped_11_carry_i_2__3_n_0;
  wire prod_rounded_clamped_11_carry_i_3__3_n_0;
  wire prod_rounded_clamped_11_carry_i_3__3_n_1;
  wire prod_rounded_clamped_11_carry_i_3__3_n_2;
  wire prod_rounded_clamped_11_carry_i_3__3_n_3;
  wire prod_rounded_clamped_11_carry_i_3__3_n_4;
  wire prod_rounded_clamped_11_carry_i_3__3_n_5;
  wire prod_rounded_clamped_11_carry_i_3__3_n_6;
  wire prod_rounded_clamped_11_carry_i_3__3_n_7;
  wire prod_rounded_clamped_11_carry_i_4__3_n_0;
  wire prod_rounded_clamped_11_carry_i_5__3_n_0;
  wire prod_rounded_clamped_11_carry_i_6__3_n_0;
  wire prod_rounded_clamped_11_carry_i_7__2_n_0;
  wire prod_rounded_clamped_11_carry_i_7__2_n_1;
  wire prod_rounded_clamped_11_carry_i_7__2_n_2;
  wire prod_rounded_clamped_11_carry_i_7__2_n_3;
  wire prod_rounded_clamped_11_carry_i_7__2_n_4;
  wire prod_rounded_clamped_11_carry_i_7__2_n_5;
  wire prod_rounded_clamped_11_carry_i_7__2_n_6;
  wire prod_rounded_clamped_11_carry_i_7__2_n_7;
  wire prod_rounded_clamped_11_carry_n_2;
  wire prod_rounded_clamped_11_carry_n_3;
  wire prod_rounded_clamped_12;
  wire prod_rounded_clamped_12_carry_i_1__3_n_0;
  wire prod_rounded_clamped_12_carry_i_2__3_n_0;
  wire prod_rounded_clamped_12_carry_i_3__3_n_0;
  wire prod_rounded_clamped_12_carry_i_4__3_n_0;
  wire prod_rounded_clamped_12_carry_i_5__3_n_0;
  wire prod_rounded_clamped_12_carry_i_6__3_n_0;
  wire prod_rounded_clamped_12_carry_i_7__3_n_1;
  wire prod_rounded_clamped_12_carry_i_7__3_n_2;
  wire prod_rounded_clamped_12_carry_i_7__3_n_3;
  wire prod_rounded_clamped_12_carry_i_7__3_n_4;
  wire prod_rounded_clamped_12_carry_i_7__3_n_5;
  wire prod_rounded_clamped_12_carry_i_7__3_n_6;
  wire prod_rounded_clamped_12_carry_i_7__3_n_7;
  wire prod_rounded_clamped_12_carry_n_2;
  wire prod_rounded_clamped_12_carry_n_3;
  wire [3:3]NLW_add_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_1_carry__2_CO_UNCONNECTED;
  wire NLW_prod_0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_0_OVERFLOW_UNCONNECTED;
  wire NLW_prod_0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_0_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_0_P_UNCONNECTED;
  wire [47:0]NLW_prod_0_PCOUT_UNCONNECTED;
  wire NLW_prod_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_1_OVERFLOW_UNCONNECTED;
  wire NLW_prod_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_1_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_1_P_UNCONNECTED;
  wire [47:0]NLW_prod_1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_i_7__2_CO_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_i_7__3_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry
       (.CI(1'b0),
        .CO({add_0_carry_n_0,add_0_carry_n_1,add_0_carry_n_2,add_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[3:0]),
        .O(\interconnet[4] [3:0]),
        .S({add_0_carry_i_1__2_n_0,add_0_carry_i_2__2_n_0,add_0_carry_i_3__2_n_0,add_0_carry_i_4__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0
       (.CI(add_0_carry_n_0),
        .CO({add_0_carry__0_n_0,add_0_carry__0_n_1,add_0_carry__0_n_2,add_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[7:4]),
        .O(\interconnet[4] [7:4]),
        .S({add_0_carry__0_i_1__2_n_0,add_0_carry__0_i_2__2_n_0,add_0_carry__0_i_3__2_n_0,add_0_carry__0_i_4__2_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_1__2
       (.I0(add_0_carry__0_i_5__2_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[7]),
        .O(add_0_carry__0_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_2__2
       (.I0(add_0_carry__0_i_5__2_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[6]),
        .O(add_0_carry__0_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_3__2
       (.I0(add_0_carry__0_i_5__2_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[5]),
        .O(add_0_carry__0_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_4__2
       (.I0(add_0_carry__0_i_5__2_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[4]),
        .O(add_0_carry__0_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0_i_5__2
       (.CI(add_0_carry_i_5__2_n_0),
        .CO({add_0_carry__0_i_5__2_n_0,add_0_carry__0_i_5__2_n_1,add_0_carry__0_i_5__2_n_2,add_0_carry__0_i_5__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_0_carry__0_i_5__2_n_4,add_0_carry__0_i_5__2_n_5,add_0_carry__0_i_5__2_n_6,add_0_carry__0_i_5__2_n_7}),
        .S(prod_0__0[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__1
       (.CI(add_0_carry__0_n_0),
        .CO({add_0_carry__1_n_0,add_0_carry__1_n_1,add_0_carry__1_n_2,add_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[11:8]),
        .O(\interconnet[4] [11:8]),
        .S({add_0_carry__1_i_1__2_n_0,add_0_carry__1_i_2__2_n_0,add_0_carry__1_i_3__2_n_0,add_0_carry__1_i_4__2_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_1__2
       (.I0(prod_rounded_clamped_01_carry_i_7__2_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[11]),
        .O(add_0_carry__1_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_2__2
       (.I0(prod_rounded_clamped_01_carry_i_7__2_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[10]),
        .O(add_0_carry__1_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_3__2
       (.I0(prod_rounded_clamped_01_carry_i_7__2_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[9]),
        .O(add_0_carry__1_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_4__2
       (.I0(prod_rounded_clamped_01_carry_i_7__2_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[8]),
        .O(add_0_carry__1_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__2
       (.CI(add_0_carry__1_n_0),
        .CO({NLW_add_0_carry__2_CO_UNCONNECTED[3],add_0_carry__2_n_1,add_0_carry__2_n_2,add_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_element[14:12]}),
        .O(\interconnet[4] [15:12]),
        .S({add_0_carry__2_i_1__2_n_0,add_0_carry__2_i_2__2_n_0,add_0_carry__2_i_3__2_n_0,add_0_carry__2_i_4__2_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_0_carry__2_i_1__2
       (.I0(prod_rounded_clamped_01),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01_carry_i_3__2_n_4),
        .I3(delay_element[15]),
        .O(add_0_carry__2_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_2__2
       (.I0(prod_rounded_clamped_01_carry_i_3__2_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[14]),
        .O(add_0_carry__2_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_3__2
       (.I0(prod_rounded_clamped_01_carry_i_3__2_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[13]),
        .O(add_0_carry__2_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_4__2
       (.I0(prod_rounded_clamped_01_carry_i_3__2_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[12]),
        .O(add_0_carry__2_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_1__2
       (.I0(add_0_carry_i_5__2_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[3]),
        .O(add_0_carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_2__2
       (.I0(add_0_carry_i_5__2_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[2]),
        .O(add_0_carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_3__2
       (.I0(add_0_carry_i_5__2_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[1]),
        .O(add_0_carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_4__2
       (.I0(add_0_carry_i_5__2_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[0]),
        .O(add_0_carry_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry_i_5__2
       (.CI(1'b0),
        .CO({add_0_carry_i_5__2_n_0,add_0_carry_i_5__2_n_1,add_0_carry_i_5__2_n_2,add_0_carry_i_5__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_0__0[8]}),
        .O({add_0_carry_i_5__2_n_4,add_0_carry_i_5__2_n_5,add_0_carry_i_5__2_n_6,add_0_carry_i_5__2_n_7}),
        .S({prod_0__0[11:9],add_0_carry_i_6__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_0_carry_i_6__2
       (.I0(prod_0__0[8]),
        .I1(prod_0__0[7]),
        .O(add_0_carry_i_6__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry
       (.CI(1'b0),
        .CO({add_1_carry_n_0,add_1_carry_n_1,add_1_carry_n_2,add_1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[3] [3:0]),
        .O(add_1[3:0]),
        .S({add_1_carry_i_1__2_n_0,add_1_carry_i_2__2_n_0,add_1_carry_i_3__2_n_0,add_1_carry_i_4__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0
       (.CI(add_1_carry_n_0),
        .CO({add_1_carry__0_n_0,add_1_carry__0_n_1,add_1_carry__0_n_2,add_1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[3] [7:4]),
        .O(add_1[7:4]),
        .S({add_1_carry__0_i_1__2_n_0,add_1_carry__0_i_2__2_n_0,add_1_carry__0_i_3__2_n_0,add_1_carry__0_i_4__2_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_1__2
       (.I0(add_1_carry__0_i_5__2_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[3] [7]),
        .O(add_1_carry__0_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_2__2
       (.I0(add_1_carry__0_i_5__2_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[3] [6]),
        .O(add_1_carry__0_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_3__2
       (.I0(add_1_carry__0_i_5__2_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[3] [5]),
        .O(add_1_carry__0_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_4__2
       (.I0(add_1_carry__0_i_5__2_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[3] [4]),
        .O(add_1_carry__0_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0_i_5__2
       (.CI(add_1_carry_i_5__2_n_0),
        .CO({add_1_carry__0_i_5__2_n_0,add_1_carry__0_i_5__2_n_1,add_1_carry__0_i_5__2_n_2,add_1_carry__0_i_5__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_1_carry__0_i_5__2_n_4,add_1_carry__0_i_5__2_n_5,add_1_carry__0_i_5__2_n_6,add_1_carry__0_i_5__2_n_7}),
        .S(p_1_in[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__1
       (.CI(add_1_carry__0_n_0),
        .CO({add_1_carry__1_n_0,add_1_carry__1_n_1,add_1_carry__1_n_2,add_1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[3] [11:8]),
        .O(add_1[11:8]),
        .S({add_1_carry__1_i_1__2_n_0,add_1_carry__1_i_2__2_n_0,add_1_carry__1_i_3__2_n_0,add_1_carry__1_i_4__2_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_1__2
       (.I0(prod_rounded_clamped_11_carry_i_7__2_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[3] [11]),
        .O(add_1_carry__1_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_2__2
       (.I0(prod_rounded_clamped_11_carry_i_7__2_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[3] [10]),
        .O(add_1_carry__1_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_3__2
       (.I0(prod_rounded_clamped_11_carry_i_7__2_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[3] [9]),
        .O(add_1_carry__1_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_4__2
       (.I0(prod_rounded_clamped_11_carry_i_7__2_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[3] [8]),
        .O(add_1_carry__1_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__2
       (.CI(add_1_carry__1_n_0),
        .CO({NLW_add_1_carry__2_CO_UNCONNECTED[3],add_1_carry__2_n_1,add_1_carry__2_n_2,add_1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\interconnet[3] [14:12]}),
        .O(add_1[15:12]),
        .S({add_1_carry__2_i_1__2_n_0,add_1_carry__2_i_2__2_n_0,add_1_carry__2_i_3__2_n_0,add_1_carry__2_i_4__2_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_1_carry__2_i_1__2
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__3_n_4),
        .I3(\interconnet[3] [15]),
        .O(add_1_carry__2_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_2__2
       (.I0(prod_rounded_clamped_11_carry_i_3__3_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[3] [14]),
        .O(add_1_carry__2_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_3__2
       (.I0(prod_rounded_clamped_11_carry_i_3__3_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[3] [13]),
        .O(add_1_carry__2_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_4__2
       (.I0(prod_rounded_clamped_11_carry_i_3__3_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[3] [12]),
        .O(add_1_carry__2_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_1__2
       (.I0(add_1_carry_i_5__2_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[3] [3]),
        .O(add_1_carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_2__2
       (.I0(add_1_carry_i_5__2_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[3] [2]),
        .O(add_1_carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_3__2
       (.I0(add_1_carry_i_5__2_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[3] [1]),
        .O(add_1_carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_4__2
       (.I0(add_1_carry_i_5__2_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[3] [0]),
        .O(add_1_carry_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry_i_5__2
       (.CI(1'b0),
        .CO({add_1_carry_i_5__2_n_0,add_1_carry_i_5__2_n_1,add_1_carry_i_5__2_n_2,add_1_carry_i_5__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_1_carry_i_5__2_n_4,add_1_carry_i_5__2_n_5,add_1_carry_i_5__2_n_6,add_1_carry_i_5__2_n_7}),
        .S({p_1_in[3:1],add_1_carry_i_6__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_1_carry_i_6__2
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_1_carry_i_6__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[0]),
        .Q(delay_element[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[10]),
        .Q(delay_element[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[11]),
        .Q(delay_element[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[12]),
        .Q(delay_element[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[13]),
        .Q(delay_element[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[14]),
        .Q(delay_element[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[15]),
        .Q(delay_element[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[1]),
        .Q(delay_element[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[2]),
        .Q(delay_element[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[3]),
        .Q(delay_element[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[4]),
        .Q(delay_element[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[5]),
        .Q(delay_element[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[6]),
        .Q(delay_element[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[7]),
        .Q(delay_element[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[8]),
        .Q(delay_element[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[9]),
        .Q(delay_element[9]),
        .R(i_rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_0
       (.A({prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_0_P_UNCONNECTED[47:28],prod_0__0,prod_0_n_99,prod_0_n_100,prod_0_n_101,prod_0_n_102,prod_0_n_103,prod_0_n_104,prod_0_n_105}),
        .PATTERNBDETECT(NLW_prod_0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_1
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_1_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_1_n_99,prod_1_n_100,prod_1_n_101,prod_1_n_102,prod_1_n_103,prod_1_n_104,prod_1_n_105}),
        .PATTERNBDETECT(NLW_prod_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_1_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_01_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED[3],prod_rounded_clamped_01,prod_rounded_clamped_01_carry_n_2,prod_rounded_clamped_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_01_carry_i_1__2_n_0,prod_rounded_clamped_01_carry_i_2__2_n_0,prod_rounded_clamped_01_carry_i_3__2_n_4}),
        .O(NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_01_carry_i_4__2_n_0,prod_rounded_clamped_01_carry_i_5__2_n_0,prod_rounded_clamped_01_carry_i_6__2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_1__2
       (.I0(prod_rounded_clamped_02_carry_i_7__2_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__2_n_4),
        .O(prod_rounded_clamped_01_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_01_carry_i_2__2
       (.I0(prod_rounded_clamped_02_carry_i_7__2_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__2_n_6),
        .O(prod_rounded_clamped_01_carry_i_2__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_3__2
       (.CI(prod_rounded_clamped_01_carry_i_7__2_n_0),
        .CO({prod_rounded_clamped_01_carry_i_3__2_n_0,prod_rounded_clamped_01_carry_i_3__2_n_1,prod_rounded_clamped_01_carry_i_3__2_n_2,prod_rounded_clamped_01_carry_i_3__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_3__2_n_4,prod_rounded_clamped_01_carry_i_3__2_n_5,prod_rounded_clamped_01_carry_i_3__2_n_6,prod_rounded_clamped_01_carry_i_3__2_n_7}),
        .S(prod_0__0[23:20]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_4__2
       (.I0(prod_rounded_clamped_02_carry_i_7__2_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__2_n_4),
        .O(prod_rounded_clamped_01_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_5__2
       (.I0(prod_rounded_clamped_02_carry_i_7__2_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__2_n_6),
        .O(prod_rounded_clamped_01_carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_6__2
       (.I0(prod_rounded_clamped_01_carry_i_3__2_n_5),
        .I1(prod_rounded_clamped_01_carry_i_3__2_n_4),
        .O(prod_rounded_clamped_01_carry_i_6__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_7__2
       (.CI(add_0_carry__0_i_5__2_n_0),
        .CO({prod_rounded_clamped_01_carry_i_7__2_n_0,prod_rounded_clamped_01_carry_i_7__2_n_1,prod_rounded_clamped_01_carry_i_7__2_n_2,prod_rounded_clamped_01_carry_i_7__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_7__2_n_4,prod_rounded_clamped_01_carry_i_7__2_n_5,prod_rounded_clamped_01_carry_i_7__2_n_6,prod_rounded_clamped_01_carry_i_7__2_n_7}),
        .S(prod_0__0[19:16]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_02_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED[3],prod_rounded_clamped_02,prod_rounded_clamped_02_carry_n_2,prod_rounded_clamped_02_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_02_carry_i_1__2_n_0,prod_rounded_clamped_02_carry_i_2__2_n_0,prod_rounded_clamped_02_carry_i_3__2_n_0}),
        .O(NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_02_carry_i_4__2_n_0,prod_rounded_clamped_02_carry_i_5__2_n_0,prod_rounded_clamped_02_carry_i_6__2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_1__2
       (.I0(prod_rounded_clamped_02_carry_i_7__2_n_4),
        .I1(prod_rounded_clamped_02_carry_i_7__2_n_5),
        .O(prod_rounded_clamped_02_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_02_carry_i_2__2
       (.I0(prod_rounded_clamped_02_carry_i_7__2_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__2_n_6),
        .O(prod_rounded_clamped_02_carry_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_02_carry_i_3__2
       (.I0(prod_rounded_clamped_01_carry_i_3__2_n_4),
        .O(prod_rounded_clamped_02_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_4__2
       (.I0(prod_rounded_clamped_02_carry_i_7__2_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__2_n_4),
        .O(prod_rounded_clamped_02_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_5__2
       (.I0(prod_rounded_clamped_02_carry_i_7__2_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__2_n_6),
        .O(prod_rounded_clamped_02_carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_6__2
       (.I0(prod_rounded_clamped_01_carry_i_3__2_n_4),
        .I1(prod_rounded_clamped_01_carry_i_3__2_n_5),
        .O(prod_rounded_clamped_02_carry_i_6__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_02_carry_i_7__2
       (.CI(prod_rounded_clamped_01_carry_i_3__2_n_0),
        .CO({NLW_prod_rounded_clamped_02_carry_i_7__2_CO_UNCONNECTED[3],prod_rounded_clamped_02_carry_i_7__2_n_1,prod_rounded_clamped_02_carry_i_7__2_n_2,prod_rounded_clamped_02_carry_i_7__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_02_carry_i_7__2_n_4,prod_rounded_clamped_02_carry_i_7__2_n_5,prod_rounded_clamped_02_carry_i_7__2_n_6,prod_rounded_clamped_02_carry_i_7__2_n_7}),
        .S(prod_0__0[27:24]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_11_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED[3],prod_rounded_clamped_11,prod_rounded_clamped_11_carry_n_2,prod_rounded_clamped_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_11_carry_i_1__3_n_0,prod_rounded_clamped_11_carry_i_2__3_n_0,prod_rounded_clamped_11_carry_i_3__3_n_4}),
        .O(NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_11_carry_i_4__3_n_0,prod_rounded_clamped_11_carry_i_5__3_n_0,prod_rounded_clamped_11_carry_i_6__3_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_1__3
       (.I0(prod_rounded_clamped_12_carry_i_7__3_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__3_n_4),
        .O(prod_rounded_clamped_11_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_11_carry_i_2__3
       (.I0(prod_rounded_clamped_12_carry_i_7__3_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__3_n_6),
        .O(prod_rounded_clamped_11_carry_i_2__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_3__3
       (.CI(prod_rounded_clamped_11_carry_i_7__2_n_0),
        .CO({prod_rounded_clamped_11_carry_i_3__3_n_0,prod_rounded_clamped_11_carry_i_3__3_n_1,prod_rounded_clamped_11_carry_i_3__3_n_2,prod_rounded_clamped_11_carry_i_3__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_3__3_n_4,prod_rounded_clamped_11_carry_i_3__3_n_5,prod_rounded_clamped_11_carry_i_3__3_n_6,prod_rounded_clamped_11_carry_i_3__3_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_4__3
       (.I0(prod_rounded_clamped_12_carry_i_7__3_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__3_n_4),
        .O(prod_rounded_clamped_11_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_5__3
       (.I0(prod_rounded_clamped_12_carry_i_7__3_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__3_n_6),
        .O(prod_rounded_clamped_11_carry_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_6__3
       (.I0(prod_rounded_clamped_11_carry_i_3__3_n_5),
        .I1(prod_rounded_clamped_11_carry_i_3__3_n_4),
        .O(prod_rounded_clamped_11_carry_i_6__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_7__2
       (.CI(add_1_carry__0_i_5__2_n_0),
        .CO({prod_rounded_clamped_11_carry_i_7__2_n_0,prod_rounded_clamped_11_carry_i_7__2_n_1,prod_rounded_clamped_11_carry_i_7__2_n_2,prod_rounded_clamped_11_carry_i_7__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_7__2_n_4,prod_rounded_clamped_11_carry_i_7__2_n_5,prod_rounded_clamped_11_carry_i_7__2_n_6,prod_rounded_clamped_11_carry_i_7__2_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_12_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED[3],prod_rounded_clamped_12,prod_rounded_clamped_12_carry_n_2,prod_rounded_clamped_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_12_carry_i_1__3_n_0,prod_rounded_clamped_12_carry_i_2__3_n_0,prod_rounded_clamped_12_carry_i_3__3_n_0}),
        .O(NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_12_carry_i_4__3_n_0,prod_rounded_clamped_12_carry_i_5__3_n_0,prod_rounded_clamped_12_carry_i_6__3_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_1__3
       (.I0(prod_rounded_clamped_12_carry_i_7__3_n_4),
        .I1(prod_rounded_clamped_12_carry_i_7__3_n_5),
        .O(prod_rounded_clamped_12_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_12_carry_i_2__3
       (.I0(prod_rounded_clamped_12_carry_i_7__3_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__3_n_6),
        .O(prod_rounded_clamped_12_carry_i_2__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_12_carry_i_3__3
       (.I0(prod_rounded_clamped_11_carry_i_3__3_n_4),
        .O(prod_rounded_clamped_12_carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_4__3
       (.I0(prod_rounded_clamped_12_carry_i_7__3_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__3_n_4),
        .O(prod_rounded_clamped_12_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_5__3
       (.I0(prod_rounded_clamped_12_carry_i_7__3_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__3_n_6),
        .O(prod_rounded_clamped_12_carry_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_6__3
       (.I0(prod_rounded_clamped_11_carry_i_3__3_n_4),
        .I1(prod_rounded_clamped_11_carry_i_3__3_n_5),
        .O(prod_rounded_clamped_12_carry_i_6__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_12_carry_i_7__3
       (.CI(prod_rounded_clamped_11_carry_i_3__3_n_0),
        .CO({NLW_prod_rounded_clamped_12_carry_i_7__3_CO_UNCONNECTED[3],prod_rounded_clamped_12_carry_i_7__3_n_1,prod_rounded_clamped_12_carry_i_7__3_n_2,prod_rounded_clamped_12_carry_i_7__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_12_carry_i_7__3_n_4,prod_rounded_clamped_12_carry_i_7__3_n_5,prod_rounded_clamped_12_carry_i_7__3_n_6,prod_rounded_clamped_12_carry_i_7__3_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock_parallel" *) 
module FIR_subblock_parallel_12
   (\interconnet[5] ,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    prod_0_0,
    \interconnet[4] );
  output [15:0]\interconnet[5] ;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [13:0]prod_0_0;
  input [15:0]\interconnet[4] ;

  wire [13:0]A;
  wire add_0_carry__0_i_1__3_n_0;
  wire add_0_carry__0_i_2__3_n_0;
  wire add_0_carry__0_i_3__3_n_0;
  wire add_0_carry__0_i_4__3_n_0;
  wire add_0_carry__0_i_5__3_n_0;
  wire add_0_carry__0_i_5__3_n_1;
  wire add_0_carry__0_i_5__3_n_2;
  wire add_0_carry__0_i_5__3_n_3;
  wire add_0_carry__0_i_5__3_n_4;
  wire add_0_carry__0_i_5__3_n_5;
  wire add_0_carry__0_i_5__3_n_6;
  wire add_0_carry__0_i_5__3_n_7;
  wire add_0_carry__0_n_0;
  wire add_0_carry__0_n_1;
  wire add_0_carry__0_n_2;
  wire add_0_carry__0_n_3;
  wire add_0_carry__1_i_1__3_n_0;
  wire add_0_carry__1_i_2__3_n_0;
  wire add_0_carry__1_i_3__3_n_0;
  wire add_0_carry__1_i_4__3_n_0;
  wire add_0_carry__1_n_0;
  wire add_0_carry__1_n_1;
  wire add_0_carry__1_n_2;
  wire add_0_carry__1_n_3;
  wire add_0_carry__2_i_1__3_n_0;
  wire add_0_carry__2_i_2__3_n_0;
  wire add_0_carry__2_i_3__3_n_0;
  wire add_0_carry__2_i_4__3_n_0;
  wire add_0_carry__2_n_1;
  wire add_0_carry__2_n_2;
  wire add_0_carry__2_n_3;
  wire add_0_carry_i_1__3_n_0;
  wire add_0_carry_i_2__3_n_0;
  wire add_0_carry_i_3__3_n_0;
  wire add_0_carry_i_4__3_n_0;
  wire add_0_carry_i_5__3_n_0;
  wire add_0_carry_i_5__3_n_1;
  wire add_0_carry_i_5__3_n_2;
  wire add_0_carry_i_5__3_n_3;
  wire add_0_carry_i_5__3_n_4;
  wire add_0_carry_i_5__3_n_5;
  wire add_0_carry_i_5__3_n_6;
  wire add_0_carry_i_5__3_n_7;
  wire add_0_carry_i_6__3_n_0;
  wire add_0_carry_n_0;
  wire add_0_carry_n_1;
  wire add_0_carry_n_2;
  wire add_0_carry_n_3;
  wire [15:0]add_1;
  wire add_1_carry__0_i_1__3_n_0;
  wire add_1_carry__0_i_2__3_n_0;
  wire add_1_carry__0_i_3__3_n_0;
  wire add_1_carry__0_i_4__3_n_0;
  wire add_1_carry__0_i_5__3_n_0;
  wire add_1_carry__0_i_5__3_n_1;
  wire add_1_carry__0_i_5__3_n_2;
  wire add_1_carry__0_i_5__3_n_3;
  wire add_1_carry__0_i_5__3_n_4;
  wire add_1_carry__0_i_5__3_n_5;
  wire add_1_carry__0_i_5__3_n_6;
  wire add_1_carry__0_i_5__3_n_7;
  wire add_1_carry__0_n_0;
  wire add_1_carry__0_n_1;
  wire add_1_carry__0_n_2;
  wire add_1_carry__0_n_3;
  wire add_1_carry__1_i_1__3_n_0;
  wire add_1_carry__1_i_2__3_n_0;
  wire add_1_carry__1_i_3__3_n_0;
  wire add_1_carry__1_i_4__3_n_0;
  wire add_1_carry__1_n_0;
  wire add_1_carry__1_n_1;
  wire add_1_carry__1_n_2;
  wire add_1_carry__1_n_3;
  wire add_1_carry__2_i_1__3_n_0;
  wire add_1_carry__2_i_2__3_n_0;
  wire add_1_carry__2_i_3__3_n_0;
  wire add_1_carry__2_i_4__3_n_0;
  wire add_1_carry__2_n_1;
  wire add_1_carry__2_n_2;
  wire add_1_carry__2_n_3;
  wire add_1_carry_i_1__3_n_0;
  wire add_1_carry_i_2__3_n_0;
  wire add_1_carry_i_3__3_n_0;
  wire add_1_carry_i_4__3_n_0;
  wire add_1_carry_i_5__3_n_0;
  wire add_1_carry_i_5__3_n_1;
  wire add_1_carry_i_5__3_n_2;
  wire add_1_carry_i_5__3_n_3;
  wire add_1_carry_i_5__3_n_4;
  wire add_1_carry_i_5__3_n_5;
  wire add_1_carry_i_5__3_n_6;
  wire add_1_carry_i_5__3_n_7;
  wire add_1_carry_i_6__3_n_0;
  wire add_1_carry_n_0;
  wire add_1_carry_n_1;
  wire add_1_carry_n_2;
  wire add_1_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]delay_element;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[4] ;
  wire [15:0]\interconnet[5] ;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [13:0]prod_0_0;
  wire [27:7]prod_0__0;
  wire prod_0_n_100;
  wire prod_0_n_101;
  wire prod_0_n_102;
  wire prod_0_n_103;
  wire prod_0_n_104;
  wire prod_0_n_105;
  wire prod_0_n_99;
  wire prod_1_n_100;
  wire prod_1_n_101;
  wire prod_1_n_102;
  wire prod_1_n_103;
  wire prod_1_n_104;
  wire prod_1_n_105;
  wire prod_1_n_99;
  wire prod_rounded_clamped_01;
  wire prod_rounded_clamped_01_carry_i_1__3_n_0;
  wire prod_rounded_clamped_01_carry_i_2__3_n_0;
  wire prod_rounded_clamped_01_carry_i_3__3_n_0;
  wire prod_rounded_clamped_01_carry_i_3__3_n_1;
  wire prod_rounded_clamped_01_carry_i_3__3_n_2;
  wire prod_rounded_clamped_01_carry_i_3__3_n_3;
  wire prod_rounded_clamped_01_carry_i_3__3_n_4;
  wire prod_rounded_clamped_01_carry_i_3__3_n_5;
  wire prod_rounded_clamped_01_carry_i_3__3_n_6;
  wire prod_rounded_clamped_01_carry_i_3__3_n_7;
  wire prod_rounded_clamped_01_carry_i_4__3_n_0;
  wire prod_rounded_clamped_01_carry_i_5__3_n_0;
  wire prod_rounded_clamped_01_carry_i_6__3_n_0;
  wire prod_rounded_clamped_01_carry_i_7__3_n_0;
  wire prod_rounded_clamped_01_carry_i_7__3_n_1;
  wire prod_rounded_clamped_01_carry_i_7__3_n_2;
  wire prod_rounded_clamped_01_carry_i_7__3_n_3;
  wire prod_rounded_clamped_01_carry_i_7__3_n_4;
  wire prod_rounded_clamped_01_carry_i_7__3_n_5;
  wire prod_rounded_clamped_01_carry_i_7__3_n_6;
  wire prod_rounded_clamped_01_carry_i_7__3_n_7;
  wire prod_rounded_clamped_01_carry_n_2;
  wire prod_rounded_clamped_01_carry_n_3;
  wire prod_rounded_clamped_02;
  wire prod_rounded_clamped_02_carry_i_1__3_n_0;
  wire prod_rounded_clamped_02_carry_i_2__3_n_0;
  wire prod_rounded_clamped_02_carry_i_3__3_n_0;
  wire prod_rounded_clamped_02_carry_i_4__3_n_0;
  wire prod_rounded_clamped_02_carry_i_5__3_n_0;
  wire prod_rounded_clamped_02_carry_i_6__3_n_0;
  wire prod_rounded_clamped_02_carry_i_7__3_n_1;
  wire prod_rounded_clamped_02_carry_i_7__3_n_2;
  wire prod_rounded_clamped_02_carry_i_7__3_n_3;
  wire prod_rounded_clamped_02_carry_i_7__3_n_4;
  wire prod_rounded_clamped_02_carry_i_7__3_n_5;
  wire prod_rounded_clamped_02_carry_i_7__3_n_6;
  wire prod_rounded_clamped_02_carry_i_7__3_n_7;
  wire prod_rounded_clamped_02_carry_n_2;
  wire prod_rounded_clamped_02_carry_n_3;
  wire prod_rounded_clamped_11;
  wire prod_rounded_clamped_11_carry_i_1__4_n_0;
  wire prod_rounded_clamped_11_carry_i_2__4_n_0;
  wire prod_rounded_clamped_11_carry_i_3__4_n_0;
  wire prod_rounded_clamped_11_carry_i_3__4_n_1;
  wire prod_rounded_clamped_11_carry_i_3__4_n_2;
  wire prod_rounded_clamped_11_carry_i_3__4_n_3;
  wire prod_rounded_clamped_11_carry_i_3__4_n_4;
  wire prod_rounded_clamped_11_carry_i_3__4_n_5;
  wire prod_rounded_clamped_11_carry_i_3__4_n_6;
  wire prod_rounded_clamped_11_carry_i_3__4_n_7;
  wire prod_rounded_clamped_11_carry_i_4__4_n_0;
  wire prod_rounded_clamped_11_carry_i_5__4_n_0;
  wire prod_rounded_clamped_11_carry_i_6__4_n_0;
  wire prod_rounded_clamped_11_carry_i_7__3_n_0;
  wire prod_rounded_clamped_11_carry_i_7__3_n_1;
  wire prod_rounded_clamped_11_carry_i_7__3_n_2;
  wire prod_rounded_clamped_11_carry_i_7__3_n_3;
  wire prod_rounded_clamped_11_carry_i_7__3_n_4;
  wire prod_rounded_clamped_11_carry_i_7__3_n_5;
  wire prod_rounded_clamped_11_carry_i_7__3_n_6;
  wire prod_rounded_clamped_11_carry_i_7__3_n_7;
  wire prod_rounded_clamped_11_carry_n_2;
  wire prod_rounded_clamped_11_carry_n_3;
  wire prod_rounded_clamped_12;
  wire prod_rounded_clamped_12_carry_i_1__4_n_0;
  wire prod_rounded_clamped_12_carry_i_2__4_n_0;
  wire prod_rounded_clamped_12_carry_i_3__4_n_0;
  wire prod_rounded_clamped_12_carry_i_4__4_n_0;
  wire prod_rounded_clamped_12_carry_i_5__4_n_0;
  wire prod_rounded_clamped_12_carry_i_6__4_n_0;
  wire prod_rounded_clamped_12_carry_i_7__4_n_1;
  wire prod_rounded_clamped_12_carry_i_7__4_n_2;
  wire prod_rounded_clamped_12_carry_i_7__4_n_3;
  wire prod_rounded_clamped_12_carry_i_7__4_n_4;
  wire prod_rounded_clamped_12_carry_i_7__4_n_5;
  wire prod_rounded_clamped_12_carry_i_7__4_n_6;
  wire prod_rounded_clamped_12_carry_i_7__4_n_7;
  wire prod_rounded_clamped_12_carry_n_2;
  wire prod_rounded_clamped_12_carry_n_3;
  wire [3:3]NLW_add_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_1_carry__2_CO_UNCONNECTED;
  wire NLW_prod_0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_0_OVERFLOW_UNCONNECTED;
  wire NLW_prod_0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_0_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_0_P_UNCONNECTED;
  wire [47:0]NLW_prod_0_PCOUT_UNCONNECTED;
  wire NLW_prod_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_1_OVERFLOW_UNCONNECTED;
  wire NLW_prod_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_1_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_1_P_UNCONNECTED;
  wire [47:0]NLW_prod_1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_i_7__3_CO_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_i_7__4_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry
       (.CI(1'b0),
        .CO({add_0_carry_n_0,add_0_carry_n_1,add_0_carry_n_2,add_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[3:0]),
        .O(\interconnet[5] [3:0]),
        .S({add_0_carry_i_1__3_n_0,add_0_carry_i_2__3_n_0,add_0_carry_i_3__3_n_0,add_0_carry_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0
       (.CI(add_0_carry_n_0),
        .CO({add_0_carry__0_n_0,add_0_carry__0_n_1,add_0_carry__0_n_2,add_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[7:4]),
        .O(\interconnet[5] [7:4]),
        .S({add_0_carry__0_i_1__3_n_0,add_0_carry__0_i_2__3_n_0,add_0_carry__0_i_3__3_n_0,add_0_carry__0_i_4__3_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_1__3
       (.I0(add_0_carry__0_i_5__3_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[7]),
        .O(add_0_carry__0_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_2__3
       (.I0(add_0_carry__0_i_5__3_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[6]),
        .O(add_0_carry__0_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_3__3
       (.I0(add_0_carry__0_i_5__3_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[5]),
        .O(add_0_carry__0_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_4__3
       (.I0(add_0_carry__0_i_5__3_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[4]),
        .O(add_0_carry__0_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0_i_5__3
       (.CI(add_0_carry_i_5__3_n_0),
        .CO({add_0_carry__0_i_5__3_n_0,add_0_carry__0_i_5__3_n_1,add_0_carry__0_i_5__3_n_2,add_0_carry__0_i_5__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_0_carry__0_i_5__3_n_4,add_0_carry__0_i_5__3_n_5,add_0_carry__0_i_5__3_n_6,add_0_carry__0_i_5__3_n_7}),
        .S(prod_0__0[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__1
       (.CI(add_0_carry__0_n_0),
        .CO({add_0_carry__1_n_0,add_0_carry__1_n_1,add_0_carry__1_n_2,add_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[11:8]),
        .O(\interconnet[5] [11:8]),
        .S({add_0_carry__1_i_1__3_n_0,add_0_carry__1_i_2__3_n_0,add_0_carry__1_i_3__3_n_0,add_0_carry__1_i_4__3_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_1__3
       (.I0(prod_rounded_clamped_01_carry_i_7__3_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[11]),
        .O(add_0_carry__1_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_2__3
       (.I0(prod_rounded_clamped_01_carry_i_7__3_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[10]),
        .O(add_0_carry__1_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_3__3
       (.I0(prod_rounded_clamped_01_carry_i_7__3_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[9]),
        .O(add_0_carry__1_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_4__3
       (.I0(prod_rounded_clamped_01_carry_i_7__3_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[8]),
        .O(add_0_carry__1_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__2
       (.CI(add_0_carry__1_n_0),
        .CO({NLW_add_0_carry__2_CO_UNCONNECTED[3],add_0_carry__2_n_1,add_0_carry__2_n_2,add_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_element[14:12]}),
        .O(\interconnet[5] [15:12]),
        .S({add_0_carry__2_i_1__3_n_0,add_0_carry__2_i_2__3_n_0,add_0_carry__2_i_3__3_n_0,add_0_carry__2_i_4__3_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_0_carry__2_i_1__3
       (.I0(prod_rounded_clamped_01),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01_carry_i_3__3_n_4),
        .I3(delay_element[15]),
        .O(add_0_carry__2_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_2__3
       (.I0(prod_rounded_clamped_01_carry_i_3__3_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[14]),
        .O(add_0_carry__2_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_3__3
       (.I0(prod_rounded_clamped_01_carry_i_3__3_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[13]),
        .O(add_0_carry__2_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_4__3
       (.I0(prod_rounded_clamped_01_carry_i_3__3_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[12]),
        .O(add_0_carry__2_i_4__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_1__3
       (.I0(add_0_carry_i_5__3_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[3]),
        .O(add_0_carry_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_2__3
       (.I0(add_0_carry_i_5__3_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[2]),
        .O(add_0_carry_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_3__3
       (.I0(add_0_carry_i_5__3_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[1]),
        .O(add_0_carry_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_4__3
       (.I0(add_0_carry_i_5__3_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[0]),
        .O(add_0_carry_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry_i_5__3
       (.CI(1'b0),
        .CO({add_0_carry_i_5__3_n_0,add_0_carry_i_5__3_n_1,add_0_carry_i_5__3_n_2,add_0_carry_i_5__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_0__0[8]}),
        .O({add_0_carry_i_5__3_n_4,add_0_carry_i_5__3_n_5,add_0_carry_i_5__3_n_6,add_0_carry_i_5__3_n_7}),
        .S({prod_0__0[11:9],add_0_carry_i_6__3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_0_carry_i_6__3
       (.I0(prod_0__0[8]),
        .I1(prod_0__0[7]),
        .O(add_0_carry_i_6__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry
       (.CI(1'b0),
        .CO({add_1_carry_n_0,add_1_carry_n_1,add_1_carry_n_2,add_1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[4] [3:0]),
        .O(add_1[3:0]),
        .S({add_1_carry_i_1__3_n_0,add_1_carry_i_2__3_n_0,add_1_carry_i_3__3_n_0,add_1_carry_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0
       (.CI(add_1_carry_n_0),
        .CO({add_1_carry__0_n_0,add_1_carry__0_n_1,add_1_carry__0_n_2,add_1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[4] [7:4]),
        .O(add_1[7:4]),
        .S({add_1_carry__0_i_1__3_n_0,add_1_carry__0_i_2__3_n_0,add_1_carry__0_i_3__3_n_0,add_1_carry__0_i_4__3_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_1__3
       (.I0(add_1_carry__0_i_5__3_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[4] [7]),
        .O(add_1_carry__0_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_2__3
       (.I0(add_1_carry__0_i_5__3_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[4] [6]),
        .O(add_1_carry__0_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_3__3
       (.I0(add_1_carry__0_i_5__3_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[4] [5]),
        .O(add_1_carry__0_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_4__3
       (.I0(add_1_carry__0_i_5__3_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[4] [4]),
        .O(add_1_carry__0_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0_i_5__3
       (.CI(add_1_carry_i_5__3_n_0),
        .CO({add_1_carry__0_i_5__3_n_0,add_1_carry__0_i_5__3_n_1,add_1_carry__0_i_5__3_n_2,add_1_carry__0_i_5__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_1_carry__0_i_5__3_n_4,add_1_carry__0_i_5__3_n_5,add_1_carry__0_i_5__3_n_6,add_1_carry__0_i_5__3_n_7}),
        .S(p_1_in[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__1
       (.CI(add_1_carry__0_n_0),
        .CO({add_1_carry__1_n_0,add_1_carry__1_n_1,add_1_carry__1_n_2,add_1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[4] [11:8]),
        .O(add_1[11:8]),
        .S({add_1_carry__1_i_1__3_n_0,add_1_carry__1_i_2__3_n_0,add_1_carry__1_i_3__3_n_0,add_1_carry__1_i_4__3_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_1__3
       (.I0(prod_rounded_clamped_11_carry_i_7__3_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[4] [11]),
        .O(add_1_carry__1_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_2__3
       (.I0(prod_rounded_clamped_11_carry_i_7__3_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[4] [10]),
        .O(add_1_carry__1_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_3__3
       (.I0(prod_rounded_clamped_11_carry_i_7__3_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[4] [9]),
        .O(add_1_carry__1_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_4__3
       (.I0(prod_rounded_clamped_11_carry_i_7__3_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[4] [8]),
        .O(add_1_carry__1_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__2
       (.CI(add_1_carry__1_n_0),
        .CO({NLW_add_1_carry__2_CO_UNCONNECTED[3],add_1_carry__2_n_1,add_1_carry__2_n_2,add_1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\interconnet[4] [14:12]}),
        .O(add_1[15:12]),
        .S({add_1_carry__2_i_1__3_n_0,add_1_carry__2_i_2__3_n_0,add_1_carry__2_i_3__3_n_0,add_1_carry__2_i_4__3_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_1_carry__2_i_1__3
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__4_n_4),
        .I3(\interconnet[4] [15]),
        .O(add_1_carry__2_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_2__3
       (.I0(prod_rounded_clamped_11_carry_i_3__4_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[4] [14]),
        .O(add_1_carry__2_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_3__3
       (.I0(prod_rounded_clamped_11_carry_i_3__4_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[4] [13]),
        .O(add_1_carry__2_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_4__3
       (.I0(prod_rounded_clamped_11_carry_i_3__4_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[4] [12]),
        .O(add_1_carry__2_i_4__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_1__3
       (.I0(add_1_carry_i_5__3_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[4] [3]),
        .O(add_1_carry_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_2__3
       (.I0(add_1_carry_i_5__3_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[4] [2]),
        .O(add_1_carry_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_3__3
       (.I0(add_1_carry_i_5__3_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[4] [1]),
        .O(add_1_carry_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_4__3
       (.I0(add_1_carry_i_5__3_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[4] [0]),
        .O(add_1_carry_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry_i_5__3
       (.CI(1'b0),
        .CO({add_1_carry_i_5__3_n_0,add_1_carry_i_5__3_n_1,add_1_carry_i_5__3_n_2,add_1_carry_i_5__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_1_carry_i_5__3_n_4,add_1_carry_i_5__3_n_5,add_1_carry_i_5__3_n_6,add_1_carry_i_5__3_n_7}),
        .S({p_1_in[3:1],add_1_carry_i_6__3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_1_carry_i_6__3
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_1_carry_i_6__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[0]),
        .Q(delay_element[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[10]),
        .Q(delay_element[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[11]),
        .Q(delay_element[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[12]),
        .Q(delay_element[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[13]),
        .Q(delay_element[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[14]),
        .Q(delay_element[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[15]),
        .Q(delay_element[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[1]),
        .Q(delay_element[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[2]),
        .Q(delay_element[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[3]),
        .Q(delay_element[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[4]),
        .Q(delay_element[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[5]),
        .Q(delay_element[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[6]),
        .Q(delay_element[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[7]),
        .Q(delay_element[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[8]),
        .Q(delay_element[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[9]),
        .Q(delay_element[9]),
        .R(i_rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_0
       (.A({prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_0_P_UNCONNECTED[47:28],prod_0__0,prod_0_n_99,prod_0_n_100,prod_0_n_101,prod_0_n_102,prod_0_n_103,prod_0_n_104,prod_0_n_105}),
        .PATTERNBDETECT(NLW_prod_0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_1
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_1_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_1_n_99,prod_1_n_100,prod_1_n_101,prod_1_n_102,prod_1_n_103,prod_1_n_104,prod_1_n_105}),
        .PATTERNBDETECT(NLW_prod_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_1_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_01_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED[3],prod_rounded_clamped_01,prod_rounded_clamped_01_carry_n_2,prod_rounded_clamped_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_01_carry_i_1__3_n_0,prod_rounded_clamped_01_carry_i_2__3_n_0,prod_rounded_clamped_01_carry_i_3__3_n_4}),
        .O(NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_01_carry_i_4__3_n_0,prod_rounded_clamped_01_carry_i_5__3_n_0,prod_rounded_clamped_01_carry_i_6__3_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_1__3
       (.I0(prod_rounded_clamped_02_carry_i_7__3_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__3_n_4),
        .O(prod_rounded_clamped_01_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_01_carry_i_2__3
       (.I0(prod_rounded_clamped_02_carry_i_7__3_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__3_n_6),
        .O(prod_rounded_clamped_01_carry_i_2__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_3__3
       (.CI(prod_rounded_clamped_01_carry_i_7__3_n_0),
        .CO({prod_rounded_clamped_01_carry_i_3__3_n_0,prod_rounded_clamped_01_carry_i_3__3_n_1,prod_rounded_clamped_01_carry_i_3__3_n_2,prod_rounded_clamped_01_carry_i_3__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_3__3_n_4,prod_rounded_clamped_01_carry_i_3__3_n_5,prod_rounded_clamped_01_carry_i_3__3_n_6,prod_rounded_clamped_01_carry_i_3__3_n_7}),
        .S(prod_0__0[23:20]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_4__3
       (.I0(prod_rounded_clamped_02_carry_i_7__3_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__3_n_4),
        .O(prod_rounded_clamped_01_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_5__3
       (.I0(prod_rounded_clamped_02_carry_i_7__3_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__3_n_6),
        .O(prod_rounded_clamped_01_carry_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_6__3
       (.I0(prod_rounded_clamped_01_carry_i_3__3_n_5),
        .I1(prod_rounded_clamped_01_carry_i_3__3_n_4),
        .O(prod_rounded_clamped_01_carry_i_6__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_7__3
       (.CI(add_0_carry__0_i_5__3_n_0),
        .CO({prod_rounded_clamped_01_carry_i_7__3_n_0,prod_rounded_clamped_01_carry_i_7__3_n_1,prod_rounded_clamped_01_carry_i_7__3_n_2,prod_rounded_clamped_01_carry_i_7__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_7__3_n_4,prod_rounded_clamped_01_carry_i_7__3_n_5,prod_rounded_clamped_01_carry_i_7__3_n_6,prod_rounded_clamped_01_carry_i_7__3_n_7}),
        .S(prod_0__0[19:16]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_02_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED[3],prod_rounded_clamped_02,prod_rounded_clamped_02_carry_n_2,prod_rounded_clamped_02_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_02_carry_i_1__3_n_0,prod_rounded_clamped_02_carry_i_2__3_n_0,prod_rounded_clamped_02_carry_i_3__3_n_0}),
        .O(NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_02_carry_i_4__3_n_0,prod_rounded_clamped_02_carry_i_5__3_n_0,prod_rounded_clamped_02_carry_i_6__3_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_1__3
       (.I0(prod_rounded_clamped_02_carry_i_7__3_n_4),
        .I1(prod_rounded_clamped_02_carry_i_7__3_n_5),
        .O(prod_rounded_clamped_02_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_02_carry_i_2__3
       (.I0(prod_rounded_clamped_02_carry_i_7__3_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__3_n_6),
        .O(prod_rounded_clamped_02_carry_i_2__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_02_carry_i_3__3
       (.I0(prod_rounded_clamped_01_carry_i_3__3_n_4),
        .O(prod_rounded_clamped_02_carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_4__3
       (.I0(prod_rounded_clamped_02_carry_i_7__3_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__3_n_4),
        .O(prod_rounded_clamped_02_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_5__3
       (.I0(prod_rounded_clamped_02_carry_i_7__3_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__3_n_6),
        .O(prod_rounded_clamped_02_carry_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_6__3
       (.I0(prod_rounded_clamped_01_carry_i_3__3_n_4),
        .I1(prod_rounded_clamped_01_carry_i_3__3_n_5),
        .O(prod_rounded_clamped_02_carry_i_6__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_02_carry_i_7__3
       (.CI(prod_rounded_clamped_01_carry_i_3__3_n_0),
        .CO({NLW_prod_rounded_clamped_02_carry_i_7__3_CO_UNCONNECTED[3],prod_rounded_clamped_02_carry_i_7__3_n_1,prod_rounded_clamped_02_carry_i_7__3_n_2,prod_rounded_clamped_02_carry_i_7__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_02_carry_i_7__3_n_4,prod_rounded_clamped_02_carry_i_7__3_n_5,prod_rounded_clamped_02_carry_i_7__3_n_6,prod_rounded_clamped_02_carry_i_7__3_n_7}),
        .S(prod_0__0[27:24]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_11_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED[3],prod_rounded_clamped_11,prod_rounded_clamped_11_carry_n_2,prod_rounded_clamped_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_11_carry_i_1__4_n_0,prod_rounded_clamped_11_carry_i_2__4_n_0,prod_rounded_clamped_11_carry_i_3__4_n_4}),
        .O(NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_11_carry_i_4__4_n_0,prod_rounded_clamped_11_carry_i_5__4_n_0,prod_rounded_clamped_11_carry_i_6__4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_1__4
       (.I0(prod_rounded_clamped_12_carry_i_7__4_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__4_n_4),
        .O(prod_rounded_clamped_11_carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_11_carry_i_2__4
       (.I0(prod_rounded_clamped_12_carry_i_7__4_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__4_n_6),
        .O(prod_rounded_clamped_11_carry_i_2__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_3__4
       (.CI(prod_rounded_clamped_11_carry_i_7__3_n_0),
        .CO({prod_rounded_clamped_11_carry_i_3__4_n_0,prod_rounded_clamped_11_carry_i_3__4_n_1,prod_rounded_clamped_11_carry_i_3__4_n_2,prod_rounded_clamped_11_carry_i_3__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_3__4_n_4,prod_rounded_clamped_11_carry_i_3__4_n_5,prod_rounded_clamped_11_carry_i_3__4_n_6,prod_rounded_clamped_11_carry_i_3__4_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_4__4
       (.I0(prod_rounded_clamped_12_carry_i_7__4_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__4_n_4),
        .O(prod_rounded_clamped_11_carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_5__4
       (.I0(prod_rounded_clamped_12_carry_i_7__4_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__4_n_6),
        .O(prod_rounded_clamped_11_carry_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_6__4
       (.I0(prod_rounded_clamped_11_carry_i_3__4_n_5),
        .I1(prod_rounded_clamped_11_carry_i_3__4_n_4),
        .O(prod_rounded_clamped_11_carry_i_6__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_7__3
       (.CI(add_1_carry__0_i_5__3_n_0),
        .CO({prod_rounded_clamped_11_carry_i_7__3_n_0,prod_rounded_clamped_11_carry_i_7__3_n_1,prod_rounded_clamped_11_carry_i_7__3_n_2,prod_rounded_clamped_11_carry_i_7__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_7__3_n_4,prod_rounded_clamped_11_carry_i_7__3_n_5,prod_rounded_clamped_11_carry_i_7__3_n_6,prod_rounded_clamped_11_carry_i_7__3_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_12_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED[3],prod_rounded_clamped_12,prod_rounded_clamped_12_carry_n_2,prod_rounded_clamped_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_12_carry_i_1__4_n_0,prod_rounded_clamped_12_carry_i_2__4_n_0,prod_rounded_clamped_12_carry_i_3__4_n_0}),
        .O(NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_12_carry_i_4__4_n_0,prod_rounded_clamped_12_carry_i_5__4_n_0,prod_rounded_clamped_12_carry_i_6__4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_1__4
       (.I0(prod_rounded_clamped_12_carry_i_7__4_n_4),
        .I1(prod_rounded_clamped_12_carry_i_7__4_n_5),
        .O(prod_rounded_clamped_12_carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_12_carry_i_2__4
       (.I0(prod_rounded_clamped_12_carry_i_7__4_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__4_n_6),
        .O(prod_rounded_clamped_12_carry_i_2__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_12_carry_i_3__4
       (.I0(prod_rounded_clamped_11_carry_i_3__4_n_4),
        .O(prod_rounded_clamped_12_carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_4__4
       (.I0(prod_rounded_clamped_12_carry_i_7__4_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__4_n_4),
        .O(prod_rounded_clamped_12_carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_5__4
       (.I0(prod_rounded_clamped_12_carry_i_7__4_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__4_n_6),
        .O(prod_rounded_clamped_12_carry_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_6__4
       (.I0(prod_rounded_clamped_11_carry_i_3__4_n_4),
        .I1(prod_rounded_clamped_11_carry_i_3__4_n_5),
        .O(prod_rounded_clamped_12_carry_i_6__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_12_carry_i_7__4
       (.CI(prod_rounded_clamped_11_carry_i_3__4_n_0),
        .CO({NLW_prod_rounded_clamped_12_carry_i_7__4_CO_UNCONNECTED[3],prod_rounded_clamped_12_carry_i_7__4_n_1,prod_rounded_clamped_12_carry_i_7__4_n_2,prod_rounded_clamped_12_carry_i_7__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_12_carry_i_7__4_n_4,prod_rounded_clamped_12_carry_i_7__4_n_5,prod_rounded_clamped_12_carry_i_7__4_n_6,prod_rounded_clamped_12_carry_i_7__4_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock_parallel" *) 
module FIR_subblock_parallel_13
   (\interconnet[6] ,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    prod_0_0,
    \interconnet[5] );
  output [15:0]\interconnet[6] ;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [13:0]prod_0_0;
  input [15:0]\interconnet[5] ;

  wire [13:0]A;
  wire add_0_carry__0_i_1__4_n_0;
  wire add_0_carry__0_i_2__4_n_0;
  wire add_0_carry__0_i_3__4_n_0;
  wire add_0_carry__0_i_4__4_n_0;
  wire add_0_carry__0_i_5__4_n_0;
  wire add_0_carry__0_i_5__4_n_1;
  wire add_0_carry__0_i_5__4_n_2;
  wire add_0_carry__0_i_5__4_n_3;
  wire add_0_carry__0_i_5__4_n_4;
  wire add_0_carry__0_i_5__4_n_5;
  wire add_0_carry__0_i_5__4_n_6;
  wire add_0_carry__0_i_5__4_n_7;
  wire add_0_carry__0_n_0;
  wire add_0_carry__0_n_1;
  wire add_0_carry__0_n_2;
  wire add_0_carry__0_n_3;
  wire add_0_carry__1_i_1__4_n_0;
  wire add_0_carry__1_i_2__4_n_0;
  wire add_0_carry__1_i_3__4_n_0;
  wire add_0_carry__1_i_4__4_n_0;
  wire add_0_carry__1_n_0;
  wire add_0_carry__1_n_1;
  wire add_0_carry__1_n_2;
  wire add_0_carry__1_n_3;
  wire add_0_carry__2_i_1__4_n_0;
  wire add_0_carry__2_i_2__4_n_0;
  wire add_0_carry__2_i_3__4_n_0;
  wire add_0_carry__2_i_4__4_n_0;
  wire add_0_carry__2_n_1;
  wire add_0_carry__2_n_2;
  wire add_0_carry__2_n_3;
  wire add_0_carry_i_1__4_n_0;
  wire add_0_carry_i_2__4_n_0;
  wire add_0_carry_i_3__4_n_0;
  wire add_0_carry_i_4__4_n_0;
  wire add_0_carry_i_5__4_n_0;
  wire add_0_carry_i_5__4_n_1;
  wire add_0_carry_i_5__4_n_2;
  wire add_0_carry_i_5__4_n_3;
  wire add_0_carry_i_5__4_n_4;
  wire add_0_carry_i_5__4_n_5;
  wire add_0_carry_i_5__4_n_6;
  wire add_0_carry_i_5__4_n_7;
  wire add_0_carry_i_6__4_n_0;
  wire add_0_carry_n_0;
  wire add_0_carry_n_1;
  wire add_0_carry_n_2;
  wire add_0_carry_n_3;
  wire [15:0]add_1;
  wire add_1_carry__0_i_1__4_n_0;
  wire add_1_carry__0_i_2__4_n_0;
  wire add_1_carry__0_i_3__4_n_0;
  wire add_1_carry__0_i_4__4_n_0;
  wire add_1_carry__0_i_5__4_n_0;
  wire add_1_carry__0_i_5__4_n_1;
  wire add_1_carry__0_i_5__4_n_2;
  wire add_1_carry__0_i_5__4_n_3;
  wire add_1_carry__0_i_5__4_n_4;
  wire add_1_carry__0_i_5__4_n_5;
  wire add_1_carry__0_i_5__4_n_6;
  wire add_1_carry__0_i_5__4_n_7;
  wire add_1_carry__0_n_0;
  wire add_1_carry__0_n_1;
  wire add_1_carry__0_n_2;
  wire add_1_carry__0_n_3;
  wire add_1_carry__1_i_1__4_n_0;
  wire add_1_carry__1_i_2__4_n_0;
  wire add_1_carry__1_i_3__4_n_0;
  wire add_1_carry__1_i_4__4_n_0;
  wire add_1_carry__1_n_0;
  wire add_1_carry__1_n_1;
  wire add_1_carry__1_n_2;
  wire add_1_carry__1_n_3;
  wire add_1_carry__2_i_1__4_n_0;
  wire add_1_carry__2_i_2__4_n_0;
  wire add_1_carry__2_i_3__4_n_0;
  wire add_1_carry__2_i_4__4_n_0;
  wire add_1_carry__2_n_1;
  wire add_1_carry__2_n_2;
  wire add_1_carry__2_n_3;
  wire add_1_carry_i_1__4_n_0;
  wire add_1_carry_i_2__4_n_0;
  wire add_1_carry_i_3__4_n_0;
  wire add_1_carry_i_4__4_n_0;
  wire add_1_carry_i_5__4_n_0;
  wire add_1_carry_i_5__4_n_1;
  wire add_1_carry_i_5__4_n_2;
  wire add_1_carry_i_5__4_n_3;
  wire add_1_carry_i_5__4_n_4;
  wire add_1_carry_i_5__4_n_5;
  wire add_1_carry_i_5__4_n_6;
  wire add_1_carry_i_5__4_n_7;
  wire add_1_carry_i_6__4_n_0;
  wire add_1_carry_n_0;
  wire add_1_carry_n_1;
  wire add_1_carry_n_2;
  wire add_1_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]delay_element;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[5] ;
  wire [15:0]\interconnet[6] ;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [13:0]prod_0_0;
  wire [27:7]prod_0__0;
  wire prod_0_n_100;
  wire prod_0_n_101;
  wire prod_0_n_102;
  wire prod_0_n_103;
  wire prod_0_n_104;
  wire prod_0_n_105;
  wire prod_0_n_99;
  wire prod_1_n_100;
  wire prod_1_n_101;
  wire prod_1_n_102;
  wire prod_1_n_103;
  wire prod_1_n_104;
  wire prod_1_n_105;
  wire prod_1_n_99;
  wire prod_rounded_clamped_01;
  wire prod_rounded_clamped_01_carry_i_1__4_n_0;
  wire prod_rounded_clamped_01_carry_i_2__4_n_0;
  wire prod_rounded_clamped_01_carry_i_3__4_n_0;
  wire prod_rounded_clamped_01_carry_i_3__4_n_1;
  wire prod_rounded_clamped_01_carry_i_3__4_n_2;
  wire prod_rounded_clamped_01_carry_i_3__4_n_3;
  wire prod_rounded_clamped_01_carry_i_3__4_n_4;
  wire prod_rounded_clamped_01_carry_i_3__4_n_5;
  wire prod_rounded_clamped_01_carry_i_3__4_n_6;
  wire prod_rounded_clamped_01_carry_i_3__4_n_7;
  wire prod_rounded_clamped_01_carry_i_4__4_n_0;
  wire prod_rounded_clamped_01_carry_i_5__4_n_0;
  wire prod_rounded_clamped_01_carry_i_6__4_n_0;
  wire prod_rounded_clamped_01_carry_i_7__4_n_0;
  wire prod_rounded_clamped_01_carry_i_7__4_n_1;
  wire prod_rounded_clamped_01_carry_i_7__4_n_2;
  wire prod_rounded_clamped_01_carry_i_7__4_n_3;
  wire prod_rounded_clamped_01_carry_i_7__4_n_4;
  wire prod_rounded_clamped_01_carry_i_7__4_n_5;
  wire prod_rounded_clamped_01_carry_i_7__4_n_6;
  wire prod_rounded_clamped_01_carry_i_7__4_n_7;
  wire prod_rounded_clamped_01_carry_n_2;
  wire prod_rounded_clamped_01_carry_n_3;
  wire prod_rounded_clamped_02;
  wire prod_rounded_clamped_02_carry_i_1__4_n_0;
  wire prod_rounded_clamped_02_carry_i_2__4_n_0;
  wire prod_rounded_clamped_02_carry_i_3__4_n_0;
  wire prod_rounded_clamped_02_carry_i_4__4_n_0;
  wire prod_rounded_clamped_02_carry_i_5__4_n_0;
  wire prod_rounded_clamped_02_carry_i_6__4_n_0;
  wire prod_rounded_clamped_02_carry_i_7__4_n_1;
  wire prod_rounded_clamped_02_carry_i_7__4_n_2;
  wire prod_rounded_clamped_02_carry_i_7__4_n_3;
  wire prod_rounded_clamped_02_carry_i_7__4_n_4;
  wire prod_rounded_clamped_02_carry_i_7__4_n_5;
  wire prod_rounded_clamped_02_carry_i_7__4_n_6;
  wire prod_rounded_clamped_02_carry_i_7__4_n_7;
  wire prod_rounded_clamped_02_carry_n_2;
  wire prod_rounded_clamped_02_carry_n_3;
  wire prod_rounded_clamped_11;
  wire prod_rounded_clamped_11_carry_i_1__5_n_0;
  wire prod_rounded_clamped_11_carry_i_2__5_n_0;
  wire prod_rounded_clamped_11_carry_i_3__5_n_0;
  wire prod_rounded_clamped_11_carry_i_3__5_n_1;
  wire prod_rounded_clamped_11_carry_i_3__5_n_2;
  wire prod_rounded_clamped_11_carry_i_3__5_n_3;
  wire prod_rounded_clamped_11_carry_i_3__5_n_4;
  wire prod_rounded_clamped_11_carry_i_3__5_n_5;
  wire prod_rounded_clamped_11_carry_i_3__5_n_6;
  wire prod_rounded_clamped_11_carry_i_3__5_n_7;
  wire prod_rounded_clamped_11_carry_i_4__5_n_0;
  wire prod_rounded_clamped_11_carry_i_5__5_n_0;
  wire prod_rounded_clamped_11_carry_i_6__5_n_0;
  wire prod_rounded_clamped_11_carry_i_7__4_n_0;
  wire prod_rounded_clamped_11_carry_i_7__4_n_1;
  wire prod_rounded_clamped_11_carry_i_7__4_n_2;
  wire prod_rounded_clamped_11_carry_i_7__4_n_3;
  wire prod_rounded_clamped_11_carry_i_7__4_n_4;
  wire prod_rounded_clamped_11_carry_i_7__4_n_5;
  wire prod_rounded_clamped_11_carry_i_7__4_n_6;
  wire prod_rounded_clamped_11_carry_i_7__4_n_7;
  wire prod_rounded_clamped_11_carry_n_2;
  wire prod_rounded_clamped_11_carry_n_3;
  wire prod_rounded_clamped_12;
  wire prod_rounded_clamped_12_carry_i_1__5_n_0;
  wire prod_rounded_clamped_12_carry_i_2__5_n_0;
  wire prod_rounded_clamped_12_carry_i_3__5_n_0;
  wire prod_rounded_clamped_12_carry_i_4__5_n_0;
  wire prod_rounded_clamped_12_carry_i_5__5_n_0;
  wire prod_rounded_clamped_12_carry_i_6__5_n_0;
  wire prod_rounded_clamped_12_carry_i_7__5_n_1;
  wire prod_rounded_clamped_12_carry_i_7__5_n_2;
  wire prod_rounded_clamped_12_carry_i_7__5_n_3;
  wire prod_rounded_clamped_12_carry_i_7__5_n_4;
  wire prod_rounded_clamped_12_carry_i_7__5_n_5;
  wire prod_rounded_clamped_12_carry_i_7__5_n_6;
  wire prod_rounded_clamped_12_carry_i_7__5_n_7;
  wire prod_rounded_clamped_12_carry_n_2;
  wire prod_rounded_clamped_12_carry_n_3;
  wire [3:3]NLW_add_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_1_carry__2_CO_UNCONNECTED;
  wire NLW_prod_0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_0_OVERFLOW_UNCONNECTED;
  wire NLW_prod_0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_0_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_0_P_UNCONNECTED;
  wire [47:0]NLW_prod_0_PCOUT_UNCONNECTED;
  wire NLW_prod_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_1_OVERFLOW_UNCONNECTED;
  wire NLW_prod_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_1_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_1_P_UNCONNECTED;
  wire [47:0]NLW_prod_1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_i_7__4_CO_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_i_7__5_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry
       (.CI(1'b0),
        .CO({add_0_carry_n_0,add_0_carry_n_1,add_0_carry_n_2,add_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[3:0]),
        .O(\interconnet[6] [3:0]),
        .S({add_0_carry_i_1__4_n_0,add_0_carry_i_2__4_n_0,add_0_carry_i_3__4_n_0,add_0_carry_i_4__4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0
       (.CI(add_0_carry_n_0),
        .CO({add_0_carry__0_n_0,add_0_carry__0_n_1,add_0_carry__0_n_2,add_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[7:4]),
        .O(\interconnet[6] [7:4]),
        .S({add_0_carry__0_i_1__4_n_0,add_0_carry__0_i_2__4_n_0,add_0_carry__0_i_3__4_n_0,add_0_carry__0_i_4__4_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_1__4
       (.I0(add_0_carry__0_i_5__4_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[7]),
        .O(add_0_carry__0_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_2__4
       (.I0(add_0_carry__0_i_5__4_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[6]),
        .O(add_0_carry__0_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_3__4
       (.I0(add_0_carry__0_i_5__4_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[5]),
        .O(add_0_carry__0_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_4__4
       (.I0(add_0_carry__0_i_5__4_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[4]),
        .O(add_0_carry__0_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0_i_5__4
       (.CI(add_0_carry_i_5__4_n_0),
        .CO({add_0_carry__0_i_5__4_n_0,add_0_carry__0_i_5__4_n_1,add_0_carry__0_i_5__4_n_2,add_0_carry__0_i_5__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_0_carry__0_i_5__4_n_4,add_0_carry__0_i_5__4_n_5,add_0_carry__0_i_5__4_n_6,add_0_carry__0_i_5__4_n_7}),
        .S(prod_0__0[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__1
       (.CI(add_0_carry__0_n_0),
        .CO({add_0_carry__1_n_0,add_0_carry__1_n_1,add_0_carry__1_n_2,add_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[11:8]),
        .O(\interconnet[6] [11:8]),
        .S({add_0_carry__1_i_1__4_n_0,add_0_carry__1_i_2__4_n_0,add_0_carry__1_i_3__4_n_0,add_0_carry__1_i_4__4_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_1__4
       (.I0(prod_rounded_clamped_01_carry_i_7__4_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[11]),
        .O(add_0_carry__1_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_2__4
       (.I0(prod_rounded_clamped_01_carry_i_7__4_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[10]),
        .O(add_0_carry__1_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_3__4
       (.I0(prod_rounded_clamped_01_carry_i_7__4_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[9]),
        .O(add_0_carry__1_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_4__4
       (.I0(prod_rounded_clamped_01_carry_i_7__4_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[8]),
        .O(add_0_carry__1_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__2
       (.CI(add_0_carry__1_n_0),
        .CO({NLW_add_0_carry__2_CO_UNCONNECTED[3],add_0_carry__2_n_1,add_0_carry__2_n_2,add_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_element[14:12]}),
        .O(\interconnet[6] [15:12]),
        .S({add_0_carry__2_i_1__4_n_0,add_0_carry__2_i_2__4_n_0,add_0_carry__2_i_3__4_n_0,add_0_carry__2_i_4__4_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_0_carry__2_i_1__4
       (.I0(prod_rounded_clamped_01),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01_carry_i_3__4_n_4),
        .I3(delay_element[15]),
        .O(add_0_carry__2_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_2__4
       (.I0(prod_rounded_clamped_01_carry_i_3__4_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[14]),
        .O(add_0_carry__2_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_3__4
       (.I0(prod_rounded_clamped_01_carry_i_3__4_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[13]),
        .O(add_0_carry__2_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_4__4
       (.I0(prod_rounded_clamped_01_carry_i_3__4_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[12]),
        .O(add_0_carry__2_i_4__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_1__4
       (.I0(add_0_carry_i_5__4_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[3]),
        .O(add_0_carry_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_2__4
       (.I0(add_0_carry_i_5__4_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[2]),
        .O(add_0_carry_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_3__4
       (.I0(add_0_carry_i_5__4_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[1]),
        .O(add_0_carry_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_4__4
       (.I0(add_0_carry_i_5__4_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[0]),
        .O(add_0_carry_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry_i_5__4
       (.CI(1'b0),
        .CO({add_0_carry_i_5__4_n_0,add_0_carry_i_5__4_n_1,add_0_carry_i_5__4_n_2,add_0_carry_i_5__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_0__0[8]}),
        .O({add_0_carry_i_5__4_n_4,add_0_carry_i_5__4_n_5,add_0_carry_i_5__4_n_6,add_0_carry_i_5__4_n_7}),
        .S({prod_0__0[11:9],add_0_carry_i_6__4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_0_carry_i_6__4
       (.I0(prod_0__0[8]),
        .I1(prod_0__0[7]),
        .O(add_0_carry_i_6__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry
       (.CI(1'b0),
        .CO({add_1_carry_n_0,add_1_carry_n_1,add_1_carry_n_2,add_1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[5] [3:0]),
        .O(add_1[3:0]),
        .S({add_1_carry_i_1__4_n_0,add_1_carry_i_2__4_n_0,add_1_carry_i_3__4_n_0,add_1_carry_i_4__4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0
       (.CI(add_1_carry_n_0),
        .CO({add_1_carry__0_n_0,add_1_carry__0_n_1,add_1_carry__0_n_2,add_1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[5] [7:4]),
        .O(add_1[7:4]),
        .S({add_1_carry__0_i_1__4_n_0,add_1_carry__0_i_2__4_n_0,add_1_carry__0_i_3__4_n_0,add_1_carry__0_i_4__4_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_1__4
       (.I0(add_1_carry__0_i_5__4_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[5] [7]),
        .O(add_1_carry__0_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_2__4
       (.I0(add_1_carry__0_i_5__4_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[5] [6]),
        .O(add_1_carry__0_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_3__4
       (.I0(add_1_carry__0_i_5__4_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[5] [5]),
        .O(add_1_carry__0_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_4__4
       (.I0(add_1_carry__0_i_5__4_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[5] [4]),
        .O(add_1_carry__0_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0_i_5__4
       (.CI(add_1_carry_i_5__4_n_0),
        .CO({add_1_carry__0_i_5__4_n_0,add_1_carry__0_i_5__4_n_1,add_1_carry__0_i_5__4_n_2,add_1_carry__0_i_5__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_1_carry__0_i_5__4_n_4,add_1_carry__0_i_5__4_n_5,add_1_carry__0_i_5__4_n_6,add_1_carry__0_i_5__4_n_7}),
        .S(p_1_in[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__1
       (.CI(add_1_carry__0_n_0),
        .CO({add_1_carry__1_n_0,add_1_carry__1_n_1,add_1_carry__1_n_2,add_1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[5] [11:8]),
        .O(add_1[11:8]),
        .S({add_1_carry__1_i_1__4_n_0,add_1_carry__1_i_2__4_n_0,add_1_carry__1_i_3__4_n_0,add_1_carry__1_i_4__4_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_1__4
       (.I0(prod_rounded_clamped_11_carry_i_7__4_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[5] [11]),
        .O(add_1_carry__1_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_2__4
       (.I0(prod_rounded_clamped_11_carry_i_7__4_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[5] [10]),
        .O(add_1_carry__1_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_3__4
       (.I0(prod_rounded_clamped_11_carry_i_7__4_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[5] [9]),
        .O(add_1_carry__1_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_4__4
       (.I0(prod_rounded_clamped_11_carry_i_7__4_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[5] [8]),
        .O(add_1_carry__1_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__2
       (.CI(add_1_carry__1_n_0),
        .CO({NLW_add_1_carry__2_CO_UNCONNECTED[3],add_1_carry__2_n_1,add_1_carry__2_n_2,add_1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\interconnet[5] [14:12]}),
        .O(add_1[15:12]),
        .S({add_1_carry__2_i_1__4_n_0,add_1_carry__2_i_2__4_n_0,add_1_carry__2_i_3__4_n_0,add_1_carry__2_i_4__4_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_1_carry__2_i_1__4
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__5_n_4),
        .I3(\interconnet[5] [15]),
        .O(add_1_carry__2_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_2__4
       (.I0(prod_rounded_clamped_11_carry_i_3__5_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[5] [14]),
        .O(add_1_carry__2_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_3__4
       (.I0(prod_rounded_clamped_11_carry_i_3__5_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[5] [13]),
        .O(add_1_carry__2_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_4__4
       (.I0(prod_rounded_clamped_11_carry_i_3__5_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[5] [12]),
        .O(add_1_carry__2_i_4__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_1__4
       (.I0(add_1_carry_i_5__4_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[5] [3]),
        .O(add_1_carry_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_2__4
       (.I0(add_1_carry_i_5__4_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[5] [2]),
        .O(add_1_carry_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_3__4
       (.I0(add_1_carry_i_5__4_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[5] [1]),
        .O(add_1_carry_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_4__4
       (.I0(add_1_carry_i_5__4_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[5] [0]),
        .O(add_1_carry_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry_i_5__4
       (.CI(1'b0),
        .CO({add_1_carry_i_5__4_n_0,add_1_carry_i_5__4_n_1,add_1_carry_i_5__4_n_2,add_1_carry_i_5__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_1_carry_i_5__4_n_4,add_1_carry_i_5__4_n_5,add_1_carry_i_5__4_n_6,add_1_carry_i_5__4_n_7}),
        .S({p_1_in[3:1],add_1_carry_i_6__4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_1_carry_i_6__4
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_1_carry_i_6__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[0]),
        .Q(delay_element[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[10]),
        .Q(delay_element[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[11]),
        .Q(delay_element[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[12]),
        .Q(delay_element[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[13]),
        .Q(delay_element[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[14]),
        .Q(delay_element[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[15]),
        .Q(delay_element[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[1]),
        .Q(delay_element[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[2]),
        .Q(delay_element[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[3]),
        .Q(delay_element[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[4]),
        .Q(delay_element[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[5]),
        .Q(delay_element[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[6]),
        .Q(delay_element[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[7]),
        .Q(delay_element[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[8]),
        .Q(delay_element[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[9]),
        .Q(delay_element[9]),
        .R(i_rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_0
       (.A({prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_0_P_UNCONNECTED[47:28],prod_0__0,prod_0_n_99,prod_0_n_100,prod_0_n_101,prod_0_n_102,prod_0_n_103,prod_0_n_104,prod_0_n_105}),
        .PATTERNBDETECT(NLW_prod_0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_1
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_1_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_1_n_99,prod_1_n_100,prod_1_n_101,prod_1_n_102,prod_1_n_103,prod_1_n_104,prod_1_n_105}),
        .PATTERNBDETECT(NLW_prod_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_1_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_01_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED[3],prod_rounded_clamped_01,prod_rounded_clamped_01_carry_n_2,prod_rounded_clamped_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_01_carry_i_1__4_n_0,prod_rounded_clamped_01_carry_i_2__4_n_0,prod_rounded_clamped_01_carry_i_3__4_n_4}),
        .O(NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_01_carry_i_4__4_n_0,prod_rounded_clamped_01_carry_i_5__4_n_0,prod_rounded_clamped_01_carry_i_6__4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_1__4
       (.I0(prod_rounded_clamped_02_carry_i_7__4_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__4_n_4),
        .O(prod_rounded_clamped_01_carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_01_carry_i_2__4
       (.I0(prod_rounded_clamped_02_carry_i_7__4_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__4_n_6),
        .O(prod_rounded_clamped_01_carry_i_2__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_3__4
       (.CI(prod_rounded_clamped_01_carry_i_7__4_n_0),
        .CO({prod_rounded_clamped_01_carry_i_3__4_n_0,prod_rounded_clamped_01_carry_i_3__4_n_1,prod_rounded_clamped_01_carry_i_3__4_n_2,prod_rounded_clamped_01_carry_i_3__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_3__4_n_4,prod_rounded_clamped_01_carry_i_3__4_n_5,prod_rounded_clamped_01_carry_i_3__4_n_6,prod_rounded_clamped_01_carry_i_3__4_n_7}),
        .S(prod_0__0[23:20]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_4__4
       (.I0(prod_rounded_clamped_02_carry_i_7__4_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__4_n_4),
        .O(prod_rounded_clamped_01_carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_5__4
       (.I0(prod_rounded_clamped_02_carry_i_7__4_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__4_n_6),
        .O(prod_rounded_clamped_01_carry_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_6__4
       (.I0(prod_rounded_clamped_01_carry_i_3__4_n_5),
        .I1(prod_rounded_clamped_01_carry_i_3__4_n_4),
        .O(prod_rounded_clamped_01_carry_i_6__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_7__4
       (.CI(add_0_carry__0_i_5__4_n_0),
        .CO({prod_rounded_clamped_01_carry_i_7__4_n_0,prod_rounded_clamped_01_carry_i_7__4_n_1,prod_rounded_clamped_01_carry_i_7__4_n_2,prod_rounded_clamped_01_carry_i_7__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_7__4_n_4,prod_rounded_clamped_01_carry_i_7__4_n_5,prod_rounded_clamped_01_carry_i_7__4_n_6,prod_rounded_clamped_01_carry_i_7__4_n_7}),
        .S(prod_0__0[19:16]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_02_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED[3],prod_rounded_clamped_02,prod_rounded_clamped_02_carry_n_2,prod_rounded_clamped_02_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_02_carry_i_1__4_n_0,prod_rounded_clamped_02_carry_i_2__4_n_0,prod_rounded_clamped_02_carry_i_3__4_n_0}),
        .O(NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_02_carry_i_4__4_n_0,prod_rounded_clamped_02_carry_i_5__4_n_0,prod_rounded_clamped_02_carry_i_6__4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_1__4
       (.I0(prod_rounded_clamped_02_carry_i_7__4_n_4),
        .I1(prod_rounded_clamped_02_carry_i_7__4_n_5),
        .O(prod_rounded_clamped_02_carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_02_carry_i_2__4
       (.I0(prod_rounded_clamped_02_carry_i_7__4_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__4_n_6),
        .O(prod_rounded_clamped_02_carry_i_2__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_02_carry_i_3__4
       (.I0(prod_rounded_clamped_01_carry_i_3__4_n_4),
        .O(prod_rounded_clamped_02_carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_4__4
       (.I0(prod_rounded_clamped_02_carry_i_7__4_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__4_n_4),
        .O(prod_rounded_clamped_02_carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_5__4
       (.I0(prod_rounded_clamped_02_carry_i_7__4_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__4_n_6),
        .O(prod_rounded_clamped_02_carry_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_6__4
       (.I0(prod_rounded_clamped_01_carry_i_3__4_n_4),
        .I1(prod_rounded_clamped_01_carry_i_3__4_n_5),
        .O(prod_rounded_clamped_02_carry_i_6__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_02_carry_i_7__4
       (.CI(prod_rounded_clamped_01_carry_i_3__4_n_0),
        .CO({NLW_prod_rounded_clamped_02_carry_i_7__4_CO_UNCONNECTED[3],prod_rounded_clamped_02_carry_i_7__4_n_1,prod_rounded_clamped_02_carry_i_7__4_n_2,prod_rounded_clamped_02_carry_i_7__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_02_carry_i_7__4_n_4,prod_rounded_clamped_02_carry_i_7__4_n_5,prod_rounded_clamped_02_carry_i_7__4_n_6,prod_rounded_clamped_02_carry_i_7__4_n_7}),
        .S(prod_0__0[27:24]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_11_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED[3],prod_rounded_clamped_11,prod_rounded_clamped_11_carry_n_2,prod_rounded_clamped_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_11_carry_i_1__5_n_0,prod_rounded_clamped_11_carry_i_2__5_n_0,prod_rounded_clamped_11_carry_i_3__5_n_4}),
        .O(NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_11_carry_i_4__5_n_0,prod_rounded_clamped_11_carry_i_5__5_n_0,prod_rounded_clamped_11_carry_i_6__5_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_1__5
       (.I0(prod_rounded_clamped_12_carry_i_7__5_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__5_n_4),
        .O(prod_rounded_clamped_11_carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_11_carry_i_2__5
       (.I0(prod_rounded_clamped_12_carry_i_7__5_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__5_n_6),
        .O(prod_rounded_clamped_11_carry_i_2__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_3__5
       (.CI(prod_rounded_clamped_11_carry_i_7__4_n_0),
        .CO({prod_rounded_clamped_11_carry_i_3__5_n_0,prod_rounded_clamped_11_carry_i_3__5_n_1,prod_rounded_clamped_11_carry_i_3__5_n_2,prod_rounded_clamped_11_carry_i_3__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_3__5_n_4,prod_rounded_clamped_11_carry_i_3__5_n_5,prod_rounded_clamped_11_carry_i_3__5_n_6,prod_rounded_clamped_11_carry_i_3__5_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_4__5
       (.I0(prod_rounded_clamped_12_carry_i_7__5_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__5_n_4),
        .O(prod_rounded_clamped_11_carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_5__5
       (.I0(prod_rounded_clamped_12_carry_i_7__5_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__5_n_6),
        .O(prod_rounded_clamped_11_carry_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_6__5
       (.I0(prod_rounded_clamped_11_carry_i_3__5_n_5),
        .I1(prod_rounded_clamped_11_carry_i_3__5_n_4),
        .O(prod_rounded_clamped_11_carry_i_6__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_7__4
       (.CI(add_1_carry__0_i_5__4_n_0),
        .CO({prod_rounded_clamped_11_carry_i_7__4_n_0,prod_rounded_clamped_11_carry_i_7__4_n_1,prod_rounded_clamped_11_carry_i_7__4_n_2,prod_rounded_clamped_11_carry_i_7__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_7__4_n_4,prod_rounded_clamped_11_carry_i_7__4_n_5,prod_rounded_clamped_11_carry_i_7__4_n_6,prod_rounded_clamped_11_carry_i_7__4_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_12_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED[3],prod_rounded_clamped_12,prod_rounded_clamped_12_carry_n_2,prod_rounded_clamped_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_12_carry_i_1__5_n_0,prod_rounded_clamped_12_carry_i_2__5_n_0,prod_rounded_clamped_12_carry_i_3__5_n_0}),
        .O(NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_12_carry_i_4__5_n_0,prod_rounded_clamped_12_carry_i_5__5_n_0,prod_rounded_clamped_12_carry_i_6__5_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_1__5
       (.I0(prod_rounded_clamped_12_carry_i_7__5_n_4),
        .I1(prod_rounded_clamped_12_carry_i_7__5_n_5),
        .O(prod_rounded_clamped_12_carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_12_carry_i_2__5
       (.I0(prod_rounded_clamped_12_carry_i_7__5_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__5_n_6),
        .O(prod_rounded_clamped_12_carry_i_2__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_12_carry_i_3__5
       (.I0(prod_rounded_clamped_11_carry_i_3__5_n_4),
        .O(prod_rounded_clamped_12_carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_4__5
       (.I0(prod_rounded_clamped_12_carry_i_7__5_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__5_n_4),
        .O(prod_rounded_clamped_12_carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_5__5
       (.I0(prod_rounded_clamped_12_carry_i_7__5_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__5_n_6),
        .O(prod_rounded_clamped_12_carry_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_6__5
       (.I0(prod_rounded_clamped_11_carry_i_3__5_n_4),
        .I1(prod_rounded_clamped_11_carry_i_3__5_n_5),
        .O(prod_rounded_clamped_12_carry_i_6__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_12_carry_i_7__5
       (.CI(prod_rounded_clamped_11_carry_i_3__5_n_0),
        .CO({NLW_prod_rounded_clamped_12_carry_i_7__5_CO_UNCONNECTED[3],prod_rounded_clamped_12_carry_i_7__5_n_1,prod_rounded_clamped_12_carry_i_7__5_n_2,prod_rounded_clamped_12_carry_i_7__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_12_carry_i_7__5_n_4,prod_rounded_clamped_12_carry_i_7__5_n_5,prod_rounded_clamped_12_carry_i_7__5_n_6,prod_rounded_clamped_12_carry_i_7__5_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock_parallel" *) 
module FIR_subblock_parallel_14
   (\interconnet[7] ,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    prod_0_0,
    \interconnet[6] );
  output [15:0]\interconnet[7] ;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [13:0]prod_0_0;
  input [15:0]\interconnet[6] ;

  wire [13:0]A;
  wire add_0_carry__0_i_1__5_n_0;
  wire add_0_carry__0_i_2__5_n_0;
  wire add_0_carry__0_i_3__5_n_0;
  wire add_0_carry__0_i_4__5_n_0;
  wire add_0_carry__0_i_5__5_n_0;
  wire add_0_carry__0_i_5__5_n_1;
  wire add_0_carry__0_i_5__5_n_2;
  wire add_0_carry__0_i_5__5_n_3;
  wire add_0_carry__0_i_5__5_n_4;
  wire add_0_carry__0_i_5__5_n_5;
  wire add_0_carry__0_i_5__5_n_6;
  wire add_0_carry__0_i_5__5_n_7;
  wire add_0_carry__0_n_0;
  wire add_0_carry__0_n_1;
  wire add_0_carry__0_n_2;
  wire add_0_carry__0_n_3;
  wire add_0_carry__1_i_1__5_n_0;
  wire add_0_carry__1_i_2__5_n_0;
  wire add_0_carry__1_i_3__5_n_0;
  wire add_0_carry__1_i_4__5_n_0;
  wire add_0_carry__1_n_0;
  wire add_0_carry__1_n_1;
  wire add_0_carry__1_n_2;
  wire add_0_carry__1_n_3;
  wire add_0_carry__2_i_1__5_n_0;
  wire add_0_carry__2_i_2__5_n_0;
  wire add_0_carry__2_i_3__5_n_0;
  wire add_0_carry__2_i_4__5_n_0;
  wire add_0_carry__2_n_1;
  wire add_0_carry__2_n_2;
  wire add_0_carry__2_n_3;
  wire add_0_carry_i_1__5_n_0;
  wire add_0_carry_i_2__5_n_0;
  wire add_0_carry_i_3__5_n_0;
  wire add_0_carry_i_4__5_n_0;
  wire add_0_carry_i_5__5_n_0;
  wire add_0_carry_i_5__5_n_1;
  wire add_0_carry_i_5__5_n_2;
  wire add_0_carry_i_5__5_n_3;
  wire add_0_carry_i_5__5_n_4;
  wire add_0_carry_i_5__5_n_5;
  wire add_0_carry_i_5__5_n_6;
  wire add_0_carry_i_5__5_n_7;
  wire add_0_carry_i_6__5_n_0;
  wire add_0_carry_n_0;
  wire add_0_carry_n_1;
  wire add_0_carry_n_2;
  wire add_0_carry_n_3;
  wire [15:0]add_1;
  wire add_1_carry__0_i_1__5_n_0;
  wire add_1_carry__0_i_2__5_n_0;
  wire add_1_carry__0_i_3__5_n_0;
  wire add_1_carry__0_i_4__5_n_0;
  wire add_1_carry__0_i_5__5_n_0;
  wire add_1_carry__0_i_5__5_n_1;
  wire add_1_carry__0_i_5__5_n_2;
  wire add_1_carry__0_i_5__5_n_3;
  wire add_1_carry__0_i_5__5_n_4;
  wire add_1_carry__0_i_5__5_n_5;
  wire add_1_carry__0_i_5__5_n_6;
  wire add_1_carry__0_i_5__5_n_7;
  wire add_1_carry__0_n_0;
  wire add_1_carry__0_n_1;
  wire add_1_carry__0_n_2;
  wire add_1_carry__0_n_3;
  wire add_1_carry__1_i_1__5_n_0;
  wire add_1_carry__1_i_2__5_n_0;
  wire add_1_carry__1_i_3__5_n_0;
  wire add_1_carry__1_i_4__5_n_0;
  wire add_1_carry__1_n_0;
  wire add_1_carry__1_n_1;
  wire add_1_carry__1_n_2;
  wire add_1_carry__1_n_3;
  wire add_1_carry__2_i_1__5_n_0;
  wire add_1_carry__2_i_2__5_n_0;
  wire add_1_carry__2_i_3__5_n_0;
  wire add_1_carry__2_i_4__5_n_0;
  wire add_1_carry__2_n_1;
  wire add_1_carry__2_n_2;
  wire add_1_carry__2_n_3;
  wire add_1_carry_i_1__5_n_0;
  wire add_1_carry_i_2__5_n_0;
  wire add_1_carry_i_3__5_n_0;
  wire add_1_carry_i_4__5_n_0;
  wire add_1_carry_i_5__5_n_0;
  wire add_1_carry_i_5__5_n_1;
  wire add_1_carry_i_5__5_n_2;
  wire add_1_carry_i_5__5_n_3;
  wire add_1_carry_i_5__5_n_4;
  wire add_1_carry_i_5__5_n_5;
  wire add_1_carry_i_5__5_n_6;
  wire add_1_carry_i_5__5_n_7;
  wire add_1_carry_i_6__5_n_0;
  wire add_1_carry_n_0;
  wire add_1_carry_n_1;
  wire add_1_carry_n_2;
  wire add_1_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]delay_element;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[6] ;
  wire [15:0]\interconnet[7] ;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [13:0]prod_0_0;
  wire [27:7]prod_0__0;
  wire prod_0_n_100;
  wire prod_0_n_101;
  wire prod_0_n_102;
  wire prod_0_n_103;
  wire prod_0_n_104;
  wire prod_0_n_105;
  wire prod_0_n_99;
  wire prod_1_n_100;
  wire prod_1_n_101;
  wire prod_1_n_102;
  wire prod_1_n_103;
  wire prod_1_n_104;
  wire prod_1_n_105;
  wire prod_1_n_99;
  wire prod_rounded_clamped_01;
  wire prod_rounded_clamped_01_carry_i_1__5_n_0;
  wire prod_rounded_clamped_01_carry_i_2__5_n_0;
  wire prod_rounded_clamped_01_carry_i_3__5_n_0;
  wire prod_rounded_clamped_01_carry_i_3__5_n_1;
  wire prod_rounded_clamped_01_carry_i_3__5_n_2;
  wire prod_rounded_clamped_01_carry_i_3__5_n_3;
  wire prod_rounded_clamped_01_carry_i_3__5_n_4;
  wire prod_rounded_clamped_01_carry_i_3__5_n_5;
  wire prod_rounded_clamped_01_carry_i_3__5_n_6;
  wire prod_rounded_clamped_01_carry_i_3__5_n_7;
  wire prod_rounded_clamped_01_carry_i_4__5_n_0;
  wire prod_rounded_clamped_01_carry_i_5__5_n_0;
  wire prod_rounded_clamped_01_carry_i_6__5_n_0;
  wire prod_rounded_clamped_01_carry_i_7__5_n_0;
  wire prod_rounded_clamped_01_carry_i_7__5_n_1;
  wire prod_rounded_clamped_01_carry_i_7__5_n_2;
  wire prod_rounded_clamped_01_carry_i_7__5_n_3;
  wire prod_rounded_clamped_01_carry_i_7__5_n_4;
  wire prod_rounded_clamped_01_carry_i_7__5_n_5;
  wire prod_rounded_clamped_01_carry_i_7__5_n_6;
  wire prod_rounded_clamped_01_carry_i_7__5_n_7;
  wire prod_rounded_clamped_01_carry_n_2;
  wire prod_rounded_clamped_01_carry_n_3;
  wire prod_rounded_clamped_02;
  wire prod_rounded_clamped_02_carry_i_1__5_n_0;
  wire prod_rounded_clamped_02_carry_i_2__5_n_0;
  wire prod_rounded_clamped_02_carry_i_3__5_n_0;
  wire prod_rounded_clamped_02_carry_i_4__5_n_0;
  wire prod_rounded_clamped_02_carry_i_5__5_n_0;
  wire prod_rounded_clamped_02_carry_i_6__5_n_0;
  wire prod_rounded_clamped_02_carry_i_7__5_n_1;
  wire prod_rounded_clamped_02_carry_i_7__5_n_2;
  wire prod_rounded_clamped_02_carry_i_7__5_n_3;
  wire prod_rounded_clamped_02_carry_i_7__5_n_4;
  wire prod_rounded_clamped_02_carry_i_7__5_n_5;
  wire prod_rounded_clamped_02_carry_i_7__5_n_6;
  wire prod_rounded_clamped_02_carry_i_7__5_n_7;
  wire prod_rounded_clamped_02_carry_n_2;
  wire prod_rounded_clamped_02_carry_n_3;
  wire prod_rounded_clamped_11;
  wire prod_rounded_clamped_11_carry_i_1__6_n_0;
  wire prod_rounded_clamped_11_carry_i_2__6_n_0;
  wire prod_rounded_clamped_11_carry_i_3__6_n_0;
  wire prod_rounded_clamped_11_carry_i_3__6_n_1;
  wire prod_rounded_clamped_11_carry_i_3__6_n_2;
  wire prod_rounded_clamped_11_carry_i_3__6_n_3;
  wire prod_rounded_clamped_11_carry_i_3__6_n_4;
  wire prod_rounded_clamped_11_carry_i_3__6_n_5;
  wire prod_rounded_clamped_11_carry_i_3__6_n_6;
  wire prod_rounded_clamped_11_carry_i_3__6_n_7;
  wire prod_rounded_clamped_11_carry_i_4__6_n_0;
  wire prod_rounded_clamped_11_carry_i_5__6_n_0;
  wire prod_rounded_clamped_11_carry_i_6__6_n_0;
  wire prod_rounded_clamped_11_carry_i_7__5_n_0;
  wire prod_rounded_clamped_11_carry_i_7__5_n_1;
  wire prod_rounded_clamped_11_carry_i_7__5_n_2;
  wire prod_rounded_clamped_11_carry_i_7__5_n_3;
  wire prod_rounded_clamped_11_carry_i_7__5_n_4;
  wire prod_rounded_clamped_11_carry_i_7__5_n_5;
  wire prod_rounded_clamped_11_carry_i_7__5_n_6;
  wire prod_rounded_clamped_11_carry_i_7__5_n_7;
  wire prod_rounded_clamped_11_carry_n_2;
  wire prod_rounded_clamped_11_carry_n_3;
  wire prod_rounded_clamped_12;
  wire prod_rounded_clamped_12_carry_i_1__6_n_0;
  wire prod_rounded_clamped_12_carry_i_2__6_n_0;
  wire prod_rounded_clamped_12_carry_i_3__6_n_0;
  wire prod_rounded_clamped_12_carry_i_4__6_n_0;
  wire prod_rounded_clamped_12_carry_i_5__6_n_0;
  wire prod_rounded_clamped_12_carry_i_6__6_n_0;
  wire prod_rounded_clamped_12_carry_i_7__6_n_1;
  wire prod_rounded_clamped_12_carry_i_7__6_n_2;
  wire prod_rounded_clamped_12_carry_i_7__6_n_3;
  wire prod_rounded_clamped_12_carry_i_7__6_n_4;
  wire prod_rounded_clamped_12_carry_i_7__6_n_5;
  wire prod_rounded_clamped_12_carry_i_7__6_n_6;
  wire prod_rounded_clamped_12_carry_i_7__6_n_7;
  wire prod_rounded_clamped_12_carry_n_2;
  wire prod_rounded_clamped_12_carry_n_3;
  wire [3:3]NLW_add_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_1_carry__2_CO_UNCONNECTED;
  wire NLW_prod_0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_0_OVERFLOW_UNCONNECTED;
  wire NLW_prod_0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_0_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_0_P_UNCONNECTED;
  wire [47:0]NLW_prod_0_PCOUT_UNCONNECTED;
  wire NLW_prod_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_1_OVERFLOW_UNCONNECTED;
  wire NLW_prod_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_1_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_1_P_UNCONNECTED;
  wire [47:0]NLW_prod_1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_i_7__5_CO_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_i_7__6_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry
       (.CI(1'b0),
        .CO({add_0_carry_n_0,add_0_carry_n_1,add_0_carry_n_2,add_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[3:0]),
        .O(\interconnet[7] [3:0]),
        .S({add_0_carry_i_1__5_n_0,add_0_carry_i_2__5_n_0,add_0_carry_i_3__5_n_0,add_0_carry_i_4__5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0
       (.CI(add_0_carry_n_0),
        .CO({add_0_carry__0_n_0,add_0_carry__0_n_1,add_0_carry__0_n_2,add_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[7:4]),
        .O(\interconnet[7] [7:4]),
        .S({add_0_carry__0_i_1__5_n_0,add_0_carry__0_i_2__5_n_0,add_0_carry__0_i_3__5_n_0,add_0_carry__0_i_4__5_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_1__5
       (.I0(add_0_carry__0_i_5__5_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[7]),
        .O(add_0_carry__0_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_2__5
       (.I0(add_0_carry__0_i_5__5_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[6]),
        .O(add_0_carry__0_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_3__5
       (.I0(add_0_carry__0_i_5__5_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[5]),
        .O(add_0_carry__0_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_4__5
       (.I0(add_0_carry__0_i_5__5_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[4]),
        .O(add_0_carry__0_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0_i_5__5
       (.CI(add_0_carry_i_5__5_n_0),
        .CO({add_0_carry__0_i_5__5_n_0,add_0_carry__0_i_5__5_n_1,add_0_carry__0_i_5__5_n_2,add_0_carry__0_i_5__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_0_carry__0_i_5__5_n_4,add_0_carry__0_i_5__5_n_5,add_0_carry__0_i_5__5_n_6,add_0_carry__0_i_5__5_n_7}),
        .S(prod_0__0[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__1
       (.CI(add_0_carry__0_n_0),
        .CO({add_0_carry__1_n_0,add_0_carry__1_n_1,add_0_carry__1_n_2,add_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[11:8]),
        .O(\interconnet[7] [11:8]),
        .S({add_0_carry__1_i_1__5_n_0,add_0_carry__1_i_2__5_n_0,add_0_carry__1_i_3__5_n_0,add_0_carry__1_i_4__5_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_1__5
       (.I0(prod_rounded_clamped_01_carry_i_7__5_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[11]),
        .O(add_0_carry__1_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_2__5
       (.I0(prod_rounded_clamped_01_carry_i_7__5_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[10]),
        .O(add_0_carry__1_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_3__5
       (.I0(prod_rounded_clamped_01_carry_i_7__5_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[9]),
        .O(add_0_carry__1_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_4__5
       (.I0(prod_rounded_clamped_01_carry_i_7__5_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[8]),
        .O(add_0_carry__1_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__2
       (.CI(add_0_carry__1_n_0),
        .CO({NLW_add_0_carry__2_CO_UNCONNECTED[3],add_0_carry__2_n_1,add_0_carry__2_n_2,add_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_element[14:12]}),
        .O(\interconnet[7] [15:12]),
        .S({add_0_carry__2_i_1__5_n_0,add_0_carry__2_i_2__5_n_0,add_0_carry__2_i_3__5_n_0,add_0_carry__2_i_4__5_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_0_carry__2_i_1__5
       (.I0(prod_rounded_clamped_01),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01_carry_i_3__5_n_4),
        .I3(delay_element[15]),
        .O(add_0_carry__2_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_2__5
       (.I0(prod_rounded_clamped_01_carry_i_3__5_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[14]),
        .O(add_0_carry__2_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_3__5
       (.I0(prod_rounded_clamped_01_carry_i_3__5_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[13]),
        .O(add_0_carry__2_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_4__5
       (.I0(prod_rounded_clamped_01_carry_i_3__5_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[12]),
        .O(add_0_carry__2_i_4__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_1__5
       (.I0(add_0_carry_i_5__5_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[3]),
        .O(add_0_carry_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_2__5
       (.I0(add_0_carry_i_5__5_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[2]),
        .O(add_0_carry_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_3__5
       (.I0(add_0_carry_i_5__5_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[1]),
        .O(add_0_carry_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_4__5
       (.I0(add_0_carry_i_5__5_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[0]),
        .O(add_0_carry_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry_i_5__5
       (.CI(1'b0),
        .CO({add_0_carry_i_5__5_n_0,add_0_carry_i_5__5_n_1,add_0_carry_i_5__5_n_2,add_0_carry_i_5__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_0__0[8]}),
        .O({add_0_carry_i_5__5_n_4,add_0_carry_i_5__5_n_5,add_0_carry_i_5__5_n_6,add_0_carry_i_5__5_n_7}),
        .S({prod_0__0[11:9],add_0_carry_i_6__5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_0_carry_i_6__5
       (.I0(prod_0__0[8]),
        .I1(prod_0__0[7]),
        .O(add_0_carry_i_6__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry
       (.CI(1'b0),
        .CO({add_1_carry_n_0,add_1_carry_n_1,add_1_carry_n_2,add_1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[6] [3:0]),
        .O(add_1[3:0]),
        .S({add_1_carry_i_1__5_n_0,add_1_carry_i_2__5_n_0,add_1_carry_i_3__5_n_0,add_1_carry_i_4__5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0
       (.CI(add_1_carry_n_0),
        .CO({add_1_carry__0_n_0,add_1_carry__0_n_1,add_1_carry__0_n_2,add_1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[6] [7:4]),
        .O(add_1[7:4]),
        .S({add_1_carry__0_i_1__5_n_0,add_1_carry__0_i_2__5_n_0,add_1_carry__0_i_3__5_n_0,add_1_carry__0_i_4__5_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_1__5
       (.I0(add_1_carry__0_i_5__5_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[6] [7]),
        .O(add_1_carry__0_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_2__5
       (.I0(add_1_carry__0_i_5__5_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[6] [6]),
        .O(add_1_carry__0_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_3__5
       (.I0(add_1_carry__0_i_5__5_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[6] [5]),
        .O(add_1_carry__0_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_4__5
       (.I0(add_1_carry__0_i_5__5_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[6] [4]),
        .O(add_1_carry__0_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0_i_5__5
       (.CI(add_1_carry_i_5__5_n_0),
        .CO({add_1_carry__0_i_5__5_n_0,add_1_carry__0_i_5__5_n_1,add_1_carry__0_i_5__5_n_2,add_1_carry__0_i_5__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_1_carry__0_i_5__5_n_4,add_1_carry__0_i_5__5_n_5,add_1_carry__0_i_5__5_n_6,add_1_carry__0_i_5__5_n_7}),
        .S(p_1_in[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__1
       (.CI(add_1_carry__0_n_0),
        .CO({add_1_carry__1_n_0,add_1_carry__1_n_1,add_1_carry__1_n_2,add_1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[6] [11:8]),
        .O(add_1[11:8]),
        .S({add_1_carry__1_i_1__5_n_0,add_1_carry__1_i_2__5_n_0,add_1_carry__1_i_3__5_n_0,add_1_carry__1_i_4__5_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_1__5
       (.I0(prod_rounded_clamped_11_carry_i_7__5_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[6] [11]),
        .O(add_1_carry__1_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_2__5
       (.I0(prod_rounded_clamped_11_carry_i_7__5_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[6] [10]),
        .O(add_1_carry__1_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_3__5
       (.I0(prod_rounded_clamped_11_carry_i_7__5_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[6] [9]),
        .O(add_1_carry__1_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_4__5
       (.I0(prod_rounded_clamped_11_carry_i_7__5_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[6] [8]),
        .O(add_1_carry__1_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__2
       (.CI(add_1_carry__1_n_0),
        .CO({NLW_add_1_carry__2_CO_UNCONNECTED[3],add_1_carry__2_n_1,add_1_carry__2_n_2,add_1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\interconnet[6] [14:12]}),
        .O(add_1[15:12]),
        .S({add_1_carry__2_i_1__5_n_0,add_1_carry__2_i_2__5_n_0,add_1_carry__2_i_3__5_n_0,add_1_carry__2_i_4__5_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_1_carry__2_i_1__5
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__6_n_4),
        .I3(\interconnet[6] [15]),
        .O(add_1_carry__2_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_2__5
       (.I0(prod_rounded_clamped_11_carry_i_3__6_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[6] [14]),
        .O(add_1_carry__2_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_3__5
       (.I0(prod_rounded_clamped_11_carry_i_3__6_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[6] [13]),
        .O(add_1_carry__2_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_4__5
       (.I0(prod_rounded_clamped_11_carry_i_3__6_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[6] [12]),
        .O(add_1_carry__2_i_4__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_1__5
       (.I0(add_1_carry_i_5__5_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[6] [3]),
        .O(add_1_carry_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_2__5
       (.I0(add_1_carry_i_5__5_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[6] [2]),
        .O(add_1_carry_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_3__5
       (.I0(add_1_carry_i_5__5_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[6] [1]),
        .O(add_1_carry_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_4__5
       (.I0(add_1_carry_i_5__5_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[6] [0]),
        .O(add_1_carry_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry_i_5__5
       (.CI(1'b0),
        .CO({add_1_carry_i_5__5_n_0,add_1_carry_i_5__5_n_1,add_1_carry_i_5__5_n_2,add_1_carry_i_5__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_1_carry_i_5__5_n_4,add_1_carry_i_5__5_n_5,add_1_carry_i_5__5_n_6,add_1_carry_i_5__5_n_7}),
        .S({p_1_in[3:1],add_1_carry_i_6__5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_1_carry_i_6__5
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_1_carry_i_6__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[0]),
        .Q(delay_element[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[10]),
        .Q(delay_element[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[11]),
        .Q(delay_element[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[12]),
        .Q(delay_element[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[13]),
        .Q(delay_element[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[14]),
        .Q(delay_element[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[15]),
        .Q(delay_element[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[1]),
        .Q(delay_element[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[2]),
        .Q(delay_element[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[3]),
        .Q(delay_element[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[4]),
        .Q(delay_element[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[5]),
        .Q(delay_element[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[6]),
        .Q(delay_element[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[7]),
        .Q(delay_element[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[8]),
        .Q(delay_element[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[9]),
        .Q(delay_element[9]),
        .R(i_rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_0
       (.A({prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_0_P_UNCONNECTED[47:28],prod_0__0,prod_0_n_99,prod_0_n_100,prod_0_n_101,prod_0_n_102,prod_0_n_103,prod_0_n_104,prod_0_n_105}),
        .PATTERNBDETECT(NLW_prod_0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_1
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_1_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_1_n_99,prod_1_n_100,prod_1_n_101,prod_1_n_102,prod_1_n_103,prod_1_n_104,prod_1_n_105}),
        .PATTERNBDETECT(NLW_prod_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_1_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_01_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED[3],prod_rounded_clamped_01,prod_rounded_clamped_01_carry_n_2,prod_rounded_clamped_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_01_carry_i_1__5_n_0,prod_rounded_clamped_01_carry_i_2__5_n_0,prod_rounded_clamped_01_carry_i_3__5_n_4}),
        .O(NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_01_carry_i_4__5_n_0,prod_rounded_clamped_01_carry_i_5__5_n_0,prod_rounded_clamped_01_carry_i_6__5_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_1__5
       (.I0(prod_rounded_clamped_02_carry_i_7__5_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__5_n_4),
        .O(prod_rounded_clamped_01_carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_01_carry_i_2__5
       (.I0(prod_rounded_clamped_02_carry_i_7__5_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__5_n_6),
        .O(prod_rounded_clamped_01_carry_i_2__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_3__5
       (.CI(prod_rounded_clamped_01_carry_i_7__5_n_0),
        .CO({prod_rounded_clamped_01_carry_i_3__5_n_0,prod_rounded_clamped_01_carry_i_3__5_n_1,prod_rounded_clamped_01_carry_i_3__5_n_2,prod_rounded_clamped_01_carry_i_3__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_3__5_n_4,prod_rounded_clamped_01_carry_i_3__5_n_5,prod_rounded_clamped_01_carry_i_3__5_n_6,prod_rounded_clamped_01_carry_i_3__5_n_7}),
        .S(prod_0__0[23:20]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_4__5
       (.I0(prod_rounded_clamped_02_carry_i_7__5_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__5_n_4),
        .O(prod_rounded_clamped_01_carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_5__5
       (.I0(prod_rounded_clamped_02_carry_i_7__5_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__5_n_6),
        .O(prod_rounded_clamped_01_carry_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_6__5
       (.I0(prod_rounded_clamped_01_carry_i_3__5_n_5),
        .I1(prod_rounded_clamped_01_carry_i_3__5_n_4),
        .O(prod_rounded_clamped_01_carry_i_6__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_7__5
       (.CI(add_0_carry__0_i_5__5_n_0),
        .CO({prod_rounded_clamped_01_carry_i_7__5_n_0,prod_rounded_clamped_01_carry_i_7__5_n_1,prod_rounded_clamped_01_carry_i_7__5_n_2,prod_rounded_clamped_01_carry_i_7__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_7__5_n_4,prod_rounded_clamped_01_carry_i_7__5_n_5,prod_rounded_clamped_01_carry_i_7__5_n_6,prod_rounded_clamped_01_carry_i_7__5_n_7}),
        .S(prod_0__0[19:16]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_02_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED[3],prod_rounded_clamped_02,prod_rounded_clamped_02_carry_n_2,prod_rounded_clamped_02_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_02_carry_i_1__5_n_0,prod_rounded_clamped_02_carry_i_2__5_n_0,prod_rounded_clamped_02_carry_i_3__5_n_0}),
        .O(NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_02_carry_i_4__5_n_0,prod_rounded_clamped_02_carry_i_5__5_n_0,prod_rounded_clamped_02_carry_i_6__5_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_1__5
       (.I0(prod_rounded_clamped_02_carry_i_7__5_n_4),
        .I1(prod_rounded_clamped_02_carry_i_7__5_n_5),
        .O(prod_rounded_clamped_02_carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_02_carry_i_2__5
       (.I0(prod_rounded_clamped_02_carry_i_7__5_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__5_n_6),
        .O(prod_rounded_clamped_02_carry_i_2__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_02_carry_i_3__5
       (.I0(prod_rounded_clamped_01_carry_i_3__5_n_4),
        .O(prod_rounded_clamped_02_carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_4__5
       (.I0(prod_rounded_clamped_02_carry_i_7__5_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__5_n_4),
        .O(prod_rounded_clamped_02_carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_5__5
       (.I0(prod_rounded_clamped_02_carry_i_7__5_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__5_n_6),
        .O(prod_rounded_clamped_02_carry_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_6__5
       (.I0(prod_rounded_clamped_01_carry_i_3__5_n_4),
        .I1(prod_rounded_clamped_01_carry_i_3__5_n_5),
        .O(prod_rounded_clamped_02_carry_i_6__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_02_carry_i_7__5
       (.CI(prod_rounded_clamped_01_carry_i_3__5_n_0),
        .CO({NLW_prod_rounded_clamped_02_carry_i_7__5_CO_UNCONNECTED[3],prod_rounded_clamped_02_carry_i_7__5_n_1,prod_rounded_clamped_02_carry_i_7__5_n_2,prod_rounded_clamped_02_carry_i_7__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_02_carry_i_7__5_n_4,prod_rounded_clamped_02_carry_i_7__5_n_5,prod_rounded_clamped_02_carry_i_7__5_n_6,prod_rounded_clamped_02_carry_i_7__5_n_7}),
        .S(prod_0__0[27:24]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_11_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED[3],prod_rounded_clamped_11,prod_rounded_clamped_11_carry_n_2,prod_rounded_clamped_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_11_carry_i_1__6_n_0,prod_rounded_clamped_11_carry_i_2__6_n_0,prod_rounded_clamped_11_carry_i_3__6_n_4}),
        .O(NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_11_carry_i_4__6_n_0,prod_rounded_clamped_11_carry_i_5__6_n_0,prod_rounded_clamped_11_carry_i_6__6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_1__6
       (.I0(prod_rounded_clamped_12_carry_i_7__6_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__6_n_4),
        .O(prod_rounded_clamped_11_carry_i_1__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_11_carry_i_2__6
       (.I0(prod_rounded_clamped_12_carry_i_7__6_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__6_n_6),
        .O(prod_rounded_clamped_11_carry_i_2__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_3__6
       (.CI(prod_rounded_clamped_11_carry_i_7__5_n_0),
        .CO({prod_rounded_clamped_11_carry_i_3__6_n_0,prod_rounded_clamped_11_carry_i_3__6_n_1,prod_rounded_clamped_11_carry_i_3__6_n_2,prod_rounded_clamped_11_carry_i_3__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_3__6_n_4,prod_rounded_clamped_11_carry_i_3__6_n_5,prod_rounded_clamped_11_carry_i_3__6_n_6,prod_rounded_clamped_11_carry_i_3__6_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_4__6
       (.I0(prod_rounded_clamped_12_carry_i_7__6_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__6_n_4),
        .O(prod_rounded_clamped_11_carry_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_5__6
       (.I0(prod_rounded_clamped_12_carry_i_7__6_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__6_n_6),
        .O(prod_rounded_clamped_11_carry_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_6__6
       (.I0(prod_rounded_clamped_11_carry_i_3__6_n_5),
        .I1(prod_rounded_clamped_11_carry_i_3__6_n_4),
        .O(prod_rounded_clamped_11_carry_i_6__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_7__5
       (.CI(add_1_carry__0_i_5__5_n_0),
        .CO({prod_rounded_clamped_11_carry_i_7__5_n_0,prod_rounded_clamped_11_carry_i_7__5_n_1,prod_rounded_clamped_11_carry_i_7__5_n_2,prod_rounded_clamped_11_carry_i_7__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_7__5_n_4,prod_rounded_clamped_11_carry_i_7__5_n_5,prod_rounded_clamped_11_carry_i_7__5_n_6,prod_rounded_clamped_11_carry_i_7__5_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_12_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED[3],prod_rounded_clamped_12,prod_rounded_clamped_12_carry_n_2,prod_rounded_clamped_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_12_carry_i_1__6_n_0,prod_rounded_clamped_12_carry_i_2__6_n_0,prod_rounded_clamped_12_carry_i_3__6_n_0}),
        .O(NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_12_carry_i_4__6_n_0,prod_rounded_clamped_12_carry_i_5__6_n_0,prod_rounded_clamped_12_carry_i_6__6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_1__6
       (.I0(prod_rounded_clamped_12_carry_i_7__6_n_4),
        .I1(prod_rounded_clamped_12_carry_i_7__6_n_5),
        .O(prod_rounded_clamped_12_carry_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_12_carry_i_2__6
       (.I0(prod_rounded_clamped_12_carry_i_7__6_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__6_n_6),
        .O(prod_rounded_clamped_12_carry_i_2__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_12_carry_i_3__6
       (.I0(prod_rounded_clamped_11_carry_i_3__6_n_4),
        .O(prod_rounded_clamped_12_carry_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_4__6
       (.I0(prod_rounded_clamped_12_carry_i_7__6_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__6_n_4),
        .O(prod_rounded_clamped_12_carry_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_5__6
       (.I0(prod_rounded_clamped_12_carry_i_7__6_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__6_n_6),
        .O(prod_rounded_clamped_12_carry_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_6__6
       (.I0(prod_rounded_clamped_11_carry_i_3__6_n_4),
        .I1(prod_rounded_clamped_11_carry_i_3__6_n_5),
        .O(prod_rounded_clamped_12_carry_i_6__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_12_carry_i_7__6
       (.CI(prod_rounded_clamped_11_carry_i_3__6_n_0),
        .CO({NLW_prod_rounded_clamped_12_carry_i_7__6_CO_UNCONNECTED[3],prod_rounded_clamped_12_carry_i_7__6_n_1,prod_rounded_clamped_12_carry_i_7__6_n_2,prod_rounded_clamped_12_carry_i_7__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_12_carry_i_7__6_n_4,prod_rounded_clamped_12_carry_i_7__6_n_5,prod_rounded_clamped_12_carry_i_7__6_n_6,prod_rounded_clamped_12_carry_i_7__6_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock_parallel" *) 
module FIR_subblock_parallel_15
   (output_signal,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    prod_0_0,
    \interconnet[7] );
  output [15:0]output_signal;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [13:0]prod_0_0;
  input [15:0]\interconnet[7] ;

  wire [13:0]A;
  wire add_0_carry__0_i_1__6_n_0;
  wire add_0_carry__0_i_2__6_n_0;
  wire add_0_carry__0_i_3__6_n_0;
  wire add_0_carry__0_i_4__6_n_0;
  wire add_0_carry__0_i_5__6_n_0;
  wire add_0_carry__0_i_5__6_n_1;
  wire add_0_carry__0_i_5__6_n_2;
  wire add_0_carry__0_i_5__6_n_3;
  wire add_0_carry__0_i_5__6_n_4;
  wire add_0_carry__0_i_5__6_n_5;
  wire add_0_carry__0_i_5__6_n_6;
  wire add_0_carry__0_i_5__6_n_7;
  wire add_0_carry__0_n_0;
  wire add_0_carry__0_n_1;
  wire add_0_carry__0_n_2;
  wire add_0_carry__0_n_3;
  wire add_0_carry__1_i_1__6_n_0;
  wire add_0_carry__1_i_2__6_n_0;
  wire add_0_carry__1_i_3__6_n_0;
  wire add_0_carry__1_i_4__6_n_0;
  wire add_0_carry__1_n_0;
  wire add_0_carry__1_n_1;
  wire add_0_carry__1_n_2;
  wire add_0_carry__1_n_3;
  wire add_0_carry__2_i_1__6_n_0;
  wire add_0_carry__2_i_2__6_n_0;
  wire add_0_carry__2_i_3__6_n_0;
  wire add_0_carry__2_i_4__6_n_0;
  wire add_0_carry__2_n_1;
  wire add_0_carry__2_n_2;
  wire add_0_carry__2_n_3;
  wire add_0_carry_i_1__6_n_0;
  wire add_0_carry_i_2__6_n_0;
  wire add_0_carry_i_3__6_n_0;
  wire add_0_carry_i_4__6_n_0;
  wire add_0_carry_i_5__6_n_0;
  wire add_0_carry_i_5__6_n_1;
  wire add_0_carry_i_5__6_n_2;
  wire add_0_carry_i_5__6_n_3;
  wire add_0_carry_i_5__6_n_4;
  wire add_0_carry_i_5__6_n_5;
  wire add_0_carry_i_5__6_n_6;
  wire add_0_carry_i_5__6_n_7;
  wire add_0_carry_i_6__6_n_0;
  wire add_0_carry_n_0;
  wire add_0_carry_n_1;
  wire add_0_carry_n_2;
  wire add_0_carry_n_3;
  wire [15:0]add_1;
  wire add_1_carry__0_i_1__6_n_0;
  wire add_1_carry__0_i_2__6_n_0;
  wire add_1_carry__0_i_3__6_n_0;
  wire add_1_carry__0_i_4__6_n_0;
  wire add_1_carry__0_i_5__6_n_0;
  wire add_1_carry__0_i_5__6_n_1;
  wire add_1_carry__0_i_5__6_n_2;
  wire add_1_carry__0_i_5__6_n_3;
  wire add_1_carry__0_i_5__6_n_4;
  wire add_1_carry__0_i_5__6_n_5;
  wire add_1_carry__0_i_5__6_n_6;
  wire add_1_carry__0_i_5__6_n_7;
  wire add_1_carry__0_n_0;
  wire add_1_carry__0_n_1;
  wire add_1_carry__0_n_2;
  wire add_1_carry__0_n_3;
  wire add_1_carry__1_i_1__6_n_0;
  wire add_1_carry__1_i_2__6_n_0;
  wire add_1_carry__1_i_3__6_n_0;
  wire add_1_carry__1_i_4__6_n_0;
  wire add_1_carry__1_n_0;
  wire add_1_carry__1_n_1;
  wire add_1_carry__1_n_2;
  wire add_1_carry__1_n_3;
  wire add_1_carry__2_i_1__6_n_0;
  wire add_1_carry__2_i_2__6_n_0;
  wire add_1_carry__2_i_3__6_n_0;
  wire add_1_carry__2_i_4__6_n_0;
  wire add_1_carry__2_n_1;
  wire add_1_carry__2_n_2;
  wire add_1_carry__2_n_3;
  wire add_1_carry_i_1__6_n_0;
  wire add_1_carry_i_2__6_n_0;
  wire add_1_carry_i_3__6_n_0;
  wire add_1_carry_i_4__6_n_0;
  wire add_1_carry_i_5__6_n_0;
  wire add_1_carry_i_5__6_n_1;
  wire add_1_carry_i_5__6_n_2;
  wire add_1_carry_i_5__6_n_3;
  wire add_1_carry_i_5__6_n_4;
  wire add_1_carry_i_5__6_n_5;
  wire add_1_carry_i_5__6_n_6;
  wire add_1_carry_i_5__6_n_7;
  wire add_1_carry_i_6__6_n_0;
  wire add_1_carry_n_0;
  wire add_1_carry_n_1;
  wire add_1_carry_n_2;
  wire add_1_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]delay_element;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[7] ;
  wire [15:0]output_signal;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [13:0]prod_0_0;
  wire [27:7]prod_0__0;
  wire prod_0_n_100;
  wire prod_0_n_101;
  wire prod_0_n_102;
  wire prod_0_n_103;
  wire prod_0_n_104;
  wire prod_0_n_105;
  wire prod_0_n_99;
  wire prod_1_n_100;
  wire prod_1_n_101;
  wire prod_1_n_102;
  wire prod_1_n_103;
  wire prod_1_n_104;
  wire prod_1_n_105;
  wire prod_1_n_99;
  wire prod_rounded_clamped_01;
  wire prod_rounded_clamped_01_carry_i_1__6_n_0;
  wire prod_rounded_clamped_01_carry_i_2__6_n_0;
  wire prod_rounded_clamped_01_carry_i_3__6_n_0;
  wire prod_rounded_clamped_01_carry_i_3__6_n_1;
  wire prod_rounded_clamped_01_carry_i_3__6_n_2;
  wire prod_rounded_clamped_01_carry_i_3__6_n_3;
  wire prod_rounded_clamped_01_carry_i_3__6_n_4;
  wire prod_rounded_clamped_01_carry_i_3__6_n_5;
  wire prod_rounded_clamped_01_carry_i_3__6_n_6;
  wire prod_rounded_clamped_01_carry_i_3__6_n_7;
  wire prod_rounded_clamped_01_carry_i_4__6_n_0;
  wire prod_rounded_clamped_01_carry_i_5__6_n_0;
  wire prod_rounded_clamped_01_carry_i_6__6_n_0;
  wire prod_rounded_clamped_01_carry_i_7__6_n_0;
  wire prod_rounded_clamped_01_carry_i_7__6_n_1;
  wire prod_rounded_clamped_01_carry_i_7__6_n_2;
  wire prod_rounded_clamped_01_carry_i_7__6_n_3;
  wire prod_rounded_clamped_01_carry_i_7__6_n_4;
  wire prod_rounded_clamped_01_carry_i_7__6_n_5;
  wire prod_rounded_clamped_01_carry_i_7__6_n_6;
  wire prod_rounded_clamped_01_carry_i_7__6_n_7;
  wire prod_rounded_clamped_01_carry_n_2;
  wire prod_rounded_clamped_01_carry_n_3;
  wire prod_rounded_clamped_02;
  wire prod_rounded_clamped_02_carry_i_1__6_n_0;
  wire prod_rounded_clamped_02_carry_i_2__6_n_0;
  wire prod_rounded_clamped_02_carry_i_3__6_n_0;
  wire prod_rounded_clamped_02_carry_i_4__6_n_0;
  wire prod_rounded_clamped_02_carry_i_5__6_n_0;
  wire prod_rounded_clamped_02_carry_i_6__6_n_0;
  wire prod_rounded_clamped_02_carry_i_7__6_n_1;
  wire prod_rounded_clamped_02_carry_i_7__6_n_2;
  wire prod_rounded_clamped_02_carry_i_7__6_n_3;
  wire prod_rounded_clamped_02_carry_i_7__6_n_4;
  wire prod_rounded_clamped_02_carry_i_7__6_n_5;
  wire prod_rounded_clamped_02_carry_i_7__6_n_6;
  wire prod_rounded_clamped_02_carry_i_7__6_n_7;
  wire prod_rounded_clamped_02_carry_n_2;
  wire prod_rounded_clamped_02_carry_n_3;
  wire prod_rounded_clamped_11;
  wire prod_rounded_clamped_11_carry_i_1__7_n_0;
  wire prod_rounded_clamped_11_carry_i_2__7_n_0;
  wire prod_rounded_clamped_11_carry_i_3__7_n_0;
  wire prod_rounded_clamped_11_carry_i_3__7_n_1;
  wire prod_rounded_clamped_11_carry_i_3__7_n_2;
  wire prod_rounded_clamped_11_carry_i_3__7_n_3;
  wire prod_rounded_clamped_11_carry_i_3__7_n_4;
  wire prod_rounded_clamped_11_carry_i_3__7_n_5;
  wire prod_rounded_clamped_11_carry_i_3__7_n_6;
  wire prod_rounded_clamped_11_carry_i_3__7_n_7;
  wire prod_rounded_clamped_11_carry_i_4__7_n_0;
  wire prod_rounded_clamped_11_carry_i_5__7_n_0;
  wire prod_rounded_clamped_11_carry_i_6__7_n_0;
  wire prod_rounded_clamped_11_carry_i_7__6_n_0;
  wire prod_rounded_clamped_11_carry_i_7__6_n_1;
  wire prod_rounded_clamped_11_carry_i_7__6_n_2;
  wire prod_rounded_clamped_11_carry_i_7__6_n_3;
  wire prod_rounded_clamped_11_carry_i_7__6_n_4;
  wire prod_rounded_clamped_11_carry_i_7__6_n_5;
  wire prod_rounded_clamped_11_carry_i_7__6_n_6;
  wire prod_rounded_clamped_11_carry_i_7__6_n_7;
  wire prod_rounded_clamped_11_carry_n_2;
  wire prod_rounded_clamped_11_carry_n_3;
  wire prod_rounded_clamped_12;
  wire prod_rounded_clamped_12_carry_i_1__7_n_0;
  wire prod_rounded_clamped_12_carry_i_2__7_n_0;
  wire prod_rounded_clamped_12_carry_i_3__7_n_0;
  wire prod_rounded_clamped_12_carry_i_4__7_n_0;
  wire prod_rounded_clamped_12_carry_i_5__7_n_0;
  wire prod_rounded_clamped_12_carry_i_6__7_n_0;
  wire prod_rounded_clamped_12_carry_i_7__7_n_1;
  wire prod_rounded_clamped_12_carry_i_7__7_n_2;
  wire prod_rounded_clamped_12_carry_i_7__7_n_3;
  wire prod_rounded_clamped_12_carry_i_7__7_n_4;
  wire prod_rounded_clamped_12_carry_i_7__7_n_5;
  wire prod_rounded_clamped_12_carry_i_7__7_n_6;
  wire prod_rounded_clamped_12_carry_i_7__7_n_7;
  wire prod_rounded_clamped_12_carry_n_2;
  wire prod_rounded_clamped_12_carry_n_3;
  wire [3:3]NLW_add_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_1_carry__2_CO_UNCONNECTED;
  wire NLW_prod_0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_0_OVERFLOW_UNCONNECTED;
  wire NLW_prod_0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_0_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_0_P_UNCONNECTED;
  wire [47:0]NLW_prod_0_PCOUT_UNCONNECTED;
  wire NLW_prod_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_1_OVERFLOW_UNCONNECTED;
  wire NLW_prod_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_1_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_1_P_UNCONNECTED;
  wire [47:0]NLW_prod_1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_i_7__6_CO_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_i_7__7_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry
       (.CI(1'b0),
        .CO({add_0_carry_n_0,add_0_carry_n_1,add_0_carry_n_2,add_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[3:0]),
        .O(output_signal[3:0]),
        .S({add_0_carry_i_1__6_n_0,add_0_carry_i_2__6_n_0,add_0_carry_i_3__6_n_0,add_0_carry_i_4__6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0
       (.CI(add_0_carry_n_0),
        .CO({add_0_carry__0_n_0,add_0_carry__0_n_1,add_0_carry__0_n_2,add_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[7:4]),
        .O(output_signal[7:4]),
        .S({add_0_carry__0_i_1__6_n_0,add_0_carry__0_i_2__6_n_0,add_0_carry__0_i_3__6_n_0,add_0_carry__0_i_4__6_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_1__6
       (.I0(add_0_carry__0_i_5__6_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[7]),
        .O(add_0_carry__0_i_1__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_2__6
       (.I0(add_0_carry__0_i_5__6_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[6]),
        .O(add_0_carry__0_i_2__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_3__6
       (.I0(add_0_carry__0_i_5__6_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[5]),
        .O(add_0_carry__0_i_3__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_4__6
       (.I0(add_0_carry__0_i_5__6_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[4]),
        .O(add_0_carry__0_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0_i_5__6
       (.CI(add_0_carry_i_5__6_n_0),
        .CO({add_0_carry__0_i_5__6_n_0,add_0_carry__0_i_5__6_n_1,add_0_carry__0_i_5__6_n_2,add_0_carry__0_i_5__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_0_carry__0_i_5__6_n_4,add_0_carry__0_i_5__6_n_5,add_0_carry__0_i_5__6_n_6,add_0_carry__0_i_5__6_n_7}),
        .S(prod_0__0[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__1
       (.CI(add_0_carry__0_n_0),
        .CO({add_0_carry__1_n_0,add_0_carry__1_n_1,add_0_carry__1_n_2,add_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[11:8]),
        .O(output_signal[11:8]),
        .S({add_0_carry__1_i_1__6_n_0,add_0_carry__1_i_2__6_n_0,add_0_carry__1_i_3__6_n_0,add_0_carry__1_i_4__6_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_1__6
       (.I0(prod_rounded_clamped_01_carry_i_7__6_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[11]),
        .O(add_0_carry__1_i_1__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_2__6
       (.I0(prod_rounded_clamped_01_carry_i_7__6_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[10]),
        .O(add_0_carry__1_i_2__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_3__6
       (.I0(prod_rounded_clamped_01_carry_i_7__6_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[9]),
        .O(add_0_carry__1_i_3__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_4__6
       (.I0(prod_rounded_clamped_01_carry_i_7__6_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[8]),
        .O(add_0_carry__1_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__2
       (.CI(add_0_carry__1_n_0),
        .CO({NLW_add_0_carry__2_CO_UNCONNECTED[3],add_0_carry__2_n_1,add_0_carry__2_n_2,add_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_element[14:12]}),
        .O(output_signal[15:12]),
        .S({add_0_carry__2_i_1__6_n_0,add_0_carry__2_i_2__6_n_0,add_0_carry__2_i_3__6_n_0,add_0_carry__2_i_4__6_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_0_carry__2_i_1__6
       (.I0(prod_rounded_clamped_01),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01_carry_i_3__6_n_4),
        .I3(delay_element[15]),
        .O(add_0_carry__2_i_1__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_2__6
       (.I0(prod_rounded_clamped_01_carry_i_3__6_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[14]),
        .O(add_0_carry__2_i_2__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_3__6
       (.I0(prod_rounded_clamped_01_carry_i_3__6_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[13]),
        .O(add_0_carry__2_i_3__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_4__6
       (.I0(prod_rounded_clamped_01_carry_i_3__6_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[12]),
        .O(add_0_carry__2_i_4__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_1__6
       (.I0(add_0_carry_i_5__6_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[3]),
        .O(add_0_carry_i_1__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_2__6
       (.I0(add_0_carry_i_5__6_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[2]),
        .O(add_0_carry_i_2__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_3__6
       (.I0(add_0_carry_i_5__6_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[1]),
        .O(add_0_carry_i_3__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_4__6
       (.I0(add_0_carry_i_5__6_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[0]),
        .O(add_0_carry_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry_i_5__6
       (.CI(1'b0),
        .CO({add_0_carry_i_5__6_n_0,add_0_carry_i_5__6_n_1,add_0_carry_i_5__6_n_2,add_0_carry_i_5__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_0__0[8]}),
        .O({add_0_carry_i_5__6_n_4,add_0_carry_i_5__6_n_5,add_0_carry_i_5__6_n_6,add_0_carry_i_5__6_n_7}),
        .S({prod_0__0[11:9],add_0_carry_i_6__6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_0_carry_i_6__6
       (.I0(prod_0__0[8]),
        .I1(prod_0__0[7]),
        .O(add_0_carry_i_6__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry
       (.CI(1'b0),
        .CO({add_1_carry_n_0,add_1_carry_n_1,add_1_carry_n_2,add_1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[7] [3:0]),
        .O(add_1[3:0]),
        .S({add_1_carry_i_1__6_n_0,add_1_carry_i_2__6_n_0,add_1_carry_i_3__6_n_0,add_1_carry_i_4__6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0
       (.CI(add_1_carry_n_0),
        .CO({add_1_carry__0_n_0,add_1_carry__0_n_1,add_1_carry__0_n_2,add_1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[7] [7:4]),
        .O(add_1[7:4]),
        .S({add_1_carry__0_i_1__6_n_0,add_1_carry__0_i_2__6_n_0,add_1_carry__0_i_3__6_n_0,add_1_carry__0_i_4__6_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_1__6
       (.I0(add_1_carry__0_i_5__6_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[7] [7]),
        .O(add_1_carry__0_i_1__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_2__6
       (.I0(add_1_carry__0_i_5__6_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[7] [6]),
        .O(add_1_carry__0_i_2__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_3__6
       (.I0(add_1_carry__0_i_5__6_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[7] [5]),
        .O(add_1_carry__0_i_3__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_4__6
       (.I0(add_1_carry__0_i_5__6_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[7] [4]),
        .O(add_1_carry__0_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0_i_5__6
       (.CI(add_1_carry_i_5__6_n_0),
        .CO({add_1_carry__0_i_5__6_n_0,add_1_carry__0_i_5__6_n_1,add_1_carry__0_i_5__6_n_2,add_1_carry__0_i_5__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_1_carry__0_i_5__6_n_4,add_1_carry__0_i_5__6_n_5,add_1_carry__0_i_5__6_n_6,add_1_carry__0_i_5__6_n_7}),
        .S(p_1_in[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__1
       (.CI(add_1_carry__0_n_0),
        .CO({add_1_carry__1_n_0,add_1_carry__1_n_1,add_1_carry__1_n_2,add_1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[7] [11:8]),
        .O(add_1[11:8]),
        .S({add_1_carry__1_i_1__6_n_0,add_1_carry__1_i_2__6_n_0,add_1_carry__1_i_3__6_n_0,add_1_carry__1_i_4__6_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_1__6
       (.I0(prod_rounded_clamped_11_carry_i_7__6_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[7] [11]),
        .O(add_1_carry__1_i_1__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_2__6
       (.I0(prod_rounded_clamped_11_carry_i_7__6_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[7] [10]),
        .O(add_1_carry__1_i_2__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_3__6
       (.I0(prod_rounded_clamped_11_carry_i_7__6_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[7] [9]),
        .O(add_1_carry__1_i_3__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_4__6
       (.I0(prod_rounded_clamped_11_carry_i_7__6_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[7] [8]),
        .O(add_1_carry__1_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__2
       (.CI(add_1_carry__1_n_0),
        .CO({NLW_add_1_carry__2_CO_UNCONNECTED[3],add_1_carry__2_n_1,add_1_carry__2_n_2,add_1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\interconnet[7] [14:12]}),
        .O(add_1[15:12]),
        .S({add_1_carry__2_i_1__6_n_0,add_1_carry__2_i_2__6_n_0,add_1_carry__2_i_3__6_n_0,add_1_carry__2_i_4__6_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_1_carry__2_i_1__6
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__7_n_4),
        .I3(\interconnet[7] [15]),
        .O(add_1_carry__2_i_1__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_2__6
       (.I0(prod_rounded_clamped_11_carry_i_3__7_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[7] [14]),
        .O(add_1_carry__2_i_2__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_3__6
       (.I0(prod_rounded_clamped_11_carry_i_3__7_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[7] [13]),
        .O(add_1_carry__2_i_3__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_4__6
       (.I0(prod_rounded_clamped_11_carry_i_3__7_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[7] [12]),
        .O(add_1_carry__2_i_4__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_1__6
       (.I0(add_1_carry_i_5__6_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[7] [3]),
        .O(add_1_carry_i_1__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_2__6
       (.I0(add_1_carry_i_5__6_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[7] [2]),
        .O(add_1_carry_i_2__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_3__6
       (.I0(add_1_carry_i_5__6_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[7] [1]),
        .O(add_1_carry_i_3__6_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_4__6
       (.I0(add_1_carry_i_5__6_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[7] [0]),
        .O(add_1_carry_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry_i_5__6
       (.CI(1'b0),
        .CO({add_1_carry_i_5__6_n_0,add_1_carry_i_5__6_n_1,add_1_carry_i_5__6_n_2,add_1_carry_i_5__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_1_carry_i_5__6_n_4,add_1_carry_i_5__6_n_5,add_1_carry_i_5__6_n_6,add_1_carry_i_5__6_n_7}),
        .S({p_1_in[3:1],add_1_carry_i_6__6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_1_carry_i_6__6
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_1_carry_i_6__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[0]),
        .Q(delay_element[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[10]),
        .Q(delay_element[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[11]),
        .Q(delay_element[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[12]),
        .Q(delay_element[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[13]),
        .Q(delay_element[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[14]),
        .Q(delay_element[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[15]),
        .Q(delay_element[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[1]),
        .Q(delay_element[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[2]),
        .Q(delay_element[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[3]),
        .Q(delay_element[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[4]),
        .Q(delay_element[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[5]),
        .Q(delay_element[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[6]),
        .Q(delay_element[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[7]),
        .Q(delay_element[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[8]),
        .Q(delay_element[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[9]),
        .Q(delay_element[9]),
        .R(i_rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_0
       (.A({prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_0_P_UNCONNECTED[47:28],prod_0__0,prod_0_n_99,prod_0_n_100,prod_0_n_101,prod_0_n_102,prod_0_n_103,prod_0_n_104,prod_0_n_105}),
        .PATTERNBDETECT(NLW_prod_0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_1
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_1_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_1_n_99,prod_1_n_100,prod_1_n_101,prod_1_n_102,prod_1_n_103,prod_1_n_104,prod_1_n_105}),
        .PATTERNBDETECT(NLW_prod_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_1_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_01_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED[3],prod_rounded_clamped_01,prod_rounded_clamped_01_carry_n_2,prod_rounded_clamped_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_01_carry_i_1__6_n_0,prod_rounded_clamped_01_carry_i_2__6_n_0,prod_rounded_clamped_01_carry_i_3__6_n_4}),
        .O(NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_01_carry_i_4__6_n_0,prod_rounded_clamped_01_carry_i_5__6_n_0,prod_rounded_clamped_01_carry_i_6__6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_1__6
       (.I0(prod_rounded_clamped_02_carry_i_7__6_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__6_n_4),
        .O(prod_rounded_clamped_01_carry_i_1__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_01_carry_i_2__6
       (.I0(prod_rounded_clamped_02_carry_i_7__6_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__6_n_6),
        .O(prod_rounded_clamped_01_carry_i_2__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_3__6
       (.CI(prod_rounded_clamped_01_carry_i_7__6_n_0),
        .CO({prod_rounded_clamped_01_carry_i_3__6_n_0,prod_rounded_clamped_01_carry_i_3__6_n_1,prod_rounded_clamped_01_carry_i_3__6_n_2,prod_rounded_clamped_01_carry_i_3__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_3__6_n_4,prod_rounded_clamped_01_carry_i_3__6_n_5,prod_rounded_clamped_01_carry_i_3__6_n_6,prod_rounded_clamped_01_carry_i_3__6_n_7}),
        .S(prod_0__0[23:20]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_4__6
       (.I0(prod_rounded_clamped_02_carry_i_7__6_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__6_n_4),
        .O(prod_rounded_clamped_01_carry_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_5__6
       (.I0(prod_rounded_clamped_02_carry_i_7__6_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__6_n_6),
        .O(prod_rounded_clamped_01_carry_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_6__6
       (.I0(prod_rounded_clamped_01_carry_i_3__6_n_5),
        .I1(prod_rounded_clamped_01_carry_i_3__6_n_4),
        .O(prod_rounded_clamped_01_carry_i_6__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_7__6
       (.CI(add_0_carry__0_i_5__6_n_0),
        .CO({prod_rounded_clamped_01_carry_i_7__6_n_0,prod_rounded_clamped_01_carry_i_7__6_n_1,prod_rounded_clamped_01_carry_i_7__6_n_2,prod_rounded_clamped_01_carry_i_7__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_7__6_n_4,prod_rounded_clamped_01_carry_i_7__6_n_5,prod_rounded_clamped_01_carry_i_7__6_n_6,prod_rounded_clamped_01_carry_i_7__6_n_7}),
        .S(prod_0__0[19:16]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_02_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED[3],prod_rounded_clamped_02,prod_rounded_clamped_02_carry_n_2,prod_rounded_clamped_02_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_02_carry_i_1__6_n_0,prod_rounded_clamped_02_carry_i_2__6_n_0,prod_rounded_clamped_02_carry_i_3__6_n_0}),
        .O(NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_02_carry_i_4__6_n_0,prod_rounded_clamped_02_carry_i_5__6_n_0,prod_rounded_clamped_02_carry_i_6__6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_1__6
       (.I0(prod_rounded_clamped_02_carry_i_7__6_n_4),
        .I1(prod_rounded_clamped_02_carry_i_7__6_n_5),
        .O(prod_rounded_clamped_02_carry_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_02_carry_i_2__6
       (.I0(prod_rounded_clamped_02_carry_i_7__6_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__6_n_6),
        .O(prod_rounded_clamped_02_carry_i_2__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_02_carry_i_3__6
       (.I0(prod_rounded_clamped_01_carry_i_3__6_n_4),
        .O(prod_rounded_clamped_02_carry_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_4__6
       (.I0(prod_rounded_clamped_02_carry_i_7__6_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__6_n_4),
        .O(prod_rounded_clamped_02_carry_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_5__6
       (.I0(prod_rounded_clamped_02_carry_i_7__6_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__6_n_6),
        .O(prod_rounded_clamped_02_carry_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_6__6
       (.I0(prod_rounded_clamped_01_carry_i_3__6_n_4),
        .I1(prod_rounded_clamped_01_carry_i_3__6_n_5),
        .O(prod_rounded_clamped_02_carry_i_6__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_02_carry_i_7__6
       (.CI(prod_rounded_clamped_01_carry_i_3__6_n_0),
        .CO({NLW_prod_rounded_clamped_02_carry_i_7__6_CO_UNCONNECTED[3],prod_rounded_clamped_02_carry_i_7__6_n_1,prod_rounded_clamped_02_carry_i_7__6_n_2,prod_rounded_clamped_02_carry_i_7__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_02_carry_i_7__6_n_4,prod_rounded_clamped_02_carry_i_7__6_n_5,prod_rounded_clamped_02_carry_i_7__6_n_6,prod_rounded_clamped_02_carry_i_7__6_n_7}),
        .S(prod_0__0[27:24]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_11_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED[3],prod_rounded_clamped_11,prod_rounded_clamped_11_carry_n_2,prod_rounded_clamped_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_11_carry_i_1__7_n_0,prod_rounded_clamped_11_carry_i_2__7_n_0,prod_rounded_clamped_11_carry_i_3__7_n_4}),
        .O(NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_11_carry_i_4__7_n_0,prod_rounded_clamped_11_carry_i_5__7_n_0,prod_rounded_clamped_11_carry_i_6__7_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_1__7
       (.I0(prod_rounded_clamped_12_carry_i_7__7_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__7_n_4),
        .O(prod_rounded_clamped_11_carry_i_1__7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_11_carry_i_2__7
       (.I0(prod_rounded_clamped_12_carry_i_7__7_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__7_n_6),
        .O(prod_rounded_clamped_11_carry_i_2__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_3__7
       (.CI(prod_rounded_clamped_11_carry_i_7__6_n_0),
        .CO({prod_rounded_clamped_11_carry_i_3__7_n_0,prod_rounded_clamped_11_carry_i_3__7_n_1,prod_rounded_clamped_11_carry_i_3__7_n_2,prod_rounded_clamped_11_carry_i_3__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_3__7_n_4,prod_rounded_clamped_11_carry_i_3__7_n_5,prod_rounded_clamped_11_carry_i_3__7_n_6,prod_rounded_clamped_11_carry_i_3__7_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_4__7
       (.I0(prod_rounded_clamped_12_carry_i_7__7_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__7_n_4),
        .O(prod_rounded_clamped_11_carry_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_5__7
       (.I0(prod_rounded_clamped_12_carry_i_7__7_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__7_n_6),
        .O(prod_rounded_clamped_11_carry_i_5__7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_6__7
       (.I0(prod_rounded_clamped_11_carry_i_3__7_n_5),
        .I1(prod_rounded_clamped_11_carry_i_3__7_n_4),
        .O(prod_rounded_clamped_11_carry_i_6__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_7__6
       (.CI(add_1_carry__0_i_5__6_n_0),
        .CO({prod_rounded_clamped_11_carry_i_7__6_n_0,prod_rounded_clamped_11_carry_i_7__6_n_1,prod_rounded_clamped_11_carry_i_7__6_n_2,prod_rounded_clamped_11_carry_i_7__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_7__6_n_4,prod_rounded_clamped_11_carry_i_7__6_n_5,prod_rounded_clamped_11_carry_i_7__6_n_6,prod_rounded_clamped_11_carry_i_7__6_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_12_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED[3],prod_rounded_clamped_12,prod_rounded_clamped_12_carry_n_2,prod_rounded_clamped_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_12_carry_i_1__7_n_0,prod_rounded_clamped_12_carry_i_2__7_n_0,prod_rounded_clamped_12_carry_i_3__7_n_0}),
        .O(NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_12_carry_i_4__7_n_0,prod_rounded_clamped_12_carry_i_5__7_n_0,prod_rounded_clamped_12_carry_i_6__7_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_1__7
       (.I0(prod_rounded_clamped_12_carry_i_7__7_n_4),
        .I1(prod_rounded_clamped_12_carry_i_7__7_n_5),
        .O(prod_rounded_clamped_12_carry_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_12_carry_i_2__7
       (.I0(prod_rounded_clamped_12_carry_i_7__7_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__7_n_6),
        .O(prod_rounded_clamped_12_carry_i_2__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_12_carry_i_3__7
       (.I0(prod_rounded_clamped_11_carry_i_3__7_n_4),
        .O(prod_rounded_clamped_12_carry_i_3__7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_4__7
       (.I0(prod_rounded_clamped_12_carry_i_7__7_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__7_n_4),
        .O(prod_rounded_clamped_12_carry_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_5__7
       (.I0(prod_rounded_clamped_12_carry_i_7__7_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__7_n_6),
        .O(prod_rounded_clamped_12_carry_i_5__7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_6__7
       (.I0(prod_rounded_clamped_11_carry_i_3__7_n_4),
        .I1(prod_rounded_clamped_11_carry_i_3__7_n_5),
        .O(prod_rounded_clamped_12_carry_i_6__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_12_carry_i_7__7
       (.CI(prod_rounded_clamped_11_carry_i_3__7_n_0),
        .CO({NLW_prod_rounded_clamped_12_carry_i_7__7_CO_UNCONNECTED[3],prod_rounded_clamped_12_carry_i_7__7_n_1,prod_rounded_clamped_12_carry_i_7__7_n_2,prod_rounded_clamped_12_carry_i_7__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_12_carry_i_7__7_n_4,prod_rounded_clamped_12_carry_i_7__7_n_5,prod_rounded_clamped_12_carry_i_7__7_n_6,prod_rounded_clamped_12_carry_i_7__7_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock_parallel" *) 
module FIR_subblock_parallel_2
   (\interconnet[12] ,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    prod_0_0,
    \interconnet[11] );
  output [15:0]\interconnet[12] ;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [13:0]prod_0_0;
  input [15:0]\interconnet[11] ;

  wire [13:0]A;
  wire add_0_carry__0_i_1__10_n_0;
  wire add_0_carry__0_i_2__10_n_0;
  wire add_0_carry__0_i_3__10_n_0;
  wire add_0_carry__0_i_4__10_n_0;
  wire add_0_carry__0_i_5__10_n_0;
  wire add_0_carry__0_i_5__10_n_1;
  wire add_0_carry__0_i_5__10_n_2;
  wire add_0_carry__0_i_5__10_n_3;
  wire add_0_carry__0_i_5__10_n_4;
  wire add_0_carry__0_i_5__10_n_5;
  wire add_0_carry__0_i_5__10_n_6;
  wire add_0_carry__0_i_5__10_n_7;
  wire add_0_carry__0_n_0;
  wire add_0_carry__0_n_1;
  wire add_0_carry__0_n_2;
  wire add_0_carry__0_n_3;
  wire add_0_carry__1_i_1__10_n_0;
  wire add_0_carry__1_i_2__10_n_0;
  wire add_0_carry__1_i_3__10_n_0;
  wire add_0_carry__1_i_4__10_n_0;
  wire add_0_carry__1_n_0;
  wire add_0_carry__1_n_1;
  wire add_0_carry__1_n_2;
  wire add_0_carry__1_n_3;
  wire add_0_carry__2_i_1__10_n_0;
  wire add_0_carry__2_i_2__10_n_0;
  wire add_0_carry__2_i_3__10_n_0;
  wire add_0_carry__2_i_4__10_n_0;
  wire add_0_carry__2_n_1;
  wire add_0_carry__2_n_2;
  wire add_0_carry__2_n_3;
  wire add_0_carry_i_1__10_n_0;
  wire add_0_carry_i_2__10_n_0;
  wire add_0_carry_i_3__10_n_0;
  wire add_0_carry_i_4__10_n_0;
  wire add_0_carry_i_5__10_n_0;
  wire add_0_carry_i_5__10_n_1;
  wire add_0_carry_i_5__10_n_2;
  wire add_0_carry_i_5__10_n_3;
  wire add_0_carry_i_5__10_n_4;
  wire add_0_carry_i_5__10_n_5;
  wire add_0_carry_i_5__10_n_6;
  wire add_0_carry_i_5__10_n_7;
  wire add_0_carry_i_6__10_n_0;
  wire add_0_carry_n_0;
  wire add_0_carry_n_1;
  wire add_0_carry_n_2;
  wire add_0_carry_n_3;
  wire [15:0]add_1;
  wire add_1_carry__0_i_1__9_n_0;
  wire add_1_carry__0_i_2__9_n_0;
  wire add_1_carry__0_i_3__9_n_0;
  wire add_1_carry__0_i_4__9_n_0;
  wire add_1_carry__0_i_5__9_n_0;
  wire add_1_carry__0_i_5__9_n_1;
  wire add_1_carry__0_i_5__9_n_2;
  wire add_1_carry__0_i_5__9_n_3;
  wire add_1_carry__0_i_5__9_n_4;
  wire add_1_carry__0_i_5__9_n_5;
  wire add_1_carry__0_i_5__9_n_6;
  wire add_1_carry__0_i_5__9_n_7;
  wire add_1_carry__0_n_0;
  wire add_1_carry__0_n_1;
  wire add_1_carry__0_n_2;
  wire add_1_carry__0_n_3;
  wire add_1_carry__1_i_1__9_n_0;
  wire add_1_carry__1_i_2__9_n_0;
  wire add_1_carry__1_i_3__9_n_0;
  wire add_1_carry__1_i_4__9_n_0;
  wire add_1_carry__1_n_0;
  wire add_1_carry__1_n_1;
  wire add_1_carry__1_n_2;
  wire add_1_carry__1_n_3;
  wire add_1_carry__2_i_1__9_n_0;
  wire add_1_carry__2_i_2__9_n_0;
  wire add_1_carry__2_i_3__9_n_0;
  wire add_1_carry__2_i_4__9_n_0;
  wire add_1_carry__2_n_1;
  wire add_1_carry__2_n_2;
  wire add_1_carry__2_n_3;
  wire add_1_carry_i_1__9_n_0;
  wire add_1_carry_i_2__9_n_0;
  wire add_1_carry_i_3__9_n_0;
  wire add_1_carry_i_4__9_n_0;
  wire add_1_carry_i_5__9_n_0;
  wire add_1_carry_i_5__9_n_1;
  wire add_1_carry_i_5__9_n_2;
  wire add_1_carry_i_5__9_n_3;
  wire add_1_carry_i_5__9_n_4;
  wire add_1_carry_i_5__9_n_5;
  wire add_1_carry_i_5__9_n_6;
  wire add_1_carry_i_5__9_n_7;
  wire add_1_carry_i_6__9_n_0;
  wire add_1_carry_n_0;
  wire add_1_carry_n_1;
  wire add_1_carry_n_2;
  wire add_1_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]delay_element;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[11] ;
  wire [15:0]\interconnet[12] ;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [13:0]prod_0_0;
  wire [27:7]prod_0__0;
  wire prod_0_n_100;
  wire prod_0_n_101;
  wire prod_0_n_102;
  wire prod_0_n_103;
  wire prod_0_n_104;
  wire prod_0_n_105;
  wire prod_0_n_99;
  wire prod_1_n_100;
  wire prod_1_n_101;
  wire prod_1_n_102;
  wire prod_1_n_103;
  wire prod_1_n_104;
  wire prod_1_n_105;
  wire prod_1_n_99;
  wire prod_rounded_clamped_01;
  wire prod_rounded_clamped_01_carry_i_1__10_n_0;
  wire prod_rounded_clamped_01_carry_i_2__10_n_0;
  wire prod_rounded_clamped_01_carry_i_3__10_n_0;
  wire prod_rounded_clamped_01_carry_i_3__10_n_1;
  wire prod_rounded_clamped_01_carry_i_3__10_n_2;
  wire prod_rounded_clamped_01_carry_i_3__10_n_3;
  wire prod_rounded_clamped_01_carry_i_3__10_n_4;
  wire prod_rounded_clamped_01_carry_i_3__10_n_5;
  wire prod_rounded_clamped_01_carry_i_3__10_n_6;
  wire prod_rounded_clamped_01_carry_i_3__10_n_7;
  wire prod_rounded_clamped_01_carry_i_4__10_n_0;
  wire prod_rounded_clamped_01_carry_i_5__10_n_0;
  wire prod_rounded_clamped_01_carry_i_6__10_n_0;
  wire prod_rounded_clamped_01_carry_i_7__10_n_0;
  wire prod_rounded_clamped_01_carry_i_7__10_n_1;
  wire prod_rounded_clamped_01_carry_i_7__10_n_2;
  wire prod_rounded_clamped_01_carry_i_7__10_n_3;
  wire prod_rounded_clamped_01_carry_i_7__10_n_4;
  wire prod_rounded_clamped_01_carry_i_7__10_n_5;
  wire prod_rounded_clamped_01_carry_i_7__10_n_6;
  wire prod_rounded_clamped_01_carry_i_7__10_n_7;
  wire prod_rounded_clamped_01_carry_n_2;
  wire prod_rounded_clamped_01_carry_n_3;
  wire prod_rounded_clamped_02;
  wire prod_rounded_clamped_02_carry_i_1__10_n_0;
  wire prod_rounded_clamped_02_carry_i_2__10_n_0;
  wire prod_rounded_clamped_02_carry_i_3__10_n_0;
  wire prod_rounded_clamped_02_carry_i_4__10_n_0;
  wire prod_rounded_clamped_02_carry_i_5__10_n_0;
  wire prod_rounded_clamped_02_carry_i_6__10_n_0;
  wire prod_rounded_clamped_02_carry_i_7__10_n_1;
  wire prod_rounded_clamped_02_carry_i_7__10_n_2;
  wire prod_rounded_clamped_02_carry_i_7__10_n_3;
  wire prod_rounded_clamped_02_carry_i_7__10_n_4;
  wire prod_rounded_clamped_02_carry_i_7__10_n_5;
  wire prod_rounded_clamped_02_carry_i_7__10_n_6;
  wire prod_rounded_clamped_02_carry_i_7__10_n_7;
  wire prod_rounded_clamped_02_carry_n_2;
  wire prod_rounded_clamped_02_carry_n_3;
  wire prod_rounded_clamped_11;
  wire prod_rounded_clamped_11_carry_i_1__10_n_0;
  wire prod_rounded_clamped_11_carry_i_2__10_n_0;
  wire prod_rounded_clamped_11_carry_i_3__10_n_0;
  wire prod_rounded_clamped_11_carry_i_3__10_n_1;
  wire prod_rounded_clamped_11_carry_i_3__10_n_2;
  wire prod_rounded_clamped_11_carry_i_3__10_n_3;
  wire prod_rounded_clamped_11_carry_i_3__10_n_4;
  wire prod_rounded_clamped_11_carry_i_3__10_n_5;
  wire prod_rounded_clamped_11_carry_i_3__10_n_6;
  wire prod_rounded_clamped_11_carry_i_3__10_n_7;
  wire prod_rounded_clamped_11_carry_i_4__10_n_0;
  wire prod_rounded_clamped_11_carry_i_5__10_n_0;
  wire prod_rounded_clamped_11_carry_i_6__10_n_0;
  wire prod_rounded_clamped_11_carry_i_7__9_n_0;
  wire prod_rounded_clamped_11_carry_i_7__9_n_1;
  wire prod_rounded_clamped_11_carry_i_7__9_n_2;
  wire prod_rounded_clamped_11_carry_i_7__9_n_3;
  wire prod_rounded_clamped_11_carry_i_7__9_n_4;
  wire prod_rounded_clamped_11_carry_i_7__9_n_5;
  wire prod_rounded_clamped_11_carry_i_7__9_n_6;
  wire prod_rounded_clamped_11_carry_i_7__9_n_7;
  wire prod_rounded_clamped_11_carry_n_2;
  wire prod_rounded_clamped_11_carry_n_3;
  wire prod_rounded_clamped_12;
  wire prod_rounded_clamped_12_carry_i_1__10_n_0;
  wire prod_rounded_clamped_12_carry_i_2__10_n_0;
  wire prod_rounded_clamped_12_carry_i_3__10_n_0;
  wire prod_rounded_clamped_12_carry_i_4__10_n_0;
  wire prod_rounded_clamped_12_carry_i_5__10_n_0;
  wire prod_rounded_clamped_12_carry_i_6__10_n_0;
  wire prod_rounded_clamped_12_carry_i_7__10_n_1;
  wire prod_rounded_clamped_12_carry_i_7__10_n_2;
  wire prod_rounded_clamped_12_carry_i_7__10_n_3;
  wire prod_rounded_clamped_12_carry_i_7__10_n_4;
  wire prod_rounded_clamped_12_carry_i_7__10_n_5;
  wire prod_rounded_clamped_12_carry_i_7__10_n_6;
  wire prod_rounded_clamped_12_carry_i_7__10_n_7;
  wire prod_rounded_clamped_12_carry_n_2;
  wire prod_rounded_clamped_12_carry_n_3;
  wire [3:3]NLW_add_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_1_carry__2_CO_UNCONNECTED;
  wire NLW_prod_0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_0_OVERFLOW_UNCONNECTED;
  wire NLW_prod_0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_0_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_0_P_UNCONNECTED;
  wire [47:0]NLW_prod_0_PCOUT_UNCONNECTED;
  wire NLW_prod_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_1_OVERFLOW_UNCONNECTED;
  wire NLW_prod_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_1_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_1_P_UNCONNECTED;
  wire [47:0]NLW_prod_1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_i_7__10_CO_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_i_7__10_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry
       (.CI(1'b0),
        .CO({add_0_carry_n_0,add_0_carry_n_1,add_0_carry_n_2,add_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[3:0]),
        .O(\interconnet[12] [3:0]),
        .S({add_0_carry_i_1__10_n_0,add_0_carry_i_2__10_n_0,add_0_carry_i_3__10_n_0,add_0_carry_i_4__10_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0
       (.CI(add_0_carry_n_0),
        .CO({add_0_carry__0_n_0,add_0_carry__0_n_1,add_0_carry__0_n_2,add_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[7:4]),
        .O(\interconnet[12] [7:4]),
        .S({add_0_carry__0_i_1__10_n_0,add_0_carry__0_i_2__10_n_0,add_0_carry__0_i_3__10_n_0,add_0_carry__0_i_4__10_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_1__10
       (.I0(add_0_carry__0_i_5__10_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[7]),
        .O(add_0_carry__0_i_1__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_2__10
       (.I0(add_0_carry__0_i_5__10_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[6]),
        .O(add_0_carry__0_i_2__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_3__10
       (.I0(add_0_carry__0_i_5__10_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[5]),
        .O(add_0_carry__0_i_3__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_4__10
       (.I0(add_0_carry__0_i_5__10_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[4]),
        .O(add_0_carry__0_i_4__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0_i_5__10
       (.CI(add_0_carry_i_5__10_n_0),
        .CO({add_0_carry__0_i_5__10_n_0,add_0_carry__0_i_5__10_n_1,add_0_carry__0_i_5__10_n_2,add_0_carry__0_i_5__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_0_carry__0_i_5__10_n_4,add_0_carry__0_i_5__10_n_5,add_0_carry__0_i_5__10_n_6,add_0_carry__0_i_5__10_n_7}),
        .S(prod_0__0[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__1
       (.CI(add_0_carry__0_n_0),
        .CO({add_0_carry__1_n_0,add_0_carry__1_n_1,add_0_carry__1_n_2,add_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[11:8]),
        .O(\interconnet[12] [11:8]),
        .S({add_0_carry__1_i_1__10_n_0,add_0_carry__1_i_2__10_n_0,add_0_carry__1_i_3__10_n_0,add_0_carry__1_i_4__10_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_1__10
       (.I0(prod_rounded_clamped_01_carry_i_7__10_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[11]),
        .O(add_0_carry__1_i_1__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_2__10
       (.I0(prod_rounded_clamped_01_carry_i_7__10_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[10]),
        .O(add_0_carry__1_i_2__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_3__10
       (.I0(prod_rounded_clamped_01_carry_i_7__10_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[9]),
        .O(add_0_carry__1_i_3__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_4__10
       (.I0(prod_rounded_clamped_01_carry_i_7__10_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[8]),
        .O(add_0_carry__1_i_4__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__2
       (.CI(add_0_carry__1_n_0),
        .CO({NLW_add_0_carry__2_CO_UNCONNECTED[3],add_0_carry__2_n_1,add_0_carry__2_n_2,add_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_element[14:12]}),
        .O(\interconnet[12] [15:12]),
        .S({add_0_carry__2_i_1__10_n_0,add_0_carry__2_i_2__10_n_0,add_0_carry__2_i_3__10_n_0,add_0_carry__2_i_4__10_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_0_carry__2_i_1__10
       (.I0(prod_rounded_clamped_01),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01_carry_i_3__10_n_4),
        .I3(delay_element[15]),
        .O(add_0_carry__2_i_1__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_2__10
       (.I0(prod_rounded_clamped_01_carry_i_3__10_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[14]),
        .O(add_0_carry__2_i_2__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_3__10
       (.I0(prod_rounded_clamped_01_carry_i_3__10_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[13]),
        .O(add_0_carry__2_i_3__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_4__10
       (.I0(prod_rounded_clamped_01_carry_i_3__10_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[12]),
        .O(add_0_carry__2_i_4__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_1__10
       (.I0(add_0_carry_i_5__10_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[3]),
        .O(add_0_carry_i_1__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_2__10
       (.I0(add_0_carry_i_5__10_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[2]),
        .O(add_0_carry_i_2__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_3__10
       (.I0(add_0_carry_i_5__10_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[1]),
        .O(add_0_carry_i_3__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_4__10
       (.I0(add_0_carry_i_5__10_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[0]),
        .O(add_0_carry_i_4__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry_i_5__10
       (.CI(1'b0),
        .CO({add_0_carry_i_5__10_n_0,add_0_carry_i_5__10_n_1,add_0_carry_i_5__10_n_2,add_0_carry_i_5__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_0__0[8]}),
        .O({add_0_carry_i_5__10_n_4,add_0_carry_i_5__10_n_5,add_0_carry_i_5__10_n_6,add_0_carry_i_5__10_n_7}),
        .S({prod_0__0[11:9],add_0_carry_i_6__10_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_0_carry_i_6__10
       (.I0(prod_0__0[8]),
        .I1(prod_0__0[7]),
        .O(add_0_carry_i_6__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry
       (.CI(1'b0),
        .CO({add_1_carry_n_0,add_1_carry_n_1,add_1_carry_n_2,add_1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[11] [3:0]),
        .O(add_1[3:0]),
        .S({add_1_carry_i_1__9_n_0,add_1_carry_i_2__9_n_0,add_1_carry_i_3__9_n_0,add_1_carry_i_4__9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0
       (.CI(add_1_carry_n_0),
        .CO({add_1_carry__0_n_0,add_1_carry__0_n_1,add_1_carry__0_n_2,add_1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[11] [7:4]),
        .O(add_1[7:4]),
        .S({add_1_carry__0_i_1__9_n_0,add_1_carry__0_i_2__9_n_0,add_1_carry__0_i_3__9_n_0,add_1_carry__0_i_4__9_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_1__9
       (.I0(add_1_carry__0_i_5__9_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[11] [7]),
        .O(add_1_carry__0_i_1__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_2__9
       (.I0(add_1_carry__0_i_5__9_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[11] [6]),
        .O(add_1_carry__0_i_2__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_3__9
       (.I0(add_1_carry__0_i_5__9_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[11] [5]),
        .O(add_1_carry__0_i_3__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_4__9
       (.I0(add_1_carry__0_i_5__9_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[11] [4]),
        .O(add_1_carry__0_i_4__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0_i_5__9
       (.CI(add_1_carry_i_5__9_n_0),
        .CO({add_1_carry__0_i_5__9_n_0,add_1_carry__0_i_5__9_n_1,add_1_carry__0_i_5__9_n_2,add_1_carry__0_i_5__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_1_carry__0_i_5__9_n_4,add_1_carry__0_i_5__9_n_5,add_1_carry__0_i_5__9_n_6,add_1_carry__0_i_5__9_n_7}),
        .S(p_1_in[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__1
       (.CI(add_1_carry__0_n_0),
        .CO({add_1_carry__1_n_0,add_1_carry__1_n_1,add_1_carry__1_n_2,add_1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[11] [11:8]),
        .O(add_1[11:8]),
        .S({add_1_carry__1_i_1__9_n_0,add_1_carry__1_i_2__9_n_0,add_1_carry__1_i_3__9_n_0,add_1_carry__1_i_4__9_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_1__9
       (.I0(prod_rounded_clamped_11_carry_i_7__9_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[11] [11]),
        .O(add_1_carry__1_i_1__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_2__9
       (.I0(prod_rounded_clamped_11_carry_i_7__9_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[11] [10]),
        .O(add_1_carry__1_i_2__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_3__9
       (.I0(prod_rounded_clamped_11_carry_i_7__9_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[11] [9]),
        .O(add_1_carry__1_i_3__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_4__9
       (.I0(prod_rounded_clamped_11_carry_i_7__9_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[11] [8]),
        .O(add_1_carry__1_i_4__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__2
       (.CI(add_1_carry__1_n_0),
        .CO({NLW_add_1_carry__2_CO_UNCONNECTED[3],add_1_carry__2_n_1,add_1_carry__2_n_2,add_1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\interconnet[11] [14:12]}),
        .O(add_1[15:12]),
        .S({add_1_carry__2_i_1__9_n_0,add_1_carry__2_i_2__9_n_0,add_1_carry__2_i_3__9_n_0,add_1_carry__2_i_4__9_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_1_carry__2_i_1__9
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__10_n_4),
        .I3(\interconnet[11] [15]),
        .O(add_1_carry__2_i_1__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_2__9
       (.I0(prod_rounded_clamped_11_carry_i_3__10_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[11] [14]),
        .O(add_1_carry__2_i_2__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_3__9
       (.I0(prod_rounded_clamped_11_carry_i_3__10_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[11] [13]),
        .O(add_1_carry__2_i_3__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_4__9
       (.I0(prod_rounded_clamped_11_carry_i_3__10_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[11] [12]),
        .O(add_1_carry__2_i_4__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_1__9
       (.I0(add_1_carry_i_5__9_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[11] [3]),
        .O(add_1_carry_i_1__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_2__9
       (.I0(add_1_carry_i_5__9_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[11] [2]),
        .O(add_1_carry_i_2__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_3__9
       (.I0(add_1_carry_i_5__9_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[11] [1]),
        .O(add_1_carry_i_3__9_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_4__9
       (.I0(add_1_carry_i_5__9_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[11] [0]),
        .O(add_1_carry_i_4__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry_i_5__9
       (.CI(1'b0),
        .CO({add_1_carry_i_5__9_n_0,add_1_carry_i_5__9_n_1,add_1_carry_i_5__9_n_2,add_1_carry_i_5__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_1_carry_i_5__9_n_4,add_1_carry_i_5__9_n_5,add_1_carry_i_5__9_n_6,add_1_carry_i_5__9_n_7}),
        .S({p_1_in[3:1],add_1_carry_i_6__9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_1_carry_i_6__9
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_1_carry_i_6__9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[0]),
        .Q(delay_element[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[10]),
        .Q(delay_element[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[11]),
        .Q(delay_element[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[12]),
        .Q(delay_element[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[13]),
        .Q(delay_element[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[14]),
        .Q(delay_element[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[15]),
        .Q(delay_element[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[1]),
        .Q(delay_element[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[2]),
        .Q(delay_element[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[3]),
        .Q(delay_element[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[4]),
        .Q(delay_element[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[5]),
        .Q(delay_element[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[6]),
        .Q(delay_element[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[7]),
        .Q(delay_element[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[8]),
        .Q(delay_element[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[9]),
        .Q(delay_element[9]),
        .R(i_rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_0
       (.A({prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_0_P_UNCONNECTED[47:28],prod_0__0,prod_0_n_99,prod_0_n_100,prod_0_n_101,prod_0_n_102,prod_0_n_103,prod_0_n_104,prod_0_n_105}),
        .PATTERNBDETECT(NLW_prod_0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_1
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_1_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_1_n_99,prod_1_n_100,prod_1_n_101,prod_1_n_102,prod_1_n_103,prod_1_n_104,prod_1_n_105}),
        .PATTERNBDETECT(NLW_prod_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_1_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_01_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED[3],prod_rounded_clamped_01,prod_rounded_clamped_01_carry_n_2,prod_rounded_clamped_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_01_carry_i_1__10_n_0,prod_rounded_clamped_01_carry_i_2__10_n_0,prod_rounded_clamped_01_carry_i_3__10_n_4}),
        .O(NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_01_carry_i_4__10_n_0,prod_rounded_clamped_01_carry_i_5__10_n_0,prod_rounded_clamped_01_carry_i_6__10_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_1__10
       (.I0(prod_rounded_clamped_02_carry_i_7__10_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__10_n_4),
        .O(prod_rounded_clamped_01_carry_i_1__10_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_01_carry_i_2__10
       (.I0(prod_rounded_clamped_02_carry_i_7__10_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__10_n_6),
        .O(prod_rounded_clamped_01_carry_i_2__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_3__10
       (.CI(prod_rounded_clamped_01_carry_i_7__10_n_0),
        .CO({prod_rounded_clamped_01_carry_i_3__10_n_0,prod_rounded_clamped_01_carry_i_3__10_n_1,prod_rounded_clamped_01_carry_i_3__10_n_2,prod_rounded_clamped_01_carry_i_3__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_3__10_n_4,prod_rounded_clamped_01_carry_i_3__10_n_5,prod_rounded_clamped_01_carry_i_3__10_n_6,prod_rounded_clamped_01_carry_i_3__10_n_7}),
        .S(prod_0__0[23:20]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_4__10
       (.I0(prod_rounded_clamped_02_carry_i_7__10_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__10_n_4),
        .O(prod_rounded_clamped_01_carry_i_4__10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_5__10
       (.I0(prod_rounded_clamped_02_carry_i_7__10_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__10_n_6),
        .O(prod_rounded_clamped_01_carry_i_5__10_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_6__10
       (.I0(prod_rounded_clamped_01_carry_i_3__10_n_5),
        .I1(prod_rounded_clamped_01_carry_i_3__10_n_4),
        .O(prod_rounded_clamped_01_carry_i_6__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_7__10
       (.CI(add_0_carry__0_i_5__10_n_0),
        .CO({prod_rounded_clamped_01_carry_i_7__10_n_0,prod_rounded_clamped_01_carry_i_7__10_n_1,prod_rounded_clamped_01_carry_i_7__10_n_2,prod_rounded_clamped_01_carry_i_7__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_7__10_n_4,prod_rounded_clamped_01_carry_i_7__10_n_5,prod_rounded_clamped_01_carry_i_7__10_n_6,prod_rounded_clamped_01_carry_i_7__10_n_7}),
        .S(prod_0__0[19:16]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_02_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED[3],prod_rounded_clamped_02,prod_rounded_clamped_02_carry_n_2,prod_rounded_clamped_02_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_02_carry_i_1__10_n_0,prod_rounded_clamped_02_carry_i_2__10_n_0,prod_rounded_clamped_02_carry_i_3__10_n_0}),
        .O(NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_02_carry_i_4__10_n_0,prod_rounded_clamped_02_carry_i_5__10_n_0,prod_rounded_clamped_02_carry_i_6__10_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_1__10
       (.I0(prod_rounded_clamped_02_carry_i_7__10_n_4),
        .I1(prod_rounded_clamped_02_carry_i_7__10_n_5),
        .O(prod_rounded_clamped_02_carry_i_1__10_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_02_carry_i_2__10
       (.I0(prod_rounded_clamped_02_carry_i_7__10_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__10_n_6),
        .O(prod_rounded_clamped_02_carry_i_2__10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_02_carry_i_3__10
       (.I0(prod_rounded_clamped_01_carry_i_3__10_n_4),
        .O(prod_rounded_clamped_02_carry_i_3__10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_4__10
       (.I0(prod_rounded_clamped_02_carry_i_7__10_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__10_n_4),
        .O(prod_rounded_clamped_02_carry_i_4__10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_5__10
       (.I0(prod_rounded_clamped_02_carry_i_7__10_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__10_n_6),
        .O(prod_rounded_clamped_02_carry_i_5__10_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_6__10
       (.I0(prod_rounded_clamped_01_carry_i_3__10_n_4),
        .I1(prod_rounded_clamped_01_carry_i_3__10_n_5),
        .O(prod_rounded_clamped_02_carry_i_6__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_02_carry_i_7__10
       (.CI(prod_rounded_clamped_01_carry_i_3__10_n_0),
        .CO({NLW_prod_rounded_clamped_02_carry_i_7__10_CO_UNCONNECTED[3],prod_rounded_clamped_02_carry_i_7__10_n_1,prod_rounded_clamped_02_carry_i_7__10_n_2,prod_rounded_clamped_02_carry_i_7__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_02_carry_i_7__10_n_4,prod_rounded_clamped_02_carry_i_7__10_n_5,prod_rounded_clamped_02_carry_i_7__10_n_6,prod_rounded_clamped_02_carry_i_7__10_n_7}),
        .S(prod_0__0[27:24]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_11_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED[3],prod_rounded_clamped_11,prod_rounded_clamped_11_carry_n_2,prod_rounded_clamped_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_11_carry_i_1__10_n_0,prod_rounded_clamped_11_carry_i_2__10_n_0,prod_rounded_clamped_11_carry_i_3__10_n_4}),
        .O(NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_11_carry_i_4__10_n_0,prod_rounded_clamped_11_carry_i_5__10_n_0,prod_rounded_clamped_11_carry_i_6__10_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_1__10
       (.I0(prod_rounded_clamped_12_carry_i_7__10_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__10_n_4),
        .O(prod_rounded_clamped_11_carry_i_1__10_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_11_carry_i_2__10
       (.I0(prod_rounded_clamped_12_carry_i_7__10_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__10_n_6),
        .O(prod_rounded_clamped_11_carry_i_2__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_3__10
       (.CI(prod_rounded_clamped_11_carry_i_7__9_n_0),
        .CO({prod_rounded_clamped_11_carry_i_3__10_n_0,prod_rounded_clamped_11_carry_i_3__10_n_1,prod_rounded_clamped_11_carry_i_3__10_n_2,prod_rounded_clamped_11_carry_i_3__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_3__10_n_4,prod_rounded_clamped_11_carry_i_3__10_n_5,prod_rounded_clamped_11_carry_i_3__10_n_6,prod_rounded_clamped_11_carry_i_3__10_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_4__10
       (.I0(prod_rounded_clamped_12_carry_i_7__10_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__10_n_4),
        .O(prod_rounded_clamped_11_carry_i_4__10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_5__10
       (.I0(prod_rounded_clamped_12_carry_i_7__10_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__10_n_6),
        .O(prod_rounded_clamped_11_carry_i_5__10_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_6__10
       (.I0(prod_rounded_clamped_11_carry_i_3__10_n_5),
        .I1(prod_rounded_clamped_11_carry_i_3__10_n_4),
        .O(prod_rounded_clamped_11_carry_i_6__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_7__9
       (.CI(add_1_carry__0_i_5__9_n_0),
        .CO({prod_rounded_clamped_11_carry_i_7__9_n_0,prod_rounded_clamped_11_carry_i_7__9_n_1,prod_rounded_clamped_11_carry_i_7__9_n_2,prod_rounded_clamped_11_carry_i_7__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_7__9_n_4,prod_rounded_clamped_11_carry_i_7__9_n_5,prod_rounded_clamped_11_carry_i_7__9_n_6,prod_rounded_clamped_11_carry_i_7__9_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_12_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED[3],prod_rounded_clamped_12,prod_rounded_clamped_12_carry_n_2,prod_rounded_clamped_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_12_carry_i_1__10_n_0,prod_rounded_clamped_12_carry_i_2__10_n_0,prod_rounded_clamped_12_carry_i_3__10_n_0}),
        .O(NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_12_carry_i_4__10_n_0,prod_rounded_clamped_12_carry_i_5__10_n_0,prod_rounded_clamped_12_carry_i_6__10_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_1__10
       (.I0(prod_rounded_clamped_12_carry_i_7__10_n_4),
        .I1(prod_rounded_clamped_12_carry_i_7__10_n_5),
        .O(prod_rounded_clamped_12_carry_i_1__10_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_12_carry_i_2__10
       (.I0(prod_rounded_clamped_12_carry_i_7__10_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__10_n_6),
        .O(prod_rounded_clamped_12_carry_i_2__10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_12_carry_i_3__10
       (.I0(prod_rounded_clamped_11_carry_i_3__10_n_4),
        .O(prod_rounded_clamped_12_carry_i_3__10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_4__10
       (.I0(prod_rounded_clamped_12_carry_i_7__10_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__10_n_4),
        .O(prod_rounded_clamped_12_carry_i_4__10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_5__10
       (.I0(prod_rounded_clamped_12_carry_i_7__10_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__10_n_6),
        .O(prod_rounded_clamped_12_carry_i_5__10_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_6__10
       (.I0(prod_rounded_clamped_11_carry_i_3__10_n_4),
        .I1(prod_rounded_clamped_11_carry_i_3__10_n_5),
        .O(prod_rounded_clamped_12_carry_i_6__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_12_carry_i_7__10
       (.CI(prod_rounded_clamped_11_carry_i_3__10_n_0),
        .CO({NLW_prod_rounded_clamped_12_carry_i_7__10_CO_UNCONNECTED[3],prod_rounded_clamped_12_carry_i_7__10_n_1,prod_rounded_clamped_12_carry_i_7__10_n_2,prod_rounded_clamped_12_carry_i_7__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_12_carry_i_7__10_n_4,prod_rounded_clamped_12_carry_i_7__10_n_5,prod_rounded_clamped_12_carry_i_7__10_n_6,prod_rounded_clamped_12_carry_i_7__10_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock_parallel" *) 
module FIR_subblock_parallel_3
   (\interconnet[13] ,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    prod_0_0,
    \interconnet[12] );
  output [15:0]\interconnet[13] ;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [13:0]prod_0_0;
  input [15:0]\interconnet[12] ;

  wire [13:0]A;
  wire add_0_carry__0_i_1__11_n_0;
  wire add_0_carry__0_i_2__11_n_0;
  wire add_0_carry__0_i_3__11_n_0;
  wire add_0_carry__0_i_4__11_n_0;
  wire add_0_carry__0_i_5__11_n_0;
  wire add_0_carry__0_i_5__11_n_1;
  wire add_0_carry__0_i_5__11_n_2;
  wire add_0_carry__0_i_5__11_n_3;
  wire add_0_carry__0_i_5__11_n_4;
  wire add_0_carry__0_i_5__11_n_5;
  wire add_0_carry__0_i_5__11_n_6;
  wire add_0_carry__0_i_5__11_n_7;
  wire add_0_carry__0_n_0;
  wire add_0_carry__0_n_1;
  wire add_0_carry__0_n_2;
  wire add_0_carry__0_n_3;
  wire add_0_carry__1_i_1__11_n_0;
  wire add_0_carry__1_i_2__11_n_0;
  wire add_0_carry__1_i_3__11_n_0;
  wire add_0_carry__1_i_4__11_n_0;
  wire add_0_carry__1_n_0;
  wire add_0_carry__1_n_1;
  wire add_0_carry__1_n_2;
  wire add_0_carry__1_n_3;
  wire add_0_carry__2_i_1__11_n_0;
  wire add_0_carry__2_i_2__11_n_0;
  wire add_0_carry__2_i_3__11_n_0;
  wire add_0_carry__2_i_4__11_n_0;
  wire add_0_carry__2_n_1;
  wire add_0_carry__2_n_2;
  wire add_0_carry__2_n_3;
  wire add_0_carry_i_1__11_n_0;
  wire add_0_carry_i_2__11_n_0;
  wire add_0_carry_i_3__11_n_0;
  wire add_0_carry_i_4__11_n_0;
  wire add_0_carry_i_5__11_n_0;
  wire add_0_carry_i_5__11_n_1;
  wire add_0_carry_i_5__11_n_2;
  wire add_0_carry_i_5__11_n_3;
  wire add_0_carry_i_5__11_n_4;
  wire add_0_carry_i_5__11_n_5;
  wire add_0_carry_i_5__11_n_6;
  wire add_0_carry_i_5__11_n_7;
  wire add_0_carry_i_6__11_n_0;
  wire add_0_carry_n_0;
  wire add_0_carry_n_1;
  wire add_0_carry_n_2;
  wire add_0_carry_n_3;
  wire [15:0]add_1;
  wire add_1_carry__0_i_1__10_n_0;
  wire add_1_carry__0_i_2__10_n_0;
  wire add_1_carry__0_i_3__10_n_0;
  wire add_1_carry__0_i_4__10_n_0;
  wire add_1_carry__0_i_5__10_n_0;
  wire add_1_carry__0_i_5__10_n_1;
  wire add_1_carry__0_i_5__10_n_2;
  wire add_1_carry__0_i_5__10_n_3;
  wire add_1_carry__0_i_5__10_n_4;
  wire add_1_carry__0_i_5__10_n_5;
  wire add_1_carry__0_i_5__10_n_6;
  wire add_1_carry__0_i_5__10_n_7;
  wire add_1_carry__0_n_0;
  wire add_1_carry__0_n_1;
  wire add_1_carry__0_n_2;
  wire add_1_carry__0_n_3;
  wire add_1_carry__1_i_1__10_n_0;
  wire add_1_carry__1_i_2__10_n_0;
  wire add_1_carry__1_i_3__10_n_0;
  wire add_1_carry__1_i_4__10_n_0;
  wire add_1_carry__1_n_0;
  wire add_1_carry__1_n_1;
  wire add_1_carry__1_n_2;
  wire add_1_carry__1_n_3;
  wire add_1_carry__2_i_1__10_n_0;
  wire add_1_carry__2_i_2__10_n_0;
  wire add_1_carry__2_i_3__10_n_0;
  wire add_1_carry__2_i_4__10_n_0;
  wire add_1_carry__2_n_1;
  wire add_1_carry__2_n_2;
  wire add_1_carry__2_n_3;
  wire add_1_carry_i_1__10_n_0;
  wire add_1_carry_i_2__10_n_0;
  wire add_1_carry_i_3__10_n_0;
  wire add_1_carry_i_4__10_n_0;
  wire add_1_carry_i_5__10_n_0;
  wire add_1_carry_i_5__10_n_1;
  wire add_1_carry_i_5__10_n_2;
  wire add_1_carry_i_5__10_n_3;
  wire add_1_carry_i_5__10_n_4;
  wire add_1_carry_i_5__10_n_5;
  wire add_1_carry_i_5__10_n_6;
  wire add_1_carry_i_5__10_n_7;
  wire add_1_carry_i_6__10_n_0;
  wire add_1_carry_n_0;
  wire add_1_carry_n_1;
  wire add_1_carry_n_2;
  wire add_1_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]delay_element;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[12] ;
  wire [15:0]\interconnet[13] ;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [13:0]prod_0_0;
  wire [27:7]prod_0__0;
  wire prod_0_n_100;
  wire prod_0_n_101;
  wire prod_0_n_102;
  wire prod_0_n_103;
  wire prod_0_n_104;
  wire prod_0_n_105;
  wire prod_0_n_99;
  wire prod_1_n_100;
  wire prod_1_n_101;
  wire prod_1_n_102;
  wire prod_1_n_103;
  wire prod_1_n_104;
  wire prod_1_n_105;
  wire prod_1_n_99;
  wire prod_rounded_clamped_01;
  wire prod_rounded_clamped_01_carry_i_1__11_n_0;
  wire prod_rounded_clamped_01_carry_i_2__11_n_0;
  wire prod_rounded_clamped_01_carry_i_3__11_n_0;
  wire prod_rounded_clamped_01_carry_i_3__11_n_1;
  wire prod_rounded_clamped_01_carry_i_3__11_n_2;
  wire prod_rounded_clamped_01_carry_i_3__11_n_3;
  wire prod_rounded_clamped_01_carry_i_3__11_n_4;
  wire prod_rounded_clamped_01_carry_i_3__11_n_5;
  wire prod_rounded_clamped_01_carry_i_3__11_n_6;
  wire prod_rounded_clamped_01_carry_i_3__11_n_7;
  wire prod_rounded_clamped_01_carry_i_4__11_n_0;
  wire prod_rounded_clamped_01_carry_i_5__11_n_0;
  wire prod_rounded_clamped_01_carry_i_6__11_n_0;
  wire prod_rounded_clamped_01_carry_i_7__11_n_0;
  wire prod_rounded_clamped_01_carry_i_7__11_n_1;
  wire prod_rounded_clamped_01_carry_i_7__11_n_2;
  wire prod_rounded_clamped_01_carry_i_7__11_n_3;
  wire prod_rounded_clamped_01_carry_i_7__11_n_4;
  wire prod_rounded_clamped_01_carry_i_7__11_n_5;
  wire prod_rounded_clamped_01_carry_i_7__11_n_6;
  wire prod_rounded_clamped_01_carry_i_7__11_n_7;
  wire prod_rounded_clamped_01_carry_n_2;
  wire prod_rounded_clamped_01_carry_n_3;
  wire prod_rounded_clamped_02;
  wire prod_rounded_clamped_02_carry_i_1__11_n_0;
  wire prod_rounded_clamped_02_carry_i_2__11_n_0;
  wire prod_rounded_clamped_02_carry_i_3__11_n_0;
  wire prod_rounded_clamped_02_carry_i_4__11_n_0;
  wire prod_rounded_clamped_02_carry_i_5__11_n_0;
  wire prod_rounded_clamped_02_carry_i_6__11_n_0;
  wire prod_rounded_clamped_02_carry_i_7__11_n_1;
  wire prod_rounded_clamped_02_carry_i_7__11_n_2;
  wire prod_rounded_clamped_02_carry_i_7__11_n_3;
  wire prod_rounded_clamped_02_carry_i_7__11_n_4;
  wire prod_rounded_clamped_02_carry_i_7__11_n_5;
  wire prod_rounded_clamped_02_carry_i_7__11_n_6;
  wire prod_rounded_clamped_02_carry_i_7__11_n_7;
  wire prod_rounded_clamped_02_carry_n_2;
  wire prod_rounded_clamped_02_carry_n_3;
  wire prod_rounded_clamped_11;
  wire prod_rounded_clamped_11_carry_i_1__11_n_0;
  wire prod_rounded_clamped_11_carry_i_2__11_n_0;
  wire prod_rounded_clamped_11_carry_i_3__11_n_0;
  wire prod_rounded_clamped_11_carry_i_3__11_n_1;
  wire prod_rounded_clamped_11_carry_i_3__11_n_2;
  wire prod_rounded_clamped_11_carry_i_3__11_n_3;
  wire prod_rounded_clamped_11_carry_i_3__11_n_4;
  wire prod_rounded_clamped_11_carry_i_3__11_n_5;
  wire prod_rounded_clamped_11_carry_i_3__11_n_6;
  wire prod_rounded_clamped_11_carry_i_3__11_n_7;
  wire prod_rounded_clamped_11_carry_i_4__11_n_0;
  wire prod_rounded_clamped_11_carry_i_5__11_n_0;
  wire prod_rounded_clamped_11_carry_i_6__11_n_0;
  wire prod_rounded_clamped_11_carry_i_7__10_n_0;
  wire prod_rounded_clamped_11_carry_i_7__10_n_1;
  wire prod_rounded_clamped_11_carry_i_7__10_n_2;
  wire prod_rounded_clamped_11_carry_i_7__10_n_3;
  wire prod_rounded_clamped_11_carry_i_7__10_n_4;
  wire prod_rounded_clamped_11_carry_i_7__10_n_5;
  wire prod_rounded_clamped_11_carry_i_7__10_n_6;
  wire prod_rounded_clamped_11_carry_i_7__10_n_7;
  wire prod_rounded_clamped_11_carry_n_2;
  wire prod_rounded_clamped_11_carry_n_3;
  wire prod_rounded_clamped_12;
  wire prod_rounded_clamped_12_carry_i_1__11_n_0;
  wire prod_rounded_clamped_12_carry_i_2__11_n_0;
  wire prod_rounded_clamped_12_carry_i_3__11_n_0;
  wire prod_rounded_clamped_12_carry_i_4__11_n_0;
  wire prod_rounded_clamped_12_carry_i_5__11_n_0;
  wire prod_rounded_clamped_12_carry_i_6__11_n_0;
  wire prod_rounded_clamped_12_carry_i_7__11_n_1;
  wire prod_rounded_clamped_12_carry_i_7__11_n_2;
  wire prod_rounded_clamped_12_carry_i_7__11_n_3;
  wire prod_rounded_clamped_12_carry_i_7__11_n_4;
  wire prod_rounded_clamped_12_carry_i_7__11_n_5;
  wire prod_rounded_clamped_12_carry_i_7__11_n_6;
  wire prod_rounded_clamped_12_carry_i_7__11_n_7;
  wire prod_rounded_clamped_12_carry_n_2;
  wire prod_rounded_clamped_12_carry_n_3;
  wire [3:3]NLW_add_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_1_carry__2_CO_UNCONNECTED;
  wire NLW_prod_0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_0_OVERFLOW_UNCONNECTED;
  wire NLW_prod_0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_0_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_0_P_UNCONNECTED;
  wire [47:0]NLW_prod_0_PCOUT_UNCONNECTED;
  wire NLW_prod_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_1_OVERFLOW_UNCONNECTED;
  wire NLW_prod_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_1_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_1_P_UNCONNECTED;
  wire [47:0]NLW_prod_1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_i_7__11_CO_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_i_7__11_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry
       (.CI(1'b0),
        .CO({add_0_carry_n_0,add_0_carry_n_1,add_0_carry_n_2,add_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[3:0]),
        .O(\interconnet[13] [3:0]),
        .S({add_0_carry_i_1__11_n_0,add_0_carry_i_2__11_n_0,add_0_carry_i_3__11_n_0,add_0_carry_i_4__11_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0
       (.CI(add_0_carry_n_0),
        .CO({add_0_carry__0_n_0,add_0_carry__0_n_1,add_0_carry__0_n_2,add_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[7:4]),
        .O(\interconnet[13] [7:4]),
        .S({add_0_carry__0_i_1__11_n_0,add_0_carry__0_i_2__11_n_0,add_0_carry__0_i_3__11_n_0,add_0_carry__0_i_4__11_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_1__11
       (.I0(add_0_carry__0_i_5__11_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[7]),
        .O(add_0_carry__0_i_1__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_2__11
       (.I0(add_0_carry__0_i_5__11_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[6]),
        .O(add_0_carry__0_i_2__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_3__11
       (.I0(add_0_carry__0_i_5__11_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[5]),
        .O(add_0_carry__0_i_3__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_4__11
       (.I0(add_0_carry__0_i_5__11_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[4]),
        .O(add_0_carry__0_i_4__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0_i_5__11
       (.CI(add_0_carry_i_5__11_n_0),
        .CO({add_0_carry__0_i_5__11_n_0,add_0_carry__0_i_5__11_n_1,add_0_carry__0_i_5__11_n_2,add_0_carry__0_i_5__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_0_carry__0_i_5__11_n_4,add_0_carry__0_i_5__11_n_5,add_0_carry__0_i_5__11_n_6,add_0_carry__0_i_5__11_n_7}),
        .S(prod_0__0[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__1
       (.CI(add_0_carry__0_n_0),
        .CO({add_0_carry__1_n_0,add_0_carry__1_n_1,add_0_carry__1_n_2,add_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[11:8]),
        .O(\interconnet[13] [11:8]),
        .S({add_0_carry__1_i_1__11_n_0,add_0_carry__1_i_2__11_n_0,add_0_carry__1_i_3__11_n_0,add_0_carry__1_i_4__11_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_1__11
       (.I0(prod_rounded_clamped_01_carry_i_7__11_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[11]),
        .O(add_0_carry__1_i_1__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_2__11
       (.I0(prod_rounded_clamped_01_carry_i_7__11_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[10]),
        .O(add_0_carry__1_i_2__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_3__11
       (.I0(prod_rounded_clamped_01_carry_i_7__11_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[9]),
        .O(add_0_carry__1_i_3__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_4__11
       (.I0(prod_rounded_clamped_01_carry_i_7__11_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[8]),
        .O(add_0_carry__1_i_4__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__2
       (.CI(add_0_carry__1_n_0),
        .CO({NLW_add_0_carry__2_CO_UNCONNECTED[3],add_0_carry__2_n_1,add_0_carry__2_n_2,add_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_element[14:12]}),
        .O(\interconnet[13] [15:12]),
        .S({add_0_carry__2_i_1__11_n_0,add_0_carry__2_i_2__11_n_0,add_0_carry__2_i_3__11_n_0,add_0_carry__2_i_4__11_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_0_carry__2_i_1__11
       (.I0(prod_rounded_clamped_01),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01_carry_i_3__11_n_4),
        .I3(delay_element[15]),
        .O(add_0_carry__2_i_1__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_2__11
       (.I0(prod_rounded_clamped_01_carry_i_3__11_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[14]),
        .O(add_0_carry__2_i_2__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_3__11
       (.I0(prod_rounded_clamped_01_carry_i_3__11_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[13]),
        .O(add_0_carry__2_i_3__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_4__11
       (.I0(prod_rounded_clamped_01_carry_i_3__11_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[12]),
        .O(add_0_carry__2_i_4__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_1__11
       (.I0(add_0_carry_i_5__11_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[3]),
        .O(add_0_carry_i_1__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_2__11
       (.I0(add_0_carry_i_5__11_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[2]),
        .O(add_0_carry_i_2__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_3__11
       (.I0(add_0_carry_i_5__11_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[1]),
        .O(add_0_carry_i_3__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_4__11
       (.I0(add_0_carry_i_5__11_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[0]),
        .O(add_0_carry_i_4__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry_i_5__11
       (.CI(1'b0),
        .CO({add_0_carry_i_5__11_n_0,add_0_carry_i_5__11_n_1,add_0_carry_i_5__11_n_2,add_0_carry_i_5__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_0__0[8]}),
        .O({add_0_carry_i_5__11_n_4,add_0_carry_i_5__11_n_5,add_0_carry_i_5__11_n_6,add_0_carry_i_5__11_n_7}),
        .S({prod_0__0[11:9],add_0_carry_i_6__11_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_0_carry_i_6__11
       (.I0(prod_0__0[8]),
        .I1(prod_0__0[7]),
        .O(add_0_carry_i_6__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry
       (.CI(1'b0),
        .CO({add_1_carry_n_0,add_1_carry_n_1,add_1_carry_n_2,add_1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[12] [3:0]),
        .O(add_1[3:0]),
        .S({add_1_carry_i_1__10_n_0,add_1_carry_i_2__10_n_0,add_1_carry_i_3__10_n_0,add_1_carry_i_4__10_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0
       (.CI(add_1_carry_n_0),
        .CO({add_1_carry__0_n_0,add_1_carry__0_n_1,add_1_carry__0_n_2,add_1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[12] [7:4]),
        .O(add_1[7:4]),
        .S({add_1_carry__0_i_1__10_n_0,add_1_carry__0_i_2__10_n_0,add_1_carry__0_i_3__10_n_0,add_1_carry__0_i_4__10_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_1__10
       (.I0(add_1_carry__0_i_5__10_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[12] [7]),
        .O(add_1_carry__0_i_1__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_2__10
       (.I0(add_1_carry__0_i_5__10_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[12] [6]),
        .O(add_1_carry__0_i_2__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_3__10
       (.I0(add_1_carry__0_i_5__10_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[12] [5]),
        .O(add_1_carry__0_i_3__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_4__10
       (.I0(add_1_carry__0_i_5__10_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[12] [4]),
        .O(add_1_carry__0_i_4__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0_i_5__10
       (.CI(add_1_carry_i_5__10_n_0),
        .CO({add_1_carry__0_i_5__10_n_0,add_1_carry__0_i_5__10_n_1,add_1_carry__0_i_5__10_n_2,add_1_carry__0_i_5__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_1_carry__0_i_5__10_n_4,add_1_carry__0_i_5__10_n_5,add_1_carry__0_i_5__10_n_6,add_1_carry__0_i_5__10_n_7}),
        .S(p_1_in[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__1
       (.CI(add_1_carry__0_n_0),
        .CO({add_1_carry__1_n_0,add_1_carry__1_n_1,add_1_carry__1_n_2,add_1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[12] [11:8]),
        .O(add_1[11:8]),
        .S({add_1_carry__1_i_1__10_n_0,add_1_carry__1_i_2__10_n_0,add_1_carry__1_i_3__10_n_0,add_1_carry__1_i_4__10_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_1__10
       (.I0(prod_rounded_clamped_11_carry_i_7__10_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[12] [11]),
        .O(add_1_carry__1_i_1__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_2__10
       (.I0(prod_rounded_clamped_11_carry_i_7__10_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[12] [10]),
        .O(add_1_carry__1_i_2__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_3__10
       (.I0(prod_rounded_clamped_11_carry_i_7__10_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[12] [9]),
        .O(add_1_carry__1_i_3__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_4__10
       (.I0(prod_rounded_clamped_11_carry_i_7__10_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[12] [8]),
        .O(add_1_carry__1_i_4__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__2
       (.CI(add_1_carry__1_n_0),
        .CO({NLW_add_1_carry__2_CO_UNCONNECTED[3],add_1_carry__2_n_1,add_1_carry__2_n_2,add_1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\interconnet[12] [14:12]}),
        .O(add_1[15:12]),
        .S({add_1_carry__2_i_1__10_n_0,add_1_carry__2_i_2__10_n_0,add_1_carry__2_i_3__10_n_0,add_1_carry__2_i_4__10_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_1_carry__2_i_1__10
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__11_n_4),
        .I3(\interconnet[12] [15]),
        .O(add_1_carry__2_i_1__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_2__10
       (.I0(prod_rounded_clamped_11_carry_i_3__11_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[12] [14]),
        .O(add_1_carry__2_i_2__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_3__10
       (.I0(prod_rounded_clamped_11_carry_i_3__11_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[12] [13]),
        .O(add_1_carry__2_i_3__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_4__10
       (.I0(prod_rounded_clamped_11_carry_i_3__11_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[12] [12]),
        .O(add_1_carry__2_i_4__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_1__10
       (.I0(add_1_carry_i_5__10_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[12] [3]),
        .O(add_1_carry_i_1__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_2__10
       (.I0(add_1_carry_i_5__10_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[12] [2]),
        .O(add_1_carry_i_2__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_3__10
       (.I0(add_1_carry_i_5__10_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[12] [1]),
        .O(add_1_carry_i_3__10_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_4__10
       (.I0(add_1_carry_i_5__10_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[12] [0]),
        .O(add_1_carry_i_4__10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry_i_5__10
       (.CI(1'b0),
        .CO({add_1_carry_i_5__10_n_0,add_1_carry_i_5__10_n_1,add_1_carry_i_5__10_n_2,add_1_carry_i_5__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_1_carry_i_5__10_n_4,add_1_carry_i_5__10_n_5,add_1_carry_i_5__10_n_6,add_1_carry_i_5__10_n_7}),
        .S({p_1_in[3:1],add_1_carry_i_6__10_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_1_carry_i_6__10
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_1_carry_i_6__10_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[0]),
        .Q(delay_element[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[10]),
        .Q(delay_element[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[11]),
        .Q(delay_element[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[12]),
        .Q(delay_element[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[13]),
        .Q(delay_element[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[14]),
        .Q(delay_element[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[15]),
        .Q(delay_element[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[1]),
        .Q(delay_element[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[2]),
        .Q(delay_element[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[3]),
        .Q(delay_element[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[4]),
        .Q(delay_element[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[5]),
        .Q(delay_element[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[6]),
        .Q(delay_element[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[7]),
        .Q(delay_element[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[8]),
        .Q(delay_element[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[9]),
        .Q(delay_element[9]),
        .R(i_rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_0
       (.A({prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_0_P_UNCONNECTED[47:28],prod_0__0,prod_0_n_99,prod_0_n_100,prod_0_n_101,prod_0_n_102,prod_0_n_103,prod_0_n_104,prod_0_n_105}),
        .PATTERNBDETECT(NLW_prod_0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_1
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_1_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_1_n_99,prod_1_n_100,prod_1_n_101,prod_1_n_102,prod_1_n_103,prod_1_n_104,prod_1_n_105}),
        .PATTERNBDETECT(NLW_prod_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_1_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_01_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED[3],prod_rounded_clamped_01,prod_rounded_clamped_01_carry_n_2,prod_rounded_clamped_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_01_carry_i_1__11_n_0,prod_rounded_clamped_01_carry_i_2__11_n_0,prod_rounded_clamped_01_carry_i_3__11_n_4}),
        .O(NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_01_carry_i_4__11_n_0,prod_rounded_clamped_01_carry_i_5__11_n_0,prod_rounded_clamped_01_carry_i_6__11_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_1__11
       (.I0(prod_rounded_clamped_02_carry_i_7__11_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__11_n_4),
        .O(prod_rounded_clamped_01_carry_i_1__11_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_01_carry_i_2__11
       (.I0(prod_rounded_clamped_02_carry_i_7__11_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__11_n_6),
        .O(prod_rounded_clamped_01_carry_i_2__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_3__11
       (.CI(prod_rounded_clamped_01_carry_i_7__11_n_0),
        .CO({prod_rounded_clamped_01_carry_i_3__11_n_0,prod_rounded_clamped_01_carry_i_3__11_n_1,prod_rounded_clamped_01_carry_i_3__11_n_2,prod_rounded_clamped_01_carry_i_3__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_3__11_n_4,prod_rounded_clamped_01_carry_i_3__11_n_5,prod_rounded_clamped_01_carry_i_3__11_n_6,prod_rounded_clamped_01_carry_i_3__11_n_7}),
        .S(prod_0__0[23:20]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_4__11
       (.I0(prod_rounded_clamped_02_carry_i_7__11_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__11_n_4),
        .O(prod_rounded_clamped_01_carry_i_4__11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_5__11
       (.I0(prod_rounded_clamped_02_carry_i_7__11_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__11_n_6),
        .O(prod_rounded_clamped_01_carry_i_5__11_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_6__11
       (.I0(prod_rounded_clamped_01_carry_i_3__11_n_5),
        .I1(prod_rounded_clamped_01_carry_i_3__11_n_4),
        .O(prod_rounded_clamped_01_carry_i_6__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_7__11
       (.CI(add_0_carry__0_i_5__11_n_0),
        .CO({prod_rounded_clamped_01_carry_i_7__11_n_0,prod_rounded_clamped_01_carry_i_7__11_n_1,prod_rounded_clamped_01_carry_i_7__11_n_2,prod_rounded_clamped_01_carry_i_7__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_7__11_n_4,prod_rounded_clamped_01_carry_i_7__11_n_5,prod_rounded_clamped_01_carry_i_7__11_n_6,prod_rounded_clamped_01_carry_i_7__11_n_7}),
        .S(prod_0__0[19:16]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_02_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED[3],prod_rounded_clamped_02,prod_rounded_clamped_02_carry_n_2,prod_rounded_clamped_02_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_02_carry_i_1__11_n_0,prod_rounded_clamped_02_carry_i_2__11_n_0,prod_rounded_clamped_02_carry_i_3__11_n_0}),
        .O(NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_02_carry_i_4__11_n_0,prod_rounded_clamped_02_carry_i_5__11_n_0,prod_rounded_clamped_02_carry_i_6__11_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_1__11
       (.I0(prod_rounded_clamped_02_carry_i_7__11_n_4),
        .I1(prod_rounded_clamped_02_carry_i_7__11_n_5),
        .O(prod_rounded_clamped_02_carry_i_1__11_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_02_carry_i_2__11
       (.I0(prod_rounded_clamped_02_carry_i_7__11_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__11_n_6),
        .O(prod_rounded_clamped_02_carry_i_2__11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_02_carry_i_3__11
       (.I0(prod_rounded_clamped_01_carry_i_3__11_n_4),
        .O(prod_rounded_clamped_02_carry_i_3__11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_4__11
       (.I0(prod_rounded_clamped_02_carry_i_7__11_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__11_n_4),
        .O(prod_rounded_clamped_02_carry_i_4__11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_5__11
       (.I0(prod_rounded_clamped_02_carry_i_7__11_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__11_n_6),
        .O(prod_rounded_clamped_02_carry_i_5__11_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_6__11
       (.I0(prod_rounded_clamped_01_carry_i_3__11_n_4),
        .I1(prod_rounded_clamped_01_carry_i_3__11_n_5),
        .O(prod_rounded_clamped_02_carry_i_6__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_02_carry_i_7__11
       (.CI(prod_rounded_clamped_01_carry_i_3__11_n_0),
        .CO({NLW_prod_rounded_clamped_02_carry_i_7__11_CO_UNCONNECTED[3],prod_rounded_clamped_02_carry_i_7__11_n_1,prod_rounded_clamped_02_carry_i_7__11_n_2,prod_rounded_clamped_02_carry_i_7__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_02_carry_i_7__11_n_4,prod_rounded_clamped_02_carry_i_7__11_n_5,prod_rounded_clamped_02_carry_i_7__11_n_6,prod_rounded_clamped_02_carry_i_7__11_n_7}),
        .S(prod_0__0[27:24]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_11_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED[3],prod_rounded_clamped_11,prod_rounded_clamped_11_carry_n_2,prod_rounded_clamped_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_11_carry_i_1__11_n_0,prod_rounded_clamped_11_carry_i_2__11_n_0,prod_rounded_clamped_11_carry_i_3__11_n_4}),
        .O(NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_11_carry_i_4__11_n_0,prod_rounded_clamped_11_carry_i_5__11_n_0,prod_rounded_clamped_11_carry_i_6__11_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_1__11
       (.I0(prod_rounded_clamped_12_carry_i_7__11_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__11_n_4),
        .O(prod_rounded_clamped_11_carry_i_1__11_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_11_carry_i_2__11
       (.I0(prod_rounded_clamped_12_carry_i_7__11_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__11_n_6),
        .O(prod_rounded_clamped_11_carry_i_2__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_3__11
       (.CI(prod_rounded_clamped_11_carry_i_7__10_n_0),
        .CO({prod_rounded_clamped_11_carry_i_3__11_n_0,prod_rounded_clamped_11_carry_i_3__11_n_1,prod_rounded_clamped_11_carry_i_3__11_n_2,prod_rounded_clamped_11_carry_i_3__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_3__11_n_4,prod_rounded_clamped_11_carry_i_3__11_n_5,prod_rounded_clamped_11_carry_i_3__11_n_6,prod_rounded_clamped_11_carry_i_3__11_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_4__11
       (.I0(prod_rounded_clamped_12_carry_i_7__11_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__11_n_4),
        .O(prod_rounded_clamped_11_carry_i_4__11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_5__11
       (.I0(prod_rounded_clamped_12_carry_i_7__11_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__11_n_6),
        .O(prod_rounded_clamped_11_carry_i_5__11_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_6__11
       (.I0(prod_rounded_clamped_11_carry_i_3__11_n_5),
        .I1(prod_rounded_clamped_11_carry_i_3__11_n_4),
        .O(prod_rounded_clamped_11_carry_i_6__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_7__10
       (.CI(add_1_carry__0_i_5__10_n_0),
        .CO({prod_rounded_clamped_11_carry_i_7__10_n_0,prod_rounded_clamped_11_carry_i_7__10_n_1,prod_rounded_clamped_11_carry_i_7__10_n_2,prod_rounded_clamped_11_carry_i_7__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_7__10_n_4,prod_rounded_clamped_11_carry_i_7__10_n_5,prod_rounded_clamped_11_carry_i_7__10_n_6,prod_rounded_clamped_11_carry_i_7__10_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_12_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED[3],prod_rounded_clamped_12,prod_rounded_clamped_12_carry_n_2,prod_rounded_clamped_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_12_carry_i_1__11_n_0,prod_rounded_clamped_12_carry_i_2__11_n_0,prod_rounded_clamped_12_carry_i_3__11_n_0}),
        .O(NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_12_carry_i_4__11_n_0,prod_rounded_clamped_12_carry_i_5__11_n_0,prod_rounded_clamped_12_carry_i_6__11_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_1__11
       (.I0(prod_rounded_clamped_12_carry_i_7__11_n_4),
        .I1(prod_rounded_clamped_12_carry_i_7__11_n_5),
        .O(prod_rounded_clamped_12_carry_i_1__11_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_12_carry_i_2__11
       (.I0(prod_rounded_clamped_12_carry_i_7__11_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__11_n_6),
        .O(prod_rounded_clamped_12_carry_i_2__11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_12_carry_i_3__11
       (.I0(prod_rounded_clamped_11_carry_i_3__11_n_4),
        .O(prod_rounded_clamped_12_carry_i_3__11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_4__11
       (.I0(prod_rounded_clamped_12_carry_i_7__11_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__11_n_4),
        .O(prod_rounded_clamped_12_carry_i_4__11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_5__11
       (.I0(prod_rounded_clamped_12_carry_i_7__11_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__11_n_6),
        .O(prod_rounded_clamped_12_carry_i_5__11_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_6__11
       (.I0(prod_rounded_clamped_11_carry_i_3__11_n_4),
        .I1(prod_rounded_clamped_11_carry_i_3__11_n_5),
        .O(prod_rounded_clamped_12_carry_i_6__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_12_carry_i_7__11
       (.CI(prod_rounded_clamped_11_carry_i_3__11_n_0),
        .CO({NLW_prod_rounded_clamped_12_carry_i_7__11_CO_UNCONNECTED[3],prod_rounded_clamped_12_carry_i_7__11_n_1,prod_rounded_clamped_12_carry_i_7__11_n_2,prod_rounded_clamped_12_carry_i_7__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_12_carry_i_7__11_n_4,prod_rounded_clamped_12_carry_i_7__11_n_5,prod_rounded_clamped_12_carry_i_7__11_n_6,prod_rounded_clamped_12_carry_i_7__11_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock_parallel" *) 
module FIR_subblock_parallel_4
   (\interconnet[14] ,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    prod_0_0,
    \interconnet[13] );
  output [15:0]\interconnet[14] ;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [13:0]prod_0_0;
  input [15:0]\interconnet[13] ;

  wire [13:0]A;
  wire add_0_carry__0_i_1__12_n_0;
  wire add_0_carry__0_i_2__12_n_0;
  wire add_0_carry__0_i_3__12_n_0;
  wire add_0_carry__0_i_4__12_n_0;
  wire add_0_carry__0_i_5__12_n_0;
  wire add_0_carry__0_i_5__12_n_1;
  wire add_0_carry__0_i_5__12_n_2;
  wire add_0_carry__0_i_5__12_n_3;
  wire add_0_carry__0_i_5__12_n_4;
  wire add_0_carry__0_i_5__12_n_5;
  wire add_0_carry__0_i_5__12_n_6;
  wire add_0_carry__0_i_5__12_n_7;
  wire add_0_carry__0_n_0;
  wire add_0_carry__0_n_1;
  wire add_0_carry__0_n_2;
  wire add_0_carry__0_n_3;
  wire add_0_carry__1_i_1__12_n_0;
  wire add_0_carry__1_i_2__12_n_0;
  wire add_0_carry__1_i_3__12_n_0;
  wire add_0_carry__1_i_4__12_n_0;
  wire add_0_carry__1_n_0;
  wire add_0_carry__1_n_1;
  wire add_0_carry__1_n_2;
  wire add_0_carry__1_n_3;
  wire add_0_carry__2_i_1__12_n_0;
  wire add_0_carry__2_i_2__12_n_0;
  wire add_0_carry__2_i_3__12_n_0;
  wire add_0_carry__2_i_4__12_n_0;
  wire add_0_carry__2_n_1;
  wire add_0_carry__2_n_2;
  wire add_0_carry__2_n_3;
  wire add_0_carry_i_1__12_n_0;
  wire add_0_carry_i_2__12_n_0;
  wire add_0_carry_i_3__12_n_0;
  wire add_0_carry_i_4__12_n_0;
  wire add_0_carry_i_5__12_n_0;
  wire add_0_carry_i_5__12_n_1;
  wire add_0_carry_i_5__12_n_2;
  wire add_0_carry_i_5__12_n_3;
  wire add_0_carry_i_5__12_n_4;
  wire add_0_carry_i_5__12_n_5;
  wire add_0_carry_i_5__12_n_6;
  wire add_0_carry_i_5__12_n_7;
  wire add_0_carry_i_6__12_n_0;
  wire add_0_carry_n_0;
  wire add_0_carry_n_1;
  wire add_0_carry_n_2;
  wire add_0_carry_n_3;
  wire [15:0]add_1;
  wire add_1_carry__0_i_1__11_n_0;
  wire add_1_carry__0_i_2__11_n_0;
  wire add_1_carry__0_i_3__11_n_0;
  wire add_1_carry__0_i_4__11_n_0;
  wire add_1_carry__0_i_5__11_n_0;
  wire add_1_carry__0_i_5__11_n_1;
  wire add_1_carry__0_i_5__11_n_2;
  wire add_1_carry__0_i_5__11_n_3;
  wire add_1_carry__0_i_5__11_n_4;
  wire add_1_carry__0_i_5__11_n_5;
  wire add_1_carry__0_i_5__11_n_6;
  wire add_1_carry__0_i_5__11_n_7;
  wire add_1_carry__0_n_0;
  wire add_1_carry__0_n_1;
  wire add_1_carry__0_n_2;
  wire add_1_carry__0_n_3;
  wire add_1_carry__1_i_1__11_n_0;
  wire add_1_carry__1_i_2__11_n_0;
  wire add_1_carry__1_i_3__11_n_0;
  wire add_1_carry__1_i_4__11_n_0;
  wire add_1_carry__1_n_0;
  wire add_1_carry__1_n_1;
  wire add_1_carry__1_n_2;
  wire add_1_carry__1_n_3;
  wire add_1_carry__2_i_1__11_n_0;
  wire add_1_carry__2_i_2__11_n_0;
  wire add_1_carry__2_i_3__11_n_0;
  wire add_1_carry__2_i_4__11_n_0;
  wire add_1_carry__2_n_1;
  wire add_1_carry__2_n_2;
  wire add_1_carry__2_n_3;
  wire add_1_carry_i_1__11_n_0;
  wire add_1_carry_i_2__11_n_0;
  wire add_1_carry_i_3__11_n_0;
  wire add_1_carry_i_4__11_n_0;
  wire add_1_carry_i_5__11_n_0;
  wire add_1_carry_i_5__11_n_1;
  wire add_1_carry_i_5__11_n_2;
  wire add_1_carry_i_5__11_n_3;
  wire add_1_carry_i_5__11_n_4;
  wire add_1_carry_i_5__11_n_5;
  wire add_1_carry_i_5__11_n_6;
  wire add_1_carry_i_5__11_n_7;
  wire add_1_carry_i_6__11_n_0;
  wire add_1_carry_n_0;
  wire add_1_carry_n_1;
  wire add_1_carry_n_2;
  wire add_1_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]delay_element;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[13] ;
  wire [15:0]\interconnet[14] ;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [13:0]prod_0_0;
  wire [27:7]prod_0__0;
  wire prod_0_n_100;
  wire prod_0_n_101;
  wire prod_0_n_102;
  wire prod_0_n_103;
  wire prod_0_n_104;
  wire prod_0_n_105;
  wire prod_0_n_99;
  wire prod_1_n_100;
  wire prod_1_n_101;
  wire prod_1_n_102;
  wire prod_1_n_103;
  wire prod_1_n_104;
  wire prod_1_n_105;
  wire prod_1_n_99;
  wire prod_rounded_clamped_01;
  wire prod_rounded_clamped_01_carry_i_1__12_n_0;
  wire prod_rounded_clamped_01_carry_i_2__12_n_0;
  wire prod_rounded_clamped_01_carry_i_3__12_n_0;
  wire prod_rounded_clamped_01_carry_i_3__12_n_1;
  wire prod_rounded_clamped_01_carry_i_3__12_n_2;
  wire prod_rounded_clamped_01_carry_i_3__12_n_3;
  wire prod_rounded_clamped_01_carry_i_3__12_n_4;
  wire prod_rounded_clamped_01_carry_i_3__12_n_5;
  wire prod_rounded_clamped_01_carry_i_3__12_n_6;
  wire prod_rounded_clamped_01_carry_i_3__12_n_7;
  wire prod_rounded_clamped_01_carry_i_4__12_n_0;
  wire prod_rounded_clamped_01_carry_i_5__12_n_0;
  wire prod_rounded_clamped_01_carry_i_6__12_n_0;
  wire prod_rounded_clamped_01_carry_i_7__12_n_0;
  wire prod_rounded_clamped_01_carry_i_7__12_n_1;
  wire prod_rounded_clamped_01_carry_i_7__12_n_2;
  wire prod_rounded_clamped_01_carry_i_7__12_n_3;
  wire prod_rounded_clamped_01_carry_i_7__12_n_4;
  wire prod_rounded_clamped_01_carry_i_7__12_n_5;
  wire prod_rounded_clamped_01_carry_i_7__12_n_6;
  wire prod_rounded_clamped_01_carry_i_7__12_n_7;
  wire prod_rounded_clamped_01_carry_n_2;
  wire prod_rounded_clamped_01_carry_n_3;
  wire prod_rounded_clamped_02;
  wire prod_rounded_clamped_02_carry_i_1__12_n_0;
  wire prod_rounded_clamped_02_carry_i_2__12_n_0;
  wire prod_rounded_clamped_02_carry_i_3__12_n_0;
  wire prod_rounded_clamped_02_carry_i_4__12_n_0;
  wire prod_rounded_clamped_02_carry_i_5__12_n_0;
  wire prod_rounded_clamped_02_carry_i_6__12_n_0;
  wire prod_rounded_clamped_02_carry_i_7__12_n_1;
  wire prod_rounded_clamped_02_carry_i_7__12_n_2;
  wire prod_rounded_clamped_02_carry_i_7__12_n_3;
  wire prod_rounded_clamped_02_carry_i_7__12_n_4;
  wire prod_rounded_clamped_02_carry_i_7__12_n_5;
  wire prod_rounded_clamped_02_carry_i_7__12_n_6;
  wire prod_rounded_clamped_02_carry_i_7__12_n_7;
  wire prod_rounded_clamped_02_carry_n_2;
  wire prod_rounded_clamped_02_carry_n_3;
  wire prod_rounded_clamped_11;
  wire prod_rounded_clamped_11_carry_i_1__12_n_0;
  wire prod_rounded_clamped_11_carry_i_2__12_n_0;
  wire prod_rounded_clamped_11_carry_i_3__12_n_0;
  wire prod_rounded_clamped_11_carry_i_3__12_n_1;
  wire prod_rounded_clamped_11_carry_i_3__12_n_2;
  wire prod_rounded_clamped_11_carry_i_3__12_n_3;
  wire prod_rounded_clamped_11_carry_i_3__12_n_4;
  wire prod_rounded_clamped_11_carry_i_3__12_n_5;
  wire prod_rounded_clamped_11_carry_i_3__12_n_6;
  wire prod_rounded_clamped_11_carry_i_3__12_n_7;
  wire prod_rounded_clamped_11_carry_i_4__12_n_0;
  wire prod_rounded_clamped_11_carry_i_5__12_n_0;
  wire prod_rounded_clamped_11_carry_i_6__12_n_0;
  wire prod_rounded_clamped_11_carry_i_7__11_n_0;
  wire prod_rounded_clamped_11_carry_i_7__11_n_1;
  wire prod_rounded_clamped_11_carry_i_7__11_n_2;
  wire prod_rounded_clamped_11_carry_i_7__11_n_3;
  wire prod_rounded_clamped_11_carry_i_7__11_n_4;
  wire prod_rounded_clamped_11_carry_i_7__11_n_5;
  wire prod_rounded_clamped_11_carry_i_7__11_n_6;
  wire prod_rounded_clamped_11_carry_i_7__11_n_7;
  wire prod_rounded_clamped_11_carry_n_2;
  wire prod_rounded_clamped_11_carry_n_3;
  wire prod_rounded_clamped_12;
  wire prod_rounded_clamped_12_carry_i_1__12_n_0;
  wire prod_rounded_clamped_12_carry_i_2__12_n_0;
  wire prod_rounded_clamped_12_carry_i_3__12_n_0;
  wire prod_rounded_clamped_12_carry_i_4__12_n_0;
  wire prod_rounded_clamped_12_carry_i_5__12_n_0;
  wire prod_rounded_clamped_12_carry_i_6__12_n_0;
  wire prod_rounded_clamped_12_carry_i_7__12_n_1;
  wire prod_rounded_clamped_12_carry_i_7__12_n_2;
  wire prod_rounded_clamped_12_carry_i_7__12_n_3;
  wire prod_rounded_clamped_12_carry_i_7__12_n_4;
  wire prod_rounded_clamped_12_carry_i_7__12_n_5;
  wire prod_rounded_clamped_12_carry_i_7__12_n_6;
  wire prod_rounded_clamped_12_carry_i_7__12_n_7;
  wire prod_rounded_clamped_12_carry_n_2;
  wire prod_rounded_clamped_12_carry_n_3;
  wire [3:3]NLW_add_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_1_carry__2_CO_UNCONNECTED;
  wire NLW_prod_0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_0_OVERFLOW_UNCONNECTED;
  wire NLW_prod_0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_0_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_0_P_UNCONNECTED;
  wire [47:0]NLW_prod_0_PCOUT_UNCONNECTED;
  wire NLW_prod_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_1_OVERFLOW_UNCONNECTED;
  wire NLW_prod_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_1_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_1_P_UNCONNECTED;
  wire [47:0]NLW_prod_1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_i_7__12_CO_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_i_7__12_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry
       (.CI(1'b0),
        .CO({add_0_carry_n_0,add_0_carry_n_1,add_0_carry_n_2,add_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[3:0]),
        .O(\interconnet[14] [3:0]),
        .S({add_0_carry_i_1__12_n_0,add_0_carry_i_2__12_n_0,add_0_carry_i_3__12_n_0,add_0_carry_i_4__12_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0
       (.CI(add_0_carry_n_0),
        .CO({add_0_carry__0_n_0,add_0_carry__0_n_1,add_0_carry__0_n_2,add_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[7:4]),
        .O(\interconnet[14] [7:4]),
        .S({add_0_carry__0_i_1__12_n_0,add_0_carry__0_i_2__12_n_0,add_0_carry__0_i_3__12_n_0,add_0_carry__0_i_4__12_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_1__12
       (.I0(add_0_carry__0_i_5__12_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[7]),
        .O(add_0_carry__0_i_1__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_2__12
       (.I0(add_0_carry__0_i_5__12_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[6]),
        .O(add_0_carry__0_i_2__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_3__12
       (.I0(add_0_carry__0_i_5__12_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[5]),
        .O(add_0_carry__0_i_3__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_4__12
       (.I0(add_0_carry__0_i_5__12_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[4]),
        .O(add_0_carry__0_i_4__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0_i_5__12
       (.CI(add_0_carry_i_5__12_n_0),
        .CO({add_0_carry__0_i_5__12_n_0,add_0_carry__0_i_5__12_n_1,add_0_carry__0_i_5__12_n_2,add_0_carry__0_i_5__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_0_carry__0_i_5__12_n_4,add_0_carry__0_i_5__12_n_5,add_0_carry__0_i_5__12_n_6,add_0_carry__0_i_5__12_n_7}),
        .S(prod_0__0[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__1
       (.CI(add_0_carry__0_n_0),
        .CO({add_0_carry__1_n_0,add_0_carry__1_n_1,add_0_carry__1_n_2,add_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[11:8]),
        .O(\interconnet[14] [11:8]),
        .S({add_0_carry__1_i_1__12_n_0,add_0_carry__1_i_2__12_n_0,add_0_carry__1_i_3__12_n_0,add_0_carry__1_i_4__12_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_1__12
       (.I0(prod_rounded_clamped_01_carry_i_7__12_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[11]),
        .O(add_0_carry__1_i_1__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_2__12
       (.I0(prod_rounded_clamped_01_carry_i_7__12_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[10]),
        .O(add_0_carry__1_i_2__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_3__12
       (.I0(prod_rounded_clamped_01_carry_i_7__12_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[9]),
        .O(add_0_carry__1_i_3__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_4__12
       (.I0(prod_rounded_clamped_01_carry_i_7__12_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[8]),
        .O(add_0_carry__1_i_4__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__2
       (.CI(add_0_carry__1_n_0),
        .CO({NLW_add_0_carry__2_CO_UNCONNECTED[3],add_0_carry__2_n_1,add_0_carry__2_n_2,add_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_element[14:12]}),
        .O(\interconnet[14] [15:12]),
        .S({add_0_carry__2_i_1__12_n_0,add_0_carry__2_i_2__12_n_0,add_0_carry__2_i_3__12_n_0,add_0_carry__2_i_4__12_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_0_carry__2_i_1__12
       (.I0(prod_rounded_clamped_01),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01_carry_i_3__12_n_4),
        .I3(delay_element[15]),
        .O(add_0_carry__2_i_1__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_2__12
       (.I0(prod_rounded_clamped_01_carry_i_3__12_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[14]),
        .O(add_0_carry__2_i_2__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_3__12
       (.I0(prod_rounded_clamped_01_carry_i_3__12_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[13]),
        .O(add_0_carry__2_i_3__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_4__12
       (.I0(prod_rounded_clamped_01_carry_i_3__12_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[12]),
        .O(add_0_carry__2_i_4__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_1__12
       (.I0(add_0_carry_i_5__12_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[3]),
        .O(add_0_carry_i_1__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_2__12
       (.I0(add_0_carry_i_5__12_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[2]),
        .O(add_0_carry_i_2__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_3__12
       (.I0(add_0_carry_i_5__12_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[1]),
        .O(add_0_carry_i_3__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_4__12
       (.I0(add_0_carry_i_5__12_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[0]),
        .O(add_0_carry_i_4__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry_i_5__12
       (.CI(1'b0),
        .CO({add_0_carry_i_5__12_n_0,add_0_carry_i_5__12_n_1,add_0_carry_i_5__12_n_2,add_0_carry_i_5__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_0__0[8]}),
        .O({add_0_carry_i_5__12_n_4,add_0_carry_i_5__12_n_5,add_0_carry_i_5__12_n_6,add_0_carry_i_5__12_n_7}),
        .S({prod_0__0[11:9],add_0_carry_i_6__12_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_0_carry_i_6__12
       (.I0(prod_0__0[8]),
        .I1(prod_0__0[7]),
        .O(add_0_carry_i_6__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry
       (.CI(1'b0),
        .CO({add_1_carry_n_0,add_1_carry_n_1,add_1_carry_n_2,add_1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[13] [3:0]),
        .O(add_1[3:0]),
        .S({add_1_carry_i_1__11_n_0,add_1_carry_i_2__11_n_0,add_1_carry_i_3__11_n_0,add_1_carry_i_4__11_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0
       (.CI(add_1_carry_n_0),
        .CO({add_1_carry__0_n_0,add_1_carry__0_n_1,add_1_carry__0_n_2,add_1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[13] [7:4]),
        .O(add_1[7:4]),
        .S({add_1_carry__0_i_1__11_n_0,add_1_carry__0_i_2__11_n_0,add_1_carry__0_i_3__11_n_0,add_1_carry__0_i_4__11_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_1__11
       (.I0(add_1_carry__0_i_5__11_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[13] [7]),
        .O(add_1_carry__0_i_1__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_2__11
       (.I0(add_1_carry__0_i_5__11_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[13] [6]),
        .O(add_1_carry__0_i_2__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_3__11
       (.I0(add_1_carry__0_i_5__11_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[13] [5]),
        .O(add_1_carry__0_i_3__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_4__11
       (.I0(add_1_carry__0_i_5__11_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[13] [4]),
        .O(add_1_carry__0_i_4__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0_i_5__11
       (.CI(add_1_carry_i_5__11_n_0),
        .CO({add_1_carry__0_i_5__11_n_0,add_1_carry__0_i_5__11_n_1,add_1_carry__0_i_5__11_n_2,add_1_carry__0_i_5__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_1_carry__0_i_5__11_n_4,add_1_carry__0_i_5__11_n_5,add_1_carry__0_i_5__11_n_6,add_1_carry__0_i_5__11_n_7}),
        .S(p_1_in[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__1
       (.CI(add_1_carry__0_n_0),
        .CO({add_1_carry__1_n_0,add_1_carry__1_n_1,add_1_carry__1_n_2,add_1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[13] [11:8]),
        .O(add_1[11:8]),
        .S({add_1_carry__1_i_1__11_n_0,add_1_carry__1_i_2__11_n_0,add_1_carry__1_i_3__11_n_0,add_1_carry__1_i_4__11_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_1__11
       (.I0(prod_rounded_clamped_11_carry_i_7__11_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[13] [11]),
        .O(add_1_carry__1_i_1__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_2__11
       (.I0(prod_rounded_clamped_11_carry_i_7__11_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[13] [10]),
        .O(add_1_carry__1_i_2__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_3__11
       (.I0(prod_rounded_clamped_11_carry_i_7__11_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[13] [9]),
        .O(add_1_carry__1_i_3__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_4__11
       (.I0(prod_rounded_clamped_11_carry_i_7__11_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[13] [8]),
        .O(add_1_carry__1_i_4__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__2
       (.CI(add_1_carry__1_n_0),
        .CO({NLW_add_1_carry__2_CO_UNCONNECTED[3],add_1_carry__2_n_1,add_1_carry__2_n_2,add_1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\interconnet[13] [14:12]}),
        .O(add_1[15:12]),
        .S({add_1_carry__2_i_1__11_n_0,add_1_carry__2_i_2__11_n_0,add_1_carry__2_i_3__11_n_0,add_1_carry__2_i_4__11_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_1_carry__2_i_1__11
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__12_n_4),
        .I3(\interconnet[13] [15]),
        .O(add_1_carry__2_i_1__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_2__11
       (.I0(prod_rounded_clamped_11_carry_i_3__12_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[13] [14]),
        .O(add_1_carry__2_i_2__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_3__11
       (.I0(prod_rounded_clamped_11_carry_i_3__12_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[13] [13]),
        .O(add_1_carry__2_i_3__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_4__11
       (.I0(prod_rounded_clamped_11_carry_i_3__12_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[13] [12]),
        .O(add_1_carry__2_i_4__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_1__11
       (.I0(add_1_carry_i_5__11_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[13] [3]),
        .O(add_1_carry_i_1__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_2__11
       (.I0(add_1_carry_i_5__11_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[13] [2]),
        .O(add_1_carry_i_2__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_3__11
       (.I0(add_1_carry_i_5__11_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[13] [1]),
        .O(add_1_carry_i_3__11_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_4__11
       (.I0(add_1_carry_i_5__11_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[13] [0]),
        .O(add_1_carry_i_4__11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry_i_5__11
       (.CI(1'b0),
        .CO({add_1_carry_i_5__11_n_0,add_1_carry_i_5__11_n_1,add_1_carry_i_5__11_n_2,add_1_carry_i_5__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_1_carry_i_5__11_n_4,add_1_carry_i_5__11_n_5,add_1_carry_i_5__11_n_6,add_1_carry_i_5__11_n_7}),
        .S({p_1_in[3:1],add_1_carry_i_6__11_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_1_carry_i_6__11
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_1_carry_i_6__11_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[0]),
        .Q(delay_element[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[10]),
        .Q(delay_element[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[11]),
        .Q(delay_element[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[12]),
        .Q(delay_element[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[13]),
        .Q(delay_element[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[14]),
        .Q(delay_element[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[15]),
        .Q(delay_element[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[1]),
        .Q(delay_element[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[2]),
        .Q(delay_element[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[3]),
        .Q(delay_element[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[4]),
        .Q(delay_element[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[5]),
        .Q(delay_element[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[6]),
        .Q(delay_element[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[7]),
        .Q(delay_element[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[8]),
        .Q(delay_element[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[9]),
        .Q(delay_element[9]),
        .R(i_rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_0
       (.A({prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_0_P_UNCONNECTED[47:28],prod_0__0,prod_0_n_99,prod_0_n_100,prod_0_n_101,prod_0_n_102,prod_0_n_103,prod_0_n_104,prod_0_n_105}),
        .PATTERNBDETECT(NLW_prod_0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_1
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_1_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_1_n_99,prod_1_n_100,prod_1_n_101,prod_1_n_102,prod_1_n_103,prod_1_n_104,prod_1_n_105}),
        .PATTERNBDETECT(NLW_prod_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_1_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_01_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED[3],prod_rounded_clamped_01,prod_rounded_clamped_01_carry_n_2,prod_rounded_clamped_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_01_carry_i_1__12_n_0,prod_rounded_clamped_01_carry_i_2__12_n_0,prod_rounded_clamped_01_carry_i_3__12_n_4}),
        .O(NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_01_carry_i_4__12_n_0,prod_rounded_clamped_01_carry_i_5__12_n_0,prod_rounded_clamped_01_carry_i_6__12_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_1__12
       (.I0(prod_rounded_clamped_02_carry_i_7__12_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__12_n_4),
        .O(prod_rounded_clamped_01_carry_i_1__12_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_01_carry_i_2__12
       (.I0(prod_rounded_clamped_02_carry_i_7__12_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__12_n_6),
        .O(prod_rounded_clamped_01_carry_i_2__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_3__12
       (.CI(prod_rounded_clamped_01_carry_i_7__12_n_0),
        .CO({prod_rounded_clamped_01_carry_i_3__12_n_0,prod_rounded_clamped_01_carry_i_3__12_n_1,prod_rounded_clamped_01_carry_i_3__12_n_2,prod_rounded_clamped_01_carry_i_3__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_3__12_n_4,prod_rounded_clamped_01_carry_i_3__12_n_5,prod_rounded_clamped_01_carry_i_3__12_n_6,prod_rounded_clamped_01_carry_i_3__12_n_7}),
        .S(prod_0__0[23:20]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_4__12
       (.I0(prod_rounded_clamped_02_carry_i_7__12_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__12_n_4),
        .O(prod_rounded_clamped_01_carry_i_4__12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_5__12
       (.I0(prod_rounded_clamped_02_carry_i_7__12_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__12_n_6),
        .O(prod_rounded_clamped_01_carry_i_5__12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_6__12
       (.I0(prod_rounded_clamped_01_carry_i_3__12_n_5),
        .I1(prod_rounded_clamped_01_carry_i_3__12_n_4),
        .O(prod_rounded_clamped_01_carry_i_6__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_7__12
       (.CI(add_0_carry__0_i_5__12_n_0),
        .CO({prod_rounded_clamped_01_carry_i_7__12_n_0,prod_rounded_clamped_01_carry_i_7__12_n_1,prod_rounded_clamped_01_carry_i_7__12_n_2,prod_rounded_clamped_01_carry_i_7__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_7__12_n_4,prod_rounded_clamped_01_carry_i_7__12_n_5,prod_rounded_clamped_01_carry_i_7__12_n_6,prod_rounded_clamped_01_carry_i_7__12_n_7}),
        .S(prod_0__0[19:16]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_02_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED[3],prod_rounded_clamped_02,prod_rounded_clamped_02_carry_n_2,prod_rounded_clamped_02_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_02_carry_i_1__12_n_0,prod_rounded_clamped_02_carry_i_2__12_n_0,prod_rounded_clamped_02_carry_i_3__12_n_0}),
        .O(NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_02_carry_i_4__12_n_0,prod_rounded_clamped_02_carry_i_5__12_n_0,prod_rounded_clamped_02_carry_i_6__12_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_1__12
       (.I0(prod_rounded_clamped_02_carry_i_7__12_n_4),
        .I1(prod_rounded_clamped_02_carry_i_7__12_n_5),
        .O(prod_rounded_clamped_02_carry_i_1__12_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_02_carry_i_2__12
       (.I0(prod_rounded_clamped_02_carry_i_7__12_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__12_n_6),
        .O(prod_rounded_clamped_02_carry_i_2__12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_02_carry_i_3__12
       (.I0(prod_rounded_clamped_01_carry_i_3__12_n_4),
        .O(prod_rounded_clamped_02_carry_i_3__12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_4__12
       (.I0(prod_rounded_clamped_02_carry_i_7__12_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__12_n_4),
        .O(prod_rounded_clamped_02_carry_i_4__12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_5__12
       (.I0(prod_rounded_clamped_02_carry_i_7__12_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__12_n_6),
        .O(prod_rounded_clamped_02_carry_i_5__12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_6__12
       (.I0(prod_rounded_clamped_01_carry_i_3__12_n_4),
        .I1(prod_rounded_clamped_01_carry_i_3__12_n_5),
        .O(prod_rounded_clamped_02_carry_i_6__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_02_carry_i_7__12
       (.CI(prod_rounded_clamped_01_carry_i_3__12_n_0),
        .CO({NLW_prod_rounded_clamped_02_carry_i_7__12_CO_UNCONNECTED[3],prod_rounded_clamped_02_carry_i_7__12_n_1,prod_rounded_clamped_02_carry_i_7__12_n_2,prod_rounded_clamped_02_carry_i_7__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_02_carry_i_7__12_n_4,prod_rounded_clamped_02_carry_i_7__12_n_5,prod_rounded_clamped_02_carry_i_7__12_n_6,prod_rounded_clamped_02_carry_i_7__12_n_7}),
        .S(prod_0__0[27:24]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_11_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED[3],prod_rounded_clamped_11,prod_rounded_clamped_11_carry_n_2,prod_rounded_clamped_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_11_carry_i_1__12_n_0,prod_rounded_clamped_11_carry_i_2__12_n_0,prod_rounded_clamped_11_carry_i_3__12_n_4}),
        .O(NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_11_carry_i_4__12_n_0,prod_rounded_clamped_11_carry_i_5__12_n_0,prod_rounded_clamped_11_carry_i_6__12_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_1__12
       (.I0(prod_rounded_clamped_12_carry_i_7__12_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__12_n_4),
        .O(prod_rounded_clamped_11_carry_i_1__12_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_11_carry_i_2__12
       (.I0(prod_rounded_clamped_12_carry_i_7__12_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__12_n_6),
        .O(prod_rounded_clamped_11_carry_i_2__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_3__12
       (.CI(prod_rounded_clamped_11_carry_i_7__11_n_0),
        .CO({prod_rounded_clamped_11_carry_i_3__12_n_0,prod_rounded_clamped_11_carry_i_3__12_n_1,prod_rounded_clamped_11_carry_i_3__12_n_2,prod_rounded_clamped_11_carry_i_3__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_3__12_n_4,prod_rounded_clamped_11_carry_i_3__12_n_5,prod_rounded_clamped_11_carry_i_3__12_n_6,prod_rounded_clamped_11_carry_i_3__12_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_4__12
       (.I0(prod_rounded_clamped_12_carry_i_7__12_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__12_n_4),
        .O(prod_rounded_clamped_11_carry_i_4__12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_5__12
       (.I0(prod_rounded_clamped_12_carry_i_7__12_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__12_n_6),
        .O(prod_rounded_clamped_11_carry_i_5__12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_6__12
       (.I0(prod_rounded_clamped_11_carry_i_3__12_n_5),
        .I1(prod_rounded_clamped_11_carry_i_3__12_n_4),
        .O(prod_rounded_clamped_11_carry_i_6__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_7__11
       (.CI(add_1_carry__0_i_5__11_n_0),
        .CO({prod_rounded_clamped_11_carry_i_7__11_n_0,prod_rounded_clamped_11_carry_i_7__11_n_1,prod_rounded_clamped_11_carry_i_7__11_n_2,prod_rounded_clamped_11_carry_i_7__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_7__11_n_4,prod_rounded_clamped_11_carry_i_7__11_n_5,prod_rounded_clamped_11_carry_i_7__11_n_6,prod_rounded_clamped_11_carry_i_7__11_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_12_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED[3],prod_rounded_clamped_12,prod_rounded_clamped_12_carry_n_2,prod_rounded_clamped_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_12_carry_i_1__12_n_0,prod_rounded_clamped_12_carry_i_2__12_n_0,prod_rounded_clamped_12_carry_i_3__12_n_0}),
        .O(NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_12_carry_i_4__12_n_0,prod_rounded_clamped_12_carry_i_5__12_n_0,prod_rounded_clamped_12_carry_i_6__12_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_1__12
       (.I0(prod_rounded_clamped_12_carry_i_7__12_n_4),
        .I1(prod_rounded_clamped_12_carry_i_7__12_n_5),
        .O(prod_rounded_clamped_12_carry_i_1__12_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_12_carry_i_2__12
       (.I0(prod_rounded_clamped_12_carry_i_7__12_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__12_n_6),
        .O(prod_rounded_clamped_12_carry_i_2__12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_12_carry_i_3__12
       (.I0(prod_rounded_clamped_11_carry_i_3__12_n_4),
        .O(prod_rounded_clamped_12_carry_i_3__12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_4__12
       (.I0(prod_rounded_clamped_12_carry_i_7__12_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__12_n_4),
        .O(prod_rounded_clamped_12_carry_i_4__12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_5__12
       (.I0(prod_rounded_clamped_12_carry_i_7__12_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__12_n_6),
        .O(prod_rounded_clamped_12_carry_i_5__12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_6__12
       (.I0(prod_rounded_clamped_11_carry_i_3__12_n_4),
        .I1(prod_rounded_clamped_11_carry_i_3__12_n_5),
        .O(prod_rounded_clamped_12_carry_i_6__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_12_carry_i_7__12
       (.CI(prod_rounded_clamped_11_carry_i_3__12_n_0),
        .CO({NLW_prod_rounded_clamped_12_carry_i_7__12_CO_UNCONNECTED[3],prod_rounded_clamped_12_carry_i_7__12_n_1,prod_rounded_clamped_12_carry_i_7__12_n_2,prod_rounded_clamped_12_carry_i_7__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_12_carry_i_7__12_n_4,prod_rounded_clamped_12_carry_i_7__12_n_5,prod_rounded_clamped_12_carry_i_7__12_n_6,prod_rounded_clamped_12_carry_i_7__12_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock_parallel" *) 
module FIR_subblock_parallel_5
   (\interconnet[15] ,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    prod_0_0,
    \interconnet[14] );
  output [15:0]\interconnet[15] ;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [13:0]prod_0_0;
  input [15:0]\interconnet[14] ;

  wire [13:0]A;
  wire add_0_carry__0_i_1__13_n_0;
  wire add_0_carry__0_i_2__13_n_0;
  wire add_0_carry__0_i_3__13_n_0;
  wire add_0_carry__0_i_4__13_n_0;
  wire add_0_carry__0_i_5__13_n_0;
  wire add_0_carry__0_i_5__13_n_1;
  wire add_0_carry__0_i_5__13_n_2;
  wire add_0_carry__0_i_5__13_n_3;
  wire add_0_carry__0_i_5__13_n_4;
  wire add_0_carry__0_i_5__13_n_5;
  wire add_0_carry__0_i_5__13_n_6;
  wire add_0_carry__0_i_5__13_n_7;
  wire add_0_carry__0_n_0;
  wire add_0_carry__0_n_1;
  wire add_0_carry__0_n_2;
  wire add_0_carry__0_n_3;
  wire add_0_carry__1_i_1__13_n_0;
  wire add_0_carry__1_i_2__13_n_0;
  wire add_0_carry__1_i_3__13_n_0;
  wire add_0_carry__1_i_4__13_n_0;
  wire add_0_carry__1_n_0;
  wire add_0_carry__1_n_1;
  wire add_0_carry__1_n_2;
  wire add_0_carry__1_n_3;
  wire add_0_carry__2_i_1__13_n_0;
  wire add_0_carry__2_i_2__13_n_0;
  wire add_0_carry__2_i_3__13_n_0;
  wire add_0_carry__2_i_4__13_n_0;
  wire add_0_carry__2_n_1;
  wire add_0_carry__2_n_2;
  wire add_0_carry__2_n_3;
  wire add_0_carry_i_1__13_n_0;
  wire add_0_carry_i_2__13_n_0;
  wire add_0_carry_i_3__13_n_0;
  wire add_0_carry_i_4__13_n_0;
  wire add_0_carry_i_5__13_n_0;
  wire add_0_carry_i_5__13_n_1;
  wire add_0_carry_i_5__13_n_2;
  wire add_0_carry_i_5__13_n_3;
  wire add_0_carry_i_5__13_n_4;
  wire add_0_carry_i_5__13_n_5;
  wire add_0_carry_i_5__13_n_6;
  wire add_0_carry_i_5__13_n_7;
  wire add_0_carry_i_6__13_n_0;
  wire add_0_carry_n_0;
  wire add_0_carry_n_1;
  wire add_0_carry_n_2;
  wire add_0_carry_n_3;
  wire [15:0]add_1;
  wire add_1_carry__0_i_1__12_n_0;
  wire add_1_carry__0_i_2__12_n_0;
  wire add_1_carry__0_i_3__12_n_0;
  wire add_1_carry__0_i_4__12_n_0;
  wire add_1_carry__0_i_5__12_n_0;
  wire add_1_carry__0_i_5__12_n_1;
  wire add_1_carry__0_i_5__12_n_2;
  wire add_1_carry__0_i_5__12_n_3;
  wire add_1_carry__0_i_5__12_n_4;
  wire add_1_carry__0_i_5__12_n_5;
  wire add_1_carry__0_i_5__12_n_6;
  wire add_1_carry__0_i_5__12_n_7;
  wire add_1_carry__0_n_0;
  wire add_1_carry__0_n_1;
  wire add_1_carry__0_n_2;
  wire add_1_carry__0_n_3;
  wire add_1_carry__1_i_1__12_n_0;
  wire add_1_carry__1_i_2__12_n_0;
  wire add_1_carry__1_i_3__12_n_0;
  wire add_1_carry__1_i_4__12_n_0;
  wire add_1_carry__1_n_0;
  wire add_1_carry__1_n_1;
  wire add_1_carry__1_n_2;
  wire add_1_carry__1_n_3;
  wire add_1_carry__2_i_1__12_n_0;
  wire add_1_carry__2_i_2__12_n_0;
  wire add_1_carry__2_i_3__12_n_0;
  wire add_1_carry__2_i_4__12_n_0;
  wire add_1_carry__2_n_1;
  wire add_1_carry__2_n_2;
  wire add_1_carry__2_n_3;
  wire add_1_carry_i_1__12_n_0;
  wire add_1_carry_i_2__12_n_0;
  wire add_1_carry_i_3__12_n_0;
  wire add_1_carry_i_4__12_n_0;
  wire add_1_carry_i_5__12_n_0;
  wire add_1_carry_i_5__12_n_1;
  wire add_1_carry_i_5__12_n_2;
  wire add_1_carry_i_5__12_n_3;
  wire add_1_carry_i_5__12_n_4;
  wire add_1_carry_i_5__12_n_5;
  wire add_1_carry_i_5__12_n_6;
  wire add_1_carry_i_5__12_n_7;
  wire add_1_carry_i_6__12_n_0;
  wire add_1_carry_n_0;
  wire add_1_carry_n_1;
  wire add_1_carry_n_2;
  wire add_1_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]delay_element;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[14] ;
  wire [15:0]\interconnet[15] ;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [13:0]prod_0_0;
  wire [27:7]prod_0__0;
  wire prod_0_n_100;
  wire prod_0_n_101;
  wire prod_0_n_102;
  wire prod_0_n_103;
  wire prod_0_n_104;
  wire prod_0_n_105;
  wire prod_0_n_99;
  wire prod_1_n_100;
  wire prod_1_n_101;
  wire prod_1_n_102;
  wire prod_1_n_103;
  wire prod_1_n_104;
  wire prod_1_n_105;
  wire prod_1_n_99;
  wire prod_rounded_clamped_01;
  wire prod_rounded_clamped_01_carry_i_1__13_n_0;
  wire prod_rounded_clamped_01_carry_i_2__13_n_0;
  wire prod_rounded_clamped_01_carry_i_3__13_n_0;
  wire prod_rounded_clamped_01_carry_i_3__13_n_1;
  wire prod_rounded_clamped_01_carry_i_3__13_n_2;
  wire prod_rounded_clamped_01_carry_i_3__13_n_3;
  wire prod_rounded_clamped_01_carry_i_3__13_n_4;
  wire prod_rounded_clamped_01_carry_i_3__13_n_5;
  wire prod_rounded_clamped_01_carry_i_3__13_n_6;
  wire prod_rounded_clamped_01_carry_i_3__13_n_7;
  wire prod_rounded_clamped_01_carry_i_4__13_n_0;
  wire prod_rounded_clamped_01_carry_i_5__13_n_0;
  wire prod_rounded_clamped_01_carry_i_6__13_n_0;
  wire prod_rounded_clamped_01_carry_i_7__13_n_0;
  wire prod_rounded_clamped_01_carry_i_7__13_n_1;
  wire prod_rounded_clamped_01_carry_i_7__13_n_2;
  wire prod_rounded_clamped_01_carry_i_7__13_n_3;
  wire prod_rounded_clamped_01_carry_i_7__13_n_4;
  wire prod_rounded_clamped_01_carry_i_7__13_n_5;
  wire prod_rounded_clamped_01_carry_i_7__13_n_6;
  wire prod_rounded_clamped_01_carry_i_7__13_n_7;
  wire prod_rounded_clamped_01_carry_n_2;
  wire prod_rounded_clamped_01_carry_n_3;
  wire prod_rounded_clamped_02;
  wire prod_rounded_clamped_02_carry_i_1__13_n_0;
  wire prod_rounded_clamped_02_carry_i_2__13_n_0;
  wire prod_rounded_clamped_02_carry_i_3__13_n_0;
  wire prod_rounded_clamped_02_carry_i_4__13_n_0;
  wire prod_rounded_clamped_02_carry_i_5__13_n_0;
  wire prod_rounded_clamped_02_carry_i_6__13_n_0;
  wire prod_rounded_clamped_02_carry_i_7__13_n_1;
  wire prod_rounded_clamped_02_carry_i_7__13_n_2;
  wire prod_rounded_clamped_02_carry_i_7__13_n_3;
  wire prod_rounded_clamped_02_carry_i_7__13_n_4;
  wire prod_rounded_clamped_02_carry_i_7__13_n_5;
  wire prod_rounded_clamped_02_carry_i_7__13_n_6;
  wire prod_rounded_clamped_02_carry_i_7__13_n_7;
  wire prod_rounded_clamped_02_carry_n_2;
  wire prod_rounded_clamped_02_carry_n_3;
  wire prod_rounded_clamped_11;
  wire prod_rounded_clamped_11_carry_i_1__13_n_0;
  wire prod_rounded_clamped_11_carry_i_2__13_n_0;
  wire prod_rounded_clamped_11_carry_i_3__13_n_0;
  wire prod_rounded_clamped_11_carry_i_3__13_n_1;
  wire prod_rounded_clamped_11_carry_i_3__13_n_2;
  wire prod_rounded_clamped_11_carry_i_3__13_n_3;
  wire prod_rounded_clamped_11_carry_i_3__13_n_4;
  wire prod_rounded_clamped_11_carry_i_3__13_n_5;
  wire prod_rounded_clamped_11_carry_i_3__13_n_6;
  wire prod_rounded_clamped_11_carry_i_3__13_n_7;
  wire prod_rounded_clamped_11_carry_i_4__13_n_0;
  wire prod_rounded_clamped_11_carry_i_5__13_n_0;
  wire prod_rounded_clamped_11_carry_i_6__13_n_0;
  wire prod_rounded_clamped_11_carry_i_7__12_n_0;
  wire prod_rounded_clamped_11_carry_i_7__12_n_1;
  wire prod_rounded_clamped_11_carry_i_7__12_n_2;
  wire prod_rounded_clamped_11_carry_i_7__12_n_3;
  wire prod_rounded_clamped_11_carry_i_7__12_n_4;
  wire prod_rounded_clamped_11_carry_i_7__12_n_5;
  wire prod_rounded_clamped_11_carry_i_7__12_n_6;
  wire prod_rounded_clamped_11_carry_i_7__12_n_7;
  wire prod_rounded_clamped_11_carry_n_2;
  wire prod_rounded_clamped_11_carry_n_3;
  wire prod_rounded_clamped_12;
  wire prod_rounded_clamped_12_carry_i_1__13_n_0;
  wire prod_rounded_clamped_12_carry_i_2__13_n_0;
  wire prod_rounded_clamped_12_carry_i_3__13_n_0;
  wire prod_rounded_clamped_12_carry_i_4__13_n_0;
  wire prod_rounded_clamped_12_carry_i_5__13_n_0;
  wire prod_rounded_clamped_12_carry_i_6__13_n_0;
  wire prod_rounded_clamped_12_carry_i_7__13_n_1;
  wire prod_rounded_clamped_12_carry_i_7__13_n_2;
  wire prod_rounded_clamped_12_carry_i_7__13_n_3;
  wire prod_rounded_clamped_12_carry_i_7__13_n_4;
  wire prod_rounded_clamped_12_carry_i_7__13_n_5;
  wire prod_rounded_clamped_12_carry_i_7__13_n_6;
  wire prod_rounded_clamped_12_carry_i_7__13_n_7;
  wire prod_rounded_clamped_12_carry_n_2;
  wire prod_rounded_clamped_12_carry_n_3;
  wire [3:3]NLW_add_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_1_carry__2_CO_UNCONNECTED;
  wire NLW_prod_0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_0_OVERFLOW_UNCONNECTED;
  wire NLW_prod_0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_0_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_0_P_UNCONNECTED;
  wire [47:0]NLW_prod_0_PCOUT_UNCONNECTED;
  wire NLW_prod_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_1_OVERFLOW_UNCONNECTED;
  wire NLW_prod_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_1_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_1_P_UNCONNECTED;
  wire [47:0]NLW_prod_1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_i_7__13_CO_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_i_7__13_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry
       (.CI(1'b0),
        .CO({add_0_carry_n_0,add_0_carry_n_1,add_0_carry_n_2,add_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[3:0]),
        .O(\interconnet[15] [3:0]),
        .S({add_0_carry_i_1__13_n_0,add_0_carry_i_2__13_n_0,add_0_carry_i_3__13_n_0,add_0_carry_i_4__13_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0
       (.CI(add_0_carry_n_0),
        .CO({add_0_carry__0_n_0,add_0_carry__0_n_1,add_0_carry__0_n_2,add_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[7:4]),
        .O(\interconnet[15] [7:4]),
        .S({add_0_carry__0_i_1__13_n_0,add_0_carry__0_i_2__13_n_0,add_0_carry__0_i_3__13_n_0,add_0_carry__0_i_4__13_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_1__13
       (.I0(add_0_carry__0_i_5__13_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[7]),
        .O(add_0_carry__0_i_1__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_2__13
       (.I0(add_0_carry__0_i_5__13_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[6]),
        .O(add_0_carry__0_i_2__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_3__13
       (.I0(add_0_carry__0_i_5__13_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[5]),
        .O(add_0_carry__0_i_3__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_4__13
       (.I0(add_0_carry__0_i_5__13_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[4]),
        .O(add_0_carry__0_i_4__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0_i_5__13
       (.CI(add_0_carry_i_5__13_n_0),
        .CO({add_0_carry__0_i_5__13_n_0,add_0_carry__0_i_5__13_n_1,add_0_carry__0_i_5__13_n_2,add_0_carry__0_i_5__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_0_carry__0_i_5__13_n_4,add_0_carry__0_i_5__13_n_5,add_0_carry__0_i_5__13_n_6,add_0_carry__0_i_5__13_n_7}),
        .S(prod_0__0[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__1
       (.CI(add_0_carry__0_n_0),
        .CO({add_0_carry__1_n_0,add_0_carry__1_n_1,add_0_carry__1_n_2,add_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[11:8]),
        .O(\interconnet[15] [11:8]),
        .S({add_0_carry__1_i_1__13_n_0,add_0_carry__1_i_2__13_n_0,add_0_carry__1_i_3__13_n_0,add_0_carry__1_i_4__13_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_1__13
       (.I0(prod_rounded_clamped_01_carry_i_7__13_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[11]),
        .O(add_0_carry__1_i_1__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_2__13
       (.I0(prod_rounded_clamped_01_carry_i_7__13_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[10]),
        .O(add_0_carry__1_i_2__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_3__13
       (.I0(prod_rounded_clamped_01_carry_i_7__13_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[9]),
        .O(add_0_carry__1_i_3__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_4__13
       (.I0(prod_rounded_clamped_01_carry_i_7__13_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[8]),
        .O(add_0_carry__1_i_4__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__2
       (.CI(add_0_carry__1_n_0),
        .CO({NLW_add_0_carry__2_CO_UNCONNECTED[3],add_0_carry__2_n_1,add_0_carry__2_n_2,add_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_element[14:12]}),
        .O(\interconnet[15] [15:12]),
        .S({add_0_carry__2_i_1__13_n_0,add_0_carry__2_i_2__13_n_0,add_0_carry__2_i_3__13_n_0,add_0_carry__2_i_4__13_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_0_carry__2_i_1__13
       (.I0(prod_rounded_clamped_01),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01_carry_i_3__13_n_4),
        .I3(delay_element[15]),
        .O(add_0_carry__2_i_1__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_2__13
       (.I0(prod_rounded_clamped_01_carry_i_3__13_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[14]),
        .O(add_0_carry__2_i_2__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_3__13
       (.I0(prod_rounded_clamped_01_carry_i_3__13_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[13]),
        .O(add_0_carry__2_i_3__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_4__13
       (.I0(prod_rounded_clamped_01_carry_i_3__13_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[12]),
        .O(add_0_carry__2_i_4__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_1__13
       (.I0(add_0_carry_i_5__13_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[3]),
        .O(add_0_carry_i_1__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_2__13
       (.I0(add_0_carry_i_5__13_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[2]),
        .O(add_0_carry_i_2__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_3__13
       (.I0(add_0_carry_i_5__13_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[1]),
        .O(add_0_carry_i_3__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_4__13
       (.I0(add_0_carry_i_5__13_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[0]),
        .O(add_0_carry_i_4__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry_i_5__13
       (.CI(1'b0),
        .CO({add_0_carry_i_5__13_n_0,add_0_carry_i_5__13_n_1,add_0_carry_i_5__13_n_2,add_0_carry_i_5__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_0__0[8]}),
        .O({add_0_carry_i_5__13_n_4,add_0_carry_i_5__13_n_5,add_0_carry_i_5__13_n_6,add_0_carry_i_5__13_n_7}),
        .S({prod_0__0[11:9],add_0_carry_i_6__13_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_0_carry_i_6__13
       (.I0(prod_0__0[8]),
        .I1(prod_0__0[7]),
        .O(add_0_carry_i_6__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry
       (.CI(1'b0),
        .CO({add_1_carry_n_0,add_1_carry_n_1,add_1_carry_n_2,add_1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[14] [3:0]),
        .O(add_1[3:0]),
        .S({add_1_carry_i_1__12_n_0,add_1_carry_i_2__12_n_0,add_1_carry_i_3__12_n_0,add_1_carry_i_4__12_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0
       (.CI(add_1_carry_n_0),
        .CO({add_1_carry__0_n_0,add_1_carry__0_n_1,add_1_carry__0_n_2,add_1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[14] [7:4]),
        .O(add_1[7:4]),
        .S({add_1_carry__0_i_1__12_n_0,add_1_carry__0_i_2__12_n_0,add_1_carry__0_i_3__12_n_0,add_1_carry__0_i_4__12_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_1__12
       (.I0(add_1_carry__0_i_5__12_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[14] [7]),
        .O(add_1_carry__0_i_1__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_2__12
       (.I0(add_1_carry__0_i_5__12_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[14] [6]),
        .O(add_1_carry__0_i_2__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_3__12
       (.I0(add_1_carry__0_i_5__12_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[14] [5]),
        .O(add_1_carry__0_i_3__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_4__12
       (.I0(add_1_carry__0_i_5__12_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[14] [4]),
        .O(add_1_carry__0_i_4__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0_i_5__12
       (.CI(add_1_carry_i_5__12_n_0),
        .CO({add_1_carry__0_i_5__12_n_0,add_1_carry__0_i_5__12_n_1,add_1_carry__0_i_5__12_n_2,add_1_carry__0_i_5__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_1_carry__0_i_5__12_n_4,add_1_carry__0_i_5__12_n_5,add_1_carry__0_i_5__12_n_6,add_1_carry__0_i_5__12_n_7}),
        .S(p_1_in[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__1
       (.CI(add_1_carry__0_n_0),
        .CO({add_1_carry__1_n_0,add_1_carry__1_n_1,add_1_carry__1_n_2,add_1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[14] [11:8]),
        .O(add_1[11:8]),
        .S({add_1_carry__1_i_1__12_n_0,add_1_carry__1_i_2__12_n_0,add_1_carry__1_i_3__12_n_0,add_1_carry__1_i_4__12_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_1__12
       (.I0(prod_rounded_clamped_11_carry_i_7__12_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[14] [11]),
        .O(add_1_carry__1_i_1__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_2__12
       (.I0(prod_rounded_clamped_11_carry_i_7__12_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[14] [10]),
        .O(add_1_carry__1_i_2__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_3__12
       (.I0(prod_rounded_clamped_11_carry_i_7__12_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[14] [9]),
        .O(add_1_carry__1_i_3__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_4__12
       (.I0(prod_rounded_clamped_11_carry_i_7__12_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[14] [8]),
        .O(add_1_carry__1_i_4__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__2
       (.CI(add_1_carry__1_n_0),
        .CO({NLW_add_1_carry__2_CO_UNCONNECTED[3],add_1_carry__2_n_1,add_1_carry__2_n_2,add_1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\interconnet[14] [14:12]}),
        .O(add_1[15:12]),
        .S({add_1_carry__2_i_1__12_n_0,add_1_carry__2_i_2__12_n_0,add_1_carry__2_i_3__12_n_0,add_1_carry__2_i_4__12_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_1_carry__2_i_1__12
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__13_n_4),
        .I3(\interconnet[14] [15]),
        .O(add_1_carry__2_i_1__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_2__12
       (.I0(prod_rounded_clamped_11_carry_i_3__13_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[14] [14]),
        .O(add_1_carry__2_i_2__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_3__12
       (.I0(prod_rounded_clamped_11_carry_i_3__13_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[14] [13]),
        .O(add_1_carry__2_i_3__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_4__12
       (.I0(prod_rounded_clamped_11_carry_i_3__13_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[14] [12]),
        .O(add_1_carry__2_i_4__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_1__12
       (.I0(add_1_carry_i_5__12_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[14] [3]),
        .O(add_1_carry_i_1__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_2__12
       (.I0(add_1_carry_i_5__12_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[14] [2]),
        .O(add_1_carry_i_2__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_3__12
       (.I0(add_1_carry_i_5__12_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[14] [1]),
        .O(add_1_carry_i_3__12_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_4__12
       (.I0(add_1_carry_i_5__12_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[14] [0]),
        .O(add_1_carry_i_4__12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry_i_5__12
       (.CI(1'b0),
        .CO({add_1_carry_i_5__12_n_0,add_1_carry_i_5__12_n_1,add_1_carry_i_5__12_n_2,add_1_carry_i_5__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_1_carry_i_5__12_n_4,add_1_carry_i_5__12_n_5,add_1_carry_i_5__12_n_6,add_1_carry_i_5__12_n_7}),
        .S({p_1_in[3:1],add_1_carry_i_6__12_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_1_carry_i_6__12
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_1_carry_i_6__12_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[0]),
        .Q(delay_element[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[10]),
        .Q(delay_element[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[11]),
        .Q(delay_element[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[12]),
        .Q(delay_element[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[13]),
        .Q(delay_element[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[14]),
        .Q(delay_element[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[15]),
        .Q(delay_element[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[1]),
        .Q(delay_element[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[2]),
        .Q(delay_element[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[3]),
        .Q(delay_element[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[4]),
        .Q(delay_element[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[5]),
        .Q(delay_element[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[6]),
        .Q(delay_element[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[7]),
        .Q(delay_element[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[8]),
        .Q(delay_element[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[9]),
        .Q(delay_element[9]),
        .R(i_rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_0
       (.A({prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_0_P_UNCONNECTED[47:28],prod_0__0,prod_0_n_99,prod_0_n_100,prod_0_n_101,prod_0_n_102,prod_0_n_103,prod_0_n_104,prod_0_n_105}),
        .PATTERNBDETECT(NLW_prod_0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_1
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_1_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_1_n_99,prod_1_n_100,prod_1_n_101,prod_1_n_102,prod_1_n_103,prod_1_n_104,prod_1_n_105}),
        .PATTERNBDETECT(NLW_prod_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_1_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_01_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED[3],prod_rounded_clamped_01,prod_rounded_clamped_01_carry_n_2,prod_rounded_clamped_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_01_carry_i_1__13_n_0,prod_rounded_clamped_01_carry_i_2__13_n_0,prod_rounded_clamped_01_carry_i_3__13_n_4}),
        .O(NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_01_carry_i_4__13_n_0,prod_rounded_clamped_01_carry_i_5__13_n_0,prod_rounded_clamped_01_carry_i_6__13_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_1__13
       (.I0(prod_rounded_clamped_02_carry_i_7__13_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__13_n_4),
        .O(prod_rounded_clamped_01_carry_i_1__13_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_01_carry_i_2__13
       (.I0(prod_rounded_clamped_02_carry_i_7__13_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__13_n_6),
        .O(prod_rounded_clamped_01_carry_i_2__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_3__13
       (.CI(prod_rounded_clamped_01_carry_i_7__13_n_0),
        .CO({prod_rounded_clamped_01_carry_i_3__13_n_0,prod_rounded_clamped_01_carry_i_3__13_n_1,prod_rounded_clamped_01_carry_i_3__13_n_2,prod_rounded_clamped_01_carry_i_3__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_3__13_n_4,prod_rounded_clamped_01_carry_i_3__13_n_5,prod_rounded_clamped_01_carry_i_3__13_n_6,prod_rounded_clamped_01_carry_i_3__13_n_7}),
        .S(prod_0__0[23:20]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_4__13
       (.I0(prod_rounded_clamped_02_carry_i_7__13_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__13_n_4),
        .O(prod_rounded_clamped_01_carry_i_4__13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_5__13
       (.I0(prod_rounded_clamped_02_carry_i_7__13_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__13_n_6),
        .O(prod_rounded_clamped_01_carry_i_5__13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_6__13
       (.I0(prod_rounded_clamped_01_carry_i_3__13_n_5),
        .I1(prod_rounded_clamped_01_carry_i_3__13_n_4),
        .O(prod_rounded_clamped_01_carry_i_6__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_7__13
       (.CI(add_0_carry__0_i_5__13_n_0),
        .CO({prod_rounded_clamped_01_carry_i_7__13_n_0,prod_rounded_clamped_01_carry_i_7__13_n_1,prod_rounded_clamped_01_carry_i_7__13_n_2,prod_rounded_clamped_01_carry_i_7__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_7__13_n_4,prod_rounded_clamped_01_carry_i_7__13_n_5,prod_rounded_clamped_01_carry_i_7__13_n_6,prod_rounded_clamped_01_carry_i_7__13_n_7}),
        .S(prod_0__0[19:16]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_02_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED[3],prod_rounded_clamped_02,prod_rounded_clamped_02_carry_n_2,prod_rounded_clamped_02_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_02_carry_i_1__13_n_0,prod_rounded_clamped_02_carry_i_2__13_n_0,prod_rounded_clamped_02_carry_i_3__13_n_0}),
        .O(NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_02_carry_i_4__13_n_0,prod_rounded_clamped_02_carry_i_5__13_n_0,prod_rounded_clamped_02_carry_i_6__13_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_1__13
       (.I0(prod_rounded_clamped_02_carry_i_7__13_n_4),
        .I1(prod_rounded_clamped_02_carry_i_7__13_n_5),
        .O(prod_rounded_clamped_02_carry_i_1__13_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_02_carry_i_2__13
       (.I0(prod_rounded_clamped_02_carry_i_7__13_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__13_n_6),
        .O(prod_rounded_clamped_02_carry_i_2__13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_02_carry_i_3__13
       (.I0(prod_rounded_clamped_01_carry_i_3__13_n_4),
        .O(prod_rounded_clamped_02_carry_i_3__13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_4__13
       (.I0(prod_rounded_clamped_02_carry_i_7__13_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__13_n_4),
        .O(prod_rounded_clamped_02_carry_i_4__13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_5__13
       (.I0(prod_rounded_clamped_02_carry_i_7__13_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__13_n_6),
        .O(prod_rounded_clamped_02_carry_i_5__13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_6__13
       (.I0(prod_rounded_clamped_01_carry_i_3__13_n_4),
        .I1(prod_rounded_clamped_01_carry_i_3__13_n_5),
        .O(prod_rounded_clamped_02_carry_i_6__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_02_carry_i_7__13
       (.CI(prod_rounded_clamped_01_carry_i_3__13_n_0),
        .CO({NLW_prod_rounded_clamped_02_carry_i_7__13_CO_UNCONNECTED[3],prod_rounded_clamped_02_carry_i_7__13_n_1,prod_rounded_clamped_02_carry_i_7__13_n_2,prod_rounded_clamped_02_carry_i_7__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_02_carry_i_7__13_n_4,prod_rounded_clamped_02_carry_i_7__13_n_5,prod_rounded_clamped_02_carry_i_7__13_n_6,prod_rounded_clamped_02_carry_i_7__13_n_7}),
        .S(prod_0__0[27:24]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_11_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED[3],prod_rounded_clamped_11,prod_rounded_clamped_11_carry_n_2,prod_rounded_clamped_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_11_carry_i_1__13_n_0,prod_rounded_clamped_11_carry_i_2__13_n_0,prod_rounded_clamped_11_carry_i_3__13_n_4}),
        .O(NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_11_carry_i_4__13_n_0,prod_rounded_clamped_11_carry_i_5__13_n_0,prod_rounded_clamped_11_carry_i_6__13_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_1__13
       (.I0(prod_rounded_clamped_12_carry_i_7__13_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__13_n_4),
        .O(prod_rounded_clamped_11_carry_i_1__13_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_11_carry_i_2__13
       (.I0(prod_rounded_clamped_12_carry_i_7__13_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__13_n_6),
        .O(prod_rounded_clamped_11_carry_i_2__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_3__13
       (.CI(prod_rounded_clamped_11_carry_i_7__12_n_0),
        .CO({prod_rounded_clamped_11_carry_i_3__13_n_0,prod_rounded_clamped_11_carry_i_3__13_n_1,prod_rounded_clamped_11_carry_i_3__13_n_2,prod_rounded_clamped_11_carry_i_3__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_3__13_n_4,prod_rounded_clamped_11_carry_i_3__13_n_5,prod_rounded_clamped_11_carry_i_3__13_n_6,prod_rounded_clamped_11_carry_i_3__13_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_4__13
       (.I0(prod_rounded_clamped_12_carry_i_7__13_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__13_n_4),
        .O(prod_rounded_clamped_11_carry_i_4__13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_5__13
       (.I0(prod_rounded_clamped_12_carry_i_7__13_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__13_n_6),
        .O(prod_rounded_clamped_11_carry_i_5__13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_6__13
       (.I0(prod_rounded_clamped_11_carry_i_3__13_n_5),
        .I1(prod_rounded_clamped_11_carry_i_3__13_n_4),
        .O(prod_rounded_clamped_11_carry_i_6__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_7__12
       (.CI(add_1_carry__0_i_5__12_n_0),
        .CO({prod_rounded_clamped_11_carry_i_7__12_n_0,prod_rounded_clamped_11_carry_i_7__12_n_1,prod_rounded_clamped_11_carry_i_7__12_n_2,prod_rounded_clamped_11_carry_i_7__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_7__12_n_4,prod_rounded_clamped_11_carry_i_7__12_n_5,prod_rounded_clamped_11_carry_i_7__12_n_6,prod_rounded_clamped_11_carry_i_7__12_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_12_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED[3],prod_rounded_clamped_12,prod_rounded_clamped_12_carry_n_2,prod_rounded_clamped_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_12_carry_i_1__13_n_0,prod_rounded_clamped_12_carry_i_2__13_n_0,prod_rounded_clamped_12_carry_i_3__13_n_0}),
        .O(NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_12_carry_i_4__13_n_0,prod_rounded_clamped_12_carry_i_5__13_n_0,prod_rounded_clamped_12_carry_i_6__13_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_1__13
       (.I0(prod_rounded_clamped_12_carry_i_7__13_n_4),
        .I1(prod_rounded_clamped_12_carry_i_7__13_n_5),
        .O(prod_rounded_clamped_12_carry_i_1__13_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_12_carry_i_2__13
       (.I0(prod_rounded_clamped_12_carry_i_7__13_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__13_n_6),
        .O(prod_rounded_clamped_12_carry_i_2__13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_12_carry_i_3__13
       (.I0(prod_rounded_clamped_11_carry_i_3__13_n_4),
        .O(prod_rounded_clamped_12_carry_i_3__13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_4__13
       (.I0(prod_rounded_clamped_12_carry_i_7__13_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__13_n_4),
        .O(prod_rounded_clamped_12_carry_i_4__13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_5__13
       (.I0(prod_rounded_clamped_12_carry_i_7__13_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__13_n_6),
        .O(prod_rounded_clamped_12_carry_i_5__13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_6__13
       (.I0(prod_rounded_clamped_11_carry_i_3__13_n_4),
        .I1(prod_rounded_clamped_11_carry_i_3__13_n_5),
        .O(prod_rounded_clamped_12_carry_i_6__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_12_carry_i_7__13
       (.CI(prod_rounded_clamped_11_carry_i_3__13_n_0),
        .CO({NLW_prod_rounded_clamped_12_carry_i_7__13_CO_UNCONNECTED[3],prod_rounded_clamped_12_carry_i_7__13_n_1,prod_rounded_clamped_12_carry_i_7__13_n_2,prod_rounded_clamped_12_carry_i_7__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_12_carry_i_7__13_n_4,prod_rounded_clamped_12_carry_i_7__13_n_5,prod_rounded_clamped_12_carry_i_7__13_n_6,prod_rounded_clamped_12_carry_i_7__13_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock_parallel" *) 
module FIR_subblock_parallel_6
   (\interconnet[16] ,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    prod_0_0,
    \interconnet[15] );
  output [15:0]\interconnet[16] ;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [13:0]prod_0_0;
  input [15:0]\interconnet[15] ;

  wire [13:0]A;
  wire add_0_carry__0_i_1__14_n_0;
  wire add_0_carry__0_i_2__14_n_0;
  wire add_0_carry__0_i_3__14_n_0;
  wire add_0_carry__0_i_4__14_n_0;
  wire add_0_carry__0_i_5__14_n_0;
  wire add_0_carry__0_i_5__14_n_1;
  wire add_0_carry__0_i_5__14_n_2;
  wire add_0_carry__0_i_5__14_n_3;
  wire add_0_carry__0_i_5__14_n_4;
  wire add_0_carry__0_i_5__14_n_5;
  wire add_0_carry__0_i_5__14_n_6;
  wire add_0_carry__0_i_5__14_n_7;
  wire add_0_carry__0_n_0;
  wire add_0_carry__0_n_1;
  wire add_0_carry__0_n_2;
  wire add_0_carry__0_n_3;
  wire add_0_carry__1_i_1__14_n_0;
  wire add_0_carry__1_i_2__14_n_0;
  wire add_0_carry__1_i_3__14_n_0;
  wire add_0_carry__1_i_4__14_n_0;
  wire add_0_carry__1_n_0;
  wire add_0_carry__1_n_1;
  wire add_0_carry__1_n_2;
  wire add_0_carry__1_n_3;
  wire add_0_carry__2_i_1__14_n_0;
  wire add_0_carry__2_i_2__14_n_0;
  wire add_0_carry__2_i_3__14_n_0;
  wire add_0_carry__2_i_4__14_n_0;
  wire add_0_carry__2_n_1;
  wire add_0_carry__2_n_2;
  wire add_0_carry__2_n_3;
  wire add_0_carry_i_1__14_n_0;
  wire add_0_carry_i_2__14_n_0;
  wire add_0_carry_i_3__14_n_0;
  wire add_0_carry_i_4__14_n_0;
  wire add_0_carry_i_5__14_n_0;
  wire add_0_carry_i_5__14_n_1;
  wire add_0_carry_i_5__14_n_2;
  wire add_0_carry_i_5__14_n_3;
  wire add_0_carry_i_5__14_n_4;
  wire add_0_carry_i_5__14_n_5;
  wire add_0_carry_i_5__14_n_6;
  wire add_0_carry_i_5__14_n_7;
  wire add_0_carry_i_6__14_n_0;
  wire add_0_carry_n_0;
  wire add_0_carry_n_1;
  wire add_0_carry_n_2;
  wire add_0_carry_n_3;
  wire [15:0]add_1;
  wire add_1_carry__0_i_1__13_n_0;
  wire add_1_carry__0_i_2__13_n_0;
  wire add_1_carry__0_i_3__13_n_0;
  wire add_1_carry__0_i_4__13_n_0;
  wire add_1_carry__0_i_5__13_n_0;
  wire add_1_carry__0_i_5__13_n_1;
  wire add_1_carry__0_i_5__13_n_2;
  wire add_1_carry__0_i_5__13_n_3;
  wire add_1_carry__0_i_5__13_n_4;
  wire add_1_carry__0_i_5__13_n_5;
  wire add_1_carry__0_i_5__13_n_6;
  wire add_1_carry__0_i_5__13_n_7;
  wire add_1_carry__0_n_0;
  wire add_1_carry__0_n_1;
  wire add_1_carry__0_n_2;
  wire add_1_carry__0_n_3;
  wire add_1_carry__1_i_1__13_n_0;
  wire add_1_carry__1_i_2__13_n_0;
  wire add_1_carry__1_i_3__13_n_0;
  wire add_1_carry__1_i_4__13_n_0;
  wire add_1_carry__1_n_0;
  wire add_1_carry__1_n_1;
  wire add_1_carry__1_n_2;
  wire add_1_carry__1_n_3;
  wire add_1_carry__2_i_1__13_n_0;
  wire add_1_carry__2_i_2__13_n_0;
  wire add_1_carry__2_i_3__13_n_0;
  wire add_1_carry__2_i_4__13_n_0;
  wire add_1_carry__2_n_1;
  wire add_1_carry__2_n_2;
  wire add_1_carry__2_n_3;
  wire add_1_carry_i_1__13_n_0;
  wire add_1_carry_i_2__13_n_0;
  wire add_1_carry_i_3__13_n_0;
  wire add_1_carry_i_4__13_n_0;
  wire add_1_carry_i_5__13_n_0;
  wire add_1_carry_i_5__13_n_1;
  wire add_1_carry_i_5__13_n_2;
  wire add_1_carry_i_5__13_n_3;
  wire add_1_carry_i_5__13_n_4;
  wire add_1_carry_i_5__13_n_5;
  wire add_1_carry_i_5__13_n_6;
  wire add_1_carry_i_5__13_n_7;
  wire add_1_carry_i_6__13_n_0;
  wire add_1_carry_n_0;
  wire add_1_carry_n_1;
  wire add_1_carry_n_2;
  wire add_1_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]delay_element;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[15] ;
  wire [15:0]\interconnet[16] ;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [13:0]prod_0_0;
  wire [27:7]prod_0__0;
  wire prod_0_n_100;
  wire prod_0_n_101;
  wire prod_0_n_102;
  wire prod_0_n_103;
  wire prod_0_n_104;
  wire prod_0_n_105;
  wire prod_0_n_99;
  wire prod_1_n_100;
  wire prod_1_n_101;
  wire prod_1_n_102;
  wire prod_1_n_103;
  wire prod_1_n_104;
  wire prod_1_n_105;
  wire prod_1_n_99;
  wire prod_rounded_clamped_01;
  wire prod_rounded_clamped_01_carry_i_1__14_n_0;
  wire prod_rounded_clamped_01_carry_i_2__14_n_0;
  wire prod_rounded_clamped_01_carry_i_3__14_n_0;
  wire prod_rounded_clamped_01_carry_i_3__14_n_1;
  wire prod_rounded_clamped_01_carry_i_3__14_n_2;
  wire prod_rounded_clamped_01_carry_i_3__14_n_3;
  wire prod_rounded_clamped_01_carry_i_3__14_n_4;
  wire prod_rounded_clamped_01_carry_i_3__14_n_5;
  wire prod_rounded_clamped_01_carry_i_3__14_n_6;
  wire prod_rounded_clamped_01_carry_i_3__14_n_7;
  wire prod_rounded_clamped_01_carry_i_4__14_n_0;
  wire prod_rounded_clamped_01_carry_i_5__14_n_0;
  wire prod_rounded_clamped_01_carry_i_6__14_n_0;
  wire prod_rounded_clamped_01_carry_i_7__14_n_0;
  wire prod_rounded_clamped_01_carry_i_7__14_n_1;
  wire prod_rounded_clamped_01_carry_i_7__14_n_2;
  wire prod_rounded_clamped_01_carry_i_7__14_n_3;
  wire prod_rounded_clamped_01_carry_i_7__14_n_4;
  wire prod_rounded_clamped_01_carry_i_7__14_n_5;
  wire prod_rounded_clamped_01_carry_i_7__14_n_6;
  wire prod_rounded_clamped_01_carry_i_7__14_n_7;
  wire prod_rounded_clamped_01_carry_n_2;
  wire prod_rounded_clamped_01_carry_n_3;
  wire prod_rounded_clamped_02;
  wire prod_rounded_clamped_02_carry_i_1__14_n_0;
  wire prod_rounded_clamped_02_carry_i_2__14_n_0;
  wire prod_rounded_clamped_02_carry_i_3__14_n_0;
  wire prod_rounded_clamped_02_carry_i_4__14_n_0;
  wire prod_rounded_clamped_02_carry_i_5__14_n_0;
  wire prod_rounded_clamped_02_carry_i_6__14_n_0;
  wire prod_rounded_clamped_02_carry_i_7__14_n_1;
  wire prod_rounded_clamped_02_carry_i_7__14_n_2;
  wire prod_rounded_clamped_02_carry_i_7__14_n_3;
  wire prod_rounded_clamped_02_carry_i_7__14_n_4;
  wire prod_rounded_clamped_02_carry_i_7__14_n_5;
  wire prod_rounded_clamped_02_carry_i_7__14_n_6;
  wire prod_rounded_clamped_02_carry_i_7__14_n_7;
  wire prod_rounded_clamped_02_carry_n_2;
  wire prod_rounded_clamped_02_carry_n_3;
  wire prod_rounded_clamped_11;
  wire prod_rounded_clamped_11_carry_i_1__14_n_0;
  wire prod_rounded_clamped_11_carry_i_2__14_n_0;
  wire prod_rounded_clamped_11_carry_i_3__14_n_0;
  wire prod_rounded_clamped_11_carry_i_3__14_n_1;
  wire prod_rounded_clamped_11_carry_i_3__14_n_2;
  wire prod_rounded_clamped_11_carry_i_3__14_n_3;
  wire prod_rounded_clamped_11_carry_i_3__14_n_4;
  wire prod_rounded_clamped_11_carry_i_3__14_n_5;
  wire prod_rounded_clamped_11_carry_i_3__14_n_6;
  wire prod_rounded_clamped_11_carry_i_3__14_n_7;
  wire prod_rounded_clamped_11_carry_i_4__14_n_0;
  wire prod_rounded_clamped_11_carry_i_5__14_n_0;
  wire prod_rounded_clamped_11_carry_i_6__14_n_0;
  wire prod_rounded_clamped_11_carry_i_7__13_n_0;
  wire prod_rounded_clamped_11_carry_i_7__13_n_1;
  wire prod_rounded_clamped_11_carry_i_7__13_n_2;
  wire prod_rounded_clamped_11_carry_i_7__13_n_3;
  wire prod_rounded_clamped_11_carry_i_7__13_n_4;
  wire prod_rounded_clamped_11_carry_i_7__13_n_5;
  wire prod_rounded_clamped_11_carry_i_7__13_n_6;
  wire prod_rounded_clamped_11_carry_i_7__13_n_7;
  wire prod_rounded_clamped_11_carry_n_2;
  wire prod_rounded_clamped_11_carry_n_3;
  wire prod_rounded_clamped_12;
  wire prod_rounded_clamped_12_carry_i_1__14_n_0;
  wire prod_rounded_clamped_12_carry_i_2__14_n_0;
  wire prod_rounded_clamped_12_carry_i_3__14_n_0;
  wire prod_rounded_clamped_12_carry_i_4__14_n_0;
  wire prod_rounded_clamped_12_carry_i_5__14_n_0;
  wire prod_rounded_clamped_12_carry_i_6__14_n_0;
  wire prod_rounded_clamped_12_carry_i_7__14_n_1;
  wire prod_rounded_clamped_12_carry_i_7__14_n_2;
  wire prod_rounded_clamped_12_carry_i_7__14_n_3;
  wire prod_rounded_clamped_12_carry_i_7__14_n_4;
  wire prod_rounded_clamped_12_carry_i_7__14_n_5;
  wire prod_rounded_clamped_12_carry_i_7__14_n_6;
  wire prod_rounded_clamped_12_carry_i_7__14_n_7;
  wire prod_rounded_clamped_12_carry_n_2;
  wire prod_rounded_clamped_12_carry_n_3;
  wire [3:3]NLW_add_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_1_carry__2_CO_UNCONNECTED;
  wire NLW_prod_0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_0_OVERFLOW_UNCONNECTED;
  wire NLW_prod_0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_0_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_0_P_UNCONNECTED;
  wire [47:0]NLW_prod_0_PCOUT_UNCONNECTED;
  wire NLW_prod_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_1_OVERFLOW_UNCONNECTED;
  wire NLW_prod_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_1_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_1_P_UNCONNECTED;
  wire [47:0]NLW_prod_1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_i_7__14_CO_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_i_7__14_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry
       (.CI(1'b0),
        .CO({add_0_carry_n_0,add_0_carry_n_1,add_0_carry_n_2,add_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[3:0]),
        .O(\interconnet[16] [3:0]),
        .S({add_0_carry_i_1__14_n_0,add_0_carry_i_2__14_n_0,add_0_carry_i_3__14_n_0,add_0_carry_i_4__14_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0
       (.CI(add_0_carry_n_0),
        .CO({add_0_carry__0_n_0,add_0_carry__0_n_1,add_0_carry__0_n_2,add_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[7:4]),
        .O(\interconnet[16] [7:4]),
        .S({add_0_carry__0_i_1__14_n_0,add_0_carry__0_i_2__14_n_0,add_0_carry__0_i_3__14_n_0,add_0_carry__0_i_4__14_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_1__14
       (.I0(add_0_carry__0_i_5__14_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[7]),
        .O(add_0_carry__0_i_1__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_2__14
       (.I0(add_0_carry__0_i_5__14_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[6]),
        .O(add_0_carry__0_i_2__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_3__14
       (.I0(add_0_carry__0_i_5__14_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[5]),
        .O(add_0_carry__0_i_3__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_4__14
       (.I0(add_0_carry__0_i_5__14_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[4]),
        .O(add_0_carry__0_i_4__14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0_i_5__14
       (.CI(add_0_carry_i_5__14_n_0),
        .CO({add_0_carry__0_i_5__14_n_0,add_0_carry__0_i_5__14_n_1,add_0_carry__0_i_5__14_n_2,add_0_carry__0_i_5__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_0_carry__0_i_5__14_n_4,add_0_carry__0_i_5__14_n_5,add_0_carry__0_i_5__14_n_6,add_0_carry__0_i_5__14_n_7}),
        .S(prod_0__0[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__1
       (.CI(add_0_carry__0_n_0),
        .CO({add_0_carry__1_n_0,add_0_carry__1_n_1,add_0_carry__1_n_2,add_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[11:8]),
        .O(\interconnet[16] [11:8]),
        .S({add_0_carry__1_i_1__14_n_0,add_0_carry__1_i_2__14_n_0,add_0_carry__1_i_3__14_n_0,add_0_carry__1_i_4__14_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_1__14
       (.I0(prod_rounded_clamped_01_carry_i_7__14_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[11]),
        .O(add_0_carry__1_i_1__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_2__14
       (.I0(prod_rounded_clamped_01_carry_i_7__14_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[10]),
        .O(add_0_carry__1_i_2__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_3__14
       (.I0(prod_rounded_clamped_01_carry_i_7__14_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[9]),
        .O(add_0_carry__1_i_3__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_4__14
       (.I0(prod_rounded_clamped_01_carry_i_7__14_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[8]),
        .O(add_0_carry__1_i_4__14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__2
       (.CI(add_0_carry__1_n_0),
        .CO({NLW_add_0_carry__2_CO_UNCONNECTED[3],add_0_carry__2_n_1,add_0_carry__2_n_2,add_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_element[14:12]}),
        .O(\interconnet[16] [15:12]),
        .S({add_0_carry__2_i_1__14_n_0,add_0_carry__2_i_2__14_n_0,add_0_carry__2_i_3__14_n_0,add_0_carry__2_i_4__14_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_0_carry__2_i_1__14
       (.I0(prod_rounded_clamped_01),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01_carry_i_3__14_n_4),
        .I3(delay_element[15]),
        .O(add_0_carry__2_i_1__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_2__14
       (.I0(prod_rounded_clamped_01_carry_i_3__14_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[14]),
        .O(add_0_carry__2_i_2__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_3__14
       (.I0(prod_rounded_clamped_01_carry_i_3__14_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[13]),
        .O(add_0_carry__2_i_3__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_4__14
       (.I0(prod_rounded_clamped_01_carry_i_3__14_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[12]),
        .O(add_0_carry__2_i_4__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_1__14
       (.I0(add_0_carry_i_5__14_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[3]),
        .O(add_0_carry_i_1__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_2__14
       (.I0(add_0_carry_i_5__14_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[2]),
        .O(add_0_carry_i_2__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_3__14
       (.I0(add_0_carry_i_5__14_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[1]),
        .O(add_0_carry_i_3__14_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_4__14
       (.I0(add_0_carry_i_5__14_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[0]),
        .O(add_0_carry_i_4__14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry_i_5__14
       (.CI(1'b0),
        .CO({add_0_carry_i_5__14_n_0,add_0_carry_i_5__14_n_1,add_0_carry_i_5__14_n_2,add_0_carry_i_5__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_0__0[8]}),
        .O({add_0_carry_i_5__14_n_4,add_0_carry_i_5__14_n_5,add_0_carry_i_5__14_n_6,add_0_carry_i_5__14_n_7}),
        .S({prod_0__0[11:9],add_0_carry_i_6__14_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_0_carry_i_6__14
       (.I0(prod_0__0[8]),
        .I1(prod_0__0[7]),
        .O(add_0_carry_i_6__14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry
       (.CI(1'b0),
        .CO({add_1_carry_n_0,add_1_carry_n_1,add_1_carry_n_2,add_1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[15] [3:0]),
        .O(add_1[3:0]),
        .S({add_1_carry_i_1__13_n_0,add_1_carry_i_2__13_n_0,add_1_carry_i_3__13_n_0,add_1_carry_i_4__13_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0
       (.CI(add_1_carry_n_0),
        .CO({add_1_carry__0_n_0,add_1_carry__0_n_1,add_1_carry__0_n_2,add_1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[15] [7:4]),
        .O(add_1[7:4]),
        .S({add_1_carry__0_i_1__13_n_0,add_1_carry__0_i_2__13_n_0,add_1_carry__0_i_3__13_n_0,add_1_carry__0_i_4__13_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_1__13
       (.I0(add_1_carry__0_i_5__13_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[15] [7]),
        .O(add_1_carry__0_i_1__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_2__13
       (.I0(add_1_carry__0_i_5__13_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[15] [6]),
        .O(add_1_carry__0_i_2__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_3__13
       (.I0(add_1_carry__0_i_5__13_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[15] [5]),
        .O(add_1_carry__0_i_3__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_4__13
       (.I0(add_1_carry__0_i_5__13_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[15] [4]),
        .O(add_1_carry__0_i_4__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0_i_5__13
       (.CI(add_1_carry_i_5__13_n_0),
        .CO({add_1_carry__0_i_5__13_n_0,add_1_carry__0_i_5__13_n_1,add_1_carry__0_i_5__13_n_2,add_1_carry__0_i_5__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_1_carry__0_i_5__13_n_4,add_1_carry__0_i_5__13_n_5,add_1_carry__0_i_5__13_n_6,add_1_carry__0_i_5__13_n_7}),
        .S(p_1_in[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__1
       (.CI(add_1_carry__0_n_0),
        .CO({add_1_carry__1_n_0,add_1_carry__1_n_1,add_1_carry__1_n_2,add_1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[15] [11:8]),
        .O(add_1[11:8]),
        .S({add_1_carry__1_i_1__13_n_0,add_1_carry__1_i_2__13_n_0,add_1_carry__1_i_3__13_n_0,add_1_carry__1_i_4__13_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_1__13
       (.I0(prod_rounded_clamped_11_carry_i_7__13_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[15] [11]),
        .O(add_1_carry__1_i_1__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_2__13
       (.I0(prod_rounded_clamped_11_carry_i_7__13_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[15] [10]),
        .O(add_1_carry__1_i_2__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_3__13
       (.I0(prod_rounded_clamped_11_carry_i_7__13_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[15] [9]),
        .O(add_1_carry__1_i_3__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_4__13
       (.I0(prod_rounded_clamped_11_carry_i_7__13_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[15] [8]),
        .O(add_1_carry__1_i_4__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__2
       (.CI(add_1_carry__1_n_0),
        .CO({NLW_add_1_carry__2_CO_UNCONNECTED[3],add_1_carry__2_n_1,add_1_carry__2_n_2,add_1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\interconnet[15] [14:12]}),
        .O(add_1[15:12]),
        .S({add_1_carry__2_i_1__13_n_0,add_1_carry__2_i_2__13_n_0,add_1_carry__2_i_3__13_n_0,add_1_carry__2_i_4__13_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_1_carry__2_i_1__13
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__14_n_4),
        .I3(\interconnet[15] [15]),
        .O(add_1_carry__2_i_1__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_2__13
       (.I0(prod_rounded_clamped_11_carry_i_3__14_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[15] [14]),
        .O(add_1_carry__2_i_2__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_3__13
       (.I0(prod_rounded_clamped_11_carry_i_3__14_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[15] [13]),
        .O(add_1_carry__2_i_3__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_4__13
       (.I0(prod_rounded_clamped_11_carry_i_3__14_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[15] [12]),
        .O(add_1_carry__2_i_4__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_1__13
       (.I0(add_1_carry_i_5__13_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[15] [3]),
        .O(add_1_carry_i_1__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_2__13
       (.I0(add_1_carry_i_5__13_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[15] [2]),
        .O(add_1_carry_i_2__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_3__13
       (.I0(add_1_carry_i_5__13_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[15] [1]),
        .O(add_1_carry_i_3__13_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_4__13
       (.I0(add_1_carry_i_5__13_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[15] [0]),
        .O(add_1_carry_i_4__13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry_i_5__13
       (.CI(1'b0),
        .CO({add_1_carry_i_5__13_n_0,add_1_carry_i_5__13_n_1,add_1_carry_i_5__13_n_2,add_1_carry_i_5__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_1_carry_i_5__13_n_4,add_1_carry_i_5__13_n_5,add_1_carry_i_5__13_n_6,add_1_carry_i_5__13_n_7}),
        .S({p_1_in[3:1],add_1_carry_i_6__13_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_1_carry_i_6__13
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_1_carry_i_6__13_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[0]),
        .Q(delay_element[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[10]),
        .Q(delay_element[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[11]),
        .Q(delay_element[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[12]),
        .Q(delay_element[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[13]),
        .Q(delay_element[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[14]),
        .Q(delay_element[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[15]),
        .Q(delay_element[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[1]),
        .Q(delay_element[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[2]),
        .Q(delay_element[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[3]),
        .Q(delay_element[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[4]),
        .Q(delay_element[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[5]),
        .Q(delay_element[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[6]),
        .Q(delay_element[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[7]),
        .Q(delay_element[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[8]),
        .Q(delay_element[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[9]),
        .Q(delay_element[9]),
        .R(i_rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_0
       (.A({prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_0_P_UNCONNECTED[47:28],prod_0__0,prod_0_n_99,prod_0_n_100,prod_0_n_101,prod_0_n_102,prod_0_n_103,prod_0_n_104,prod_0_n_105}),
        .PATTERNBDETECT(NLW_prod_0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_1
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_1_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_1_n_99,prod_1_n_100,prod_1_n_101,prod_1_n_102,prod_1_n_103,prod_1_n_104,prod_1_n_105}),
        .PATTERNBDETECT(NLW_prod_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_1_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_01_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED[3],prod_rounded_clamped_01,prod_rounded_clamped_01_carry_n_2,prod_rounded_clamped_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_01_carry_i_1__14_n_0,prod_rounded_clamped_01_carry_i_2__14_n_0,prod_rounded_clamped_01_carry_i_3__14_n_4}),
        .O(NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_01_carry_i_4__14_n_0,prod_rounded_clamped_01_carry_i_5__14_n_0,prod_rounded_clamped_01_carry_i_6__14_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_1__14
       (.I0(prod_rounded_clamped_02_carry_i_7__14_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__14_n_4),
        .O(prod_rounded_clamped_01_carry_i_1__14_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_01_carry_i_2__14
       (.I0(prod_rounded_clamped_02_carry_i_7__14_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__14_n_6),
        .O(prod_rounded_clamped_01_carry_i_2__14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_3__14
       (.CI(prod_rounded_clamped_01_carry_i_7__14_n_0),
        .CO({prod_rounded_clamped_01_carry_i_3__14_n_0,prod_rounded_clamped_01_carry_i_3__14_n_1,prod_rounded_clamped_01_carry_i_3__14_n_2,prod_rounded_clamped_01_carry_i_3__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_3__14_n_4,prod_rounded_clamped_01_carry_i_3__14_n_5,prod_rounded_clamped_01_carry_i_3__14_n_6,prod_rounded_clamped_01_carry_i_3__14_n_7}),
        .S(prod_0__0[23:20]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_4__14
       (.I0(prod_rounded_clamped_02_carry_i_7__14_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__14_n_4),
        .O(prod_rounded_clamped_01_carry_i_4__14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_5__14
       (.I0(prod_rounded_clamped_02_carry_i_7__14_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__14_n_6),
        .O(prod_rounded_clamped_01_carry_i_5__14_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_6__14
       (.I0(prod_rounded_clamped_01_carry_i_3__14_n_5),
        .I1(prod_rounded_clamped_01_carry_i_3__14_n_4),
        .O(prod_rounded_clamped_01_carry_i_6__14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_7__14
       (.CI(add_0_carry__0_i_5__14_n_0),
        .CO({prod_rounded_clamped_01_carry_i_7__14_n_0,prod_rounded_clamped_01_carry_i_7__14_n_1,prod_rounded_clamped_01_carry_i_7__14_n_2,prod_rounded_clamped_01_carry_i_7__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_7__14_n_4,prod_rounded_clamped_01_carry_i_7__14_n_5,prod_rounded_clamped_01_carry_i_7__14_n_6,prod_rounded_clamped_01_carry_i_7__14_n_7}),
        .S(prod_0__0[19:16]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_02_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED[3],prod_rounded_clamped_02,prod_rounded_clamped_02_carry_n_2,prod_rounded_clamped_02_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_02_carry_i_1__14_n_0,prod_rounded_clamped_02_carry_i_2__14_n_0,prod_rounded_clamped_02_carry_i_3__14_n_0}),
        .O(NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_02_carry_i_4__14_n_0,prod_rounded_clamped_02_carry_i_5__14_n_0,prod_rounded_clamped_02_carry_i_6__14_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_1__14
       (.I0(prod_rounded_clamped_02_carry_i_7__14_n_4),
        .I1(prod_rounded_clamped_02_carry_i_7__14_n_5),
        .O(prod_rounded_clamped_02_carry_i_1__14_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_02_carry_i_2__14
       (.I0(prod_rounded_clamped_02_carry_i_7__14_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__14_n_6),
        .O(prod_rounded_clamped_02_carry_i_2__14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_02_carry_i_3__14
       (.I0(prod_rounded_clamped_01_carry_i_3__14_n_4),
        .O(prod_rounded_clamped_02_carry_i_3__14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_4__14
       (.I0(prod_rounded_clamped_02_carry_i_7__14_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__14_n_4),
        .O(prod_rounded_clamped_02_carry_i_4__14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_5__14
       (.I0(prod_rounded_clamped_02_carry_i_7__14_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__14_n_6),
        .O(prod_rounded_clamped_02_carry_i_5__14_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_6__14
       (.I0(prod_rounded_clamped_01_carry_i_3__14_n_4),
        .I1(prod_rounded_clamped_01_carry_i_3__14_n_5),
        .O(prod_rounded_clamped_02_carry_i_6__14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_02_carry_i_7__14
       (.CI(prod_rounded_clamped_01_carry_i_3__14_n_0),
        .CO({NLW_prod_rounded_clamped_02_carry_i_7__14_CO_UNCONNECTED[3],prod_rounded_clamped_02_carry_i_7__14_n_1,prod_rounded_clamped_02_carry_i_7__14_n_2,prod_rounded_clamped_02_carry_i_7__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_02_carry_i_7__14_n_4,prod_rounded_clamped_02_carry_i_7__14_n_5,prod_rounded_clamped_02_carry_i_7__14_n_6,prod_rounded_clamped_02_carry_i_7__14_n_7}),
        .S(prod_0__0[27:24]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_11_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED[3],prod_rounded_clamped_11,prod_rounded_clamped_11_carry_n_2,prod_rounded_clamped_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_11_carry_i_1__14_n_0,prod_rounded_clamped_11_carry_i_2__14_n_0,prod_rounded_clamped_11_carry_i_3__14_n_4}),
        .O(NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_11_carry_i_4__14_n_0,prod_rounded_clamped_11_carry_i_5__14_n_0,prod_rounded_clamped_11_carry_i_6__14_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_1__14
       (.I0(prod_rounded_clamped_12_carry_i_7__14_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__14_n_4),
        .O(prod_rounded_clamped_11_carry_i_1__14_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_11_carry_i_2__14
       (.I0(prod_rounded_clamped_12_carry_i_7__14_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__14_n_6),
        .O(prod_rounded_clamped_11_carry_i_2__14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_3__14
       (.CI(prod_rounded_clamped_11_carry_i_7__13_n_0),
        .CO({prod_rounded_clamped_11_carry_i_3__14_n_0,prod_rounded_clamped_11_carry_i_3__14_n_1,prod_rounded_clamped_11_carry_i_3__14_n_2,prod_rounded_clamped_11_carry_i_3__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_3__14_n_4,prod_rounded_clamped_11_carry_i_3__14_n_5,prod_rounded_clamped_11_carry_i_3__14_n_6,prod_rounded_clamped_11_carry_i_3__14_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_4__14
       (.I0(prod_rounded_clamped_12_carry_i_7__14_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__14_n_4),
        .O(prod_rounded_clamped_11_carry_i_4__14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_5__14
       (.I0(prod_rounded_clamped_12_carry_i_7__14_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__14_n_6),
        .O(prod_rounded_clamped_11_carry_i_5__14_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_6__14
       (.I0(prod_rounded_clamped_11_carry_i_3__14_n_5),
        .I1(prod_rounded_clamped_11_carry_i_3__14_n_4),
        .O(prod_rounded_clamped_11_carry_i_6__14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_7__13
       (.CI(add_1_carry__0_i_5__13_n_0),
        .CO({prod_rounded_clamped_11_carry_i_7__13_n_0,prod_rounded_clamped_11_carry_i_7__13_n_1,prod_rounded_clamped_11_carry_i_7__13_n_2,prod_rounded_clamped_11_carry_i_7__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_7__13_n_4,prod_rounded_clamped_11_carry_i_7__13_n_5,prod_rounded_clamped_11_carry_i_7__13_n_6,prod_rounded_clamped_11_carry_i_7__13_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_12_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED[3],prod_rounded_clamped_12,prod_rounded_clamped_12_carry_n_2,prod_rounded_clamped_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_12_carry_i_1__14_n_0,prod_rounded_clamped_12_carry_i_2__14_n_0,prod_rounded_clamped_12_carry_i_3__14_n_0}),
        .O(NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_12_carry_i_4__14_n_0,prod_rounded_clamped_12_carry_i_5__14_n_0,prod_rounded_clamped_12_carry_i_6__14_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_1__14
       (.I0(prod_rounded_clamped_12_carry_i_7__14_n_4),
        .I1(prod_rounded_clamped_12_carry_i_7__14_n_5),
        .O(prod_rounded_clamped_12_carry_i_1__14_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_12_carry_i_2__14
       (.I0(prod_rounded_clamped_12_carry_i_7__14_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__14_n_6),
        .O(prod_rounded_clamped_12_carry_i_2__14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_12_carry_i_3__14
       (.I0(prod_rounded_clamped_11_carry_i_3__14_n_4),
        .O(prod_rounded_clamped_12_carry_i_3__14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_4__14
       (.I0(prod_rounded_clamped_12_carry_i_7__14_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__14_n_4),
        .O(prod_rounded_clamped_12_carry_i_4__14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_5__14
       (.I0(prod_rounded_clamped_12_carry_i_7__14_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__14_n_6),
        .O(prod_rounded_clamped_12_carry_i_5__14_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_6__14
       (.I0(prod_rounded_clamped_11_carry_i_3__14_n_4),
        .I1(prod_rounded_clamped_11_carry_i_3__14_n_5),
        .O(prod_rounded_clamped_12_carry_i_6__14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_12_carry_i_7__14
       (.CI(prod_rounded_clamped_11_carry_i_3__14_n_0),
        .CO({NLW_prod_rounded_clamped_12_carry_i_7__14_CO_UNCONNECTED[3],prod_rounded_clamped_12_carry_i_7__14_n_1,prod_rounded_clamped_12_carry_i_7__14_n_2,prod_rounded_clamped_12_carry_i_7__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_12_carry_i_7__14_n_4,prod_rounded_clamped_12_carry_i_7__14_n_5,prod_rounded_clamped_12_carry_i_7__14_n_6,prod_rounded_clamped_12_carry_i_7__14_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock_parallel" *) 
module FIR_subblock_parallel_8
   (prod_1_0,
    \interconnet[1] ,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    prod_0_0,
    S,
    \delay_element_reg[7]_0 ,
    \delay_element_reg[11]_0 ,
    \delay_element_reg[15]_0 ,
    \delay_element_reg[15]_1 ,
    CO,
    prod_rounded_clamped,
    prod_rounded_clamped__31);
  output [13:0]prod_1_0;
  output [15:0]\interconnet[1] ;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [13:0]prod_0_0;
  input [3:0]S;
  input [3:0]\delay_element_reg[7]_0 ;
  input [3:0]\delay_element_reg[11]_0 ;
  input [1:0]\delay_element_reg[15]_0 ;
  input [0:0]\delay_element_reg[15]_1 ;
  input [0:0]CO;
  input [0:0]prod_rounded_clamped;
  input [0:0]prod_rounded_clamped__31;

  wire [13:0]A;
  wire [0:0]CO;
  wire [3:0]S;
  wire add_0_carry__0_i_1_n_0;
  wire add_0_carry__0_i_2_n_0;
  wire add_0_carry__0_i_3_n_0;
  wire add_0_carry__0_i_4_n_0;
  wire add_0_carry__0_i_5_n_0;
  wire add_0_carry__0_i_5_n_1;
  wire add_0_carry__0_i_5_n_2;
  wire add_0_carry__0_i_5_n_3;
  wire add_0_carry__0_i_5_n_4;
  wire add_0_carry__0_i_5_n_5;
  wire add_0_carry__0_i_5_n_6;
  wire add_0_carry__0_i_5_n_7;
  wire add_0_carry__0_n_0;
  wire add_0_carry__0_n_1;
  wire add_0_carry__0_n_2;
  wire add_0_carry__0_n_3;
  wire add_0_carry__1_i_1_n_0;
  wire add_0_carry__1_i_2_n_0;
  wire add_0_carry__1_i_3_n_0;
  wire add_0_carry__1_i_4_n_0;
  wire add_0_carry__1_n_0;
  wire add_0_carry__1_n_1;
  wire add_0_carry__1_n_2;
  wire add_0_carry__1_n_3;
  wire add_0_carry__2_i_1_n_0;
  wire add_0_carry__2_i_2_n_0;
  wire add_0_carry__2_i_3_n_0;
  wire add_0_carry__2_i_4_n_0;
  wire add_0_carry__2_n_1;
  wire add_0_carry__2_n_2;
  wire add_0_carry__2_n_3;
  wire add_0_carry_i_1_n_0;
  wire add_0_carry_i_2_n_0;
  wire add_0_carry_i_3_n_0;
  wire add_0_carry_i_4_n_0;
  wire add_0_carry_i_5_n_0;
  wire add_0_carry_i_5_n_1;
  wire add_0_carry_i_5_n_2;
  wire add_0_carry_i_5_n_3;
  wire add_0_carry_i_5_n_4;
  wire add_0_carry_i_5_n_5;
  wire add_0_carry_i_5_n_6;
  wire add_0_carry_i_5_n_7;
  wire add_0_carry_i_6_n_0;
  wire add_0_carry_n_0;
  wire add_0_carry_n_1;
  wire add_0_carry_n_2;
  wire add_0_carry_n_3;
  wire [15:0]add_1;
  wire add_1_carry__0_i_9_n_0;
  wire add_1_carry__0_i_9_n_1;
  wire add_1_carry__0_i_9_n_2;
  wire add_1_carry__0_i_9_n_3;
  wire add_1_carry__0_i_9_n_4;
  wire add_1_carry__0_i_9_n_5;
  wire add_1_carry__0_i_9_n_6;
  wire add_1_carry__0_i_9_n_7;
  wire add_1_carry__0_n_0;
  wire add_1_carry__0_n_1;
  wire add_1_carry__0_n_2;
  wire add_1_carry__0_n_3;
  wire add_1_carry__1_n_0;
  wire add_1_carry__1_n_1;
  wire add_1_carry__1_n_2;
  wire add_1_carry__1_n_3;
  wire add_1_carry__2_i_4_n_0;
  wire add_1_carry__2_i_5_n_0;
  wire add_1_carry__2_n_1;
  wire add_1_carry__2_n_2;
  wire add_1_carry__2_n_3;
  wire add_1_carry_i_11_n_0;
  wire add_1_carry_i_9_n_0;
  wire add_1_carry_i_9_n_1;
  wire add_1_carry_i_9_n_2;
  wire add_1_carry_i_9_n_3;
  wire add_1_carry_i_9_n_4;
  wire add_1_carry_i_9_n_5;
  wire add_1_carry_i_9_n_6;
  wire add_1_carry_i_9_n_7;
  wire add_1_carry_n_0;
  wire add_1_carry_n_1;
  wire add_1_carry_n_2;
  wire add_1_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]delay_element;
  wire [3:0]\delay_element_reg[11]_0 ;
  wire [1:0]\delay_element_reg[15]_0 ;
  wire [0:0]\delay_element_reg[15]_1 ;
  wire [3:0]\delay_element_reg[7]_0 ;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[1] ;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [13:0]prod_0_0;
  wire [27:7]prod_0__0;
  wire prod_0_n_100;
  wire prod_0_n_101;
  wire prod_0_n_102;
  wire prod_0_n_103;
  wire prod_0_n_104;
  wire prod_0_n_105;
  wire prod_0_n_99;
  wire [13:0]prod_1_0;
  wire prod_1_n_100;
  wire prod_1_n_101;
  wire prod_1_n_102;
  wire prod_1_n_103;
  wire prod_1_n_104;
  wire prod_1_n_105;
  wire prod_1_n_99;
  wire [0:0]prod_rounded_clamped;
  wire prod_rounded_clamped_01;
  wire prod_rounded_clamped_01_carry_i_1_n_0;
  wire prod_rounded_clamped_01_carry_i_2_n_0;
  wire prod_rounded_clamped_01_carry_i_3_n_0;
  wire prod_rounded_clamped_01_carry_i_3_n_1;
  wire prod_rounded_clamped_01_carry_i_3_n_2;
  wire prod_rounded_clamped_01_carry_i_3_n_3;
  wire prod_rounded_clamped_01_carry_i_3_n_4;
  wire prod_rounded_clamped_01_carry_i_3_n_5;
  wire prod_rounded_clamped_01_carry_i_3_n_6;
  wire prod_rounded_clamped_01_carry_i_3_n_7;
  wire prod_rounded_clamped_01_carry_i_4_n_0;
  wire prod_rounded_clamped_01_carry_i_5_n_0;
  wire prod_rounded_clamped_01_carry_i_6_n_0;
  wire prod_rounded_clamped_01_carry_i_7_n_0;
  wire prod_rounded_clamped_01_carry_i_7_n_1;
  wire prod_rounded_clamped_01_carry_i_7_n_2;
  wire prod_rounded_clamped_01_carry_i_7_n_3;
  wire prod_rounded_clamped_01_carry_i_7_n_4;
  wire prod_rounded_clamped_01_carry_i_7_n_5;
  wire prod_rounded_clamped_01_carry_i_7_n_6;
  wire prod_rounded_clamped_01_carry_i_7_n_7;
  wire prod_rounded_clamped_01_carry_n_2;
  wire prod_rounded_clamped_01_carry_n_3;
  wire prod_rounded_clamped_02;
  wire prod_rounded_clamped_02_carry_i_1_n_0;
  wire prod_rounded_clamped_02_carry_i_2_n_0;
  wire prod_rounded_clamped_02_carry_i_3_n_0;
  wire prod_rounded_clamped_02_carry_i_4_n_0;
  wire prod_rounded_clamped_02_carry_i_5_n_0;
  wire prod_rounded_clamped_02_carry_i_6_n_0;
  wire prod_rounded_clamped_02_carry_i_7_n_1;
  wire prod_rounded_clamped_02_carry_i_7_n_2;
  wire prod_rounded_clamped_02_carry_i_7_n_3;
  wire prod_rounded_clamped_02_carry_i_7_n_4;
  wire prod_rounded_clamped_02_carry_i_7_n_5;
  wire prod_rounded_clamped_02_carry_i_7_n_6;
  wire prod_rounded_clamped_02_carry_i_7_n_7;
  wire prod_rounded_clamped_02_carry_n_2;
  wire prod_rounded_clamped_02_carry_n_3;
  wire [14:14]prod_rounded_clamped_1;
  wire prod_rounded_clamped_11;
  wire prod_rounded_clamped_11_carry_i_1__0_n_0;
  wire prod_rounded_clamped_11_carry_i_2__0_n_0;
  wire prod_rounded_clamped_11_carry_i_3__0_n_0;
  wire prod_rounded_clamped_11_carry_i_3__0_n_1;
  wire prod_rounded_clamped_11_carry_i_3__0_n_2;
  wire prod_rounded_clamped_11_carry_i_3__0_n_3;
  wire prod_rounded_clamped_11_carry_i_3__0_n_4;
  wire prod_rounded_clamped_11_carry_i_3__0_n_5;
  wire prod_rounded_clamped_11_carry_i_3__0_n_6;
  wire prod_rounded_clamped_11_carry_i_3__0_n_7;
  wire prod_rounded_clamped_11_carry_i_4__0_n_0;
  wire prod_rounded_clamped_11_carry_i_5__0_n_0;
  wire prod_rounded_clamped_11_carry_i_6__0_n_0;
  wire prod_rounded_clamped_11_carry_i_7_n_0;
  wire prod_rounded_clamped_11_carry_i_7_n_1;
  wire prod_rounded_clamped_11_carry_i_7_n_2;
  wire prod_rounded_clamped_11_carry_i_7_n_3;
  wire prod_rounded_clamped_11_carry_i_7_n_4;
  wire prod_rounded_clamped_11_carry_i_7_n_5;
  wire prod_rounded_clamped_11_carry_i_7_n_6;
  wire prod_rounded_clamped_11_carry_i_7_n_7;
  wire prod_rounded_clamped_11_carry_n_2;
  wire prod_rounded_clamped_11_carry_n_3;
  wire prod_rounded_clamped_12;
  wire prod_rounded_clamped_12_carry_i_1__0_n_0;
  wire prod_rounded_clamped_12_carry_i_2__0_n_0;
  wire prod_rounded_clamped_12_carry_i_3__0_n_0;
  wire prod_rounded_clamped_12_carry_i_4__0_n_0;
  wire prod_rounded_clamped_12_carry_i_5__0_n_0;
  wire prod_rounded_clamped_12_carry_i_6__0_n_0;
  wire prod_rounded_clamped_12_carry_i_7__0_n_1;
  wire prod_rounded_clamped_12_carry_i_7__0_n_2;
  wire prod_rounded_clamped_12_carry_i_7__0_n_3;
  wire prod_rounded_clamped_12_carry_i_7__0_n_4;
  wire prod_rounded_clamped_12_carry_i_7__0_n_5;
  wire prod_rounded_clamped_12_carry_i_7__0_n_6;
  wire prod_rounded_clamped_12_carry_i_7__0_n_7;
  wire prod_rounded_clamped_12_carry_n_2;
  wire prod_rounded_clamped_12_carry_n_3;
  wire [0:0]prod_rounded_clamped__31;
  wire [3:3]NLW_add_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_1_carry__2_CO_UNCONNECTED;
  wire NLW_prod_0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_0_OVERFLOW_UNCONNECTED;
  wire NLW_prod_0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_0_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_0_P_UNCONNECTED;
  wire [47:0]NLW_prod_0_PCOUT_UNCONNECTED;
  wire NLW_prod_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_1_OVERFLOW_UNCONNECTED;
  wire NLW_prod_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_1_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_1_P_UNCONNECTED;
  wire [47:0]NLW_prod_1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_i_7_CO_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_i_7__0_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry
       (.CI(1'b0),
        .CO({add_0_carry_n_0,add_0_carry_n_1,add_0_carry_n_2,add_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[3:0]),
        .O(\interconnet[1] [3:0]),
        .S({add_0_carry_i_1_n_0,add_0_carry_i_2_n_0,add_0_carry_i_3_n_0,add_0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0
       (.CI(add_0_carry_n_0),
        .CO({add_0_carry__0_n_0,add_0_carry__0_n_1,add_0_carry__0_n_2,add_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[7:4]),
        .O(\interconnet[1] [7:4]),
        .S({add_0_carry__0_i_1_n_0,add_0_carry__0_i_2_n_0,add_0_carry__0_i_3_n_0,add_0_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_1
       (.I0(add_0_carry__0_i_5_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[7]),
        .O(add_0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_2
       (.I0(add_0_carry__0_i_5_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[6]),
        .O(add_0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_3
       (.I0(add_0_carry__0_i_5_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[5]),
        .O(add_0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_4
       (.I0(add_0_carry__0_i_5_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[4]),
        .O(add_0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0_i_5
       (.CI(add_0_carry_i_5_n_0),
        .CO({add_0_carry__0_i_5_n_0,add_0_carry__0_i_5_n_1,add_0_carry__0_i_5_n_2,add_0_carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_0_carry__0_i_5_n_4,add_0_carry__0_i_5_n_5,add_0_carry__0_i_5_n_6,add_0_carry__0_i_5_n_7}),
        .S(prod_0__0[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__1
       (.CI(add_0_carry__0_n_0),
        .CO({add_0_carry__1_n_0,add_0_carry__1_n_1,add_0_carry__1_n_2,add_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[11:8]),
        .O(\interconnet[1] [11:8]),
        .S({add_0_carry__1_i_1_n_0,add_0_carry__1_i_2_n_0,add_0_carry__1_i_3_n_0,add_0_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_1
       (.I0(prod_rounded_clamped_01_carry_i_7_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[11]),
        .O(add_0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_2
       (.I0(prod_rounded_clamped_01_carry_i_7_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[10]),
        .O(add_0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_3
       (.I0(prod_rounded_clamped_01_carry_i_7_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[9]),
        .O(add_0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_4
       (.I0(prod_rounded_clamped_01_carry_i_7_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[8]),
        .O(add_0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__2
       (.CI(add_0_carry__1_n_0),
        .CO({NLW_add_0_carry__2_CO_UNCONNECTED[3],add_0_carry__2_n_1,add_0_carry__2_n_2,add_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_element[14:12]}),
        .O(\interconnet[1] [15:12]),
        .S({add_0_carry__2_i_1_n_0,add_0_carry__2_i_2_n_0,add_0_carry__2_i_3_n_0,add_0_carry__2_i_4_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_0_carry__2_i_1
       (.I0(prod_rounded_clamped_01),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01_carry_i_3_n_4),
        .I3(delay_element[15]),
        .O(add_0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_2
       (.I0(prod_rounded_clamped_01_carry_i_3_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[14]),
        .O(add_0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_3
       (.I0(prod_rounded_clamped_01_carry_i_3_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[13]),
        .O(add_0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_4
       (.I0(prod_rounded_clamped_01_carry_i_3_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[12]),
        .O(add_0_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_1
       (.I0(add_0_carry_i_5_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[3]),
        .O(add_0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_2
       (.I0(add_0_carry_i_5_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[2]),
        .O(add_0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_3
       (.I0(add_0_carry_i_5_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[1]),
        .O(add_0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_4
       (.I0(add_0_carry_i_5_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[0]),
        .O(add_0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry_i_5
       (.CI(1'b0),
        .CO({add_0_carry_i_5_n_0,add_0_carry_i_5_n_1,add_0_carry_i_5_n_2,add_0_carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_0__0[8]}),
        .O({add_0_carry_i_5_n_4,add_0_carry_i_5_n_5,add_0_carry_i_5_n_6,add_0_carry_i_5_n_7}),
        .S({prod_0__0[11:9],add_0_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_0_carry_i_6
       (.I0(prod_0__0[8]),
        .I1(prod_0__0[7]),
        .O(add_0_carry_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry
       (.CI(1'b0),
        .CO({add_1_carry_n_0,add_1_carry_n_1,add_1_carry_n_2,add_1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(prod_1_0[3:0]),
        .O(add_1[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0
       (.CI(add_1_carry_n_0),
        .CO({add_1_carry__0_n_0,add_1_carry__0_n_1,add_1_carry__0_n_2,add_1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(prod_1_0[7:4]),
        .O(add_1[7:4]),
        .S(\delay_element_reg[7]_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    add_1_carry__0_i_1
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(add_1_carry__0_i_9_n_4),
        .O(prod_1_0[7]));
  LUT3 #(
    .INIT(8'hBA)) 
    add_1_carry__0_i_2
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(add_1_carry__0_i_9_n_5),
        .O(prod_1_0[6]));
  LUT3 #(
    .INIT(8'hBA)) 
    add_1_carry__0_i_3
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(add_1_carry__0_i_9_n_6),
        .O(prod_1_0[5]));
  LUT3 #(
    .INIT(8'hBA)) 
    add_1_carry__0_i_4
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(add_1_carry__0_i_9_n_7),
        .O(prod_1_0[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0_i_9
       (.CI(add_1_carry_i_9_n_0),
        .CO({add_1_carry__0_i_9_n_0,add_1_carry__0_i_9_n_1,add_1_carry__0_i_9_n_2,add_1_carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_1_carry__0_i_9_n_4,add_1_carry__0_i_9_n_5,add_1_carry__0_i_9_n_6,add_1_carry__0_i_9_n_7}),
        .S(p_1_in[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__1
       (.CI(add_1_carry__0_n_0),
        .CO({add_1_carry__1_n_0,add_1_carry__1_n_1,add_1_carry__1_n_2,add_1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(prod_1_0[11:8]),
        .O(add_1[11:8]),
        .S(\delay_element_reg[11]_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    add_1_carry__1_i_1
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_7_n_4),
        .O(prod_1_0[11]));
  LUT3 #(
    .INIT(8'hBA)) 
    add_1_carry__1_i_2
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_7_n_5),
        .O(prod_1_0[10]));
  LUT3 #(
    .INIT(8'hBA)) 
    add_1_carry__1_i_3
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_7_n_6),
        .O(prod_1_0[9]));
  LUT3 #(
    .INIT(8'hBA)) 
    add_1_carry__1_i_4
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_7_n_7),
        .O(prod_1_0[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__2
       (.CI(add_1_carry__1_n_0),
        .CO({NLW_add_1_carry__2_CO_UNCONNECTED[3],add_1_carry__2_n_1,add_1_carry__2_n_2,add_1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_1,prod_1_0[13:12]}),
        .O(add_1[15:12]),
        .S({add_1_carry__2_i_4_n_0,add_1_carry__2_i_5_n_0,\delay_element_reg[15]_0 }));
  LUT3 #(
    .INIT(8'hBA)) 
    add_1_carry__2_i_1
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__0_n_5),
        .O(prod_rounded_clamped_1));
  LUT3 #(
    .INIT(8'hBA)) 
    add_1_carry__2_i_2
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__0_n_6),
        .O(prod_1_0[13]));
  LUT3 #(
    .INIT(8'hBA)) 
    add_1_carry__2_i_3
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__0_n_7),
        .O(prod_1_0[12]));
  LUT6 #(
    .INIT(64'h54AB54AB54AB5454)) 
    add_1_carry__2_i_4
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__0_n_4),
        .I3(\delay_element_reg[15]_1 ),
        .I4(CO),
        .I5(prod_rounded_clamped),
        .O(add_1_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h0D0D0D0DF2F20DF2)) 
    add_1_carry__2_i_5
       (.I0(prod_rounded_clamped_11_carry_i_3__0_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(prod_rounded_clamped__31),
        .I4(CO),
        .I5(\delay_element_reg[15]_1 ),
        .O(add_1_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    add_1_carry_i_1
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(add_1_carry_i_9_n_4),
        .O(prod_1_0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_1_carry_i_11
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_1_carry_i_11_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    add_1_carry_i_2
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(add_1_carry_i_9_n_5),
        .O(prod_1_0[2]));
  LUT3 #(
    .INIT(8'hBA)) 
    add_1_carry_i_3
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(add_1_carry_i_9_n_6),
        .O(prod_1_0[1]));
  LUT3 #(
    .INIT(8'hBA)) 
    add_1_carry_i_4
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(add_1_carry_i_9_n_7),
        .O(prod_1_0[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry_i_9
       (.CI(1'b0),
        .CO({add_1_carry_i_9_n_0,add_1_carry_i_9_n_1,add_1_carry_i_9_n_2,add_1_carry_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_1_carry_i_9_n_4,add_1_carry_i_9_n_5,add_1_carry_i_9_n_6,add_1_carry_i_9_n_7}),
        .S({p_1_in[3:1],add_1_carry_i_11_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[0]),
        .Q(delay_element[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[10]),
        .Q(delay_element[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[11]),
        .Q(delay_element[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[12]),
        .Q(delay_element[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[13]),
        .Q(delay_element[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[14]),
        .Q(delay_element[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[15]),
        .Q(delay_element[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[1]),
        .Q(delay_element[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[2]),
        .Q(delay_element[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[3]),
        .Q(delay_element[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[4]),
        .Q(delay_element[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[5]),
        .Q(delay_element[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[6]),
        .Q(delay_element[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[7]),
        .Q(delay_element[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[8]),
        .Q(delay_element[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[9]),
        .Q(delay_element[9]),
        .R(i_rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_0
       (.A({prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_0_P_UNCONNECTED[47:28],prod_0__0,prod_0_n_99,prod_0_n_100,prod_0_n_101,prod_0_n_102,prod_0_n_103,prod_0_n_104,prod_0_n_105}),
        .PATTERNBDETECT(NLW_prod_0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_1
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_1_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_1_n_99,prod_1_n_100,prod_1_n_101,prod_1_n_102,prod_1_n_103,prod_1_n_104,prod_1_n_105}),
        .PATTERNBDETECT(NLW_prod_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_1_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_01_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED[3],prod_rounded_clamped_01,prod_rounded_clamped_01_carry_n_2,prod_rounded_clamped_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_01_carry_i_1_n_0,prod_rounded_clamped_01_carry_i_2_n_0,prod_rounded_clamped_01_carry_i_3_n_4}),
        .O(NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_01_carry_i_4_n_0,prod_rounded_clamped_01_carry_i_5_n_0,prod_rounded_clamped_01_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_1
       (.I0(prod_rounded_clamped_02_carry_i_7_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7_n_4),
        .O(prod_rounded_clamped_01_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_01_carry_i_2
       (.I0(prod_rounded_clamped_02_carry_i_7_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7_n_6),
        .O(prod_rounded_clamped_01_carry_i_2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_3
       (.CI(prod_rounded_clamped_01_carry_i_7_n_0),
        .CO({prod_rounded_clamped_01_carry_i_3_n_0,prod_rounded_clamped_01_carry_i_3_n_1,prod_rounded_clamped_01_carry_i_3_n_2,prod_rounded_clamped_01_carry_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_3_n_4,prod_rounded_clamped_01_carry_i_3_n_5,prod_rounded_clamped_01_carry_i_3_n_6,prod_rounded_clamped_01_carry_i_3_n_7}),
        .S(prod_0__0[23:20]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_4
       (.I0(prod_rounded_clamped_02_carry_i_7_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7_n_4),
        .O(prod_rounded_clamped_01_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_5
       (.I0(prod_rounded_clamped_02_carry_i_7_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7_n_6),
        .O(prod_rounded_clamped_01_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_6
       (.I0(prod_rounded_clamped_01_carry_i_3_n_5),
        .I1(prod_rounded_clamped_01_carry_i_3_n_4),
        .O(prod_rounded_clamped_01_carry_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_7
       (.CI(add_0_carry__0_i_5_n_0),
        .CO({prod_rounded_clamped_01_carry_i_7_n_0,prod_rounded_clamped_01_carry_i_7_n_1,prod_rounded_clamped_01_carry_i_7_n_2,prod_rounded_clamped_01_carry_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_7_n_4,prod_rounded_clamped_01_carry_i_7_n_5,prod_rounded_clamped_01_carry_i_7_n_6,prod_rounded_clamped_01_carry_i_7_n_7}),
        .S(prod_0__0[19:16]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_02_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED[3],prod_rounded_clamped_02,prod_rounded_clamped_02_carry_n_2,prod_rounded_clamped_02_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_02_carry_i_1_n_0,prod_rounded_clamped_02_carry_i_2_n_0,prod_rounded_clamped_02_carry_i_3_n_0}),
        .O(NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_02_carry_i_4_n_0,prod_rounded_clamped_02_carry_i_5_n_0,prod_rounded_clamped_02_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_1
       (.I0(prod_rounded_clamped_02_carry_i_7_n_4),
        .I1(prod_rounded_clamped_02_carry_i_7_n_5),
        .O(prod_rounded_clamped_02_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_02_carry_i_2
       (.I0(prod_rounded_clamped_02_carry_i_7_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7_n_6),
        .O(prod_rounded_clamped_02_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_02_carry_i_3
       (.I0(prod_rounded_clamped_01_carry_i_3_n_4),
        .O(prod_rounded_clamped_02_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_4
       (.I0(prod_rounded_clamped_02_carry_i_7_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7_n_4),
        .O(prod_rounded_clamped_02_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_5
       (.I0(prod_rounded_clamped_02_carry_i_7_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7_n_6),
        .O(prod_rounded_clamped_02_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_6
       (.I0(prod_rounded_clamped_01_carry_i_3_n_4),
        .I1(prod_rounded_clamped_01_carry_i_3_n_5),
        .O(prod_rounded_clamped_02_carry_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_02_carry_i_7
       (.CI(prod_rounded_clamped_01_carry_i_3_n_0),
        .CO({NLW_prod_rounded_clamped_02_carry_i_7_CO_UNCONNECTED[3],prod_rounded_clamped_02_carry_i_7_n_1,prod_rounded_clamped_02_carry_i_7_n_2,prod_rounded_clamped_02_carry_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_02_carry_i_7_n_4,prod_rounded_clamped_02_carry_i_7_n_5,prod_rounded_clamped_02_carry_i_7_n_6,prod_rounded_clamped_02_carry_i_7_n_7}),
        .S(prod_0__0[27:24]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_11_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED[3],prod_rounded_clamped_11,prod_rounded_clamped_11_carry_n_2,prod_rounded_clamped_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_11_carry_i_1__0_n_0,prod_rounded_clamped_11_carry_i_2__0_n_0,prod_rounded_clamped_11_carry_i_3__0_n_4}),
        .O(NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_11_carry_i_4__0_n_0,prod_rounded_clamped_11_carry_i_5__0_n_0,prod_rounded_clamped_11_carry_i_6__0_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_1__0
       (.I0(prod_rounded_clamped_12_carry_i_7__0_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__0_n_4),
        .O(prod_rounded_clamped_11_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_11_carry_i_2__0
       (.I0(prod_rounded_clamped_12_carry_i_7__0_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__0_n_6),
        .O(prod_rounded_clamped_11_carry_i_2__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_3__0
       (.CI(prod_rounded_clamped_11_carry_i_7_n_0),
        .CO({prod_rounded_clamped_11_carry_i_3__0_n_0,prod_rounded_clamped_11_carry_i_3__0_n_1,prod_rounded_clamped_11_carry_i_3__0_n_2,prod_rounded_clamped_11_carry_i_3__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_3__0_n_4,prod_rounded_clamped_11_carry_i_3__0_n_5,prod_rounded_clamped_11_carry_i_3__0_n_6,prod_rounded_clamped_11_carry_i_3__0_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_4__0
       (.I0(prod_rounded_clamped_12_carry_i_7__0_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__0_n_4),
        .O(prod_rounded_clamped_11_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_5__0
       (.I0(prod_rounded_clamped_12_carry_i_7__0_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__0_n_6),
        .O(prod_rounded_clamped_11_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_6__0
       (.I0(prod_rounded_clamped_11_carry_i_3__0_n_5),
        .I1(prod_rounded_clamped_11_carry_i_3__0_n_4),
        .O(prod_rounded_clamped_11_carry_i_6__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_7
       (.CI(add_1_carry__0_i_9_n_0),
        .CO({prod_rounded_clamped_11_carry_i_7_n_0,prod_rounded_clamped_11_carry_i_7_n_1,prod_rounded_clamped_11_carry_i_7_n_2,prod_rounded_clamped_11_carry_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_7_n_4,prod_rounded_clamped_11_carry_i_7_n_5,prod_rounded_clamped_11_carry_i_7_n_6,prod_rounded_clamped_11_carry_i_7_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_12_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED[3],prod_rounded_clamped_12,prod_rounded_clamped_12_carry_n_2,prod_rounded_clamped_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_12_carry_i_1__0_n_0,prod_rounded_clamped_12_carry_i_2__0_n_0,prod_rounded_clamped_12_carry_i_3__0_n_0}),
        .O(NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_12_carry_i_4__0_n_0,prod_rounded_clamped_12_carry_i_5__0_n_0,prod_rounded_clamped_12_carry_i_6__0_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_1__0
       (.I0(prod_rounded_clamped_12_carry_i_7__0_n_4),
        .I1(prod_rounded_clamped_12_carry_i_7__0_n_5),
        .O(prod_rounded_clamped_12_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_12_carry_i_2__0
       (.I0(prod_rounded_clamped_12_carry_i_7__0_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__0_n_6),
        .O(prod_rounded_clamped_12_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_12_carry_i_3__0
       (.I0(prod_rounded_clamped_11_carry_i_3__0_n_4),
        .O(prod_rounded_clamped_12_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_4__0
       (.I0(prod_rounded_clamped_12_carry_i_7__0_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__0_n_4),
        .O(prod_rounded_clamped_12_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_5__0
       (.I0(prod_rounded_clamped_12_carry_i_7__0_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__0_n_6),
        .O(prod_rounded_clamped_12_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_6__0
       (.I0(prod_rounded_clamped_11_carry_i_3__0_n_4),
        .I1(prod_rounded_clamped_11_carry_i_3__0_n_5),
        .O(prod_rounded_clamped_12_carry_i_6__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_12_carry_i_7__0
       (.CI(prod_rounded_clamped_11_carry_i_3__0_n_0),
        .CO({NLW_prod_rounded_clamped_12_carry_i_7__0_CO_UNCONNECTED[3],prod_rounded_clamped_12_carry_i_7__0_n_1,prod_rounded_clamped_12_carry_i_7__0_n_2,prod_rounded_clamped_12_carry_i_7__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_12_carry_i_7__0_n_4,prod_rounded_clamped_12_carry_i_7__0_n_5,prod_rounded_clamped_12_carry_i_7__0_n_6,prod_rounded_clamped_12_carry_i_7__0_n_7}),
        .S(p_1_in[19:16]));
endmodule

(* ORIG_REF_NAME = "FIR_subblock_parallel" *) 
module FIR_subblock_parallel_9
   (\interconnet[2] ,
    clk_IBUF_BUFG,
    i_rst_IBUF,
    A,
    prod_0_0,
    \interconnet[1] );
  output [15:0]\interconnet[2] ;
  input clk_IBUF_BUFG;
  input i_rst_IBUF;
  input [13:0]A;
  input [13:0]prod_0_0;
  input [15:0]\interconnet[1] ;

  wire [13:0]A;
  wire add_0_carry__0_i_1__0_n_0;
  wire add_0_carry__0_i_2__0_n_0;
  wire add_0_carry__0_i_3__0_n_0;
  wire add_0_carry__0_i_4__0_n_0;
  wire add_0_carry__0_i_5__0_n_0;
  wire add_0_carry__0_i_5__0_n_1;
  wire add_0_carry__0_i_5__0_n_2;
  wire add_0_carry__0_i_5__0_n_3;
  wire add_0_carry__0_i_5__0_n_4;
  wire add_0_carry__0_i_5__0_n_5;
  wire add_0_carry__0_i_5__0_n_6;
  wire add_0_carry__0_i_5__0_n_7;
  wire add_0_carry__0_n_0;
  wire add_0_carry__0_n_1;
  wire add_0_carry__0_n_2;
  wire add_0_carry__0_n_3;
  wire add_0_carry__1_i_1__0_n_0;
  wire add_0_carry__1_i_2__0_n_0;
  wire add_0_carry__1_i_3__0_n_0;
  wire add_0_carry__1_i_4__0_n_0;
  wire add_0_carry__1_n_0;
  wire add_0_carry__1_n_1;
  wire add_0_carry__1_n_2;
  wire add_0_carry__1_n_3;
  wire add_0_carry__2_i_1__0_n_0;
  wire add_0_carry__2_i_2__0_n_0;
  wire add_0_carry__2_i_3__0_n_0;
  wire add_0_carry__2_i_4__0_n_0;
  wire add_0_carry__2_n_1;
  wire add_0_carry__2_n_2;
  wire add_0_carry__2_n_3;
  wire add_0_carry_i_1__0_n_0;
  wire add_0_carry_i_2__0_n_0;
  wire add_0_carry_i_3__0_n_0;
  wire add_0_carry_i_4__0_n_0;
  wire add_0_carry_i_5__0_n_0;
  wire add_0_carry_i_5__0_n_1;
  wire add_0_carry_i_5__0_n_2;
  wire add_0_carry_i_5__0_n_3;
  wire add_0_carry_i_5__0_n_4;
  wire add_0_carry_i_5__0_n_5;
  wire add_0_carry_i_5__0_n_6;
  wire add_0_carry_i_5__0_n_7;
  wire add_0_carry_i_6__0_n_0;
  wire add_0_carry_n_0;
  wire add_0_carry_n_1;
  wire add_0_carry_n_2;
  wire add_0_carry_n_3;
  wire [15:0]add_1;
  wire add_1_carry__0_i_1__0_n_0;
  wire add_1_carry__0_i_2__0_n_0;
  wire add_1_carry__0_i_3__0_n_0;
  wire add_1_carry__0_i_4__0_n_0;
  wire add_1_carry__0_i_5__0_n_0;
  wire add_1_carry__0_i_5__0_n_1;
  wire add_1_carry__0_i_5__0_n_2;
  wire add_1_carry__0_i_5__0_n_3;
  wire add_1_carry__0_i_5__0_n_4;
  wire add_1_carry__0_i_5__0_n_5;
  wire add_1_carry__0_i_5__0_n_6;
  wire add_1_carry__0_i_5__0_n_7;
  wire add_1_carry__0_n_0;
  wire add_1_carry__0_n_1;
  wire add_1_carry__0_n_2;
  wire add_1_carry__0_n_3;
  wire add_1_carry__1_i_1__0_n_0;
  wire add_1_carry__1_i_2__0_n_0;
  wire add_1_carry__1_i_3__0_n_0;
  wire add_1_carry__1_i_4__0_n_0;
  wire add_1_carry__1_n_0;
  wire add_1_carry__1_n_1;
  wire add_1_carry__1_n_2;
  wire add_1_carry__1_n_3;
  wire add_1_carry__2_i_1__0_n_0;
  wire add_1_carry__2_i_2__0_n_0;
  wire add_1_carry__2_i_3__0_n_0;
  wire add_1_carry__2_i_4__0_n_0;
  wire add_1_carry__2_n_1;
  wire add_1_carry__2_n_2;
  wire add_1_carry__2_n_3;
  wire add_1_carry_i_1__0_n_0;
  wire add_1_carry_i_2__0_n_0;
  wire add_1_carry_i_3__0_n_0;
  wire add_1_carry_i_4__0_n_0;
  wire add_1_carry_i_5__0_n_0;
  wire add_1_carry_i_5__0_n_1;
  wire add_1_carry_i_5__0_n_2;
  wire add_1_carry_i_5__0_n_3;
  wire add_1_carry_i_5__0_n_4;
  wire add_1_carry_i_5__0_n_5;
  wire add_1_carry_i_5__0_n_6;
  wire add_1_carry_i_5__0_n_7;
  wire add_1_carry_i_6__0_n_0;
  wire add_1_carry_n_0;
  wire add_1_carry_n_1;
  wire add_1_carry_n_2;
  wire add_1_carry_n_3;
  wire clk_IBUF_BUFG;
  wire [15:0]delay_element;
  wire i_rst_IBUF;
  wire [15:0]\interconnet[1] ;
  wire [15:0]\interconnet[2] ;
  wire p_0_in;
  wire [19:0]p_1_in;
  wire [13:0]prod_0_0;
  wire [27:7]prod_0__0;
  wire prod_0_n_100;
  wire prod_0_n_101;
  wire prod_0_n_102;
  wire prod_0_n_103;
  wire prod_0_n_104;
  wire prod_0_n_105;
  wire prod_0_n_99;
  wire prod_1_n_100;
  wire prod_1_n_101;
  wire prod_1_n_102;
  wire prod_1_n_103;
  wire prod_1_n_104;
  wire prod_1_n_105;
  wire prod_1_n_99;
  wire prod_rounded_clamped_01;
  wire prod_rounded_clamped_01_carry_i_1__0_n_0;
  wire prod_rounded_clamped_01_carry_i_2__0_n_0;
  wire prod_rounded_clamped_01_carry_i_3__0_n_0;
  wire prod_rounded_clamped_01_carry_i_3__0_n_1;
  wire prod_rounded_clamped_01_carry_i_3__0_n_2;
  wire prod_rounded_clamped_01_carry_i_3__0_n_3;
  wire prod_rounded_clamped_01_carry_i_3__0_n_4;
  wire prod_rounded_clamped_01_carry_i_3__0_n_5;
  wire prod_rounded_clamped_01_carry_i_3__0_n_6;
  wire prod_rounded_clamped_01_carry_i_3__0_n_7;
  wire prod_rounded_clamped_01_carry_i_4__0_n_0;
  wire prod_rounded_clamped_01_carry_i_5__0_n_0;
  wire prod_rounded_clamped_01_carry_i_6__0_n_0;
  wire prod_rounded_clamped_01_carry_i_7__0_n_0;
  wire prod_rounded_clamped_01_carry_i_7__0_n_1;
  wire prod_rounded_clamped_01_carry_i_7__0_n_2;
  wire prod_rounded_clamped_01_carry_i_7__0_n_3;
  wire prod_rounded_clamped_01_carry_i_7__0_n_4;
  wire prod_rounded_clamped_01_carry_i_7__0_n_5;
  wire prod_rounded_clamped_01_carry_i_7__0_n_6;
  wire prod_rounded_clamped_01_carry_i_7__0_n_7;
  wire prod_rounded_clamped_01_carry_n_2;
  wire prod_rounded_clamped_01_carry_n_3;
  wire prod_rounded_clamped_02;
  wire prod_rounded_clamped_02_carry_i_1__0_n_0;
  wire prod_rounded_clamped_02_carry_i_2__0_n_0;
  wire prod_rounded_clamped_02_carry_i_3__0_n_0;
  wire prod_rounded_clamped_02_carry_i_4__0_n_0;
  wire prod_rounded_clamped_02_carry_i_5__0_n_0;
  wire prod_rounded_clamped_02_carry_i_6__0_n_0;
  wire prod_rounded_clamped_02_carry_i_7__0_n_1;
  wire prod_rounded_clamped_02_carry_i_7__0_n_2;
  wire prod_rounded_clamped_02_carry_i_7__0_n_3;
  wire prod_rounded_clamped_02_carry_i_7__0_n_4;
  wire prod_rounded_clamped_02_carry_i_7__0_n_5;
  wire prod_rounded_clamped_02_carry_i_7__0_n_6;
  wire prod_rounded_clamped_02_carry_i_7__0_n_7;
  wire prod_rounded_clamped_02_carry_n_2;
  wire prod_rounded_clamped_02_carry_n_3;
  wire prod_rounded_clamped_11;
  wire prod_rounded_clamped_11_carry_i_1__1_n_0;
  wire prod_rounded_clamped_11_carry_i_2__1_n_0;
  wire prod_rounded_clamped_11_carry_i_3__1_n_0;
  wire prod_rounded_clamped_11_carry_i_3__1_n_1;
  wire prod_rounded_clamped_11_carry_i_3__1_n_2;
  wire prod_rounded_clamped_11_carry_i_3__1_n_3;
  wire prod_rounded_clamped_11_carry_i_3__1_n_4;
  wire prod_rounded_clamped_11_carry_i_3__1_n_5;
  wire prod_rounded_clamped_11_carry_i_3__1_n_6;
  wire prod_rounded_clamped_11_carry_i_3__1_n_7;
  wire prod_rounded_clamped_11_carry_i_4__1_n_0;
  wire prod_rounded_clamped_11_carry_i_5__1_n_0;
  wire prod_rounded_clamped_11_carry_i_6__1_n_0;
  wire prod_rounded_clamped_11_carry_i_7__0_n_0;
  wire prod_rounded_clamped_11_carry_i_7__0_n_1;
  wire prod_rounded_clamped_11_carry_i_7__0_n_2;
  wire prod_rounded_clamped_11_carry_i_7__0_n_3;
  wire prod_rounded_clamped_11_carry_i_7__0_n_4;
  wire prod_rounded_clamped_11_carry_i_7__0_n_5;
  wire prod_rounded_clamped_11_carry_i_7__0_n_6;
  wire prod_rounded_clamped_11_carry_i_7__0_n_7;
  wire prod_rounded_clamped_11_carry_n_2;
  wire prod_rounded_clamped_11_carry_n_3;
  wire prod_rounded_clamped_12;
  wire prod_rounded_clamped_12_carry_i_1__1_n_0;
  wire prod_rounded_clamped_12_carry_i_2__1_n_0;
  wire prod_rounded_clamped_12_carry_i_3__1_n_0;
  wire prod_rounded_clamped_12_carry_i_4__1_n_0;
  wire prod_rounded_clamped_12_carry_i_5__1_n_0;
  wire prod_rounded_clamped_12_carry_i_6__1_n_0;
  wire prod_rounded_clamped_12_carry_i_7__1_n_1;
  wire prod_rounded_clamped_12_carry_i_7__1_n_2;
  wire prod_rounded_clamped_12_carry_i_7__1_n_3;
  wire prod_rounded_clamped_12_carry_i_7__1_n_4;
  wire prod_rounded_clamped_12_carry_i_7__1_n_5;
  wire prod_rounded_clamped_12_carry_i_7__1_n_6;
  wire prod_rounded_clamped_12_carry_i_7__1_n_7;
  wire prod_rounded_clamped_12_carry_n_2;
  wire prod_rounded_clamped_12_carry_n_3;
  wire [3:3]NLW_add_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_1_carry__2_CO_UNCONNECTED;
  wire NLW_prod_0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_0_OVERFLOW_UNCONNECTED;
  wire NLW_prod_0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_0_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_0_P_UNCONNECTED;
  wire [47:0]NLW_prod_0_PCOUT_UNCONNECTED;
  wire NLW_prod_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_1_OVERFLOW_UNCONNECTED;
  wire NLW_prod_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_1_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_prod_1_P_UNCONNECTED;
  wire [47:0]NLW_prod_1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_02_carry_i_7__0_CO_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_prod_rounded_clamped_12_carry_i_7__1_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry
       (.CI(1'b0),
        .CO({add_0_carry_n_0,add_0_carry_n_1,add_0_carry_n_2,add_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[3:0]),
        .O(\interconnet[2] [3:0]),
        .S({add_0_carry_i_1__0_n_0,add_0_carry_i_2__0_n_0,add_0_carry_i_3__0_n_0,add_0_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0
       (.CI(add_0_carry_n_0),
        .CO({add_0_carry__0_n_0,add_0_carry__0_n_1,add_0_carry__0_n_2,add_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[7:4]),
        .O(\interconnet[2] [7:4]),
        .S({add_0_carry__0_i_1__0_n_0,add_0_carry__0_i_2__0_n_0,add_0_carry__0_i_3__0_n_0,add_0_carry__0_i_4__0_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_1__0
       (.I0(add_0_carry__0_i_5__0_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[7]),
        .O(add_0_carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_2__0
       (.I0(add_0_carry__0_i_5__0_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[6]),
        .O(add_0_carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_3__0
       (.I0(add_0_carry__0_i_5__0_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[5]),
        .O(add_0_carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__0_i_4__0
       (.I0(add_0_carry__0_i_5__0_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[4]),
        .O(add_0_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__0_i_5__0
       (.CI(add_0_carry_i_5__0_n_0),
        .CO({add_0_carry__0_i_5__0_n_0,add_0_carry__0_i_5__0_n_1,add_0_carry__0_i_5__0_n_2,add_0_carry__0_i_5__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_0_carry__0_i_5__0_n_4,add_0_carry__0_i_5__0_n_5,add_0_carry__0_i_5__0_n_6,add_0_carry__0_i_5__0_n_7}),
        .S(prod_0__0[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__1
       (.CI(add_0_carry__0_n_0),
        .CO({add_0_carry__1_n_0,add_0_carry__1_n_1,add_0_carry__1_n_2,add_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delay_element[11:8]),
        .O(\interconnet[2] [11:8]),
        .S({add_0_carry__1_i_1__0_n_0,add_0_carry__1_i_2__0_n_0,add_0_carry__1_i_3__0_n_0,add_0_carry__1_i_4__0_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_1__0
       (.I0(prod_rounded_clamped_01_carry_i_7__0_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[11]),
        .O(add_0_carry__1_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_2__0
       (.I0(prod_rounded_clamped_01_carry_i_7__0_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[10]),
        .O(add_0_carry__1_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_3__0
       (.I0(prod_rounded_clamped_01_carry_i_7__0_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[9]),
        .O(add_0_carry__1_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__1_i_4__0
       (.I0(prod_rounded_clamped_01_carry_i_7__0_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[8]),
        .O(add_0_carry__1_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry__2
       (.CI(add_0_carry__1_n_0),
        .CO({NLW_add_0_carry__2_CO_UNCONNECTED[3],add_0_carry__2_n_1,add_0_carry__2_n_2,add_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,delay_element[14:12]}),
        .O(\interconnet[2] [15:12]),
        .S({add_0_carry__2_i_1__0_n_0,add_0_carry__2_i_2__0_n_0,add_0_carry__2_i_3__0_n_0,add_0_carry__2_i_4__0_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_0_carry__2_i_1__0
       (.I0(prod_rounded_clamped_01),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01_carry_i_3__0_n_4),
        .I3(delay_element[15]),
        .O(add_0_carry__2_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_2__0
       (.I0(prod_rounded_clamped_01_carry_i_3__0_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[14]),
        .O(add_0_carry__2_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_3__0
       (.I0(prod_rounded_clamped_01_carry_i_3__0_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[13]),
        .O(add_0_carry__2_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry__2_i_4__0
       (.I0(prod_rounded_clamped_01_carry_i_3__0_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[12]),
        .O(add_0_carry__2_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_1__0
       (.I0(add_0_carry_i_5__0_n_4),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[3]),
        .O(add_0_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_2__0
       (.I0(add_0_carry_i_5__0_n_5),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[2]),
        .O(add_0_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_3__0
       (.I0(add_0_carry_i_5__0_n_6),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[1]),
        .O(add_0_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_0_carry_i_4__0
       (.I0(add_0_carry_i_5__0_n_7),
        .I1(prod_rounded_clamped_02),
        .I2(prod_rounded_clamped_01),
        .I3(delay_element[0]),
        .O(add_0_carry_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_0_carry_i_5__0
       (.CI(1'b0),
        .CO({add_0_carry_i_5__0_n_0,add_0_carry_i_5__0_n_1,add_0_carry_i_5__0_n_2,add_0_carry_i_5__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,prod_0__0[8]}),
        .O({add_0_carry_i_5__0_n_4,add_0_carry_i_5__0_n_5,add_0_carry_i_5__0_n_6,add_0_carry_i_5__0_n_7}),
        .S({prod_0__0[11:9],add_0_carry_i_6__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_0_carry_i_6__0
       (.I0(prod_0__0[8]),
        .I1(prod_0__0[7]),
        .O(add_0_carry_i_6__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry
       (.CI(1'b0),
        .CO({add_1_carry_n_0,add_1_carry_n_1,add_1_carry_n_2,add_1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[1] [3:0]),
        .O(add_1[3:0]),
        .S({add_1_carry_i_1__0_n_0,add_1_carry_i_2__0_n_0,add_1_carry_i_3__0_n_0,add_1_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0
       (.CI(add_1_carry_n_0),
        .CO({add_1_carry__0_n_0,add_1_carry__0_n_1,add_1_carry__0_n_2,add_1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[1] [7:4]),
        .O(add_1[7:4]),
        .S({add_1_carry__0_i_1__0_n_0,add_1_carry__0_i_2__0_n_0,add_1_carry__0_i_3__0_n_0,add_1_carry__0_i_4__0_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_1__0
       (.I0(add_1_carry__0_i_5__0_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[1] [7]),
        .O(add_1_carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_2__0
       (.I0(add_1_carry__0_i_5__0_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[1] [6]),
        .O(add_1_carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_3__0
       (.I0(add_1_carry__0_i_5__0_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[1] [5]),
        .O(add_1_carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__0_i_4__0
       (.I0(add_1_carry__0_i_5__0_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[1] [4]),
        .O(add_1_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__0_i_5__0
       (.CI(add_1_carry_i_5__0_n_0),
        .CO({add_1_carry__0_i_5__0_n_0,add_1_carry__0_i_5__0_n_1,add_1_carry__0_i_5__0_n_2,add_1_carry__0_i_5__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({add_1_carry__0_i_5__0_n_4,add_1_carry__0_i_5__0_n_5,add_1_carry__0_i_5__0_n_6,add_1_carry__0_i_5__0_n_7}),
        .S(p_1_in[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__1
       (.CI(add_1_carry__0_n_0),
        .CO({add_1_carry__1_n_0,add_1_carry__1_n_1,add_1_carry__1_n_2,add_1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\interconnet[1] [11:8]),
        .O(add_1[11:8]),
        .S({add_1_carry__1_i_1__0_n_0,add_1_carry__1_i_2__0_n_0,add_1_carry__1_i_3__0_n_0,add_1_carry__1_i_4__0_n_0}));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_1__0
       (.I0(prod_rounded_clamped_11_carry_i_7__0_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[1] [11]),
        .O(add_1_carry__1_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_2__0
       (.I0(prod_rounded_clamped_11_carry_i_7__0_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[1] [10]),
        .O(add_1_carry__1_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_3__0
       (.I0(prod_rounded_clamped_11_carry_i_7__0_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[1] [9]),
        .O(add_1_carry__1_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__1_i_4__0
       (.I0(prod_rounded_clamped_11_carry_i_7__0_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[1] [8]),
        .O(add_1_carry__1_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry__2
       (.CI(add_1_carry__1_n_0),
        .CO({NLW_add_1_carry__2_CO_UNCONNECTED[3],add_1_carry__2_n_1,add_1_carry__2_n_2,add_1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\interconnet[1] [14:12]}),
        .O(add_1[15:12]),
        .S({add_1_carry__2_i_1__0_n_0,add_1_carry__2_i_2__0_n_0,add_1_carry__2_i_3__0_n_0,add_1_carry__2_i_4__0_n_0}));
  LUT4 #(
    .INIT(16'hAB54)) 
    add_1_carry__2_i_1__0
       (.I0(prod_rounded_clamped_11),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11_carry_i_3__1_n_4),
        .I3(\interconnet[1] [15]),
        .O(add_1_carry__2_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_2__0
       (.I0(prod_rounded_clamped_11_carry_i_3__1_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[1] [14]),
        .O(add_1_carry__2_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_3__0
       (.I0(prod_rounded_clamped_11_carry_i_3__1_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[1] [13]),
        .O(add_1_carry__2_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry__2_i_4__0
       (.I0(prod_rounded_clamped_11_carry_i_3__1_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[1] [12]),
        .O(add_1_carry__2_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_1__0
       (.I0(add_1_carry_i_5__0_n_4),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[1] [3]),
        .O(add_1_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_2__0
       (.I0(add_1_carry_i_5__0_n_5),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[1] [2]),
        .O(add_1_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_3__0
       (.I0(add_1_carry_i_5__0_n_6),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[1] [1]),
        .O(add_1_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h0DF2)) 
    add_1_carry_i_4__0
       (.I0(add_1_carry_i_5__0_n_7),
        .I1(prod_rounded_clamped_12),
        .I2(prod_rounded_clamped_11),
        .I3(\interconnet[1] [0]),
        .O(add_1_carry_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_1_carry_i_5__0
       (.CI(1'b0),
        .CO({add_1_carry_i_5__0_n_0,add_1_carry_i_5__0_n_1,add_1_carry_i_5__0_n_2,add_1_carry_i_5__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({add_1_carry_i_5__0_n_4,add_1_carry_i_5__0_n_5,add_1_carry_i_5__0_n_6,add_1_carry_i_5__0_n_7}),
        .S({p_1_in[3:1],add_1_carry_i_6__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_1_carry_i_6__0
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(add_1_carry_i_6__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[0]),
        .Q(delay_element[0]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[10]),
        .Q(delay_element[10]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[11]),
        .Q(delay_element[11]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[12]),
        .Q(delay_element[12]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[13]),
        .Q(delay_element[13]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[14]),
        .Q(delay_element[14]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[15]),
        .Q(delay_element[15]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[1]),
        .Q(delay_element[1]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[2]),
        .Q(delay_element[2]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[3]),
        .Q(delay_element[3]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[4]),
        .Q(delay_element[4]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[5]),
        .Q(delay_element[5]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[6]),
        .Q(delay_element[6]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[7]),
        .Q(delay_element[7]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[8]),
        .Q(delay_element[8]),
        .R(i_rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delay_element_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(add_1[9]),
        .Q(delay_element[9]),
        .R(i_rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_0
       (.A({prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0[13],prod_0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_0_P_UNCONNECTED[47:28],prod_0__0,prod_0_n_99,prod_0_n_100,prod_0_n_101,prod_0_n_102,prod_0_n_103,prod_0_n_104,prod_0_n_105}),
        .PATTERNBDETECT(NLW_prod_0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod_1
       (.A({A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A[13],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod_1_P_UNCONNECTED[47:28],p_1_in,p_0_in,prod_1_n_99,prod_1_n_100,prod_1_n_101,prod_1_n_102,prod_1_n_103,prod_1_n_104,prod_1_n_105}),
        .PATTERNBDETECT(NLW_prod_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(i_rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_1_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_01_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_01_carry_CO_UNCONNECTED[3],prod_rounded_clamped_01,prod_rounded_clamped_01_carry_n_2,prod_rounded_clamped_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_01_carry_i_1__0_n_0,prod_rounded_clamped_01_carry_i_2__0_n_0,prod_rounded_clamped_01_carry_i_3__0_n_4}),
        .O(NLW_prod_rounded_clamped_01_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_01_carry_i_4__0_n_0,prod_rounded_clamped_01_carry_i_5__0_n_0,prod_rounded_clamped_01_carry_i_6__0_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_1__0
       (.I0(prod_rounded_clamped_02_carry_i_7__0_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__0_n_4),
        .O(prod_rounded_clamped_01_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_01_carry_i_2__0
       (.I0(prod_rounded_clamped_02_carry_i_7__0_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__0_n_6),
        .O(prod_rounded_clamped_01_carry_i_2__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_3__0
       (.CI(prod_rounded_clamped_01_carry_i_7__0_n_0),
        .CO({prod_rounded_clamped_01_carry_i_3__0_n_0,prod_rounded_clamped_01_carry_i_3__0_n_1,prod_rounded_clamped_01_carry_i_3__0_n_2,prod_rounded_clamped_01_carry_i_3__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_3__0_n_4,prod_rounded_clamped_01_carry_i_3__0_n_5,prod_rounded_clamped_01_carry_i_3__0_n_6,prod_rounded_clamped_01_carry_i_3__0_n_7}),
        .S(prod_0__0[23:20]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_4__0
       (.I0(prod_rounded_clamped_02_carry_i_7__0_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__0_n_4),
        .O(prod_rounded_clamped_01_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_01_carry_i_5__0
       (.I0(prod_rounded_clamped_02_carry_i_7__0_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__0_n_6),
        .O(prod_rounded_clamped_01_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_01_carry_i_6__0
       (.I0(prod_rounded_clamped_01_carry_i_3__0_n_5),
        .I1(prod_rounded_clamped_01_carry_i_3__0_n_4),
        .O(prod_rounded_clamped_01_carry_i_6__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_01_carry_i_7__0
       (.CI(add_0_carry__0_i_5__0_n_0),
        .CO({prod_rounded_clamped_01_carry_i_7__0_n_0,prod_rounded_clamped_01_carry_i_7__0_n_1,prod_rounded_clamped_01_carry_i_7__0_n_2,prod_rounded_clamped_01_carry_i_7__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_01_carry_i_7__0_n_4,prod_rounded_clamped_01_carry_i_7__0_n_5,prod_rounded_clamped_01_carry_i_7__0_n_6,prod_rounded_clamped_01_carry_i_7__0_n_7}),
        .S(prod_0__0[19:16]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_02_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_02_carry_CO_UNCONNECTED[3],prod_rounded_clamped_02,prod_rounded_clamped_02_carry_n_2,prod_rounded_clamped_02_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_02_carry_i_1__0_n_0,prod_rounded_clamped_02_carry_i_2__0_n_0,prod_rounded_clamped_02_carry_i_3__0_n_0}),
        .O(NLW_prod_rounded_clamped_02_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_02_carry_i_4__0_n_0,prod_rounded_clamped_02_carry_i_5__0_n_0,prod_rounded_clamped_02_carry_i_6__0_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_1__0
       (.I0(prod_rounded_clamped_02_carry_i_7__0_n_4),
        .I1(prod_rounded_clamped_02_carry_i_7__0_n_5),
        .O(prod_rounded_clamped_02_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_02_carry_i_2__0
       (.I0(prod_rounded_clamped_02_carry_i_7__0_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__0_n_6),
        .O(prod_rounded_clamped_02_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_02_carry_i_3__0
       (.I0(prod_rounded_clamped_01_carry_i_3__0_n_4),
        .O(prod_rounded_clamped_02_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_4__0
       (.I0(prod_rounded_clamped_02_carry_i_7__0_n_5),
        .I1(prod_rounded_clamped_02_carry_i_7__0_n_4),
        .O(prod_rounded_clamped_02_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_02_carry_i_5__0
       (.I0(prod_rounded_clamped_02_carry_i_7__0_n_7),
        .I1(prod_rounded_clamped_02_carry_i_7__0_n_6),
        .O(prod_rounded_clamped_02_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_02_carry_i_6__0
       (.I0(prod_rounded_clamped_01_carry_i_3__0_n_4),
        .I1(prod_rounded_clamped_01_carry_i_3__0_n_5),
        .O(prod_rounded_clamped_02_carry_i_6__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_02_carry_i_7__0
       (.CI(prod_rounded_clamped_01_carry_i_3__0_n_0),
        .CO({NLW_prod_rounded_clamped_02_carry_i_7__0_CO_UNCONNECTED[3],prod_rounded_clamped_02_carry_i_7__0_n_1,prod_rounded_clamped_02_carry_i_7__0_n_2,prod_rounded_clamped_02_carry_i_7__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_02_carry_i_7__0_n_4,prod_rounded_clamped_02_carry_i_7__0_n_5,prod_rounded_clamped_02_carry_i_7__0_n_6,prod_rounded_clamped_02_carry_i_7__0_n_7}),
        .S(prod_0__0[27:24]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_11_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_11_carry_CO_UNCONNECTED[3],prod_rounded_clamped_11,prod_rounded_clamped_11_carry_n_2,prod_rounded_clamped_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_11_carry_i_1__1_n_0,prod_rounded_clamped_11_carry_i_2__1_n_0,prod_rounded_clamped_11_carry_i_3__1_n_4}),
        .O(NLW_prod_rounded_clamped_11_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_11_carry_i_4__1_n_0,prod_rounded_clamped_11_carry_i_5__1_n_0,prod_rounded_clamped_11_carry_i_6__1_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_1__1
       (.I0(prod_rounded_clamped_12_carry_i_7__1_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__1_n_4),
        .O(prod_rounded_clamped_11_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    prod_rounded_clamped_11_carry_i_2__1
       (.I0(prod_rounded_clamped_12_carry_i_7__1_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__1_n_6),
        .O(prod_rounded_clamped_11_carry_i_2__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_3__1
       (.CI(prod_rounded_clamped_11_carry_i_7__0_n_0),
        .CO({prod_rounded_clamped_11_carry_i_3__1_n_0,prod_rounded_clamped_11_carry_i_3__1_n_1,prod_rounded_clamped_11_carry_i_3__1_n_2,prod_rounded_clamped_11_carry_i_3__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_3__1_n_4,prod_rounded_clamped_11_carry_i_3__1_n_5,prod_rounded_clamped_11_carry_i_3__1_n_6,prod_rounded_clamped_11_carry_i_3__1_n_7}),
        .S(p_1_in[15:12]));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_4__1
       (.I0(prod_rounded_clamped_12_carry_i_7__1_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__1_n_4),
        .O(prod_rounded_clamped_11_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    prod_rounded_clamped_11_carry_i_5__1
       (.I0(prod_rounded_clamped_12_carry_i_7__1_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__1_n_6),
        .O(prod_rounded_clamped_11_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_11_carry_i_6__1
       (.I0(prod_rounded_clamped_11_carry_i_3__1_n_5),
        .I1(prod_rounded_clamped_11_carry_i_3__1_n_4),
        .O(prod_rounded_clamped_11_carry_i_6__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_11_carry_i_7__0
       (.CI(add_1_carry__0_i_5__0_n_0),
        .CO({prod_rounded_clamped_11_carry_i_7__0_n_0,prod_rounded_clamped_11_carry_i_7__0_n_1,prod_rounded_clamped_11_carry_i_7__0_n_2,prod_rounded_clamped_11_carry_i_7__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_11_carry_i_7__0_n_4,prod_rounded_clamped_11_carry_i_7__0_n_5,prod_rounded_clamped_11_carry_i_7__0_n_6,prod_rounded_clamped_11_carry_i_7__0_n_7}),
        .S(p_1_in[11:8]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 prod_rounded_clamped_12_carry
       (.CI(1'b0),
        .CO({NLW_prod_rounded_clamped_12_carry_CO_UNCONNECTED[3],prod_rounded_clamped_12,prod_rounded_clamped_12_carry_n_2,prod_rounded_clamped_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prod_rounded_clamped_12_carry_i_1__1_n_0,prod_rounded_clamped_12_carry_i_2__1_n_0,prod_rounded_clamped_12_carry_i_3__1_n_0}),
        .O(NLW_prod_rounded_clamped_12_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,prod_rounded_clamped_12_carry_i_4__1_n_0,prod_rounded_clamped_12_carry_i_5__1_n_0,prod_rounded_clamped_12_carry_i_6__1_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_1__1
       (.I0(prod_rounded_clamped_12_carry_i_7__1_n_4),
        .I1(prod_rounded_clamped_12_carry_i_7__1_n_5),
        .O(prod_rounded_clamped_12_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    prod_rounded_clamped_12_carry_i_2__1
       (.I0(prod_rounded_clamped_12_carry_i_7__1_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__1_n_6),
        .O(prod_rounded_clamped_12_carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    prod_rounded_clamped_12_carry_i_3__1
       (.I0(prod_rounded_clamped_11_carry_i_3__1_n_4),
        .O(prod_rounded_clamped_12_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_4__1
       (.I0(prod_rounded_clamped_12_carry_i_7__1_n_5),
        .I1(prod_rounded_clamped_12_carry_i_7__1_n_4),
        .O(prod_rounded_clamped_12_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    prod_rounded_clamped_12_carry_i_5__1
       (.I0(prod_rounded_clamped_12_carry_i_7__1_n_7),
        .I1(prod_rounded_clamped_12_carry_i_7__1_n_6),
        .O(prod_rounded_clamped_12_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    prod_rounded_clamped_12_carry_i_6__1
       (.I0(prod_rounded_clamped_11_carry_i_3__1_n_4),
        .I1(prod_rounded_clamped_11_carry_i_3__1_n_5),
        .O(prod_rounded_clamped_12_carry_i_6__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 prod_rounded_clamped_12_carry_i_7__1
       (.CI(prod_rounded_clamped_11_carry_i_3__1_n_0),
        .CO({NLW_prod_rounded_clamped_12_carry_i_7__1_CO_UNCONNECTED[3],prod_rounded_clamped_12_carry_i_7__1_n_1,prod_rounded_clamped_12_carry_i_7__1_n_2,prod_rounded_clamped_12_carry_i_7__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({prod_rounded_clamped_12_carry_i_7__1_n_4,prod_rounded_clamped_12_carry_i_7__1_n_5,prod_rounded_clamped_12_carry_i_7__1_n_6,prod_rounded_clamped_12_carry_i_7__1_n_7}),
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
