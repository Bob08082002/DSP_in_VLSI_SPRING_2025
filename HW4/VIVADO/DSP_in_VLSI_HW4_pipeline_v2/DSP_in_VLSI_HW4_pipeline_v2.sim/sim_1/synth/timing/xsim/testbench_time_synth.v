// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Apr 17 20:52:17 2025
// Host        : DESKTOP-T5CR5M4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW4/VIVADO/DSP_in_VLSI_HW4_pipeline_v2/DSP_in_VLSI_HW4_pipeline_v2.sim/sim_1/synth/timing/xsim/testbench_time_synth.v
// Design      : CORDIC_pipeline
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module CORDIC_pipeline
   (clk,
    i_rst,
    ValidIn,
    InX,
    InY,
    ValidOut_Theda,
    ValidOut_Magnitude,
    OutX,
    OutY,
    OutTheda,
    Magnitude);
  input clk;
  input i_rst;
  input ValidIn;
  input [12:0]InX;
  input [12:0]InY;
  output ValidOut_Theda;
  output ValidOut_Magnitude;
  output [13:0]OutX;
  output [13:0]OutY;
  output [13:0]OutTheda;
  output [13:0]Magnitude;

  wire [13:0]A;
  wire [12:0]InX;
  wire [12:0]InX_FF;
  wire [12:0]InX_IBUF;
  wire [12:0]InY;
  wire [12:0]InY_FF;
  wire [12:0]InY_IBUF;
  wire [13:0]Magnitude;
  wire \Magnitude_FF[11]_i_10_n_0 ;
  wire \Magnitude_FF[11]_i_11_n_0 ;
  wire \Magnitude_FF[11]_i_12_n_0 ;
  wire \Magnitude_FF[11]_i_13_n_0 ;
  wire \Magnitude_FF[11]_i_14_n_0 ;
  wire \Magnitude_FF[11]_i_15_n_0 ;
  wire \Magnitude_FF[11]_i_16_n_0 ;
  wire \Magnitude_FF[11]_i_17_n_0 ;
  wire \Magnitude_FF[11]_i_18_n_0 ;
  wire \Magnitude_FF[11]_i_19_n_0 ;
  wire \Magnitude_FF[11]_i_20_n_0 ;
  wire \Magnitude_FF[11]_i_21_n_0 ;
  wire \Magnitude_FF[11]_i_22_n_0 ;
  wire \Magnitude_FF[11]_i_3_n_0 ;
  wire \Magnitude_FF[11]_i_4_n_0 ;
  wire \Magnitude_FF[11]_i_5_n_0 ;
  wire \Magnitude_FF[11]_i_6_n_0 ;
  wire \Magnitude_FF[11]_i_8_n_0 ;
  wire \Magnitude_FF[11]_i_9_n_0 ;
  wire \Magnitude_FF[13]_i_10_n_0 ;
  wire \Magnitude_FF[13]_i_11_n_0 ;
  wire \Magnitude_FF[13]_i_12_n_0 ;
  wire \Magnitude_FF[13]_i_14_n_0 ;
  wire \Magnitude_FF[13]_i_3_n_0 ;
  wire \Magnitude_FF[13]_i_4_n_0 ;
  wire \Magnitude_FF[13]_i_5_n_0 ;
  wire \Magnitude_FF[13]_i_6_n_0 ;
  wire \Magnitude_FF[13]_i_7_n_0 ;
  wire \Magnitude_FF[13]_i_8_n_0 ;
  wire \Magnitude_FF[13]_i_9_n_0 ;
  wire \Magnitude_FF[3]_i_2_n_0 ;
  wire \Magnitude_FF[3]_i_3_n_0 ;
  wire \Magnitude_FF[3]_i_4_n_0 ;
  wire \Magnitude_FF[3]_i_5_n_0 ;
  wire \Magnitude_FF[3]_i_6_n_0 ;
  wire \Magnitude_FF[3]_i_7_n_0 ;
  wire \Magnitude_FF[3]_i_8_n_0 ;
  wire \Magnitude_FF[3]_i_9_n_0 ;
  wire \Magnitude_FF[7]_i_2_n_0 ;
  wire \Magnitude_FF[7]_i_3_n_0 ;
  wire \Magnitude_FF[7]_i_4_n_0 ;
  wire \Magnitude_FF[7]_i_5_n_0 ;
  wire \Magnitude_FF[7]_i_6_n_0 ;
  wire \Magnitude_FF[7]_i_7_n_0 ;
  wire \Magnitude_FF_reg[11]_i_1_n_0 ;
  wire \Magnitude_FF_reg[11]_i_1_n_1 ;
  wire \Magnitude_FF_reg[11]_i_1_n_2 ;
  wire \Magnitude_FF_reg[11]_i_1_n_3 ;
  wire \Magnitude_FF_reg[11]_i_2_n_0 ;
  wire \Magnitude_FF_reg[11]_i_2_n_1 ;
  wire \Magnitude_FF_reg[11]_i_2_n_2 ;
  wire \Magnitude_FF_reg[11]_i_2_n_3 ;
  wire \Magnitude_FF_reg[11]_i_2_n_4 ;
  wire \Magnitude_FF_reg[11]_i_2_n_5 ;
  wire \Magnitude_FF_reg[11]_i_2_n_6 ;
  wire \Magnitude_FF_reg[11]_i_2_n_7 ;
  wire \Magnitude_FF_reg[11]_i_7_n_0 ;
  wire \Magnitude_FF_reg[11]_i_7_n_1 ;
  wire \Magnitude_FF_reg[11]_i_7_n_2 ;
  wire \Magnitude_FF_reg[11]_i_7_n_3 ;
  wire \Magnitude_FF_reg[11]_i_7_n_4 ;
  wire \Magnitude_FF_reg[11]_i_7_n_5 ;
  wire \Magnitude_FF_reg[11]_i_7_n_6 ;
  wire \Magnitude_FF_reg[11]_i_7_n_7 ;
  wire \Magnitude_FF_reg[13]_i_13_n_2 ;
  wire \Magnitude_FF_reg[13]_i_13_n_7 ;
  wire \Magnitude_FF_reg[13]_i_1_n_3 ;
  wire \Magnitude_FF_reg[13]_i_2_n_0 ;
  wire \Magnitude_FF_reg[13]_i_2_n_1 ;
  wire \Magnitude_FF_reg[13]_i_2_n_2 ;
  wire \Magnitude_FF_reg[13]_i_2_n_3 ;
  wire \Magnitude_FF_reg[13]_i_2_n_4 ;
  wire \Magnitude_FF_reg[13]_i_2_n_5 ;
  wire \Magnitude_FF_reg[13]_i_2_n_6 ;
  wire \Magnitude_FF_reg[13]_i_2_n_7 ;
  wire \Magnitude_FF_reg[3]_i_1_n_0 ;
  wire \Magnitude_FF_reg[3]_i_1_n_1 ;
  wire \Magnitude_FF_reg[3]_i_1_n_2 ;
  wire \Magnitude_FF_reg[3]_i_1_n_3 ;
  wire \Magnitude_FF_reg[7]_i_1_n_0 ;
  wire \Magnitude_FF_reg[7]_i_1_n_1 ;
  wire \Magnitude_FF_reg[7]_i_1_n_2 ;
  wire \Magnitude_FF_reg[7]_i_1_n_3 ;
  wire [13:0]Magnitude_OBUF;
  wire [13:0]OutTheda;
  wire [13:0]OutTheda_OBUF;
  wire [13:0]OutX;
  wire [13:0]OutX_OBUF;
  wire [13:0]OutY;
  wire [13:0]OutY_OBUF;
  wire ValidIn;
  wire ValidIn_FF1;
  wire ValidIn_FF2;
  wire ValidIn_FF3;
  wire ValidIn_IBUF;
  wire ValidOut_Magnitude;
  wire ValidOut_Magnitude_OBUF;
  wire ValidOut_Theda;
  wire ValidOut_Theda_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire i_rst;
  wire i_rst_IBUF;
  wire [12:12]neg_X;
  wire [12:12]neg_Y;
  wire [13:0]pipe_reg_X1;
  wire [13:0]pipe_reg_X2;
  wire [13:0]pipe_reg_Y1;
  wire [13:0]pipe_reg_Y2;
  wire [13:1]pipe_reg_theda1;
  wire [13:0]pipe_reg_theda2;
  wire single_stage_u0_n_14;
  wire single_stage_u0_n_38;
  wire single_stage_u0_n_39;
  wire single_stage_u0_n_40;
  wire single_stage_u0_n_41;
  wire single_stage_u0_n_42;
  wire single_stage_u0_n_43;
  wire single_stage_u0_n_44;
  wire single_stage_u0_n_45;
  wire single_stage_u0_n_46;
  wire single_stage_u0_n_47;
  wire single_stage_u0_n_48;
  wire single_stage_u0_n_49;
  wire single_stage_u0_n_50;
  wire single_stage_u0_n_51;
  wire single_stage_u0_n_52;
  wire single_stage_u0_n_53;
  wire single_stage_u0_n_54;
  wire single_stage_u0_n_55;
  wire single_stage_u0_n_56;
  wire single_stage_u0_n_57;
  wire single_stage_u0_n_58;
  wire single_stage_u0_n_59;
  wire single_stage_u0_n_60;
  wire single_stage_u0_n_61;
  wire single_stage_u0_n_62;
  wire single_stage_u0_n_63;
  wire single_stage_u0_n_64;
  wire single_stage_u0_n_65;
  wire single_stage_u1_n_28;
  wire single_stage_u1_n_29;
  wire single_stage_u1_n_30;
  wire single_stage_u1_n_31;
  wire single_stage_u1_n_32;
  wire single_stage_u1_n_33;
  wire single_stage_u1_n_34;
  wire single_stage_u1_n_35;
  wire single_stage_u1_n_36;
  wire single_stage_u2_n_38;
  wire single_stage_u2_n_39;
  wire single_stage_u2_n_40;
  wire single_stage_u2_n_41;
  wire single_stage_u2_n_42;
  wire single_stage_u2_n_43;
  wire single_stage_u2_n_44;
  wire single_stage_u2_n_45;
  wire single_stage_u2_n_46;
  wire single_stage_u2_n_47;
  wire single_stage_u2_n_48;
  wire single_stage_u2_n_49;
  wire single_stage_u2_n_50;
  wire single_stage_u2_n_51;
  wire single_stage_u2_n_52;
  wire single_stage_u2_n_53;
  wire single_stage_u2_n_54;
  wire single_stage_u2_n_55;
  wire single_stage_u2_n_56;
  wire single_stage_u2_n_57;
  wire single_stage_u2_n_58;
  wire single_stage_u2_n_59;
  wire single_stage_u2_n_60;
  wire single_stage_u2_n_61;
  wire single_stage_u2_n_62;
  wire single_stage_u2_n_63;
  wire single_stage_u2_n_64;
  wire single_stage_u2_n_65;
  wire single_stage_u2_n_66;
  wire single_stage_u2_n_67;
  wire single_stage_u2_n_68;
  wire single_stage_u2_n_69;
  wire single_stage_u2_n_70;
  wire single_stage_u2_n_71;
  wire single_stage_u2_n_72;
  wire single_stage_u2_n_73;
  wire single_stage_u2_n_74;
  wire single_stage_u2_n_75;
  wire single_stage_u2_n_76;
  wire single_stage_u3_n_41;
  wire single_stage_u3_n_42;
  wire single_stage_u3_n_43;
  wire single_stage_u3_n_44;
  wire single_stage_u4_n_33;
  wire single_stage_u4_n_34;
  wire single_stage_u4_n_35;
  wire single_stage_u4_n_36;
  wire single_stage_u4_n_37;
  wire single_stage_u4_n_38;
  wire single_stage_u4_n_39;
  wire single_stage_u4_n_40;
  wire single_stage_u4_n_41;
  wire single_stage_u4_n_42;
  wire single_stage_u4_n_43;
  wire single_stage_u4_n_44;
  wire single_stage_u4_n_45;
  wire single_stage_u4_n_46;
  wire single_stage_u4_n_47;
  wire single_stage_u4_n_48;
  wire single_stage_u4_n_49;
  wire single_stage_u4_n_50;
  wire single_stage_u4_n_51;
  wire single_stage_u4_n_52;
  wire single_stage_u4_n_53;
  wire single_stage_u4_n_54;
  wire single_stage_u4_n_55;
  wire single_stage_u4_n_56;
  wire single_stage_u4_n_57;
  wire single_stage_u4_n_58;
  wire single_stage_u4_n_59;
  wire single_stage_u4_n_60;
  wire single_stage_u4_n_61;
  wire single_stage_u4_n_62;
  wire single_stage_u4_n_63;
  wire single_stage_u4_n_64;
  wire single_stage_u5_n_37;
  wire single_stage_u5_n_38;
  wire single_stage_u5_n_39;
  wire single_stage_u5_n_40;
  wire single_stage_u5_n_41;
  wire single_stage_u5_n_42;
  wire [13:0]sum_X;
  wire [13:0]sum_X_12;
  wire [13:0]sum_X_3;
  wire [13:0]sum_X_6;
  wire [13:0]sum_X_9;
  wire [13:0]sum_Y;
  wire [13:0]sum_Y_11;
  wire [13:0]sum_Y_2;
  wire [13:0]sum_Y_5;
  wire [13:0]sum_Y_8;
  wire [13:0]sum_magnitude;
  wire [11:2]sum_theda;
  wire [13:1]sum_theda_0;
  wire [11:1]sum_theda_1;
  wire [13:5]sum_theda_10;
  wire [13:1]sum_theda_4;
  wire [11:6]sum_theda_7;
  wire [12:12]\wire_X[0] ;
  wire [3:1]\NLW_Magnitude_FF_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_Magnitude_FF_reg[13]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_Magnitude_FF_reg[13]_i_13_CO_UNCONNECTED ;
  wire [3:1]\NLW_Magnitude_FF_reg[13]_i_13_O_UNCONNECTED ;

initial begin
 $sdf_annotate("testbench_time_synth.sdf",,,,"tool_control");
end
  FDCE #(
    .INIT(1'b0)) 
    \InX_FF_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InX_IBUF[0]),
        .Q(InX_FF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \InX_FF_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InX_IBUF[10]),
        .Q(InX_FF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \InX_FF_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InX_IBUF[11]),
        .Q(InX_FF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \InX_FF_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InX_IBUF[12]),
        .Q(InX_FF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \InX_FF_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InX_IBUF[1]),
        .Q(InX_FF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \InX_FF_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InX_IBUF[2]),
        .Q(InX_FF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \InX_FF_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InX_IBUF[3]),
        .Q(InX_FF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \InX_FF_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InX_IBUF[4]),
        .Q(InX_FF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \InX_FF_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InX_IBUF[5]),
        .Q(InX_FF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \InX_FF_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InX_IBUF[6]),
        .Q(InX_FF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \InX_FF_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InX_IBUF[7]),
        .Q(InX_FF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \InX_FF_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InX_IBUF[8]),
        .Q(InX_FF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \InX_FF_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InX_IBUF[9]),
        .Q(InX_FF[9]));
  IBUF \InX_IBUF[0]_inst 
       (.I(InX[0]),
        .O(InX_IBUF[0]));
  IBUF \InX_IBUF[10]_inst 
       (.I(InX[10]),
        .O(InX_IBUF[10]));
  IBUF \InX_IBUF[11]_inst 
       (.I(InX[11]),
        .O(InX_IBUF[11]));
  IBUF \InX_IBUF[12]_inst 
       (.I(InX[12]),
        .O(InX_IBUF[12]));
  IBUF \InX_IBUF[1]_inst 
       (.I(InX[1]),
        .O(InX_IBUF[1]));
  IBUF \InX_IBUF[2]_inst 
       (.I(InX[2]),
        .O(InX_IBUF[2]));
  IBUF \InX_IBUF[3]_inst 
       (.I(InX[3]),
        .O(InX_IBUF[3]));
  IBUF \InX_IBUF[4]_inst 
       (.I(InX[4]),
        .O(InX_IBUF[4]));
  IBUF \InX_IBUF[5]_inst 
       (.I(InX[5]),
        .O(InX_IBUF[5]));
  IBUF \InX_IBUF[6]_inst 
       (.I(InX[6]),
        .O(InX_IBUF[6]));
  IBUF \InX_IBUF[7]_inst 
       (.I(InX[7]),
        .O(InX_IBUF[7]));
  IBUF \InX_IBUF[8]_inst 
       (.I(InX[8]),
        .O(InX_IBUF[8]));
  IBUF \InX_IBUF[9]_inst 
       (.I(InX[9]),
        .O(InX_IBUF[9]));
  FDCE #(
    .INIT(1'b0)) 
    \InY_FF_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InY_IBUF[0]),
        .Q(InY_FF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \InY_FF_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InY_IBUF[10]),
        .Q(InY_FF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \InY_FF_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InY_IBUF[11]),
        .Q(InY_FF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \InY_FF_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InY_IBUF[12]),
        .Q(InY_FF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \InY_FF_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InY_IBUF[1]),
        .Q(InY_FF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \InY_FF_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InY_IBUF[2]),
        .Q(InY_FF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \InY_FF_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InY_IBUF[3]),
        .Q(InY_FF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \InY_FF_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InY_IBUF[4]),
        .Q(InY_FF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \InY_FF_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InY_IBUF[5]),
        .Q(InY_FF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \InY_FF_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InY_IBUF[6]),
        .Q(InY_FF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \InY_FF_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InY_IBUF[7]),
        .Q(InY_FF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \InY_FF_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InY_IBUF[8]),
        .Q(InY_FF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \InY_FF_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(InY_IBUF[9]),
        .Q(InY_FF[9]));
  IBUF \InY_IBUF[0]_inst 
       (.I(InY[0]),
        .O(InY_IBUF[0]));
  IBUF \InY_IBUF[10]_inst 
       (.I(InY[10]),
        .O(InY_IBUF[10]));
  IBUF \InY_IBUF[11]_inst 
       (.I(InY[11]),
        .O(InY_IBUF[11]));
  IBUF \InY_IBUF[12]_inst 
       (.I(InY[12]),
        .O(InY_IBUF[12]));
  IBUF \InY_IBUF[1]_inst 
       (.I(InY[1]),
        .O(InY_IBUF[1]));
  IBUF \InY_IBUF[2]_inst 
       (.I(InY[2]),
        .O(InY_IBUF[2]));
  IBUF \InY_IBUF[3]_inst 
       (.I(InY[3]),
        .O(InY_IBUF[3]));
  IBUF \InY_IBUF[4]_inst 
       (.I(InY[4]),
        .O(InY_IBUF[4]));
  IBUF \InY_IBUF[5]_inst 
       (.I(InY[5]),
        .O(InY_IBUF[5]));
  IBUF \InY_IBUF[6]_inst 
       (.I(InY[6]),
        .O(InY_IBUF[6]));
  IBUF \InY_IBUF[7]_inst 
       (.I(InY[7]),
        .O(InY_IBUF[7]));
  IBUF \InY_IBUF[8]_inst 
       (.I(InY[8]),
        .O(InY_IBUF[8]));
  IBUF \InY_IBUF[9]_inst 
       (.I(InY[9]),
        .O(InY_IBUF[9]));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \Magnitude_FF[11]_i_10 
       (.I0(OutX_OBUF[10]),
        .I1(OutX_OBUF[7]),
        .I2(OutX_OBUF[5]),
        .O(\Magnitude_FF[11]_i_10_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \Magnitude_FF[11]_i_11 
       (.I0(OutX_OBUF[9]),
        .I1(OutX_OBUF[6]),
        .I2(OutX_OBUF[4]),
        .O(\Magnitude_FF[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    \Magnitude_FF[11]_i_12 
       (.I0(OutX_OBUF[8]),
        .I1(OutX_OBUF[13]),
        .I2(OutX_OBUF[10]),
        .I3(OutX_OBUF[7]),
        .I4(OutX_OBUF[9]),
        .I5(OutX_OBUF[12]),
        .O(\Magnitude_FF[11]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \Magnitude_FF[11]_i_13 
       (.I0(\Magnitude_FF[11]_i_9_n_0 ),
        .I1(OutX_OBUF[12]),
        .I2(OutX_OBUF[9]),
        .I3(OutX_OBUF[7]),
        .O(\Magnitude_FF[11]_i_13_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \Magnitude_FF[11]_i_14 
       (.I0(OutX_OBUF[11]),
        .I1(OutX_OBUF[8]),
        .I2(OutX_OBUF[6]),
        .I3(\Magnitude_FF[11]_i_10_n_0 ),
        .O(\Magnitude_FF[11]_i_14_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \Magnitude_FF[11]_i_15 
       (.I0(OutX_OBUF[10]),
        .I1(OutX_OBUF[7]),
        .I2(OutX_OBUF[5]),
        .I3(\Magnitude_FF[11]_i_11_n_0 ),
        .O(\Magnitude_FF[11]_i_15_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \Magnitude_FF[11]_i_16 
       (.I0(OutX_OBUF[8]),
        .I1(OutX_OBUF[5]),
        .I2(OutX_OBUF[3]),
        .O(\Magnitude_FF[11]_i_16_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \Magnitude_FF[11]_i_17 
       (.I0(OutX_OBUF[7]),
        .I1(OutX_OBUF[4]),
        .I2(OutX_OBUF[2]),
        .O(\Magnitude_FF[11]_i_17_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \Magnitude_FF[11]_i_18 
       (.I0(OutX_OBUF[6]),
        .I1(OutX_OBUF[3]),
        .I2(OutX_OBUF[1]),
        .O(\Magnitude_FF[11]_i_18_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \Magnitude_FF[11]_i_19 
       (.I0(OutX_OBUF[9]),
        .I1(OutX_OBUF[6]),
        .I2(OutX_OBUF[4]),
        .I3(\Magnitude_FF[11]_i_16_n_0 ),
        .O(\Magnitude_FF[11]_i_19_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \Magnitude_FF[11]_i_20 
       (.I0(OutX_OBUF[8]),
        .I1(OutX_OBUF[5]),
        .I2(OutX_OBUF[3]),
        .I3(\Magnitude_FF[11]_i_17_n_0 ),
        .O(\Magnitude_FF[11]_i_20_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \Magnitude_FF[11]_i_21 
       (.I0(OutX_OBUF[7]),
        .I1(OutX_OBUF[4]),
        .I2(OutX_OBUF[2]),
        .I3(\Magnitude_FF[11]_i_18_n_0 ),
        .O(\Magnitude_FF[11]_i_21_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \Magnitude_FF[11]_i_22 
       (.I0(OutX_OBUF[6]),
        .I1(OutX_OBUF[3]),
        .I2(OutX_OBUF[1]),
        .O(\Magnitude_FF[11]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Magnitude_FF[11]_i_3 
       (.I0(\Magnitude_FF_reg[13]_i_2_n_5 ),
        .I1(\Magnitude_FF_reg[13]_i_2_n_4 ),
        .O(\Magnitude_FF[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Magnitude_FF[11]_i_4 
       (.I0(\Magnitude_FF_reg[13]_i_2_n_6 ),
        .I1(\Magnitude_FF_reg[13]_i_2_n_5 ),
        .O(\Magnitude_FF[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Magnitude_FF[11]_i_5 
       (.I0(\Magnitude_FF_reg[13]_i_2_n_7 ),
        .I1(\Magnitude_FF_reg[13]_i_2_n_6 ),
        .O(\Magnitude_FF[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Magnitude_FF[11]_i_6 
       (.I0(\Magnitude_FF_reg[11]_i_2_n_4 ),
        .I1(\Magnitude_FF_reg[13]_i_2_n_7 ),
        .O(\Magnitude_FF[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \Magnitude_FF[11]_i_8 
       (.I0(OutX_OBUF[10]),
        .I1(OutX_OBUF[13]),
        .I2(OutX_OBUF[8]),
        .O(\Magnitude_FF[11]_i_8_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \Magnitude_FF[11]_i_9 
       (.I0(OutX_OBUF[11]),
        .I1(OutX_OBUF[8]),
        .I2(OutX_OBUF[6]),
        .O(\Magnitude_FF[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hD23C3C2D)) 
    \Magnitude_FF[13]_i_10 
       (.I0(OutX_OBUF[9]),
        .I1(OutX_OBUF[11]),
        .I2(OutX_OBUF[13]),
        .I3(OutX_OBUF[10]),
        .I4(OutX_OBUF[12]),
        .O(\Magnitude_FF[13]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hD23C3C2D)) 
    \Magnitude_FF[13]_i_11 
       (.I0(OutX_OBUF[13]),
        .I1(OutX_OBUF[10]),
        .I2(OutX_OBUF[12]),
        .I3(OutX_OBUF[9]),
        .I4(OutX_OBUF[11]),
        .O(\Magnitude_FF[13]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h963C3C69)) 
    \Magnitude_FF[13]_i_12 
       (.I0(OutX_OBUF[8]),
        .I1(OutX_OBUF[9]),
        .I2(OutX_OBUF[11]),
        .I3(OutX_OBUF[10]),
        .I4(OutX_OBUF[13]),
        .O(\Magnitude_FF[13]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Magnitude_FF[13]_i_14 
       (.I0(OutX_OBUF[12]),
        .I1(OutX_OBUF[13]),
        .O(\Magnitude_FF[13]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Magnitude_FF[13]_i_3 
       (.I0(\Magnitude_FF_reg[13]_i_13_n_7 ),
        .I1(\Magnitude_FF_reg[13]_i_13_n_2 ),
        .O(\Magnitude_FF[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Magnitude_FF[13]_i_4 
       (.I0(\Magnitude_FF_reg[13]_i_2_n_4 ),
        .I1(\Magnitude_FF_reg[13]_i_13_n_7 ),
        .O(\Magnitude_FF[13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDDD4)) 
    \Magnitude_FF[13]_i_5 
       (.I0(OutX_OBUF[13]),
        .I1(OutX_OBUF[11]),
        .I2(OutX_OBUF[12]),
        .I3(OutX_OBUF[10]),
        .O(\Magnitude_FF[13]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \Magnitude_FF[13]_i_6 
       (.I0(OutX_OBUF[11]),
        .I1(OutX_OBUF[9]),
        .I2(OutX_OBUF[12]),
        .I3(OutX_OBUF[10]),
        .O(\Magnitude_FF[13]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \Magnitude_FF[13]_i_7 
       (.I0(OutX_OBUF[13]),
        .I1(OutX_OBUF[10]),
        .I2(OutX_OBUF[11]),
        .I3(OutX_OBUF[9]),
        .O(\Magnitude_FF[13]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \Magnitude_FF[13]_i_8 
       (.I0(OutX_OBUF[8]),
        .I1(OutX_OBUF[10]),
        .I2(OutX_OBUF[13]),
        .O(\Magnitude_FF[13]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hCF71)) 
    \Magnitude_FF[13]_i_9 
       (.I0(OutX_OBUF[10]),
        .I1(OutX_OBUF[11]),
        .I2(OutX_OBUF[13]),
        .I3(OutX_OBUF[12]),
        .O(\Magnitude_FF[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hD7D741D7)) 
    \Magnitude_FF[3]_i_2 
       (.I0(OutX_OBUF[11]),
        .I1(\Magnitude_FF_reg[11]_i_7_n_5 ),
        .I2(OutX_OBUF[13]),
        .I3(OutX_OBUF[12]),
        .I4(\Magnitude_FF_reg[11]_i_7_n_6 ),
        .O(\Magnitude_FF[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h2DD2D22D)) 
    \Magnitude_FF[3]_i_3 
       (.I0(OutX_OBUF[12]),
        .I1(\Magnitude_FF_reg[11]_i_7_n_6 ),
        .I2(OutX_OBUF[11]),
        .I3(OutX_OBUF[13]),
        .I4(\Magnitude_FF_reg[11]_i_7_n_5 ),
        .O(\Magnitude_FF[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \Magnitude_FF[3]_i_4 
       (.I0(\Magnitude_FF_reg[11]_i_7_n_6 ),
        .I1(OutX_OBUF[12]),
        .I2(OutX_OBUF[10]),
        .O(\Magnitude_FF[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Magnitude_FF[3]_i_5 
       (.I0(\Magnitude_FF_reg[11]_i_7_n_7 ),
        .I1(OutX_OBUF[11]),
        .O(\Magnitude_FF[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4FB0D32CD32CB04F)) 
    \Magnitude_FF[3]_i_6 
       (.I0(\Magnitude_FF_reg[11]_i_7_n_6 ),
        .I1(OutX_OBUF[11]),
        .I2(OutX_OBUF[12]),
        .I3(\Magnitude_FF_reg[11]_i_7_n_4 ),
        .I4(\Magnitude_FF_reg[11]_i_7_n_5 ),
        .I5(OutX_OBUF[13]),
        .O(\Magnitude_FF[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969966969966969)) 
    \Magnitude_FF[3]_i_7 
       (.I0(\Magnitude_FF_reg[11]_i_7_n_5 ),
        .I1(OutX_OBUF[13]),
        .I2(OutX_OBUF[11]),
        .I3(OutX_OBUF[12]),
        .I4(\Magnitude_FF_reg[11]_i_7_n_6 ),
        .I5(OutX_OBUF[10]),
        .O(\Magnitude_FF[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h96966996)) 
    \Magnitude_FF[3]_i_8 
       (.I0(OutX_OBUF[10]),
        .I1(OutX_OBUF[12]),
        .I2(\Magnitude_FF_reg[11]_i_7_n_6 ),
        .I3(OutX_OBUF[11]),
        .I4(\Magnitude_FF_reg[11]_i_7_n_7 ),
        .O(\Magnitude_FF[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \Magnitude_FF[3]_i_9 
       (.I0(\Magnitude_FF_reg[11]_i_7_n_7 ),
        .I1(OutX_OBUF[11]),
        .I2(OutX_OBUF[9]),
        .O(\Magnitude_FF[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hEE8E)) 
    \Magnitude_FF[7]_i_2 
       (.I0(OutX_OBUF[13]),
        .I1(\Magnitude_FF_reg[11]_i_2_n_7 ),
        .I2(OutX_OBUF[12]),
        .I3(\Magnitude_FF_reg[11]_i_7_n_4 ),
        .O(\Magnitude_FF[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0EE0)) 
    \Magnitude_FF[7]_i_3 
       (.I0(OutX_OBUF[13]),
        .I1(\Magnitude_FF_reg[11]_i_7_n_5 ),
        .I2(\Magnitude_FF_reg[11]_i_7_n_4 ),
        .I3(OutX_OBUF[12]),
        .O(\Magnitude_FF[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Magnitude_FF[7]_i_4 
       (.I0(\Magnitude_FF_reg[11]_i_2_n_5 ),
        .I1(\Magnitude_FF_reg[11]_i_2_n_4 ),
        .O(\Magnitude_FF[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Magnitude_FF[7]_i_5 
       (.I0(\Magnitude_FF_reg[11]_i_2_n_6 ),
        .I1(\Magnitude_FF_reg[11]_i_2_n_5 ),
        .O(\Magnitude_FF[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFBB0044F)) 
    \Magnitude_FF[7]_i_6 
       (.I0(\Magnitude_FF_reg[11]_i_7_n_4 ),
        .I1(OutX_OBUF[12]),
        .I2(\Magnitude_FF_reg[11]_i_2_n_7 ),
        .I3(OutX_OBUF[13]),
        .I4(\Magnitude_FF_reg[11]_i_2_n_6 ),
        .O(\Magnitude_FF[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hC3D22DC3)) 
    \Magnitude_FF[7]_i_7 
       (.I0(\Magnitude_FF_reg[11]_i_7_n_5 ),
        .I1(OutX_OBUF[13]),
        .I2(\Magnitude_FF_reg[11]_i_2_n_7 ),
        .I3(\Magnitude_FF_reg[11]_i_7_n_4 ),
        .I4(OutX_OBUF[12]),
        .O(\Magnitude_FF[7]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Magnitude_FF_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_magnitude[0]),
        .Q(Magnitude_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Magnitude_FF_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_magnitude[10]),
        .Q(Magnitude_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Magnitude_FF_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_magnitude[11]),
        .Q(Magnitude_OBUF[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Magnitude_FF_reg[11]_i_1 
       (.CI(\Magnitude_FF_reg[7]_i_1_n_0 ),
        .CO({\Magnitude_FF_reg[11]_i_1_n_0 ,\Magnitude_FF_reg[11]_i_1_n_1 ,\Magnitude_FF_reg[11]_i_1_n_2 ,\Magnitude_FF_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Magnitude_FF_reg[13]_i_2_n_5 ,\Magnitude_FF_reg[13]_i_2_n_6 ,\Magnitude_FF_reg[13]_i_2_n_7 ,\Magnitude_FF_reg[11]_i_2_n_4 }),
        .O(sum_magnitude[11:8]),
        .S({\Magnitude_FF[11]_i_3_n_0 ,\Magnitude_FF[11]_i_4_n_0 ,\Magnitude_FF[11]_i_5_n_0 ,\Magnitude_FF[11]_i_6_n_0 }));
  CARRY4 \Magnitude_FF_reg[11]_i_2 
       (.CI(\Magnitude_FF_reg[11]_i_7_n_0 ),
        .CO({\Magnitude_FF_reg[11]_i_2_n_0 ,\Magnitude_FF_reg[11]_i_2_n_1 ,\Magnitude_FF_reg[11]_i_2_n_2 ,\Magnitude_FF_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Magnitude_FF[11]_i_8_n_0 ,\Magnitude_FF[11]_i_9_n_0 ,\Magnitude_FF[11]_i_10_n_0 ,\Magnitude_FF[11]_i_11_n_0 }),
        .O({\Magnitude_FF_reg[11]_i_2_n_4 ,\Magnitude_FF_reg[11]_i_2_n_5 ,\Magnitude_FF_reg[11]_i_2_n_6 ,\Magnitude_FF_reg[11]_i_2_n_7 }),
        .S({\Magnitude_FF[11]_i_12_n_0 ,\Magnitude_FF[11]_i_13_n_0 ,\Magnitude_FF[11]_i_14_n_0 ,\Magnitude_FF[11]_i_15_n_0 }));
  CARRY4 \Magnitude_FF_reg[11]_i_7 
       (.CI(1'b0),
        .CO({\Magnitude_FF_reg[11]_i_7_n_0 ,\Magnitude_FF_reg[11]_i_7_n_1 ,\Magnitude_FF_reg[11]_i_7_n_2 ,\Magnitude_FF_reg[11]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\Magnitude_FF[11]_i_16_n_0 ,\Magnitude_FF[11]_i_17_n_0 ,\Magnitude_FF[11]_i_18_n_0 ,1'b0}),
        .O({\Magnitude_FF_reg[11]_i_7_n_4 ,\Magnitude_FF_reg[11]_i_7_n_5 ,\Magnitude_FF_reg[11]_i_7_n_6 ,\Magnitude_FF_reg[11]_i_7_n_7 }),
        .S({\Magnitude_FF[11]_i_19_n_0 ,\Magnitude_FF[11]_i_20_n_0 ,\Magnitude_FF[11]_i_21_n_0 ,\Magnitude_FF[11]_i_22_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Magnitude_FF_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_magnitude[12]),
        .Q(Magnitude_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Magnitude_FF_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_magnitude[13]),
        .Q(Magnitude_OBUF[13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Magnitude_FF_reg[13]_i_1 
       (.CI(\Magnitude_FF_reg[11]_i_1_n_0 ),
        .CO({\NLW_Magnitude_FF_reg[13]_i_1_CO_UNCONNECTED [3:1],\Magnitude_FF_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\Magnitude_FF_reg[13]_i_2_n_4 }),
        .O({\NLW_Magnitude_FF_reg[13]_i_1_O_UNCONNECTED [3:2],sum_magnitude[13:12]}),
        .S({1'b0,1'b0,\Magnitude_FF[13]_i_3_n_0 ,\Magnitude_FF[13]_i_4_n_0 }));
  CARRY4 \Magnitude_FF_reg[13]_i_13 
       (.CI(\Magnitude_FF_reg[13]_i_2_n_0 ),
        .CO({\NLW_Magnitude_FF_reg[13]_i_13_CO_UNCONNECTED [3:2],\Magnitude_FF_reg[13]_i_13_n_2 ,\NLW_Magnitude_FF_reg[13]_i_13_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,OutX_OBUF[12]}),
        .O({\NLW_Magnitude_FF_reg[13]_i_13_O_UNCONNECTED [3:1],\Magnitude_FF_reg[13]_i_13_n_7 }),
        .S({1'b0,1'b0,1'b1,\Magnitude_FF[13]_i_14_n_0 }));
  CARRY4 \Magnitude_FF_reg[13]_i_2 
       (.CI(\Magnitude_FF_reg[11]_i_2_n_0 ),
        .CO({\Magnitude_FF_reg[13]_i_2_n_0 ,\Magnitude_FF_reg[13]_i_2_n_1 ,\Magnitude_FF_reg[13]_i_2_n_2 ,\Magnitude_FF_reg[13]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Magnitude_FF[13]_i_5_n_0 ,\Magnitude_FF[13]_i_6_n_0 ,\Magnitude_FF[13]_i_7_n_0 ,\Magnitude_FF[13]_i_8_n_0 }),
        .O({\Magnitude_FF_reg[13]_i_2_n_4 ,\Magnitude_FF_reg[13]_i_2_n_5 ,\Magnitude_FF_reg[13]_i_2_n_6 ,\Magnitude_FF_reg[13]_i_2_n_7 }),
        .S({\Magnitude_FF[13]_i_9_n_0 ,\Magnitude_FF[13]_i_10_n_0 ,\Magnitude_FF[13]_i_11_n_0 ,\Magnitude_FF[13]_i_12_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Magnitude_FF_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_magnitude[1]),
        .Q(Magnitude_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Magnitude_FF_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_magnitude[2]),
        .Q(Magnitude_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Magnitude_FF_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_magnitude[3]),
        .Q(Magnitude_OBUF[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Magnitude_FF_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\Magnitude_FF_reg[3]_i_1_n_0 ,\Magnitude_FF_reg[3]_i_1_n_1 ,\Magnitude_FF_reg[3]_i_1_n_2 ,\Magnitude_FF_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Magnitude_FF[3]_i_2_n_0 ,\Magnitude_FF[3]_i_3_n_0 ,\Magnitude_FF[3]_i_4_n_0 ,\Magnitude_FF[3]_i_5_n_0 }),
        .O(sum_magnitude[3:0]),
        .S({\Magnitude_FF[3]_i_6_n_0 ,\Magnitude_FF[3]_i_7_n_0 ,\Magnitude_FF[3]_i_8_n_0 ,\Magnitude_FF[3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Magnitude_FF_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_magnitude[4]),
        .Q(Magnitude_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Magnitude_FF_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_magnitude[5]),
        .Q(Magnitude_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Magnitude_FF_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_magnitude[6]),
        .Q(Magnitude_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Magnitude_FF_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_magnitude[7]),
        .Q(Magnitude_OBUF[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Magnitude_FF_reg[7]_i_1 
       (.CI(\Magnitude_FF_reg[3]_i_1_n_0 ),
        .CO({\Magnitude_FF_reg[7]_i_1_n_0 ,\Magnitude_FF_reg[7]_i_1_n_1 ,\Magnitude_FF_reg[7]_i_1_n_2 ,\Magnitude_FF_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Magnitude_FF_reg[11]_i_2_n_5 ,\Magnitude_FF_reg[11]_i_2_n_6 ,\Magnitude_FF[7]_i_2_n_0 ,\Magnitude_FF[7]_i_3_n_0 }),
        .O(sum_magnitude[7:4]),
        .S({\Magnitude_FF[7]_i_4_n_0 ,\Magnitude_FF[7]_i_5_n_0 ,\Magnitude_FF[7]_i_6_n_0 ,\Magnitude_FF[7]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Magnitude_FF_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_magnitude[8]),
        .Q(Magnitude_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Magnitude_FF_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_magnitude[9]),
        .Q(Magnitude_OBUF[9]));
  OBUF \Magnitude_OBUF[0]_inst 
       (.I(Magnitude_OBUF[0]),
        .O(Magnitude[0]));
  OBUF \Magnitude_OBUF[10]_inst 
       (.I(Magnitude_OBUF[10]),
        .O(Magnitude[10]));
  OBUF \Magnitude_OBUF[11]_inst 
       (.I(Magnitude_OBUF[11]),
        .O(Magnitude[11]));
  OBUF \Magnitude_OBUF[12]_inst 
       (.I(Magnitude_OBUF[12]),
        .O(Magnitude[12]));
  OBUF \Magnitude_OBUF[13]_inst 
       (.I(Magnitude_OBUF[13]),
        .O(Magnitude[13]));
  OBUF \Magnitude_OBUF[1]_inst 
       (.I(Magnitude_OBUF[1]),
        .O(Magnitude[1]));
  OBUF \Magnitude_OBUF[2]_inst 
       (.I(Magnitude_OBUF[2]),
        .O(Magnitude[2]));
  OBUF \Magnitude_OBUF[3]_inst 
       (.I(Magnitude_OBUF[3]),
        .O(Magnitude[3]));
  OBUF \Magnitude_OBUF[4]_inst 
       (.I(Magnitude_OBUF[4]),
        .O(Magnitude[4]));
  OBUF \Magnitude_OBUF[5]_inst 
       (.I(Magnitude_OBUF[5]),
        .O(Magnitude[5]));
  OBUF \Magnitude_OBUF[6]_inst 
       (.I(Magnitude_OBUF[6]),
        .O(Magnitude[6]));
  OBUF \Magnitude_OBUF[7]_inst 
       (.I(Magnitude_OBUF[7]),
        .O(Magnitude[7]));
  OBUF \Magnitude_OBUF[8]_inst 
       (.I(Magnitude_OBUF[8]),
        .O(Magnitude[8]));
  OBUF \Magnitude_OBUF[9]_inst 
       (.I(Magnitude_OBUF[9]),
        .O(Magnitude[9]));
  FDCE #(
    .INIT(1'b0)) 
    \OutTheda_FF_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(pipe_reg_theda2[0]),
        .Q(OutTheda_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \OutTheda_FF_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_10[10]),
        .Q(OutTheda_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \OutTheda_FF_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_10[11]),
        .Q(OutTheda_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \OutTheda_FF_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_10[12]),
        .Q(OutTheda_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \OutTheda_FF_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_10[13]),
        .Q(OutTheda_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \OutTheda_FF_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(pipe_reg_theda2[1]),
        .Q(OutTheda_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \OutTheda_FF_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(pipe_reg_theda2[2]),
        .Q(OutTheda_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \OutTheda_FF_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(pipe_reg_theda2[3]),
        .Q(OutTheda_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \OutTheda_FF_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(pipe_reg_theda2[4]),
        .Q(OutTheda_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \OutTheda_FF_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_10[5]),
        .Q(OutTheda_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \OutTheda_FF_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_10[6]),
        .Q(OutTheda_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \OutTheda_FF_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_10[7]),
        .Q(OutTheda_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \OutTheda_FF_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_10[8]),
        .Q(OutTheda_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \OutTheda_FF_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_10[9]),
        .Q(OutTheda_OBUF[9]));
  OBUF \OutTheda_OBUF[0]_inst 
       (.I(OutTheda_OBUF[0]),
        .O(OutTheda[0]));
  OBUF \OutTheda_OBUF[10]_inst 
       (.I(OutTheda_OBUF[10]),
        .O(OutTheda[10]));
  OBUF \OutTheda_OBUF[11]_inst 
       (.I(OutTheda_OBUF[11]),
        .O(OutTheda[11]));
  OBUF \OutTheda_OBUF[12]_inst 
       (.I(OutTheda_OBUF[12]),
        .O(OutTheda[12]));
  OBUF \OutTheda_OBUF[13]_inst 
       (.I(OutTheda_OBUF[13]),
        .O(OutTheda[13]));
  OBUF \OutTheda_OBUF[1]_inst 
       (.I(OutTheda_OBUF[1]),
        .O(OutTheda[1]));
  OBUF \OutTheda_OBUF[2]_inst 
       (.I(OutTheda_OBUF[2]),
        .O(OutTheda[2]));
  OBUF \OutTheda_OBUF[3]_inst 
       (.I(OutTheda_OBUF[3]),
        .O(OutTheda[3]));
  OBUF \OutTheda_OBUF[4]_inst 
       (.I(OutTheda_OBUF[4]),
        .O(OutTheda[4]));
  OBUF \OutTheda_OBUF[5]_inst 
       (.I(OutTheda_OBUF[5]),
        .O(OutTheda[5]));
  OBUF \OutTheda_OBUF[6]_inst 
       (.I(OutTheda_OBUF[6]),
        .O(OutTheda[6]));
  OBUF \OutTheda_OBUF[7]_inst 
       (.I(OutTheda_OBUF[7]),
        .O(OutTheda[7]));
  OBUF \OutTheda_OBUF[8]_inst 
       (.I(OutTheda_OBUF[8]),
        .O(OutTheda[8]));
  OBUF \OutTheda_OBUF[9]_inst 
       (.I(OutTheda_OBUF[9]),
        .O(OutTheda[9]));
  FDCE #(
    .INIT(1'b0)) 
    \OutX_FF_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_12[0]),
        .Q(OutX_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \OutX_FF_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_12[10]),
        .Q(OutX_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \OutX_FF_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_12[11]),
        .Q(OutX_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \OutX_FF_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_12[12]),
        .Q(OutX_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \OutX_FF_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_12[13]),
        .Q(OutX_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \OutX_FF_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_12[1]),
        .Q(OutX_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \OutX_FF_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_12[2]),
        .Q(OutX_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \OutX_FF_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_12[3]),
        .Q(OutX_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \OutX_FF_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_12[4]),
        .Q(OutX_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \OutX_FF_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_12[5]),
        .Q(OutX_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \OutX_FF_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_12[6]),
        .Q(OutX_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \OutX_FF_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_12[7]),
        .Q(OutX_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \OutX_FF_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_12[8]),
        .Q(OutX_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \OutX_FF_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_12[9]),
        .Q(OutX_OBUF[9]));
  OBUF \OutX_OBUF[0]_inst 
       (.I(OutX_OBUF[0]),
        .O(OutX[0]));
  OBUF \OutX_OBUF[10]_inst 
       (.I(OutX_OBUF[10]),
        .O(OutX[10]));
  OBUF \OutX_OBUF[11]_inst 
       (.I(OutX_OBUF[11]),
        .O(OutX[11]));
  OBUF \OutX_OBUF[12]_inst 
       (.I(OutX_OBUF[12]),
        .O(OutX[12]));
  OBUF \OutX_OBUF[13]_inst 
       (.I(OutX_OBUF[13]),
        .O(OutX[13]));
  OBUF \OutX_OBUF[1]_inst 
       (.I(OutX_OBUF[1]),
        .O(OutX[1]));
  OBUF \OutX_OBUF[2]_inst 
       (.I(OutX_OBUF[2]),
        .O(OutX[2]));
  OBUF \OutX_OBUF[3]_inst 
       (.I(OutX_OBUF[3]),
        .O(OutX[3]));
  OBUF \OutX_OBUF[4]_inst 
       (.I(OutX_OBUF[4]),
        .O(OutX[4]));
  OBUF \OutX_OBUF[5]_inst 
       (.I(OutX_OBUF[5]),
        .O(OutX[5]));
  OBUF \OutX_OBUF[6]_inst 
       (.I(OutX_OBUF[6]),
        .O(OutX[6]));
  OBUF \OutX_OBUF[7]_inst 
       (.I(OutX_OBUF[7]),
        .O(OutX[7]));
  OBUF \OutX_OBUF[8]_inst 
       (.I(OutX_OBUF[8]),
        .O(OutX[8]));
  OBUF \OutX_OBUF[9]_inst 
       (.I(OutX_OBUF[9]),
        .O(OutX[9]));
  FDCE #(
    .INIT(1'b0)) 
    \OutY_FF_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_11[0]),
        .Q(OutY_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \OutY_FF_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_11[10]),
        .Q(OutY_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \OutY_FF_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_11[11]),
        .Q(OutY_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \OutY_FF_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_11[12]),
        .Q(OutY_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \OutY_FF_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_11[13]),
        .Q(OutY_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \OutY_FF_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_11[1]),
        .Q(OutY_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \OutY_FF_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_11[2]),
        .Q(OutY_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \OutY_FF_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_11[3]),
        .Q(OutY_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \OutY_FF_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_11[4]),
        .Q(OutY_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \OutY_FF_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_11[5]),
        .Q(OutY_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \OutY_FF_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_11[6]),
        .Q(OutY_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \OutY_FF_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_11[7]),
        .Q(OutY_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \OutY_FF_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_11[8]),
        .Q(OutY_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \OutY_FF_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_11[9]),
        .Q(OutY_OBUF[9]));
  OBUF \OutY_OBUF[0]_inst 
       (.I(OutY_OBUF[0]),
        .O(OutY[0]));
  OBUF \OutY_OBUF[10]_inst 
       (.I(OutY_OBUF[10]),
        .O(OutY[10]));
  OBUF \OutY_OBUF[11]_inst 
       (.I(OutY_OBUF[11]),
        .O(OutY[11]));
  OBUF \OutY_OBUF[12]_inst 
       (.I(OutY_OBUF[12]),
        .O(OutY[12]));
  OBUF \OutY_OBUF[13]_inst 
       (.I(OutY_OBUF[13]),
        .O(OutY[13]));
  OBUF \OutY_OBUF[1]_inst 
       (.I(OutY_OBUF[1]),
        .O(OutY[1]));
  OBUF \OutY_OBUF[2]_inst 
       (.I(OutY_OBUF[2]),
        .O(OutY[2]));
  OBUF \OutY_OBUF[3]_inst 
       (.I(OutY_OBUF[3]),
        .O(OutY[3]));
  OBUF \OutY_OBUF[4]_inst 
       (.I(OutY_OBUF[4]),
        .O(OutY[4]));
  OBUF \OutY_OBUF[5]_inst 
       (.I(OutY_OBUF[5]),
        .O(OutY[5]));
  OBUF \OutY_OBUF[6]_inst 
       (.I(OutY_OBUF[6]),
        .O(OutY[6]));
  OBUF \OutY_OBUF[7]_inst 
       (.I(OutY_OBUF[7]),
        .O(OutY[7]));
  OBUF \OutY_OBUF[8]_inst 
       (.I(OutY_OBUF[8]),
        .O(OutY[8]));
  OBUF \OutY_OBUF[9]_inst 
       (.I(OutY_OBUF[9]),
        .O(OutY[9]));
  FDCE #(
    .INIT(1'b0)) 
    ValidIn_FF1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(ValidIn_IBUF),
        .Q(ValidIn_FF1));
  FDCE #(
    .INIT(1'b0)) 
    ValidIn_FF2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(ValidIn_FF1),
        .Q(ValidIn_FF2));
  FDCE #(
    .INIT(1'b0)) 
    ValidIn_FF3_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(ValidIn_FF2),
        .Q(ValidIn_FF3));
  FDCE #(
    .INIT(1'b0)) 
    ValidIn_FF4_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(ValidIn_FF3),
        .Q(ValidOut_Theda_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    ValidIn_FF5_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(ValidOut_Theda_OBUF),
        .Q(ValidOut_Magnitude_OBUF));
  IBUF ValidIn_IBUF_inst
       (.I(ValidIn),
        .O(ValidIn_IBUF));
  OBUF ValidOut_Magnitude_OBUF_inst
       (.I(ValidOut_Magnitude_OBUF),
        .O(ValidOut_Magnitude));
  OBUF ValidOut_Theda_OBUF_inst
       (.I(ValidOut_Theda_OBUF),
        .O(ValidOut_Theda));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF i_rst_IBUF_inst
       (.I(i_rst),
        .O(i_rst_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X[0]),
        .Q(pipe_reg_X1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X1_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X[10]),
        .Q(pipe_reg_X1[10]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X1_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X[11]),
        .Q(pipe_reg_X1[11]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X1_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X[12]),
        .Q(pipe_reg_X1[12]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X1_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X[13]),
        .Q(pipe_reg_X1[13]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X[1]),
        .Q(pipe_reg_X1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X[2]),
        .Q(pipe_reg_X1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X[3]),
        .Q(pipe_reg_X1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X[4]),
        .Q(pipe_reg_X1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X[5]),
        .Q(pipe_reg_X1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X[6]),
        .Q(pipe_reg_X1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X[7]),
        .Q(pipe_reg_X1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X1_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X[8]),
        .Q(pipe_reg_X1[8]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X1_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X[9]),
        .Q(pipe_reg_X1[9]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_6[0]),
        .Q(pipe_reg_X2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X2_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_6[10]),
        .Q(pipe_reg_X2[10]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X2_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_6[11]),
        .Q(pipe_reg_X2[11]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X2_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_6[12]),
        .Q(pipe_reg_X2[12]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X2_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_6[13]),
        .Q(pipe_reg_X2[13]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_6[1]),
        .Q(pipe_reg_X2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_6[2]),
        .Q(pipe_reg_X2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_6[3]),
        .Q(pipe_reg_X2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_6[4]),
        .Q(pipe_reg_X2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_6[5]),
        .Q(pipe_reg_X2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_6[6]),
        .Q(pipe_reg_X2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_6[7]),
        .Q(pipe_reg_X2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X2_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_6[8]),
        .Q(pipe_reg_X2[8]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_X2_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_X_6[9]),
        .Q(pipe_reg_X2[9]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y[0]),
        .Q(pipe_reg_Y1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y1_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y[10]),
        .Q(pipe_reg_Y1[10]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y1_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y[11]),
        .Q(pipe_reg_Y1[11]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y1_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y[12]),
        .Q(pipe_reg_Y1[12]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y1_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y[13]),
        .Q(pipe_reg_Y1[13]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y[1]),
        .Q(pipe_reg_Y1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y[2]),
        .Q(pipe_reg_Y1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y[3]),
        .Q(pipe_reg_Y1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y[4]),
        .Q(pipe_reg_Y1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y[5]),
        .Q(pipe_reg_Y1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y[6]),
        .Q(pipe_reg_Y1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y[7]),
        .Q(pipe_reg_Y1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y1_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y[8]),
        .Q(pipe_reg_Y1[8]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y1_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y[9]),
        .Q(pipe_reg_Y1[9]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_5[0]),
        .Q(pipe_reg_Y2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y2_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_5[10]),
        .Q(pipe_reg_Y2[10]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y2_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_5[11]),
        .Q(pipe_reg_Y2[11]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y2_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_5[12]),
        .Q(pipe_reg_Y2[12]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y2_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_5[13]),
        .Q(pipe_reg_Y2[13]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_5[1]),
        .Q(pipe_reg_Y2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_5[2]),
        .Q(pipe_reg_Y2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_5[3]),
        .Q(pipe_reg_Y2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_5[4]),
        .Q(pipe_reg_Y2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_5[5]),
        .Q(pipe_reg_Y2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_5[6]),
        .Q(pipe_reg_Y2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_5[7]),
        .Q(pipe_reg_Y2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y2_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_5[8]),
        .Q(pipe_reg_Y2[8]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_Y2_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_Y_5[9]),
        .Q(pipe_reg_Y2[9]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda1_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_0[10]),
        .Q(pipe_reg_theda1[10]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda1_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_0[11]),
        .Q(pipe_reg_theda1[11]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda1_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_0[12]),
        .Q(pipe_reg_theda1[12]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda1_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_0[13]),
        .Q(pipe_reg_theda1[13]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_0[1]),
        .Q(pipe_reg_theda1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_0[2]),
        .Q(pipe_reg_theda1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_0[3]),
        .Q(pipe_reg_theda1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_0[4]),
        .Q(pipe_reg_theda1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_0[5]),
        .Q(pipe_reg_theda1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_0[6]),
        .Q(pipe_reg_theda1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_0[7]),
        .Q(pipe_reg_theda1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda1_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_0[8]),
        .Q(pipe_reg_theda1[8]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda1_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_0[9]),
        .Q(pipe_reg_theda1[9]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(1'b1),
        .Q(pipe_reg_theda2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda2_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_4[10]),
        .Q(pipe_reg_theda2[10]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda2_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_4[11]),
        .Q(pipe_reg_theda2[11]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda2_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_4[12]),
        .Q(pipe_reg_theda2[12]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda2_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_4[13]),
        .Q(pipe_reg_theda2[13]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_4[1]),
        .Q(pipe_reg_theda2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_4[2]),
        .Q(pipe_reg_theda2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_4[3]),
        .Q(pipe_reg_theda2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_4[4]),
        .Q(pipe_reg_theda2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_4[5]),
        .Q(pipe_reg_theda2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_4[6]),
        .Q(pipe_reg_theda2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_4[7]),
        .Q(pipe_reg_theda2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda2_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_4[8]),
        .Q(pipe_reg_theda2[8]));
  FDCE #(
    .INIT(1'b0)) 
    \pipe_reg_theda2_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(sum_theda_4[9]),
        .Q(pipe_reg_theda2[9]));
  single_stage single_stage_u0
       (.A(A),
        .CO(single_stage_u0_n_14),
        .D(sum_Y),
        .DI(single_stage_u1_n_28),
        .\InY_FF_reg[12] ({sum_theda[11:10],sum_theda[8:6],sum_theda[3:2]}),
        .\InY_FF_reg[12]_0 (neg_Y),
        .O(neg_X),
        .Q(InX_FF),
        .S(\wire_X[0] ),
        .\pipe_reg_Y1_reg[2] (single_stage_u1_n_36),
        .\pipe_reg_theda1_reg[13] ({single_stage_u1_n_29,single_stage_u1_n_30,single_stage_u1_n_31}),
        .\pipe_reg_theda1_reg[13]_0 ({single_stage_u1_n_32,single_stage_u1_n_33,single_stage_u1_n_34,single_stage_u1_n_35}),
        .sum_Y_carry__2_0({single_stage_u0_n_38,single_stage_u0_n_39,single_stage_u0_n_40,single_stage_u0_n_41}),
        .sum_Y_carry__2_1({single_stage_u0_n_42,single_stage_u0_n_43,single_stage_u0_n_44,single_stage_u0_n_45}),
        .sum_Y_carry__2_2({single_stage_u0_n_46,single_stage_u0_n_47,single_stage_u0_n_48,single_stage_u0_n_49}),
        .sum_Y_carry__2_3({single_stage_u0_n_50,single_stage_u0_n_51}),
        .sum_Y_carry__2_4(single_stage_u0_n_60),
        .sum_Y_carry__2_5({single_stage_u0_n_61,single_stage_u0_n_62}),
        .sum_Y_carry__2_6(single_stage_u0_n_63),
        .sum_theda_carry__0_0({single_stage_u0_n_52,single_stage_u0_n_53,single_stage_u0_n_54,single_stage_u0_n_55}),
        .sum_theda_carry__0_1(InY_FF),
        .sum_theda_carry__1_0({single_stage_u0_n_56,single_stage_u0_n_57,single_stage_u0_n_58,single_stage_u0_n_59}),
        .sum_theda_carry__1_1({single_stage_u0_n_64,single_stage_u0_n_65}));
  single_stage_0 single_stage_u1
       (.A(A),
        .D(sum_X),
        .DI({single_stage_u0_n_61,single_stage_u0_n_62,single_stage_u0_n_14}),
        .\InX_FF_reg[12] (single_stage_u1_n_28),
        .\InX_FF_reg[12]_0 ({single_stage_u1_n_32,single_stage_u1_n_33,single_stage_u1_n_34,single_stage_u1_n_35}),
        .\InX_FF_reg[12]_1 (single_stage_u1_n_36),
        .\InY_FF_reg[12] ({single_stage_u1_n_29,single_stage_u1_n_30,single_stage_u1_n_31}),
        .O(neg_X),
        .Q(InX_FF[12]),
        .S(\wire_X[0] ),
        .\pipe_reg_X1_reg[11] ({single_stage_u0_n_46,single_stage_u0_n_47,single_stage_u0_n_48,single_stage_u0_n_49}),
        .\pipe_reg_X1_reg[3] (single_stage_u0_n_60),
        .\pipe_reg_X1_reg[3]_0 ({single_stage_u0_n_38,single_stage_u0_n_39,single_stage_u0_n_40,single_stage_u0_n_41}),
        .\pipe_reg_X1_reg[7] ({single_stage_u0_n_42,single_stage_u0_n_43,single_stage_u0_n_44,single_stage_u0_n_45}),
        .\pipe_reg_theda1_reg[11] (single_stage_u0_n_63),
        .\pipe_reg_theda1_reg[11]_0 ({single_stage_u0_n_56,single_stage_u0_n_57,single_stage_u0_n_58,single_stage_u0_n_59}),
        .\pipe_reg_theda1_reg[13] ({sum_theda[11:10],sum_theda[8:6],sum_theda[3:2]}),
        .\pipe_reg_theda1_reg[13]_0 ({single_stage_u0_n_64,single_stage_u0_n_65}),
        .\pipe_reg_theda1_reg[3] ({single_stage_u0_n_50,single_stage_u0_n_51}),
        .\pipe_reg_theda1_reg[7] ({single_stage_u0_n_52,single_stage_u0_n_53,single_stage_u0_n_54,single_stage_u0_n_55}),
        .sum_theda_carry__1_0(neg_Y),
        .sum_theda_carry__1_1(InY_FF[12]),
        .sum_theda_carry__2_i_2(sum_theda_0));
  single_stage_1 single_stage_u2
       (.DI(single_stage_u2_n_67),
        .Q(pipe_reg_Y1),
        .S({single_stage_u3_n_41,single_stage_u3_n_42}),
        .\pipe_reg_X1_reg[11] ({single_stage_u2_n_46,single_stage_u2_n_47}),
        .\pipe_reg_X1_reg[12] ({single_stage_u2_n_60,single_stage_u2_n_61}),
        .\pipe_reg_X1_reg[7] ({single_stage_u2_n_42,single_stage_u2_n_43,single_stage_u2_n_44,single_stage_u2_n_45}),
        .\pipe_reg_X2_reg[13] (pipe_reg_X1),
        .\pipe_reg_Y1_reg[11] ({single_stage_u2_n_56,single_stage_u2_n_57,single_stage_u2_n_58,single_stage_u2_n_59}),
        .\pipe_reg_Y1_reg[12] (single_stage_u2_n_66),
        .\pipe_reg_Y1_reg[13] ({single_stage_u2_n_38,single_stage_u2_n_39,single_stage_u2_n_40,single_stage_u2_n_41}),
        .\pipe_reg_Y1_reg[3] ({single_stage_u2_n_48,single_stage_u2_n_49,single_stage_u2_n_50,single_stage_u2_n_51}),
        .\pipe_reg_Y1_reg[7] ({single_stage_u2_n_52,single_stage_u2_n_53,single_stage_u2_n_54,single_stage_u2_n_55}),
        .\pipe_reg_theda1_reg[10] ({sum_theda_1[11:8],sum_theda_1[6:1]}),
        .\pipe_reg_theda1_reg[10]_0 ({single_stage_u2_n_62,single_stage_u2_n_63,single_stage_u2_n_64,single_stage_u2_n_65}),
        .\pipe_reg_theda1_reg[10]_1 ({single_stage_u2_n_72,single_stage_u2_n_73,single_stage_u2_n_74,single_stage_u2_n_75}),
        .\pipe_reg_theda1_reg[11] (single_stage_u2_n_76),
        .\pipe_reg_theda1_reg[3] ({single_stage_u2_n_68,single_stage_u2_n_69,single_stage_u2_n_70,single_stage_u2_n_71}),
        .sum_X(sum_X_3),
        .sum_Y(sum_Y_2),
        .sum_theda_carry__1_0(pipe_reg_theda1[11:1]),
        .sum_theda_carry__1_i_2__1_0({single_stage_u3_n_43,single_stage_u3_n_44}));
  single_stage_2 single_stage_u3
       (.D(sum_X_6),
        .DI(single_stage_u2_n_67),
        .Q(pipe_reg_Y1[13:12]),
        .S({single_stage_u3_n_41,single_stage_u3_n_42}),
        .\pipe_reg_X2_reg[11] ({single_stage_u2_n_46,single_stage_u2_n_47}),
        .\pipe_reg_X2_reg[3] ({single_stage_u2_n_38,single_stage_u2_n_39,single_stage_u2_n_40,single_stage_u2_n_41}),
        .\pipe_reg_X2_reg[7] ({single_stage_u2_n_42,single_stage_u2_n_43,single_stage_u2_n_44,single_stage_u2_n_45}),
        .\pipe_reg_Y1_reg[12] (sum_Y_5),
        .\pipe_reg_Y2_reg[11] ({single_stage_u2_n_56,single_stage_u2_n_57,single_stage_u2_n_58,single_stage_u2_n_59}),
        .\pipe_reg_Y2_reg[13] ({single_stage_u2_n_60,single_stage_u2_n_61}),
        .\pipe_reg_Y2_reg[3] (single_stage_u2_n_66),
        .\pipe_reg_Y2_reg[3]_0 ({single_stage_u2_n_48,single_stage_u2_n_49,single_stage_u2_n_50,single_stage_u2_n_51}),
        .\pipe_reg_Y2_reg[7] ({single_stage_u2_n_52,single_stage_u2_n_53,single_stage_u2_n_54,single_stage_u2_n_55}),
        .\pipe_reg_theda1_reg[12] ({single_stage_u3_n_43,single_stage_u3_n_44}),
        .\pipe_reg_theda2_reg[12] ({sum_theda_1[11:8],sum_theda_1[6:1]}),
        .\pipe_reg_theda2_reg[12]_0 ({single_stage_u2_n_72,single_stage_u2_n_73,single_stage_u2_n_74,single_stage_u2_n_75}),
        .\pipe_reg_theda2_reg[13] (single_stage_u2_n_76),
        .\pipe_reg_theda2_reg[4] ({single_stage_u2_n_68,single_stage_u2_n_69,single_stage_u2_n_70,single_stage_u2_n_71}),
        .\pipe_reg_theda2_reg[8] ({single_stage_u2_n_62,single_stage_u2_n_63,single_stage_u2_n_64,single_stage_u2_n_65}),
        .sum_X(sum_X_3),
        .sum_Y(sum_Y_2),
        .sum_Y_carry__2_0(pipe_reg_X1[13]),
        .sum_theda_carry__2_0(pipe_reg_theda1[13:11]),
        .sum_theda_carry__2_i_1__1(sum_theda_4));
  single_stage_3 single_stage_u4
       (.DI(single_stage_u4_n_59),
        .\OutTheda_FF_reg[12] (pipe_reg_theda2[11:6]),
        .\OutTheda_FF_reg[12]_0 ({single_stage_u5_n_39,single_stage_u5_n_40,single_stage_u5_n_41,single_stage_u5_n_42}),
        .\OutX_FF_reg[13] (pipe_reg_X2),
        .Q(pipe_reg_Y2),
        .S({single_stage_u5_n_37,single_stage_u5_n_38}),
        .\pipe_reg_X2_reg[12] ({single_stage_u4_n_53,single_stage_u4_n_54}),
        .\pipe_reg_X2_reg[7] ({single_stage_u4_n_37,single_stage_u4_n_38,single_stage_u4_n_39,single_stage_u4_n_40}),
        .\pipe_reg_Y2_reg[11] ({single_stage_u4_n_49,single_stage_u4_n_50,single_stage_u4_n_51,single_stage_u4_n_52}),
        .\pipe_reg_Y2_reg[12] ({single_stage_u4_n_55,single_stage_u4_n_56,single_stage_u4_n_57}),
        .\pipe_reg_Y2_reg[12]_0 (single_stage_u4_n_58),
        .\pipe_reg_Y2_reg[13] ({single_stage_u4_n_33,single_stage_u4_n_34,single_stage_u4_n_35,single_stage_u4_n_36}),
        .\pipe_reg_Y2_reg[3] ({single_stage_u4_n_41,single_stage_u4_n_42,single_stage_u4_n_43,single_stage_u4_n_44}),
        .\pipe_reg_Y2_reg[7] ({single_stage_u4_n_45,single_stage_u4_n_46,single_stage_u4_n_47,single_stage_u4_n_48}),
        .\pipe_reg_theda2_reg[11] ({sum_theda_7[11:8],sum_theda_7[6]}),
        .\pipe_reg_theda2_reg[11]_0 ({single_stage_u4_n_60,single_stage_u4_n_61,single_stage_u4_n_62,single_stage_u4_n_63}),
        .\pipe_reg_theda2_reg[11]_1 (single_stage_u4_n_64),
        .sum_X(sum_X_9),
        .sum_Y(sum_Y_8));
  single_stage_4 single_stage_u5
       (.D(sum_X_12),
        .DI({single_stage_u4_n_59,sum_theda_7[6]}),
        .\OutTheda_FF_reg[12] (sum_theda_7[11:8]),
        .\OutTheda_FF_reg[12]_0 ({single_stage_u4_n_60,single_stage_u4_n_61,single_stage_u4_n_62,single_stage_u4_n_63}),
        .\OutTheda_FF_reg[13] (single_stage_u4_n_64),
        .\OutX_FF_reg[3] ({single_stage_u4_n_33,single_stage_u4_n_34,single_stage_u4_n_35,single_stage_u4_n_36}),
        .\OutX_FF_reg[7] ({single_stage_u4_n_37,single_stage_u4_n_38,single_stage_u4_n_39,single_stage_u4_n_40}),
        .\OutY_FF_reg[11] ({single_stage_u4_n_49,single_stage_u4_n_50,single_stage_u4_n_51,single_stage_u4_n_52}),
        .\OutY_FF_reg[13] ({single_stage_u4_n_53,single_stage_u4_n_54}),
        .\OutY_FF_reg[3] (single_stage_u4_n_58),
        .\OutY_FF_reg[3]_0 ({single_stage_u4_n_41,single_stage_u4_n_42,single_stage_u4_n_43,single_stage_u4_n_44}),
        .\OutY_FF_reg[7] ({single_stage_u4_n_45,single_stage_u4_n_46,single_stage_u4_n_47,single_stage_u4_n_48}),
        .Q(pipe_reg_Y2[13:12]),
        .S({single_stage_u4_n_55,single_stage_u4_n_56,single_stage_u4_n_57,pipe_reg_theda2[5]}),
        .\pipe_reg_X2_reg[13] ({single_stage_u5_n_37,single_stage_u5_n_38}),
        .\pipe_reg_Y2_reg[12] (sum_Y_11),
        .\pipe_reg_theda2_reg[12] ({single_stage_u5_n_39,single_stage_u5_n_40,single_stage_u5_n_41,single_stage_u5_n_42}),
        .sum_X(sum_X_9),
        .sum_Y(sum_Y_8),
        .sum_Y_carry__2_0(pipe_reg_X2[13]),
        .sum_theda_carry__0_0(pipe_reg_theda2[13:9]),
        .sum_theda_carry__1_i_1__3(sum_theda_10));
endmodule

module single_stage
   (A,
    CO,
    \InY_FF_reg[12] ,
    O,
    \InY_FF_reg[12]_0 ,
    D,
    sum_Y_carry__2_0,
    sum_Y_carry__2_1,
    sum_Y_carry__2_2,
    sum_Y_carry__2_3,
    sum_theda_carry__0_0,
    sum_theda_carry__1_0,
    sum_Y_carry__2_4,
    sum_Y_carry__2_5,
    sum_Y_carry__2_6,
    sum_theda_carry__1_1,
    S,
    DI,
    \pipe_reg_Y1_reg[2] ,
    \pipe_reg_theda1_reg[13] ,
    \pipe_reg_theda1_reg[13]_0 ,
    Q,
    sum_theda_carry__0_1);
  output [13:0]A;
  output [0:0]CO;
  output [6:0]\InY_FF_reg[12] ;
  output [0:0]O;
  output [0:0]\InY_FF_reg[12]_0 ;
  output [13:0]D;
  output [3:0]sum_Y_carry__2_0;
  output [3:0]sum_Y_carry__2_1;
  output [3:0]sum_Y_carry__2_2;
  output [1:0]sum_Y_carry__2_3;
  output [3:0]sum_theda_carry__0_0;
  output [3:0]sum_theda_carry__1_0;
  output sum_Y_carry__2_4;
  output [1:0]sum_Y_carry__2_5;
  output [0:0]sum_Y_carry__2_6;
  output [1:0]sum_theda_carry__1_1;
  input [0:0]S;
  input [0:0]DI;
  input [0:0]\pipe_reg_Y1_reg[2] ;
  input [2:0]\pipe_reg_theda1_reg[13] ;
  input [3:0]\pipe_reg_theda1_reg[13]_0 ;
  input [12:0]Q;
  input [12:0]sum_theda_carry__0_1;

  wire [13:0]A;
  wire [0:0]CO;
  wire [13:0]D;
  wire [0:0]DI;
  wire [6:0]\InY_FF_reg[12] ;
  wire [0:0]\InY_FF_reg[12]_0 ;
  wire [0:0]O;
  wire [12:0]Q;
  wire [0:0]S;
  wire [11:1]neg_X;
  wire [11:1]neg_Y;
  wire [11:0]p_0_in;
  wire \pipe_reg_Y1[10]_i_2_n_0 ;
  wire \pipe_reg_Y1[10]_i_3_n_0 ;
  wire \pipe_reg_Y1[10]_i_4_n_0 ;
  wire \pipe_reg_Y1[10]_i_5_n_0 ;
  wire \pipe_reg_Y1[13]_i_2_n_0 ;
  wire \pipe_reg_Y1[13]_i_3_n_0 ;
  wire \pipe_reg_Y1[13]_i_4_n_0 ;
  wire \pipe_reg_Y1[2]_i_2_n_0 ;
  wire \pipe_reg_Y1[2]_i_3_n_0 ;
  wire \pipe_reg_Y1[2]_i_4_n_0 ;
  wire \pipe_reg_Y1[6]_i_2_n_0 ;
  wire \pipe_reg_Y1[6]_i_3_n_0 ;
  wire \pipe_reg_Y1[6]_i_4_n_0 ;
  wire \pipe_reg_Y1[6]_i_5_n_0 ;
  wire \pipe_reg_Y1_reg[10]_i_1_n_0 ;
  wire \pipe_reg_Y1_reg[10]_i_1_n_1 ;
  wire \pipe_reg_Y1_reg[10]_i_1_n_2 ;
  wire \pipe_reg_Y1_reg[10]_i_1_n_3 ;
  wire \pipe_reg_Y1_reg[13]_i_1_n_2 ;
  wire \pipe_reg_Y1_reg[13]_i_1_n_3 ;
  wire [0:0]\pipe_reg_Y1_reg[2] ;
  wire \pipe_reg_Y1_reg[2]_i_1_n_0 ;
  wire \pipe_reg_Y1_reg[2]_i_1_n_1 ;
  wire \pipe_reg_Y1_reg[2]_i_1_n_2 ;
  wire \pipe_reg_Y1_reg[2]_i_1_n_3 ;
  wire \pipe_reg_Y1_reg[6]_i_1_n_0 ;
  wire \pipe_reg_Y1_reg[6]_i_1_n_1 ;
  wire \pipe_reg_Y1_reg[6]_i_1_n_2 ;
  wire \pipe_reg_Y1_reg[6]_i_1_n_3 ;
  wire [2:0]\pipe_reg_theda1_reg[13] ;
  wire [3:0]\pipe_reg_theda1_reg[13]_0 ;
  wire sum_X_carry__0_i_10_n_0;
  wire sum_X_carry__0_i_10_n_1;
  wire sum_X_carry__0_i_10_n_2;
  wire sum_X_carry__0_i_10_n_3;
  wire sum_X_carry__0_i_15_n_0;
  wire sum_X_carry__0_i_16_n_0;
  wire sum_X_carry__0_i_17_n_0;
  wire sum_X_carry__0_i_18_n_0;
  wire sum_X_carry__0_i_5_n_0;
  wire sum_X_carry__0_i_6_n_0;
  wire sum_X_carry__0_i_7_n_0;
  wire sum_X_carry__0_i_8_n_0;
  wire sum_X_carry__0_i_9_n_0;
  wire sum_X_carry__0_i_9_n_1;
  wire sum_X_carry__0_i_9_n_2;
  wire sum_X_carry__0_i_9_n_3;
  wire sum_X_carry__0_n_0;
  wire sum_X_carry__0_n_1;
  wire sum_X_carry__0_n_2;
  wire sum_X_carry__0_n_3;
  wire sum_X_carry__1_i_10_n_0;
  wire sum_X_carry__1_i_5_n_0;
  wire sum_X_carry__1_i_6_n_0;
  wire sum_X_carry__1_i_7_n_0;
  wire sum_X_carry__1_i_8_n_0;
  wire sum_X_carry__1_i_9_n_1;
  wire sum_X_carry__1_i_9_n_2;
  wire sum_X_carry__1_i_9_n_3;
  wire sum_X_carry__1_n_0;
  wire sum_X_carry__1_n_1;
  wire sum_X_carry__1_n_2;
  wire sum_X_carry__1_n_3;
  wire sum_X_carry__2_n_2;
  wire sum_X_carry_i_10_n_1;
  wire sum_X_carry_i_10_n_2;
  wire sum_X_carry_i_10_n_3;
  wire sum_X_carry_i_11_n_0;
  wire sum_X_carry_i_11_n_1;
  wire sum_X_carry_i_11_n_2;
  wire sum_X_carry_i_11_n_3;
  wire sum_X_carry_i_12_n_0;
  wire sum_X_carry_i_12_n_1;
  wire sum_X_carry_i_12_n_2;
  wire sum_X_carry_i_12_n_3;
  wire sum_X_carry_i_13_n_0;
  wire sum_X_carry_i_14_n_0;
  wire sum_X_carry_i_15_n_0;
  wire sum_X_carry_i_16_n_0;
  wire sum_X_carry_i_22_n_0;
  wire sum_X_carry_i_23_n_0;
  wire sum_X_carry_i_24_n_0;
  wire sum_X_carry_i_25_n_0;
  wire sum_X_carry_i_26_n_0;
  wire sum_X_carry_i_6_n_0;
  wire sum_X_carry_i_7_n_0;
  wire sum_X_carry_i_8_n_0;
  wire sum_X_carry_i_9_n_0;
  wire sum_X_carry_n_0;
  wire sum_X_carry_n_1;
  wire sum_X_carry_n_2;
  wire sum_X_carry_n_3;
  wire sum_Y_carry__0_i_5_n_0;
  wire sum_Y_carry__0_i_6_n_0;
  wire sum_Y_carry__0_i_7_n_0;
  wire sum_Y_carry__0_i_8_n_0;
  wire sum_Y_carry__0_n_0;
  wire sum_Y_carry__0_n_1;
  wire sum_Y_carry__0_n_2;
  wire sum_Y_carry__0_n_3;
  wire sum_Y_carry__0_n_4;
  wire sum_Y_carry__0_n_5;
  wire sum_Y_carry__0_n_6;
  wire sum_Y_carry__0_n_7;
  wire sum_Y_carry__1_i_5_n_0;
  wire sum_Y_carry__1_i_6_n_0;
  wire sum_Y_carry__1_i_7_n_0;
  wire sum_Y_carry__1_i_8_n_0;
  wire sum_Y_carry__1_n_0;
  wire sum_Y_carry__1_n_1;
  wire sum_Y_carry__1_n_2;
  wire sum_Y_carry__1_n_3;
  wire sum_Y_carry__1_n_4;
  wire sum_Y_carry__1_n_5;
  wire sum_Y_carry__1_n_6;
  wire sum_Y_carry__1_n_7;
  wire [3:0]sum_Y_carry__2_0;
  wire [3:0]sum_Y_carry__2_1;
  wire [3:0]sum_Y_carry__2_2;
  wire [1:0]sum_Y_carry__2_3;
  wire sum_Y_carry__2_4;
  wire [1:0]sum_Y_carry__2_5;
  wire [0:0]sum_Y_carry__2_6;
  wire sum_Y_carry__2_n_7;
  wire sum_Y_carry_i_1_n_0;
  wire sum_Y_carry_i_6_n_0;
  wire sum_Y_carry_i_7_n_0;
  wire sum_Y_carry_i_8_n_0;
  wire sum_Y_carry_i_9_n_0;
  wire sum_Y_carry_n_0;
  wire sum_Y_carry_n_1;
  wire sum_Y_carry_n_2;
  wire sum_Y_carry_n_3;
  wire sum_Y_carry_n_4;
  wire sum_Y_carry_n_5;
  wire sum_Y_carry_n_6;
  wire sum_Y_carry_n_7;
  wire [13:4]sum_theda;
  wire [3:0]sum_theda_carry__0_0;
  wire [12:0]sum_theda_carry__0_1;
  wire sum_theda_carry__0_i_1_n_0;
  wire sum_theda_carry__0_i_2_n_0;
  wire sum_theda_carry__0_i_3_n_0;
  wire sum_theda_carry__0_i_4__0_n_0;
  wire sum_theda_carry__0_i_5_n_0;
  wire sum_theda_carry__0_i_6__0_n_0;
  wire sum_theda_carry__0_i_7_n_0;
  wire sum_theda_carry__0_i_8_n_0;
  wire sum_theda_carry__0_n_0;
  wire sum_theda_carry__0_n_1;
  wire sum_theda_carry__0_n_2;
  wire sum_theda_carry__0_n_3;
  wire [3:0]sum_theda_carry__1_0;
  wire [1:0]sum_theda_carry__1_1;
  wire sum_theda_carry__1_n_1;
  wire sum_theda_carry__1_n_2;
  wire sum_theda_carry__1_n_3;
  wire sum_theda_carry_i_1_n_0;
  wire sum_theda_carry_i_2__0_n_0;
  wire sum_theda_carry_i_3__4_n_0;
  wire sum_theda_carry_i_4__2_n_0;
  wire sum_theda_carry_i_5_n_0;
  wire sum_theda_carry_i_6_n_0;
  wire sum_theda_carry_n_0;
  wire sum_theda_carry_n_1;
  wire sum_theda_carry_n_2;
  wire sum_theda_carry_n_3;
  wire [11:0]\wire_X[0] ;
  wire [12:0]\wire_Y[0] ;
  wire [3:2]\NLW_pipe_reg_Y1_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_pipe_reg_Y1_reg[13]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_pipe_reg_Y1_reg[2]_i_1_O_UNCONNECTED ;
  wire [3:3]NLW_sum_X_carry__1_i_9_CO_UNCONNECTED;
  wire [3:0]NLW_sum_X_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_sum_X_carry__2_O_UNCONNECTED;
  wire [3:3]NLW_sum_X_carry_i_10_CO_UNCONNECTED;
  wire [3:0]NLW_sum_Y_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_sum_Y_carry__2_O_UNCONNECTED;
  wire [3:3]NLW_sum_theda_carry__1_CO_UNCONNECTED;

  LUT3 #(
    .INIT(8'h96)) 
    \pipe_reg_Y1[10]_i_2 
       (.I0(sum_Y_carry__1_n_5),
        .I1(A[11]),
        .I2(CO),
        .O(\pipe_reg_Y1[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \pipe_reg_Y1[10]_i_3 
       (.I0(sum_Y_carry__1_n_6),
        .I1(A[10]),
        .I2(CO),
        .O(\pipe_reg_Y1[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \pipe_reg_Y1[10]_i_4 
       (.I0(sum_Y_carry__1_n_7),
        .I1(A[9]),
        .I2(CO),
        .O(\pipe_reg_Y1[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \pipe_reg_Y1[10]_i_5 
       (.I0(sum_Y_carry__0_n_4),
        .I1(A[8]),
        .I2(CO),
        .O(\pipe_reg_Y1[10]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pipe_reg_Y1[13]_i_2 
       (.I0(sum_X_carry__2_n_2),
        .O(\pipe_reg_Y1[13]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \pipe_reg_Y1[13]_i_3 
       (.I0(sum_Y_carry__2_n_7),
        .I1(sum_X_carry__2_n_2),
        .I2(CO),
        .O(\pipe_reg_Y1[13]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \pipe_reg_Y1[13]_i_4 
       (.I0(sum_Y_carry__1_n_4),
        .I1(A[12]),
        .I2(CO),
        .O(\pipe_reg_Y1[13]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \pipe_reg_Y1[2]_i_2 
       (.I0(sum_Y_carry_n_5),
        .I1(A[3]),
        .I2(CO),
        .O(\pipe_reg_Y1[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \pipe_reg_Y1[2]_i_3 
       (.I0(sum_Y_carry_n_6),
        .I1(A[2]),
        .I2(CO),
        .O(\pipe_reg_Y1[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \pipe_reg_Y1[2]_i_4 
       (.I0(sum_Y_carry_n_7),
        .I1(A[1]),
        .I2(CO),
        .O(\pipe_reg_Y1[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \pipe_reg_Y1[6]_i_2 
       (.I0(sum_Y_carry__0_n_5),
        .I1(A[7]),
        .I2(CO),
        .O(\pipe_reg_Y1[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \pipe_reg_Y1[6]_i_3 
       (.I0(sum_Y_carry__0_n_6),
        .I1(A[6]),
        .I2(CO),
        .O(\pipe_reg_Y1[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \pipe_reg_Y1[6]_i_4 
       (.I0(sum_Y_carry__0_n_7),
        .I1(A[5]),
        .I2(CO),
        .O(\pipe_reg_Y1[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \pipe_reg_Y1[6]_i_5 
       (.I0(sum_Y_carry_n_4),
        .I1(A[4]),
        .I2(CO),
        .O(\pipe_reg_Y1[6]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pipe_reg_Y1_reg[10]_i_1 
       (.CI(\pipe_reg_Y1_reg[6]_i_1_n_0 ),
        .CO({\pipe_reg_Y1_reg[10]_i_1_n_0 ,\pipe_reg_Y1_reg[10]_i_1_n_1 ,\pipe_reg_Y1_reg[10]_i_1_n_2 ,\pipe_reg_Y1_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({sum_Y_carry__1_n_5,sum_Y_carry__1_n_6,sum_Y_carry__1_n_7,sum_Y_carry__0_n_4}),
        .O(D[10:7]),
        .S({\pipe_reg_Y1[10]_i_2_n_0 ,\pipe_reg_Y1[10]_i_3_n_0 ,\pipe_reg_Y1[10]_i_4_n_0 ,\pipe_reg_Y1[10]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pipe_reg_Y1_reg[13]_i_1 
       (.CI(\pipe_reg_Y1_reg[10]_i_1_n_0 ),
        .CO({\NLW_pipe_reg_Y1_reg[13]_i_1_CO_UNCONNECTED [3:2],\pipe_reg_Y1_reg[13]_i_1_n_2 ,\pipe_reg_Y1_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sum_Y_carry__2_n_7,sum_Y_carry__1_n_4}),
        .O({\NLW_pipe_reg_Y1_reg[13]_i_1_O_UNCONNECTED [3],D[13:11]}),
        .S({1'b0,\pipe_reg_Y1[13]_i_2_n_0 ,\pipe_reg_Y1[13]_i_3_n_0 ,\pipe_reg_Y1[13]_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pipe_reg_Y1_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\pipe_reg_Y1_reg[2]_i_1_n_0 ,\pipe_reg_Y1_reg[2]_i_1_n_1 ,\pipe_reg_Y1_reg[2]_i_1_n_2 ,\pipe_reg_Y1_reg[2]_i_1_n_3 }),
        .CYINIT(CO),
        .DI({sum_Y_carry_n_5,sum_Y_carry_n_6,sum_Y_carry_n_7,1'b0}),
        .O({D[2:0],\NLW_pipe_reg_Y1_reg[2]_i_1_O_UNCONNECTED [0]}),
        .S({\pipe_reg_Y1[2]_i_2_n_0 ,\pipe_reg_Y1[2]_i_3_n_0 ,\pipe_reg_Y1[2]_i_4_n_0 ,1'b1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pipe_reg_Y1_reg[6]_i_1 
       (.CI(\pipe_reg_Y1_reg[2]_i_1_n_0 ),
        .CO({\pipe_reg_Y1_reg[6]_i_1_n_0 ,\pipe_reg_Y1_reg[6]_i_1_n_1 ,\pipe_reg_Y1_reg[6]_i_1_n_2 ,\pipe_reg_Y1_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({sum_Y_carry__0_n_5,sum_Y_carry__0_n_6,sum_Y_carry__0_n_7,sum_Y_carry_n_4}),
        .O(D[6:3]),
        .S({\pipe_reg_Y1[6]_i_2_n_0 ,\pipe_reg_Y1[6]_i_3_n_0 ,\pipe_reg_Y1[6]_i_4_n_0 ,\pipe_reg_Y1[6]_i_5_n_0 }));
  CARRY4 sum_X_carry
       (.CI(1'b0),
        .CO({sum_X_carry_n_0,sum_X_carry_n_1,sum_X_carry_n_2,sum_X_carry_n_3}),
        .CYINIT(\wire_Y[0] [12]),
        .DI(\wire_X[0] [3:0]),
        .O(A[3:0]),
        .S({sum_X_carry_i_6_n_0,sum_X_carry_i_7_n_0,sum_X_carry_i_8_n_0,sum_X_carry_i_9_n_0}));
  CARRY4 sum_X_carry__0
       (.CI(sum_X_carry_n_0),
        .CO({sum_X_carry__0_n_0,sum_X_carry__0_n_1,sum_X_carry__0_n_2,sum_X_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\wire_X[0] [7:4]),
        .O(A[7:4]),
        .S({sum_X_carry__0_i_5_n_0,sum_X_carry__0_i_6_n_0,sum_X_carry__0_i_7_n_0,sum_X_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_X_carry__0_i_1
       (.I0(neg_X[7]),
        .I1(Q[7]),
        .I2(Q[12]),
        .O(\wire_X[0] [7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__0_i_10
       (.CI(sum_X_carry_i_12_n_0),
        .CO({sum_X_carry__0_i_10_n_0,sum_X_carry__0_i_10_n_1,sum_X_carry__0_i_10_n_2,sum_X_carry__0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(neg_Y[8:5]),
        .S({sum_X_carry__0_i_15_n_0,sum_X_carry__0_i_16_n_0,sum_X_carry__0_i_17_n_0,sum_X_carry__0_i_18_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry__0_i_11
       (.I0(Q[8]),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry__0_i_12
       (.I0(Q[7]),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry__0_i_13
       (.I0(Q[6]),
        .O(p_0_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry__0_i_14
       (.I0(Q[5]),
        .O(p_0_in[5]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry__0_i_15
       (.I0(sum_theda_carry__0_1[8]),
        .O(sum_X_carry__0_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry__0_i_16
       (.I0(sum_theda_carry__0_1[7]),
        .O(sum_X_carry__0_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry__0_i_17
       (.I0(sum_theda_carry__0_1[6]),
        .O(sum_X_carry__0_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry__0_i_18
       (.I0(sum_theda_carry__0_1[5]),
        .O(sum_X_carry__0_i_18_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_X_carry__0_i_1__0
       (.I0(A[7]),
        .I1(sum_Y_carry__1_n_7),
        .I2(CO),
        .O(sum_Y_carry__2_1[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_X_carry__0_i_2
       (.I0(neg_X[6]),
        .I1(Q[6]),
        .I2(Q[12]),
        .O(\wire_X[0] [6]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_X_carry__0_i_2__0
       (.I0(A[6]),
        .I1(sum_Y_carry__0_n_4),
        .I2(CO),
        .O(sum_Y_carry__2_1[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_X_carry__0_i_3
       (.I0(neg_X[5]),
        .I1(Q[5]),
        .I2(Q[12]),
        .O(\wire_X[0] [5]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_X_carry__0_i_3__0
       (.I0(A[5]),
        .I1(sum_Y_carry__0_n_5),
        .I2(CO),
        .O(sum_Y_carry__2_1[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_X_carry__0_i_4
       (.I0(neg_X[4]),
        .I1(Q[4]),
        .I2(Q[12]),
        .O(\wire_X[0] [4]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_X_carry__0_i_4__0
       (.I0(A[4]),
        .I1(sum_Y_carry__0_n_6),
        .I2(CO),
        .O(sum_Y_carry__2_1[0]));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    sum_X_carry__0_i_5
       (.I0(Q[7]),
        .I1(neg_X[7]),
        .I2(neg_Y[7]),
        .I3(sum_theda_carry__0_1[7]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_X_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    sum_X_carry__0_i_6
       (.I0(Q[6]),
        .I1(neg_X[6]),
        .I2(neg_Y[6]),
        .I3(sum_theda_carry__0_1[6]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_X_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    sum_X_carry__0_i_7
       (.I0(Q[5]),
        .I1(neg_X[5]),
        .I2(neg_Y[5]),
        .I3(sum_theda_carry__0_1[5]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_X_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    sum_X_carry__0_i_8
       (.I0(Q[4]),
        .I1(neg_X[4]),
        .I2(neg_Y[4]),
        .I3(sum_theda_carry__0_1[4]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_X_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__0_i_9
       (.CI(sum_X_carry_i_11_n_0),
        .CO({sum_X_carry__0_i_9_n_0,sum_X_carry__0_i_9_n_1,sum_X_carry__0_i_9_n_2,sum_X_carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(neg_X[8:5]),
        .S(p_0_in[8:5]));
  CARRY4 sum_X_carry__1
       (.CI(sum_X_carry__0_n_0),
        .CO({sum_X_carry__1_n_0,sum_X_carry__1_n_1,sum_X_carry__1_n_2,sum_X_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\wire_X[0] [11:8]),
        .O(A[11:8]),
        .S({sum_X_carry__1_i_5_n_0,sum_X_carry__1_i_6_n_0,sum_X_carry__1_i_7_n_0,sum_X_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_X_carry__1_i_1
       (.I0(neg_X[11]),
        .I1(Q[11]),
        .I2(Q[12]),
        .O(\wire_X[0] [11]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry__1_i_10
       (.I0(Q[12]),
        .O(sum_X_carry__1_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry__1_i_11
       (.I0(Q[11]),
        .O(p_0_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry__1_i_12
       (.I0(Q[10]),
        .O(p_0_in[10]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry__1_i_13
       (.I0(Q[9]),
        .O(p_0_in[9]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_X_carry__1_i_1__0
       (.I0(A[11]),
        .I1(sum_Y_carry__2_n_7),
        .I2(CO),
        .O(sum_Y_carry__2_2[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_X_carry__1_i_2
       (.I0(neg_X[10]),
        .I1(Q[10]),
        .I2(Q[12]),
        .O(\wire_X[0] [10]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_X_carry__1_i_2__0
       (.I0(A[10]),
        .I1(sum_Y_carry__1_n_4),
        .I2(CO),
        .O(sum_Y_carry__2_2[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_X_carry__1_i_3
       (.I0(neg_X[9]),
        .I1(Q[9]),
        .I2(Q[12]),
        .O(\wire_X[0] [9]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_X_carry__1_i_3__0
       (.I0(A[9]),
        .I1(sum_Y_carry__1_n_5),
        .I2(CO),
        .O(sum_Y_carry__2_2[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_X_carry__1_i_4
       (.I0(neg_X[8]),
        .I1(Q[8]),
        .I2(Q[12]),
        .O(\wire_X[0] [8]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_X_carry__1_i_4__0
       (.I0(A[8]),
        .I1(sum_Y_carry__1_n_6),
        .I2(CO),
        .O(sum_Y_carry__2_2[0]));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    sum_X_carry__1_i_5
       (.I0(Q[11]),
        .I1(neg_X[11]),
        .I2(neg_Y[11]),
        .I3(sum_theda_carry__0_1[11]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_X_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    sum_X_carry__1_i_6
       (.I0(Q[10]),
        .I1(neg_X[10]),
        .I2(neg_Y[10]),
        .I3(sum_theda_carry__0_1[10]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_X_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    sum_X_carry__1_i_7
       (.I0(Q[9]),
        .I1(neg_X[9]),
        .I2(neg_Y[9]),
        .I3(sum_theda_carry__0_1[9]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_X_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    sum_X_carry__1_i_8
       (.I0(Q[8]),
        .I1(neg_X[8]),
        .I2(neg_Y[8]),
        .I3(sum_theda_carry__0_1[8]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_X_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__1_i_9
       (.CI(sum_X_carry__0_i_9_n_0),
        .CO({NLW_sum_X_carry__1_i_9_CO_UNCONNECTED[3],sum_X_carry__1_i_9_n_1,sum_X_carry__1_i_9_n_2,sum_X_carry__1_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({O,neg_X[11:9]}),
        .S({sum_X_carry__1_i_10_n_0,p_0_in[11:9]}));
  CARRY4 sum_X_carry__2
       (.CI(sum_X_carry__1_n_0),
        .CO({NLW_sum_X_carry__2_CO_UNCONNECTED[3:2],sum_X_carry__2_n_2,NLW_sum_X_carry__2_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({NLW_sum_X_carry__2_O_UNCONNECTED[3:1],A[12]}),
        .S({1'b0,1'b0,1'b1,S}));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry__2_i_1__0
       (.I0(sum_X_carry__2_n_2),
        .O(A[13]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry_i_1
       (.I0(CO),
        .O(sum_Y_carry__2_4));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry_i_10
       (.CI(sum_X_carry__0_i_10_n_0),
        .CO({NLW_sum_X_carry_i_10_CO_UNCONNECTED[3],sum_X_carry_i_10_n_1,sum_X_carry_i_10_n_2,sum_X_carry_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\InY_FF_reg[12]_0 ,neg_Y[11:9]}),
        .S({sum_X_carry_i_13_n_0,sum_X_carry_i_14_n_0,sum_X_carry_i_15_n_0,sum_X_carry_i_16_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry_i_11
       (.CI(1'b0),
        .CO({sum_X_carry_i_11_n_0,sum_X_carry_i_11_n_1,sum_X_carry_i_11_n_2,sum_X_carry_i_11_n_3}),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(neg_X[4:1]),
        .S(p_0_in[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry_i_12
       (.CI(1'b0),
        .CO({sum_X_carry_i_12_n_0,sum_X_carry_i_12_n_1,sum_X_carry_i_12_n_2,sum_X_carry_i_12_n_3}),
        .CYINIT(sum_X_carry_i_22_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(neg_Y[4:1]),
        .S({sum_X_carry_i_23_n_0,sum_X_carry_i_24_n_0,sum_X_carry_i_25_n_0,sum_X_carry_i_26_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry_i_13
       (.I0(sum_theda_carry__0_1[12]),
        .O(sum_X_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry_i_14
       (.I0(sum_theda_carry__0_1[11]),
        .O(sum_X_carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry_i_15
       (.I0(sum_theda_carry__0_1[10]),
        .O(sum_X_carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry_i_16
       (.I0(sum_theda_carry__0_1[9]),
        .O(sum_X_carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry_i_17
       (.I0(Q[0]),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry_i_18
       (.I0(Q[4]),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry_i_19
       (.I0(Q[3]),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_X_carry_i_1__0
       (.I0(\InY_FF_reg[12]_0 ),
        .I1(sum_theda_carry__0_1[12]),
        .I2(Q[12]),
        .O(\wire_Y[0] [12]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_X_carry_i_2
       (.I0(neg_X[3]),
        .I1(Q[3]),
        .I2(Q[12]),
        .O(\wire_X[0] [3]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry_i_20
       (.I0(Q[2]),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry_i_21
       (.I0(Q[1]),
        .O(p_0_in[1]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry_i_22
       (.I0(sum_theda_carry__0_1[0]),
        .O(sum_X_carry_i_22_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry_i_23
       (.I0(sum_theda_carry__0_1[4]),
        .O(sum_X_carry_i_23_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry_i_24
       (.I0(sum_theda_carry__0_1[3]),
        .O(sum_X_carry_i_24_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry_i_25
       (.I0(sum_theda_carry__0_1[2]),
        .O(sum_X_carry_i_25_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_X_carry_i_26
       (.I0(sum_theda_carry__0_1[1]),
        .O(sum_X_carry_i_26_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_X_carry_i_2__0
       (.I0(A[3]),
        .I1(sum_Y_carry__0_n_7),
        .I2(CO),
        .O(sum_Y_carry__2_0[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_X_carry_i_3
       (.I0(neg_X[2]),
        .I1(Q[2]),
        .I2(Q[12]),
        .O(\wire_X[0] [2]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_X_carry_i_3__0
       (.I0(A[2]),
        .I1(sum_Y_carry_n_4),
        .I2(CO),
        .O(sum_Y_carry__2_0[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_X_carry_i_4
       (.I0(neg_X[1]),
        .I1(Q[1]),
        .I2(Q[12]),
        .O(\wire_X[0] [1]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_X_carry_i_4__0
       (.I0(A[1]),
        .I1(sum_Y_carry_n_5),
        .I2(CO),
        .O(sum_Y_carry__2_0[1]));
  LUT1 #(
    .INIT(2'h2)) 
    sum_X_carry_i_5
       (.I0(Q[0]),
        .O(\wire_X[0] [0]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_X_carry_i_5__0
       (.I0(A[0]),
        .I1(sum_Y_carry_n_6),
        .I2(CO),
        .O(sum_Y_carry__2_0[0]));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    sum_X_carry_i_6
       (.I0(Q[3]),
        .I1(neg_X[3]),
        .I2(neg_Y[3]),
        .I3(sum_theda_carry__0_1[3]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_X_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    sum_X_carry_i_7
       (.I0(Q[2]),
        .I1(neg_X[2]),
        .I2(neg_Y[2]),
        .I3(sum_theda_carry__0_1[2]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_X_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    sum_X_carry_i_8
       (.I0(Q[1]),
        .I1(neg_X[1]),
        .I2(neg_Y[1]),
        .I3(sum_theda_carry__0_1[1]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_X_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h99699666)) 
    sum_X_carry_i_9
       (.I0(Q[0]),
        .I1(sum_theda_carry__0_1[0]),
        .I2(Q[12]),
        .I3(\InY_FF_reg[12]_0 ),
        .I4(sum_theda_carry__0_1[12]),
        .O(sum_X_carry_i_9_n_0));
  CARRY4 sum_Y_carry
       (.CI(1'b0),
        .CO({sum_Y_carry_n_0,sum_Y_carry_n_1,sum_Y_carry_n_2,sum_Y_carry_n_3}),
        .CYINIT(sum_Y_carry_i_1_n_0),
        .DI(\wire_Y[0] [3:0]),
        .O({sum_Y_carry_n_4,sum_Y_carry_n_5,sum_Y_carry_n_6,sum_Y_carry_n_7}),
        .S({sum_Y_carry_i_6_n_0,sum_Y_carry_i_7_n_0,sum_Y_carry_i_8_n_0,sum_Y_carry_i_9_n_0}));
  CARRY4 sum_Y_carry__0
       (.CI(sum_Y_carry_n_0),
        .CO({sum_Y_carry__0_n_0,sum_Y_carry__0_n_1,sum_Y_carry__0_n_2,sum_Y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\wire_Y[0] [7:4]),
        .O({sum_Y_carry__0_n_4,sum_Y_carry__0_n_5,sum_Y_carry__0_n_6,sum_Y_carry__0_n_7}),
        .S({sum_Y_carry__0_i_5_n_0,sum_Y_carry__0_i_6_n_0,sum_Y_carry__0_i_7_n_0,sum_Y_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_Y_carry__0_i_1
       (.I0(neg_Y[7]),
        .I1(sum_theda_carry__0_1[7]),
        .I2(Q[12]),
        .O(\wire_Y[0] [7]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_Y_carry__0_i_2
       (.I0(neg_Y[6]),
        .I1(sum_theda_carry__0_1[6]),
        .I2(Q[12]),
        .O(\wire_Y[0] [6]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_Y_carry__0_i_3
       (.I0(neg_Y[5]),
        .I1(sum_theda_carry__0_1[5]),
        .I2(Q[12]),
        .O(\wire_Y[0] [5]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_Y_carry__0_i_4
       (.I0(neg_Y[4]),
        .I1(sum_theda_carry__0_1[4]),
        .I2(Q[12]),
        .O(\wire_Y[0] [4]));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    sum_Y_carry__0_i_5
       (.I0(sum_theda_carry__0_1[7]),
        .I1(neg_Y[7]),
        .I2(neg_X[7]),
        .I3(Q[7]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_Y_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    sum_Y_carry__0_i_6
       (.I0(sum_theda_carry__0_1[6]),
        .I1(neg_Y[6]),
        .I2(neg_X[6]),
        .I3(Q[6]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_Y_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    sum_Y_carry__0_i_7
       (.I0(sum_theda_carry__0_1[5]),
        .I1(neg_Y[5]),
        .I2(neg_X[5]),
        .I3(Q[5]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_Y_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    sum_Y_carry__0_i_8
       (.I0(sum_theda_carry__0_1[4]),
        .I1(neg_Y[4]),
        .I2(neg_X[4]),
        .I3(Q[4]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_Y_carry__0_i_8_n_0));
  CARRY4 sum_Y_carry__1
       (.CI(sum_Y_carry__0_n_0),
        .CO({sum_Y_carry__1_n_0,sum_Y_carry__1_n_1,sum_Y_carry__1_n_2,sum_Y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\wire_Y[0] [11:8]),
        .O({sum_Y_carry__1_n_4,sum_Y_carry__1_n_5,sum_Y_carry__1_n_6,sum_Y_carry__1_n_7}),
        .S({sum_Y_carry__1_i_5_n_0,sum_Y_carry__1_i_6_n_0,sum_Y_carry__1_i_7_n_0,sum_Y_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_Y_carry__1_i_1
       (.I0(neg_Y[11]),
        .I1(sum_theda_carry__0_1[11]),
        .I2(Q[12]),
        .O(\wire_Y[0] [11]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_Y_carry__1_i_2
       (.I0(neg_Y[10]),
        .I1(sum_theda_carry__0_1[10]),
        .I2(Q[12]),
        .O(\wire_Y[0] [10]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_Y_carry__1_i_3
       (.I0(neg_Y[9]),
        .I1(sum_theda_carry__0_1[9]),
        .I2(Q[12]),
        .O(\wire_Y[0] [9]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_Y_carry__1_i_4
       (.I0(neg_Y[8]),
        .I1(sum_theda_carry__0_1[8]),
        .I2(Q[12]),
        .O(\wire_Y[0] [8]));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    sum_Y_carry__1_i_5
       (.I0(sum_theda_carry__0_1[11]),
        .I1(neg_Y[11]),
        .I2(neg_X[11]),
        .I3(Q[11]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_Y_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    sum_Y_carry__1_i_6
       (.I0(sum_theda_carry__0_1[10]),
        .I1(neg_Y[10]),
        .I2(neg_X[10]),
        .I3(Q[10]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_Y_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    sum_Y_carry__1_i_7
       (.I0(sum_theda_carry__0_1[9]),
        .I1(neg_Y[9]),
        .I2(neg_X[9]),
        .I3(Q[9]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_Y_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    sum_Y_carry__1_i_8
       (.I0(sum_theda_carry__0_1[8]),
        .I1(neg_Y[8]),
        .I2(neg_X[8]),
        .I3(Q[8]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_Y_carry__1_i_8_n_0));
  CARRY4 sum_Y_carry__2
       (.CI(sum_Y_carry__1_n_0),
        .CO({NLW_sum_Y_carry__2_CO_UNCONNECTED[3:2],CO,NLW_sum_Y_carry__2_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({NLW_sum_Y_carry__2_O_UNCONNECTED[3:1],sum_Y_carry__2_n_7}),
        .S({1'b0,1'b0,1'b1,\pipe_reg_Y1_reg[2] }));
  LUT3 #(
    .INIT(8'h1B)) 
    sum_Y_carry_i_1
       (.I0(Q[12]),
        .I1(sum_theda_carry__0_1[12]),
        .I2(\InY_FF_reg[12]_0 ),
        .O(sum_Y_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_Y_carry_i_2
       (.I0(neg_Y[3]),
        .I1(sum_theda_carry__0_1[3]),
        .I2(Q[12]),
        .O(\wire_Y[0] [3]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_Y_carry_i_3
       (.I0(neg_Y[2]),
        .I1(sum_theda_carry__0_1[2]),
        .I2(Q[12]),
        .O(\wire_Y[0] [2]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_Y_carry_i_4
       (.I0(neg_Y[1]),
        .I1(sum_theda_carry__0_1[1]),
        .I2(Q[12]),
        .O(\wire_Y[0] [1]));
  LUT1 #(
    .INIT(2'h2)) 
    sum_Y_carry_i_5
       (.I0(sum_theda_carry__0_1[0]),
        .O(\wire_Y[0] [0]));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    sum_Y_carry_i_6
       (.I0(sum_theda_carry__0_1[3]),
        .I1(neg_Y[3]),
        .I2(neg_X[3]),
        .I3(Q[3]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_Y_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    sum_Y_carry_i_7
       (.I0(sum_theda_carry__0_1[2]),
        .I1(neg_Y[2]),
        .I2(neg_X[2]),
        .I3(Q[2]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_Y_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h3C3C55AAC3C3AA55)) 
    sum_Y_carry_i_8
       (.I0(sum_theda_carry__0_1[1]),
        .I1(neg_Y[1]),
        .I2(neg_X[1]),
        .I3(Q[1]),
        .I4(Q[12]),
        .I5(\wire_Y[0] [12]),
        .O(sum_Y_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h66966999)) 
    sum_Y_carry_i_9
       (.I0(sum_theda_carry__0_1[0]),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(\InY_FF_reg[12]_0 ),
        .I4(sum_theda_carry__0_1[12]),
        .O(sum_Y_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry
       (.CI(1'b0),
        .CO({sum_theda_carry_n_0,sum_theda_carry_n_1,sum_theda_carry_n_2,sum_theda_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sum_theda_carry_i_1_n_0,sum_theda_carry_i_2__0_n_0,1'b1,1'b0}),
        .O({sum_theda[5:4],\InY_FF_reg[12] [1:0]}),
        .S({sum_theda_carry_i_3__4_n_0,sum_theda_carry_i_4__2_n_0,sum_theda_carry_i_5_n_0,sum_theda_carry_i_6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry__0
       (.CI(sum_theda_carry_n_0),
        .CO({sum_theda_carry__0_n_0,sum_theda_carry__0_n_1,sum_theda_carry__0_n_2,sum_theda_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sum_theda_carry__0_i_1_n_0,sum_theda_carry__0_i_2_n_0,sum_theda_carry__0_i_3_n_0,sum_theda_carry__0_i_4__0_n_0}),
        .O({sum_theda[9],\InY_FF_reg[12] [4:2]}),
        .S({sum_theda_carry__0_i_5_n_0,sum_theda_carry__0_i_6__0_n_0,sum_theda_carry__0_i_7_n_0,sum_theda_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    sum_theda_carry__0_i_1
       (.I0(Q[12]),
        .I1(sum_theda_carry__0_1[12]),
        .O(sum_theda_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_theda_carry__0_i_1__0
       (.I0(CO),
        .O(sum_Y_carry__2_5[1]));
  LUT2 #(
    .INIT(4'h8)) 
    sum_theda_carry__0_i_2
       (.I0(Q[12]),
        .I1(sum_theda_carry__0_1[12]),
        .O(sum_theda_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_theda_carry__0_i_2__0
       (.I0(CO),
        .O(sum_Y_carry__2_5[0]));
  LUT3 #(
    .INIT(8'h53)) 
    sum_theda_carry__0_i_3
       (.I0(\InY_FF_reg[12]_0 ),
        .I1(sum_theda_carry__0_1[12]),
        .I2(Q[12]),
        .O(sum_theda_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_theda_carry__0_i_3__4
       (.I0(CO),
        .I1(\InY_FF_reg[12] [3]),
        .O(sum_theda_carry__0_0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_theda_carry__0_i_4
       (.I0(\InY_FF_reg[12] [2]),
        .I1(sum_theda[5]),
        .O(sum_theda_carry__0_0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    sum_theda_carry__0_i_4__0
       (.I0(Q[12]),
        .I1(sum_theda_carry__0_1[12]),
        .O(sum_theda_carry__0_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    sum_theda_carry__0_i_5
       (.I0(Q[12]),
        .O(sum_theda_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_theda_carry__0_i_5__0
       (.I0(CO),
        .I1(sum_theda[5]),
        .O(sum_theda_carry__0_0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_theda_carry__0_i_6
       (.I0(CO),
        .I1(sum_theda[4]),
        .O(sum_theda_carry__0_0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_theda_carry__0_i_6__0
       (.I0(Q[12]),
        .O(sum_theda_carry__0_i_6__0_n_0));
  LUT3 #(
    .INIT(8'h6C)) 
    sum_theda_carry__0_i_7
       (.I0(\InY_FF_reg[12]_0 ),
        .I1(sum_theda_carry__0_1[12]),
        .I2(Q[12]),
        .O(sum_theda_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    sum_theda_carry__0_i_8
       (.I0(Q[12]),
        .O(sum_theda_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry__1
       (.CI(sum_theda_carry__0_n_0),
        .CO({NLW_sum_theda_carry__1_CO_UNCONNECTED[3],sum_theda_carry__1_n_1,sum_theda_carry__1_n_2,sum_theda_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\pipe_reg_theda1_reg[13] }),
        .O({sum_theda[13:12],\InY_FF_reg[12] [6:5]}),
        .S(\pipe_reg_theda1_reg[13]_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    sum_theda_carry__1_i_1__0
       (.I0(CO),
        .O(sum_Y_carry__2_6));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__1_i_2__2
       (.I0(CO),
        .I1(\InY_FF_reg[12] [6]),
        .O(sum_theda_carry__1_0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_theda_carry__1_i_3
       (.I0(\InY_FF_reg[12] [5]),
        .I1(sum_theda[9]),
        .O(sum_theda_carry__1_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__1_i_4__0
       (.I0(\InY_FF_reg[12] [4]),
        .I1(sum_theda[9]),
        .O(sum_theda_carry__1_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__1_i_5__0
       (.I0(\InY_FF_reg[12] [3]),
        .I1(\InY_FF_reg[12] [4]),
        .O(sum_theda_carry__1_0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__2_i_1
       (.I0(sum_theda[12]),
        .I1(sum_theda[13]),
        .O(sum_theda_carry__1_1[1]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__2_i_2
       (.I0(\InY_FF_reg[12] [6]),
        .I1(sum_theda[12]),
        .O(sum_theda_carry__1_1[0]));
  LUT3 #(
    .INIT(8'h1B)) 
    sum_theda_carry_i_1
       (.I0(Q[12]),
        .I1(sum_theda_carry__0_1[12]),
        .I2(\InY_FF_reg[12]_0 ),
        .O(sum_theda_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry_i_1__3
       (.I0(\InY_FF_reg[12] [1]),
        .I1(CO),
        .O(sum_Y_carry__2_3[1]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_theda_carry_i_2
       (.I0(\InY_FF_reg[12] [0]),
        .I1(CO),
        .O(sum_Y_carry__2_3[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_theda_carry_i_2__0
       (.I0(\InY_FF_reg[12]_0 ),
        .I1(sum_theda_carry__0_1[12]),
        .I2(Q[12]),
        .O(sum_theda_carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    sum_theda_carry_i_3__4
       (.I0(\InY_FF_reg[12]_0 ),
        .I1(sum_theda_carry__0_1[12]),
        .I2(Q[12]),
        .O(sum_theda_carry_i_3__4_n_0));
  LUT3 #(
    .INIT(8'h6C)) 
    sum_theda_carry_i_4__2
       (.I0(\InY_FF_reg[12]_0 ),
        .I1(sum_theda_carry__0_1[12]),
        .I2(Q[12]),
        .O(sum_theda_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    sum_theda_carry_i_5
       (.I0(sum_theda_carry__0_1[12]),
        .I1(Q[12]),
        .O(sum_theda_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sum_theda_carry_i_6
       (.I0(Q[12]),
        .I1(sum_theda_carry__0_1[12]),
        .O(sum_theda_carry_i_6_n_0));
endmodule

(* ORIG_REF_NAME = "single_stage" *) 
module single_stage_0
   (D,
    sum_theda_carry__2_i_2,
    S,
    \InX_FF_reg[12] ,
    \InY_FF_reg[12] ,
    \InX_FF_reg[12]_0 ,
    \InX_FF_reg[12]_1 ,
    \pipe_reg_X1_reg[3] ,
    A,
    \pipe_reg_X1_reg[3]_0 ,
    \pipe_reg_X1_reg[7] ,
    \pipe_reg_X1_reg[11] ,
    \pipe_reg_theda1_reg[13] ,
    Q,
    \pipe_reg_theda1_reg[3] ,
    DI,
    \pipe_reg_theda1_reg[7] ,
    \pipe_reg_theda1_reg[11] ,
    \pipe_reg_theda1_reg[11]_0 ,
    \pipe_reg_theda1_reg[13]_0 ,
    O,
    sum_theda_carry__1_0,
    sum_theda_carry__1_1);
  output [13:0]D;
  output [12:0]sum_theda_carry__2_i_2;
  output [0:0]S;
  output [0:0]\InX_FF_reg[12] ;
  output [2:0]\InY_FF_reg[12] ;
  output [3:0]\InX_FF_reg[12]_0 ;
  output [0:0]\InX_FF_reg[12]_1 ;
  input \pipe_reg_X1_reg[3] ;
  input [13:0]A;
  input [3:0]\pipe_reg_X1_reg[3]_0 ;
  input [3:0]\pipe_reg_X1_reg[7] ;
  input [3:0]\pipe_reg_X1_reg[11] ;
  input [6:0]\pipe_reg_theda1_reg[13] ;
  input [0:0]Q;
  input [1:0]\pipe_reg_theda1_reg[3] ;
  input [2:0]DI;
  input [3:0]\pipe_reg_theda1_reg[7] ;
  input [0:0]\pipe_reg_theda1_reg[11] ;
  input [3:0]\pipe_reg_theda1_reg[11]_0 ;
  input [1:0]\pipe_reg_theda1_reg[13]_0 ;
  input [0:0]O;
  input [0:0]sum_theda_carry__1_0;
  input [0:0]sum_theda_carry__1_1;

  wire [13:0]A;
  wire [13:0]D;
  wire [2:0]DI;
  wire [0:0]\InX_FF_reg[12] ;
  wire [3:0]\InX_FF_reg[12]_0 ;
  wire [0:0]\InX_FF_reg[12]_1 ;
  wire [2:0]\InY_FF_reg[12] ;
  wire [0:0]O;
  wire [0:0]Q;
  wire [0:0]S;
  wire [12:12]p_0_in;
  wire [3:0]\pipe_reg_X1_reg[11] ;
  wire \pipe_reg_X1_reg[3] ;
  wire [3:0]\pipe_reg_X1_reg[3]_0 ;
  wire [3:0]\pipe_reg_X1_reg[7] ;
  wire [0:0]\pipe_reg_theda1_reg[11] ;
  wire [3:0]\pipe_reg_theda1_reg[11]_0 ;
  wire [6:0]\pipe_reg_theda1_reg[13] ;
  wire [1:0]\pipe_reg_theda1_reg[13]_0 ;
  wire [1:0]\pipe_reg_theda1_reg[3] ;
  wire [3:0]\pipe_reg_theda1_reg[7] ;
  wire sum_X_carry__0_n_0;
  wire sum_X_carry__0_n_1;
  wire sum_X_carry__0_n_2;
  wire sum_X_carry__0_n_3;
  wire sum_X_carry__1_n_0;
  wire sum_X_carry__1_n_1;
  wire sum_X_carry__1_n_2;
  wire sum_X_carry__1_n_3;
  wire sum_X_carry__2_n_3;
  wire sum_X_carry_n_0;
  wire sum_X_carry_n_1;
  wire sum_X_carry_n_2;
  wire sum_X_carry_n_3;
  wire sum_theda_carry__0_n_0;
  wire sum_theda_carry__0_n_1;
  wire sum_theda_carry__0_n_2;
  wire sum_theda_carry__0_n_3;
  wire [0:0]sum_theda_carry__1_0;
  wire [0:0]sum_theda_carry__1_1;
  wire sum_theda_carry__1_n_0;
  wire sum_theda_carry__1_n_1;
  wire sum_theda_carry__1_n_2;
  wire sum_theda_carry__1_n_3;
  wire [12:0]sum_theda_carry__2_i_2;
  wire sum_theda_carry__2_n_3;
  wire sum_theda_carry_n_0;
  wire sum_theda_carry_n_1;
  wire sum_theda_carry_n_2;
  wire sum_theda_carry_n_3;
  wire [3:1]NLW_sum_X_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_sum_X_carry__2_O_UNCONNECTED;
  wire [0:0]NLW_sum_theda_carry_O_UNCONNECTED;
  wire [3:1]NLW_sum_theda_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_sum_theda_carry__2_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry
       (.CI(1'b0),
        .CO({sum_X_carry_n_0,sum_X_carry_n_1,sum_X_carry_n_2,sum_X_carry_n_3}),
        .CYINIT(\pipe_reg_X1_reg[3] ),
        .DI(A[3:0]),
        .O(D[3:0]),
        .S(\pipe_reg_X1_reg[3]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__0
       (.CI(sum_X_carry_n_0),
        .CO({sum_X_carry__0_n_0,sum_X_carry__0_n_1,sum_X_carry__0_n_2,sum_X_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O(D[7:4]),
        .S(\pipe_reg_X1_reg[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__1
       (.CI(sum_X_carry__0_n_0),
        .CO({sum_X_carry__1_n_0,sum_X_carry__1_n_1,sum_X_carry__1_n_2,sum_X_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O(D[11:8]),
        .S(\pipe_reg_X1_reg[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__2
       (.CI(sum_X_carry__1_n_0),
        .CO({NLW_sum_X_carry__2_CO_UNCONNECTED[3:1],sum_X_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,A[12]}),
        .O({NLW_sum_X_carry__2_O_UNCONNECTED[3:2],D[13:12]}),
        .S({1'b0,1'b0,A[13:12]}));
  LUT2 #(
    .INIT(4'h8)) 
    sum_X_carry__2_i_1
       (.I0(Q),
        .I1(O),
        .O(S));
  LUT4 #(
    .INIT(16'h7B48)) 
    sum_Y_carry__2_i_1
       (.I0(O),
        .I1(Q),
        .I2(sum_theda_carry__1_0),
        .I3(sum_theda_carry__1_1),
        .O(\InX_FF_reg[12] ));
  LUT2 #(
    .INIT(4'h7)) 
    sum_Y_carry__2_i_2__3
       (.I0(O),
        .I1(Q),
        .O(\InX_FF_reg[12]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry
       (.CI(1'b0),
        .CO({sum_theda_carry_n_0,sum_theda_carry_n_1,sum_theda_carry_n_2,sum_theda_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\pipe_reg_theda1_reg[13] [1:0],Q,1'b0}),
        .O({sum_theda_carry__2_i_2[2:0],NLW_sum_theda_carry_O_UNCONNECTED[0]}),
        .S({\pipe_reg_theda1_reg[3] ,p_0_in,1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry__0
       (.CI(sum_theda_carry_n_0),
        .CO({sum_theda_carry__0_n_0,sum_theda_carry__0_n_1,sum_theda_carry__0_n_2,sum_theda_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({DI[2],\pipe_reg_theda1_reg[13] [2],DI[1:0]}),
        .O(sum_theda_carry__2_i_2[6:3]),
        .S(\pipe_reg_theda1_reg[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry__1
       (.CI(sum_theda_carry__0_n_0),
        .CO({sum_theda_carry__1_n_0,sum_theda_carry__1_n_1,sum_theda_carry__1_n_2,sum_theda_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\pipe_reg_theda1_reg[11] ,\pipe_reg_theda1_reg[13] [5:3]}),
        .O(sum_theda_carry__2_i_2[10:7]),
        .S(\pipe_reg_theda1_reg[11]_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    sum_theda_carry__1_i_1
       (.I0(sum_theda_carry__1_0),
        .I1(sum_theda_carry__1_1),
        .I2(Q),
        .O(\InY_FF_reg[12] [2]));
  LUT2 #(
    .INIT(4'h2)) 
    sum_theda_carry__1_i_2
       (.I0(Q),
        .I1(sum_theda_carry__1_1),
        .O(\InY_FF_reg[12] [1]));
  LUT3 #(
    .INIT(8'hAC)) 
    sum_theda_carry__1_i_3__0
       (.I0(sum_theda_carry__1_0),
        .I1(sum_theda_carry__1_1),
        .I2(Q),
        .O(\InY_FF_reg[12] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_theda_carry__1_i_4__2
       (.I0(Q),
        .O(\InX_FF_reg[12]_0 [3]));
  LUT3 #(
    .INIT(8'h9C)) 
    sum_theda_carry__1_i_5
       (.I0(sum_theda_carry__1_0),
        .I1(sum_theda_carry__1_1),
        .I2(Q),
        .O(\InX_FF_reg[12]_0 [2]));
  LUT1 #(
    .INIT(2'h2)) 
    sum_theda_carry__1_i_6
       (.I0(Q),
        .O(\InX_FF_reg[12]_0 [1]));
  LUT3 #(
    .INIT(8'h93)) 
    sum_theda_carry__1_i_7
       (.I0(sum_theda_carry__1_0),
        .I1(sum_theda_carry__1_1),
        .I2(Q),
        .O(\InX_FF_reg[12]_0 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry__2
       (.CI(sum_theda_carry__1_n_0),
        .CO({NLW_sum_theda_carry__2_CO_UNCONNECTED[3:1],sum_theda_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pipe_reg_theda1_reg[13] [6]}),
        .O({NLW_sum_theda_carry__2_O_UNCONNECTED[3:2],sum_theda_carry__2_i_2[12:11]}),
        .S({1'b0,1'b0,\pipe_reg_theda1_reg[13]_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    sum_theda_carry_i_3
       (.I0(Q),
        .O(p_0_in));
endmodule

(* ORIG_REF_NAME = "single_stage" *) 
module single_stage_1
   (sum_X,
    sum_Y,
    \pipe_reg_theda1_reg[10] ,
    \pipe_reg_Y1_reg[13] ,
    \pipe_reg_X1_reg[7] ,
    \pipe_reg_X1_reg[11] ,
    \pipe_reg_Y1_reg[3] ,
    \pipe_reg_Y1_reg[7] ,
    \pipe_reg_Y1_reg[11] ,
    \pipe_reg_X1_reg[12] ,
    \pipe_reg_theda1_reg[10]_0 ,
    \pipe_reg_Y1_reg[12] ,
    DI,
    \pipe_reg_theda1_reg[3] ,
    \pipe_reg_theda1_reg[10]_1 ,
    \pipe_reg_theda1_reg[11] ,
    Q,
    \pipe_reg_X2_reg[13] ,
    S,
    sum_theda_carry__1_0,
    sum_theda_carry__1_i_2__1_0);
  output [13:0]sum_X;
  output [13:0]sum_Y;
  output [9:0]\pipe_reg_theda1_reg[10] ;
  output [3:0]\pipe_reg_Y1_reg[13] ;
  output [3:0]\pipe_reg_X1_reg[7] ;
  output [1:0]\pipe_reg_X1_reg[11] ;
  output [3:0]\pipe_reg_Y1_reg[3] ;
  output [3:0]\pipe_reg_Y1_reg[7] ;
  output [3:0]\pipe_reg_Y1_reg[11] ;
  output [1:0]\pipe_reg_X1_reg[12] ;
  output [3:0]\pipe_reg_theda1_reg[10]_0 ;
  output \pipe_reg_Y1_reg[12] ;
  output [0:0]DI;
  output [3:0]\pipe_reg_theda1_reg[3] ;
  output [3:0]\pipe_reg_theda1_reg[10]_1 ;
  output [0:0]\pipe_reg_theda1_reg[11] ;
  input [13:0]Q;
  input [13:0]\pipe_reg_X2_reg[13] ;
  input [1:0]S;
  input [10:0]sum_theda_carry__1_0;
  input [1:0]sum_theda_carry__1_i_2__1_0;

  wire [0:0]DI;
  wire [13:0]Q;
  wire [1:0]S;
  wire [1:0]\pipe_reg_X1_reg[11] ;
  wire [1:0]\pipe_reg_X1_reg[12] ;
  wire [3:0]\pipe_reg_X1_reg[7] ;
  wire [13:0]\pipe_reg_X2_reg[13] ;
  wire [3:0]\pipe_reg_Y1_reg[11] ;
  wire \pipe_reg_Y1_reg[12] ;
  wire [3:0]\pipe_reg_Y1_reg[13] ;
  wire [3:0]\pipe_reg_Y1_reg[3] ;
  wire [3:0]\pipe_reg_Y1_reg[7] ;
  wire [9:0]\pipe_reg_theda1_reg[10] ;
  wire [3:0]\pipe_reg_theda1_reg[10]_0 ;
  wire [3:0]\pipe_reg_theda1_reg[10]_1 ;
  wire [0:0]\pipe_reg_theda1_reg[11] ;
  wire [3:0]\pipe_reg_theda1_reg[3] ;
  wire [13:0]sum_X;
  wire sum_X_carry__0_i_1__1_n_0;
  wire sum_X_carry__0_i_2__1_n_0;
  wire sum_X_carry__0_i_3__1_n_0;
  wire sum_X_carry__0_i_4__1_n_0;
  wire sum_X_carry__0_n_0;
  wire sum_X_carry__0_n_1;
  wire sum_X_carry__0_n_2;
  wire sum_X_carry__0_n_3;
  wire sum_X_carry__1_i_1__1_n_0;
  wire sum_X_carry__1_i_2__1_n_0;
  wire sum_X_carry__1_i_3__1_n_0;
  wire sum_X_carry__1_n_0;
  wire sum_X_carry__1_n_1;
  wire sum_X_carry__1_n_2;
  wire sum_X_carry__1_n_3;
  wire sum_X_carry__2_n_3;
  wire sum_X_carry_i_1__1_n_0;
  wire sum_X_carry_i_2__1_n_0;
  wire sum_X_carry_i_3__1_n_0;
  wire sum_X_carry_i_4__1_n_0;
  wire sum_X_carry_n_0;
  wire sum_X_carry_n_1;
  wire sum_X_carry_n_2;
  wire sum_X_carry_n_3;
  wire [13:0]sum_Y;
  wire sum_Y_carry__0_i_1__0_n_0;
  wire sum_Y_carry__0_i_2__0_n_0;
  wire sum_Y_carry__0_i_3__0_n_0;
  wire sum_Y_carry__0_i_4__0_n_0;
  wire sum_Y_carry__0_n_0;
  wire sum_Y_carry__0_n_1;
  wire sum_Y_carry__0_n_2;
  wire sum_Y_carry__0_n_3;
  wire sum_Y_carry__1_i_1__0_n_0;
  wire sum_Y_carry__1_i_2__0_n_0;
  wire sum_Y_carry__1_i_3__0_n_0;
  wire sum_Y_carry__1_i_4__0_n_0;
  wire sum_Y_carry__1_n_0;
  wire sum_Y_carry__1_n_1;
  wire sum_Y_carry__1_n_2;
  wire sum_Y_carry__1_n_3;
  wire sum_Y_carry__2_n_3;
  wire sum_Y_carry_i_1__0_n_0;
  wire sum_Y_carry_i_2__0_n_0;
  wire sum_Y_carry_i_3__0_n_0;
  wire sum_Y_carry_i_4__0_n_0;
  wire sum_Y_carry_i_5__0_n_0;
  wire sum_Y_carry_n_0;
  wire sum_Y_carry_n_1;
  wire sum_Y_carry_n_2;
  wire sum_Y_carry_n_3;
  wire [13:7]sum_theda;
  wire sum_theda_carry__0_i_1__2_n_0;
  wire sum_theda_carry__0_i_2__1_n_0;
  wire sum_theda_carry__0_i_3__0_n_0;
  wire sum_theda_carry__0_i_4__1_n_0;
  wire sum_theda_carry__0_n_0;
  wire sum_theda_carry__0_n_1;
  wire sum_theda_carry__0_n_2;
  wire sum_theda_carry__0_n_3;
  wire [10:0]sum_theda_carry__1_0;
  wire sum_theda_carry__1_i_1__2_n_0;
  wire sum_theda_carry__1_i_2__0_n_0;
  wire [1:0]sum_theda_carry__1_i_2__1_0;
  wire sum_theda_carry__1_i_3__2_n_0;
  wire sum_theda_carry__1_i_4_n_0;
  wire sum_theda_carry__1_i_5__1_n_0;
  wire sum_theda_carry__1_n_0;
  wire sum_theda_carry__1_n_1;
  wire sum_theda_carry__1_n_2;
  wire sum_theda_carry__1_n_3;
  wire sum_theda_carry__2_n_3;
  wire sum_theda_carry_i_1__0_n_0;
  wire sum_theda_carry_i_2__1_n_0;
  wire sum_theda_carry_i_3__0_n_0;
  wire sum_theda_carry_n_0;
  wire sum_theda_carry_n_1;
  wire sum_theda_carry_n_2;
  wire sum_theda_carry_n_3;
  wire [3:1]NLW_sum_X_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_sum_X_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_sum_Y_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_sum_Y_carry__2_O_UNCONNECTED;
  wire [0:0]NLW_sum_theda_carry_O_UNCONNECTED;
  wire [3:1]NLW_sum_theda_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_sum_theda_carry__2_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry
       (.CI(1'b0),
        .CO({sum_X_carry_n_0,sum_X_carry_n_1,sum_X_carry_n_2,sum_X_carry_n_3}),
        .CYINIT(Q[13]),
        .DI(\pipe_reg_X2_reg[13] [3:0]),
        .O(sum_X[3:0]),
        .S({sum_X_carry_i_1__1_n_0,sum_X_carry_i_2__1_n_0,sum_X_carry_i_3__1_n_0,sum_X_carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__0
       (.CI(sum_X_carry_n_0),
        .CO({sum_X_carry__0_n_0,sum_X_carry__0_n_1,sum_X_carry__0_n_2,sum_X_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\pipe_reg_X2_reg[13] [7:4]),
        .O(sum_X[7:4]),
        .S({sum_X_carry__0_i_1__1_n_0,sum_X_carry__0_i_2__1_n_0,sum_X_carry__0_i_3__1_n_0,sum_X_carry__0_i_4__1_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__0_i_1__1
       (.I0(\pipe_reg_X2_reg[13] [7]),
        .I1(Q[9]),
        .I2(Q[13]),
        .O(sum_X_carry__0_i_1__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__0_i_1__2
       (.I0(sum_X[7]),
        .I1(sum_Y[10]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_X1_reg[7] [3]));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__0_i_2__1
       (.I0(\pipe_reg_X2_reg[13] [6]),
        .I1(Q[8]),
        .I2(Q[13]),
        .O(sum_X_carry__0_i_2__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__0_i_2__2
       (.I0(sum_X[6]),
        .I1(sum_Y[9]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_X1_reg[7] [2]));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__0_i_3__1
       (.I0(\pipe_reg_X2_reg[13] [5]),
        .I1(Q[7]),
        .I2(Q[13]),
        .O(sum_X_carry__0_i_3__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__0_i_3__2
       (.I0(sum_X[5]),
        .I1(sum_Y[8]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_X1_reg[7] [1]));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__0_i_4__1
       (.I0(\pipe_reg_X2_reg[13] [4]),
        .I1(Q[6]),
        .I2(Q[13]),
        .O(sum_X_carry__0_i_4__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__0_i_4__2
       (.I0(sum_X[4]),
        .I1(sum_Y[7]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_X1_reg[7] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__1
       (.CI(sum_X_carry__0_n_0),
        .CO({sum_X_carry__1_n_0,sum_X_carry__1_n_1,sum_X_carry__1_n_2,sum_X_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\pipe_reg_X2_reg[13] [11:8]),
        .O(sum_X[11:8]),
        .S({\pipe_reg_X2_reg[13] [11],sum_X_carry__1_i_1__1_n_0,sum_X_carry__1_i_2__1_n_0,sum_X_carry__1_i_3__1_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__1_i_1__1
       (.I0(\pipe_reg_X2_reg[13] [10]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(sum_X_carry__1_i_1__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__1_i_1__2
       (.I0(sum_X[9]),
        .I1(sum_Y[12]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_X1_reg[11] [1]));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__1_i_2__1
       (.I0(\pipe_reg_X2_reg[13] [9]),
        .I1(Q[11]),
        .I2(Q[13]),
        .O(sum_X_carry__1_i_2__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__1_i_2__2
       (.I0(sum_X[8]),
        .I1(sum_Y[11]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_X1_reg[11] [0]));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__1_i_3__1
       (.I0(\pipe_reg_X2_reg[13] [8]),
        .I1(Q[10]),
        .I2(Q[13]),
        .O(sum_X_carry__1_i_3__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__2
       (.CI(sum_X_carry__1_n_0),
        .CO({NLW_sum_X_carry__2_CO_UNCONNECTED[3:1],sum_X_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pipe_reg_X2_reg[13] [12]}),
        .O({NLW_sum_X_carry__2_O_UNCONNECTED[3:2],sum_X[13:12]}),
        .S({1'b0,1'b0,\pipe_reg_X2_reg[13] [13:12]}));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry_i_1__1
       (.I0(\pipe_reg_X2_reg[13] [3]),
        .I1(Q[5]),
        .I2(Q[13]),
        .O(sum_X_carry_i_1__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry_i_1__2
       (.I0(sum_X[3]),
        .I1(sum_Y[6]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[13] [3]));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry_i_2__1
       (.I0(\pipe_reg_X2_reg[13] [2]),
        .I1(Q[4]),
        .I2(Q[13]),
        .O(sum_X_carry_i_2__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry_i_2__2
       (.I0(sum_X[2]),
        .I1(sum_Y[5]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[13] [2]));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry_i_3__1
       (.I0(\pipe_reg_X2_reg[13] [1]),
        .I1(Q[3]),
        .I2(Q[13]),
        .O(sum_X_carry_i_3__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry_i_3__2
       (.I0(sum_X[1]),
        .I1(sum_Y[4]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[13] [1]));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry_i_4__1
       (.I0(\pipe_reg_X2_reg[13] [0]),
        .I1(Q[2]),
        .I2(Q[13]),
        .O(sum_X_carry_i_4__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry_i_4__2
       (.I0(sum_X[0]),
        .I1(sum_Y[3]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[13] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_Y_carry
       (.CI(1'b0),
        .CO({sum_Y_carry_n_0,sum_Y_carry_n_1,sum_Y_carry_n_2,sum_Y_carry_n_3}),
        .CYINIT(sum_Y_carry_i_1__0_n_0),
        .DI(Q[3:0]),
        .O(sum_Y[3:0]),
        .S({sum_Y_carry_i_2__0_n_0,sum_Y_carry_i_3__0_n_0,sum_Y_carry_i_4__0_n_0,sum_Y_carry_i_5__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_Y_carry__0
       (.CI(sum_Y_carry_n_0),
        .CO({sum_Y_carry__0_n_0,sum_Y_carry__0_n_1,sum_Y_carry__0_n_2,sum_Y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(sum_Y[7:4]),
        .S({sum_Y_carry__0_i_1__0_n_0,sum_Y_carry__0_i_2__0_n_0,sum_Y_carry__0_i_3__0_n_0,sum_Y_carry__0_i_4__0_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__0_i_1__0
       (.I0(Q[7]),
        .I1(\pipe_reg_X2_reg[13] [9]),
        .I2(Q[13]),
        .O(sum_Y_carry__0_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__0_i_1__1
       (.I0(sum_Y[7]),
        .I1(sum_X[10]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[7] [3]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__0_i_2__0
       (.I0(Q[6]),
        .I1(\pipe_reg_X2_reg[13] [8]),
        .I2(Q[13]),
        .O(sum_Y_carry__0_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__0_i_2__1
       (.I0(sum_Y[6]),
        .I1(sum_X[9]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[7] [2]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__0_i_3__0
       (.I0(Q[5]),
        .I1(\pipe_reg_X2_reg[13] [7]),
        .I2(Q[13]),
        .O(sum_Y_carry__0_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__0_i_3__1
       (.I0(sum_Y[5]),
        .I1(sum_X[8]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[7] [1]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__0_i_4__0
       (.I0(Q[4]),
        .I1(\pipe_reg_X2_reg[13] [6]),
        .I2(Q[13]),
        .O(sum_Y_carry__0_i_4__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__0_i_4__1
       (.I0(sum_Y[4]),
        .I1(sum_X[7]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[7] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_Y_carry__1
       (.CI(sum_Y_carry__0_n_0),
        .CO({sum_Y_carry__1_n_0,sum_Y_carry__1_n_1,sum_Y_carry__1_n_2,sum_Y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(sum_Y[11:8]),
        .S({sum_Y_carry__1_i_1__0_n_0,sum_Y_carry__1_i_2__0_n_0,sum_Y_carry__1_i_3__0_n_0,sum_Y_carry__1_i_4__0_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__1_i_1__0
       (.I0(Q[11]),
        .I1(\pipe_reg_X2_reg[13] [13]),
        .I2(Q[13]),
        .O(sum_Y_carry__1_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__1_i_1__1
       (.I0(sum_Y[11]),
        .I1(sum_X[13]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[11] [3]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__1_i_2__0
       (.I0(Q[10]),
        .I1(\pipe_reg_X2_reg[13] [12]),
        .I2(Q[13]),
        .O(sum_Y_carry__1_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__1_i_2__1
       (.I0(sum_Y[10]),
        .I1(sum_X[13]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[11] [2]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__1_i_3__0
       (.I0(Q[9]),
        .I1(\pipe_reg_X2_reg[13] [11]),
        .I2(Q[13]),
        .O(sum_Y_carry__1_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__1_i_3__1
       (.I0(sum_Y[9]),
        .I1(sum_X[12]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[11] [1]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__1_i_4__0
       (.I0(Q[8]),
        .I1(\pipe_reg_X2_reg[13] [10]),
        .I2(Q[13]),
        .O(sum_Y_carry__1_i_4__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__1_i_4__1
       (.I0(sum_Y[8]),
        .I1(sum_X[11]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[11] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_Y_carry__2
       (.CI(sum_Y_carry__1_n_0),
        .CO({NLW_sum_Y_carry__2_CO_UNCONNECTED[3:1],sum_Y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[12]}),
        .O({NLW_sum_Y_carry__2_O_UNCONNECTED[3:2],sum_Y[13:12]}),
        .S({1'b0,1'b0,S}));
  LUT1 #(
    .INIT(2'h1)) 
    sum_Y_carry__2_i_1__1
       (.I0(sum_X[13]),
        .O(\pipe_reg_X1_reg[12] [1]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__2_i_2__0
       (.I0(sum_Y[12]),
        .I1(sum_X[13]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_X1_reg[12] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_Y_carry_i_1__0
       (.I0(Q[13]),
        .O(sum_Y_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_Y_carry_i_1__1
       (.I0(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[12] ));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry_i_2__0
       (.I0(Q[3]),
        .I1(\pipe_reg_X2_reg[13] [5]),
        .I2(Q[13]),
        .O(sum_Y_carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry_i_2__1
       (.I0(sum_Y[3]),
        .I1(sum_X[6]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[3] [3]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry_i_3__0
       (.I0(Q[2]),
        .I1(\pipe_reg_X2_reg[13] [4]),
        .I2(Q[13]),
        .O(sum_Y_carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry_i_3__1
       (.I0(sum_Y[2]),
        .I1(sum_X[5]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[3] [2]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry_i_4__0
       (.I0(Q[1]),
        .I1(\pipe_reg_X2_reg[13] [3]),
        .I2(Q[13]),
        .O(sum_Y_carry_i_4__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry_i_4__1
       (.I0(sum_Y[1]),
        .I1(sum_X[4]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[3] [1]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry_i_5__0
       (.I0(Q[0]),
        .I1(\pipe_reg_X2_reg[13] [2]),
        .I2(Q[13]),
        .O(sum_Y_carry_i_5__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry_i_5__1
       (.I0(sum_Y[0]),
        .I1(sum_X[3]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y1_reg[3] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry
       (.CI(1'b0),
        .CO({sum_theda_carry_n_0,sum_theda_carry_n_1,sum_theda_carry_n_2,sum_theda_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sum_theda_carry__1_0[2:0],1'b0}),
        .O({\pipe_reg_theda1_reg[10] [2:0],NLW_sum_theda_carry_O_UNCONNECTED[0]}),
        .S({sum_theda_carry_i_1__0_n_0,sum_theda_carry_i_2__1_n_0,sum_theda_carry_i_3__0_n_0,1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry__0
       (.CI(sum_theda_carry_n_0),
        .CO({sum_theda_carry__0_n_0,sum_theda_carry__0_n_1,sum_theda_carry__0_n_2,sum_theda_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sum_theda_carry__1_0[5:4],Q[13],sum_theda_carry__1_0[3]}),
        .O({sum_theda[7],\pipe_reg_theda1_reg[10] [5:3]}),
        .S({sum_theda_carry__0_i_1__2_n_0,sum_theda_carry__0_i_2__1_n_0,sum_theda_carry__0_i_3__0_n_0,sum_theda_carry__0_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum_theda_carry__0_i_1__1
       (.I0(\pipe_reg_theda1_reg[10] [6]),
        .I1(sum_theda[7]),
        .O(\pipe_reg_theda1_reg[10]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__0_i_1__2
       (.I0(sum_theda_carry__1_0[5]),
        .I1(sum_theda_carry__1_0[6]),
        .O(sum_theda_carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__0_i_2__1
       (.I0(sum_theda_carry__1_0[4]),
        .I1(sum_theda_carry__1_0[5]),
        .O(sum_theda_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__0_i_2__2
       (.I0(\pipe_reg_theda1_reg[10] [5]),
        .I1(sum_theda[7]),
        .O(\pipe_reg_theda1_reg[10]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__0_i_3__0
       (.I0(Q[13]),
        .I1(sum_theda_carry__1_0[4]),
        .O(sum_theda_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__0_i_3__1
       (.I0(\pipe_reg_theda1_reg[10] [4]),
        .I1(\pipe_reg_theda1_reg[10] [5]),
        .O(\pipe_reg_theda1_reg[10]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__0_i_4__1
       (.I0(Q[13]),
        .I1(sum_theda_carry__1_0[3]),
        .O(sum_theda_carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__0_i_4__2
       (.I0(\pipe_reg_theda1_reg[10] [3]),
        .I1(\pipe_reg_theda1_reg[10] [4]),
        .O(\pipe_reg_theda1_reg[10]_0 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry__1
       (.CI(sum_theda_carry__0_n_0),
        .CO({sum_theda_carry__1_n_0,sum_theda_carry__1_n_1,sum_theda_carry__1_n_2,sum_theda_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({sum_theda_carry__1_0[9],sum_theda_carry__1_i_1__2_n_0,sum_theda_carry__1_0[8],sum_theda_carry__1_0[6]}),
        .O(\pipe_reg_theda1_reg[10] [9:6]),
        .S({sum_theda_carry__1_i_2__0_n_0,sum_theda_carry__1_i_3__2_n_0,sum_theda_carry__1_i_4_n_0,sum_theda_carry__1_i_5__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sum_theda_carry__1_i_1__1
       (.I0(sum_Y[13]),
        .O(DI));
  LUT1 #(
    .INIT(2'h1)) 
    sum_theda_carry__1_i_1__2
       (.I0(Q[13]),
        .O(sum_theda_carry__1_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__1_i_2__0
       (.I0(sum_theda_carry__1_0[9]),
        .I1(sum_theda_carry__1_0[10]),
        .O(sum_theda_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__1_i_2__1
       (.I0(\pipe_reg_theda1_reg[10] [9]),
        .I1(sum_theda[12]),
        .O(\pipe_reg_theda1_reg[10]_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__1_i_3__1
       (.I0(\pipe_reg_theda1_reg[10] [8]),
        .I1(\pipe_reg_theda1_reg[10] [9]),
        .O(\pipe_reg_theda1_reg[10]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_theda_carry__1_i_3__2
       (.I0(Q[13]),
        .I1(sum_theda_carry__1_0[9]),
        .O(sum_theda_carry__1_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_theda_carry__1_i_4
       (.I0(sum_theda_carry__1_0[8]),
        .I1(sum_theda_carry__1_0[7]),
        .O(sum_theda_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__1_i_4__1
       (.I0(\pipe_reg_theda1_reg[10] [7]),
        .I1(\pipe_reg_theda1_reg[10] [8]),
        .O(\pipe_reg_theda1_reg[10]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__1_i_5__1
       (.I0(sum_theda_carry__1_0[6]),
        .I1(sum_theda_carry__1_0[7]),
        .O(sum_theda_carry__1_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_theda_carry__1_i_5__2
       (.I0(sum_Y[13]),
        .I1(\pipe_reg_theda1_reg[10] [7]),
        .O(\pipe_reg_theda1_reg[10]_1 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry__2
       (.CI(sum_theda_carry__1_n_0),
        .CO({NLW_sum_theda_carry__2_CO_UNCONNECTED[3:1],sum_theda_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sum_theda_carry__1_0[10]}),
        .O({NLW_sum_theda_carry__2_O_UNCONNECTED[3:2],sum_theda[13:12]}),
        .S({1'b0,1'b0,sum_theda_carry__1_i_2__1_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__2_i_1__1
       (.I0(sum_theda[12]),
        .I1(sum_theda[13]),
        .O(\pipe_reg_theda1_reg[11] ));
  LUT2 #(
    .INIT(4'h6)) 
    sum_theda_carry_i_1__0
       (.I0(sum_theda_carry__1_0[2]),
        .I1(Q[13]),
        .O(sum_theda_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry_i_1__4
       (.I0(\pipe_reg_theda1_reg[10] [2]),
        .I1(\pipe_reg_theda1_reg[10] [3]),
        .O(\pipe_reg_theda1_reg[3] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry_i_2__1
       (.I0(sum_theda_carry__1_0[1]),
        .I1(Q[13]),
        .O(sum_theda_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry_i_2__2
       (.I0(\pipe_reg_theda1_reg[10] [1]),
        .I1(\pipe_reg_theda1_reg[10] [2]),
        .O(\pipe_reg_theda1_reg[3] [2]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_theda_carry_i_3__0
       (.I0(sum_theda_carry__1_0[0]),
        .O(sum_theda_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry_i_3__3
       (.I0(sum_Y[13]),
        .I1(\pipe_reg_theda1_reg[10] [1]),
        .O(\pipe_reg_theda1_reg[3] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry_i_4__1
       (.I0(sum_Y[13]),
        .I1(\pipe_reg_theda1_reg[10] [0]),
        .O(\pipe_reg_theda1_reg[3] [0]));
endmodule

(* ORIG_REF_NAME = "single_stage" *) 
module single_stage_2
   (D,
    \pipe_reg_Y1_reg[12] ,
    sum_theda_carry__2_i_1__1,
    S,
    \pipe_reg_theda1_reg[12] ,
    sum_Y,
    sum_X,
    \pipe_reg_X2_reg[3] ,
    \pipe_reg_X2_reg[7] ,
    \pipe_reg_X2_reg[11] ,
    \pipe_reg_Y2_reg[3] ,
    \pipe_reg_Y2_reg[3]_0 ,
    \pipe_reg_Y2_reg[7] ,
    \pipe_reg_Y2_reg[11] ,
    \pipe_reg_Y2_reg[13] ,
    \pipe_reg_theda2_reg[12] ,
    \pipe_reg_theda2_reg[4] ,
    \pipe_reg_theda2_reg[8] ,
    DI,
    \pipe_reg_theda2_reg[12]_0 ,
    \pipe_reg_theda2_reg[13] ,
    Q,
    sum_Y_carry__2_0,
    sum_theda_carry__2_0);
  output [13:0]D;
  output [13:0]\pipe_reg_Y1_reg[12] ;
  output [12:0]sum_theda_carry__2_i_1__1;
  output [1:0]S;
  output [1:0]\pipe_reg_theda1_reg[12] ;
  input [13:0]sum_Y;
  input [13:0]sum_X;
  input [3:0]\pipe_reg_X2_reg[3] ;
  input [3:0]\pipe_reg_X2_reg[7] ;
  input [1:0]\pipe_reg_X2_reg[11] ;
  input \pipe_reg_Y2_reg[3] ;
  input [3:0]\pipe_reg_Y2_reg[3]_0 ;
  input [3:0]\pipe_reg_Y2_reg[7] ;
  input [3:0]\pipe_reg_Y2_reg[11] ;
  input [1:0]\pipe_reg_Y2_reg[13] ;
  input [9:0]\pipe_reg_theda2_reg[12] ;
  input [3:0]\pipe_reg_theda2_reg[4] ;
  input [3:0]\pipe_reg_theda2_reg[8] ;
  input [0:0]DI;
  input [3:0]\pipe_reg_theda2_reg[12]_0 ;
  input [0:0]\pipe_reg_theda2_reg[13] ;
  input [1:0]Q;
  input [0:0]sum_Y_carry__2_0;
  input [2:0]sum_theda_carry__2_0;

  wire [13:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [1:0]S;
  wire [1:0]\pipe_reg_X2_reg[11] ;
  wire [3:0]\pipe_reg_X2_reg[3] ;
  wire [3:0]\pipe_reg_X2_reg[7] ;
  wire [13:0]\pipe_reg_Y1_reg[12] ;
  wire [3:0]\pipe_reg_Y2_reg[11] ;
  wire [1:0]\pipe_reg_Y2_reg[13] ;
  wire \pipe_reg_Y2_reg[3] ;
  wire [3:0]\pipe_reg_Y2_reg[3]_0 ;
  wire [3:0]\pipe_reg_Y2_reg[7] ;
  wire [1:0]\pipe_reg_theda1_reg[12] ;
  wire [9:0]\pipe_reg_theda2_reg[12] ;
  wire [3:0]\pipe_reg_theda2_reg[12]_0 ;
  wire [0:0]\pipe_reg_theda2_reg[13] ;
  wire [3:0]\pipe_reg_theda2_reg[4] ;
  wire [3:0]\pipe_reg_theda2_reg[8] ;
  wire [13:0]sum_X;
  wire sum_X_carry__0_n_0;
  wire sum_X_carry__0_n_1;
  wire sum_X_carry__0_n_2;
  wire sum_X_carry__0_n_3;
  wire sum_X_carry__1_n_0;
  wire sum_X_carry__1_n_1;
  wire sum_X_carry__1_n_2;
  wire sum_X_carry__1_n_3;
  wire sum_X_carry__2_n_3;
  wire sum_X_carry_n_0;
  wire sum_X_carry_n_1;
  wire sum_X_carry_n_2;
  wire sum_X_carry_n_3;
  wire [13:0]sum_Y;
  wire sum_Y_carry__0_n_0;
  wire sum_Y_carry__0_n_1;
  wire sum_Y_carry__0_n_2;
  wire sum_Y_carry__0_n_3;
  wire sum_Y_carry__1_n_0;
  wire sum_Y_carry__1_n_1;
  wire sum_Y_carry__1_n_2;
  wire sum_Y_carry__1_n_3;
  wire [0:0]sum_Y_carry__2_0;
  wire sum_Y_carry__2_n_3;
  wire sum_Y_carry_n_0;
  wire sum_Y_carry_n_1;
  wire sum_Y_carry_n_2;
  wire sum_Y_carry_n_3;
  wire sum_theda_carry__0_n_0;
  wire sum_theda_carry__0_n_1;
  wire sum_theda_carry__0_n_2;
  wire sum_theda_carry__0_n_3;
  wire sum_theda_carry__1_n_0;
  wire sum_theda_carry__1_n_1;
  wire sum_theda_carry__1_n_2;
  wire sum_theda_carry__1_n_3;
  wire [2:0]sum_theda_carry__2_0;
  wire [12:0]sum_theda_carry__2_i_1__1;
  wire sum_theda_carry_n_0;
  wire sum_theda_carry_n_1;
  wire sum_theda_carry_n_2;
  wire sum_theda_carry_n_3;
  wire [3:1]NLW_sum_X_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_sum_X_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_sum_Y_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_sum_Y_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_sum_theda_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_sum_theda_carry__2_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry
       (.CI(1'b0),
        .CO({sum_X_carry_n_0,sum_X_carry_n_1,sum_X_carry_n_2,sum_X_carry_n_3}),
        .CYINIT(sum_Y[13]),
        .DI(sum_X[3:0]),
        .O(D[3:0]),
        .S(\pipe_reg_X2_reg[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__0
       (.CI(sum_X_carry_n_0),
        .CO({sum_X_carry__0_n_0,sum_X_carry__0_n_1,sum_X_carry__0_n_2,sum_X_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(sum_X[7:4]),
        .O(D[7:4]),
        .S(\pipe_reg_X2_reg[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__1
       (.CI(sum_X_carry__0_n_0),
        .CO({sum_X_carry__1_n_0,sum_X_carry__1_n_1,sum_X_carry__1_n_2,sum_X_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(sum_X[11:8]),
        .O(D[11:8]),
        .S({sum_X[11:10],\pipe_reg_X2_reg[11] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__2
       (.CI(sum_X_carry__1_n_0),
        .CO({NLW_sum_X_carry__2_CO_UNCONNECTED[3:1],sum_X_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sum_X[12]}),
        .O({NLW_sum_X_carry__2_O_UNCONNECTED[3:2],D[13:12]}),
        .S({1'b0,1'b0,sum_X[13:12]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_Y_carry
       (.CI(1'b0),
        .CO({sum_Y_carry_n_0,sum_Y_carry_n_1,sum_Y_carry_n_2,sum_Y_carry_n_3}),
        .CYINIT(\pipe_reg_Y2_reg[3] ),
        .DI(sum_Y[3:0]),
        .O(\pipe_reg_Y1_reg[12] [3:0]),
        .S(\pipe_reg_Y2_reg[3]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_Y_carry__0
       (.CI(sum_Y_carry_n_0),
        .CO({sum_Y_carry__0_n_0,sum_Y_carry__0_n_1,sum_Y_carry__0_n_2,sum_Y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(sum_Y[7:4]),
        .O(\pipe_reg_Y1_reg[12] [7:4]),
        .S(\pipe_reg_Y2_reg[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_Y_carry__1
       (.CI(sum_Y_carry__0_n_0),
        .CO({sum_Y_carry__1_n_0,sum_Y_carry__1_n_1,sum_Y_carry__1_n_2,sum_Y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(sum_Y[11:8]),
        .O(\pipe_reg_Y1_reg[12] [11:8]),
        .S(\pipe_reg_Y2_reg[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_Y_carry__2
       (.CI(sum_Y_carry__1_n_0),
        .CO({NLW_sum_Y_carry__2_CO_UNCONNECTED[3:1],sum_Y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sum_Y[12]}),
        .O({NLW_sum_Y_carry__2_O_UNCONNECTED[3:2],\pipe_reg_Y1_reg[12] [13:12]}),
        .S({1'b0,1'b0,\pipe_reg_Y2_reg[13] }));
  LUT1 #(
    .INIT(2'h1)) 
    sum_Y_carry__2_i_1__0
       (.I0(sum_Y_carry__2_0),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__2_i_2
       (.I0(Q[0]),
        .I1(sum_Y_carry__2_0),
        .I2(Q[1]),
        .O(S[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry
       (.CI(1'b0),
        .CO({sum_theda_carry_n_0,sum_theda_carry_n_1,sum_theda_carry_n_2,sum_theda_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\pipe_reg_theda2_reg[12] [2:1],sum_Y[13],\pipe_reg_theda2_reg[12] [0]}),
        .O(sum_theda_carry__2_i_1__1[3:0]),
        .S(\pipe_reg_theda2_reg[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry__0
       (.CI(sum_theda_carry_n_0),
        .CO({sum_theda_carry__0_n_0,sum_theda_carry__0_n_1,sum_theda_carry__0_n_2,sum_theda_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\pipe_reg_theda2_reg[12] [6:3]),
        .O(sum_theda_carry__2_i_1__1[7:4]),
        .S(\pipe_reg_theda2_reg[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry__1
       (.CI(sum_theda_carry__0_n_0),
        .CO({sum_theda_carry__1_n_0,sum_theda_carry__1_n_1,sum_theda_carry__1_n_2,sum_theda_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\pipe_reg_theda2_reg[12] [9:7],DI}),
        .O(sum_theda_carry__2_i_1__1[11:8]),
        .S(\pipe_reg_theda2_reg[12]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry__2
       (.CI(sum_theda_carry__1_n_0),
        .CO(NLW_sum_theda_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sum_theda_carry__2_O_UNCONNECTED[3:1],sum_theda_carry__2_i_1__1[12]}),
        .S({1'b0,1'b0,1'b0,\pipe_reg_theda2_reg[13] }));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__2_i_1__0
       (.I0(sum_theda_carry__2_0[1]),
        .I1(sum_theda_carry__2_0[2]),
        .O(\pipe_reg_theda1_reg[12] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__2_i_2__0
       (.I0(sum_theda_carry__2_0[0]),
        .I1(sum_theda_carry__2_0[1]),
        .O(\pipe_reg_theda1_reg[12] [0]));
endmodule

(* ORIG_REF_NAME = "single_stage" *) 
module single_stage_3
   (sum_X,
    sum_Y,
    \pipe_reg_theda2_reg[11] ,
    \pipe_reg_Y2_reg[13] ,
    \pipe_reg_X2_reg[7] ,
    \pipe_reg_Y2_reg[3] ,
    \pipe_reg_Y2_reg[7] ,
    \pipe_reg_Y2_reg[11] ,
    \pipe_reg_X2_reg[12] ,
    \pipe_reg_Y2_reg[12] ,
    \pipe_reg_Y2_reg[12]_0 ,
    DI,
    \pipe_reg_theda2_reg[11]_0 ,
    \pipe_reg_theda2_reg[11]_1 ,
    Q,
    \OutX_FF_reg[13] ,
    S,
    \OutTheda_FF_reg[12] ,
    \OutTheda_FF_reg[12]_0 );
  output [13:0]sum_X;
  output [13:0]sum_Y;
  output [4:0]\pipe_reg_theda2_reg[11] ;
  output [3:0]\pipe_reg_Y2_reg[13] ;
  output [3:0]\pipe_reg_X2_reg[7] ;
  output [3:0]\pipe_reg_Y2_reg[3] ;
  output [3:0]\pipe_reg_Y2_reg[7] ;
  output [3:0]\pipe_reg_Y2_reg[11] ;
  output [1:0]\pipe_reg_X2_reg[12] ;
  output [2:0]\pipe_reg_Y2_reg[12] ;
  output \pipe_reg_Y2_reg[12]_0 ;
  output [0:0]DI;
  output [3:0]\pipe_reg_theda2_reg[11]_0 ;
  output [0:0]\pipe_reg_theda2_reg[11]_1 ;
  input [13:0]Q;
  input [13:0]\OutX_FF_reg[13] ;
  input [1:0]S;
  input [5:0]\OutTheda_FF_reg[12] ;
  input [3:0]\OutTheda_FF_reg[12]_0 ;

  wire [0:0]DI;
  wire [5:0]\OutTheda_FF_reg[12] ;
  wire [3:0]\OutTheda_FF_reg[12]_0 ;
  wire [13:0]\OutX_FF_reg[13] ;
  wire [13:0]Q;
  wire [1:0]S;
  wire in;
  wire [1:0]\pipe_reg_X2_reg[12] ;
  wire [3:0]\pipe_reg_X2_reg[7] ;
  wire [3:0]\pipe_reg_Y2_reg[11] ;
  wire [2:0]\pipe_reg_Y2_reg[12] ;
  wire \pipe_reg_Y2_reg[12]_0 ;
  wire [3:0]\pipe_reg_Y2_reg[13] ;
  wire [3:0]\pipe_reg_Y2_reg[3] ;
  wire [3:0]\pipe_reg_Y2_reg[7] ;
  wire [4:0]\pipe_reg_theda2_reg[11] ;
  wire [3:0]\pipe_reg_theda2_reg[11]_0 ;
  wire [0:0]\pipe_reg_theda2_reg[11]_1 ;
  wire [13:0]sum_X;
  wire sum_X_carry__0_i_1__3_n_0;
  wire sum_X_carry__0_i_2__3_n_0;
  wire sum_X_carry__0_i_3__3_n_0;
  wire sum_X_carry__0_i_4__3_n_0;
  wire sum_X_carry__0_n_0;
  wire sum_X_carry__0_n_1;
  wire sum_X_carry__0_n_2;
  wire sum_X_carry__0_n_3;
  wire sum_X_carry__1_i_1__3_n_0;
  wire sum_X_carry__1_n_0;
  wire sum_X_carry__1_n_1;
  wire sum_X_carry__1_n_2;
  wire sum_X_carry__1_n_3;
  wire sum_X_carry__2_n_3;
  wire sum_X_carry_i_1__3_n_0;
  wire sum_X_carry_i_2__3_n_0;
  wire sum_X_carry_i_3__3_n_0;
  wire sum_X_carry_i_4__3_n_0;
  wire sum_X_carry_n_0;
  wire sum_X_carry_n_1;
  wire sum_X_carry_n_2;
  wire sum_X_carry_n_3;
  wire [13:0]sum_Y;
  wire sum_Y_carry__0_i_1__2_n_0;
  wire sum_Y_carry__0_i_2__2_n_0;
  wire sum_Y_carry__0_i_3__2_n_0;
  wire sum_Y_carry__0_i_4__2_n_0;
  wire sum_Y_carry__0_n_0;
  wire sum_Y_carry__0_n_1;
  wire sum_Y_carry__0_n_2;
  wire sum_Y_carry__0_n_3;
  wire sum_Y_carry__1_i_1__2_n_0;
  wire sum_Y_carry__1_i_2__2_n_0;
  wire sum_Y_carry__1_i_3__2_n_0;
  wire sum_Y_carry__1_i_4__2_n_0;
  wire sum_Y_carry__1_n_0;
  wire sum_Y_carry__1_n_1;
  wire sum_Y_carry__1_n_2;
  wire sum_Y_carry__1_n_3;
  wire sum_Y_carry__2_n_3;
  wire sum_Y_carry_i_2__2_n_0;
  wire sum_Y_carry_i_3__2_n_0;
  wire sum_Y_carry_i_4__2_n_0;
  wire sum_Y_carry_i_5__2_n_0;
  wire sum_Y_carry_n_0;
  wire sum_Y_carry_n_1;
  wire sum_Y_carry_n_2;
  wire sum_Y_carry_n_3;
  wire [13:7]sum_theda;
  wire sum_theda_carry__0_n_1;
  wire sum_theda_carry__0_n_2;
  wire sum_theda_carry__0_n_3;
  wire sum_theda_carry_i_1__1_n_0;
  wire sum_theda_carry_i_2__3_n_0;
  wire sum_theda_carry_i_3__1_n_0;
  wire sum_theda_carry_i_4_n_0;
  wire sum_theda_carry_n_0;
  wire sum_theda_carry_n_1;
  wire sum_theda_carry_n_2;
  wire sum_theda_carry_n_3;
  wire [3:1]NLW_sum_X_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_sum_X_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_sum_Y_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_sum_Y_carry__2_O_UNCONNECTED;
  wire [3:3]NLW_sum_theda_carry__0_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry
       (.CI(1'b0),
        .CO({sum_X_carry_n_0,sum_X_carry_n_1,sum_X_carry_n_2,sum_X_carry_n_3}),
        .CYINIT(Q[13]),
        .DI(\OutX_FF_reg[13] [3:0]),
        .O(sum_X[3:0]),
        .S({sum_X_carry_i_1__3_n_0,sum_X_carry_i_2__3_n_0,sum_X_carry_i_3__3_n_0,sum_X_carry_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__0
       (.CI(sum_X_carry_n_0),
        .CO({sum_X_carry__0_n_0,sum_X_carry__0_n_1,sum_X_carry__0_n_2,sum_X_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\OutX_FF_reg[13] [7:4]),
        .O(sum_X[7:4]),
        .S({sum_X_carry__0_i_1__3_n_0,sum_X_carry__0_i_2__3_n_0,sum_X_carry__0_i_3__3_n_0,sum_X_carry__0_i_4__3_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__0_i_1__3
       (.I0(\OutX_FF_reg[13] [7]),
        .I1(Q[11]),
        .I2(Q[13]),
        .O(sum_X_carry__0_i_1__3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__0_i_1__4
       (.I0(sum_X[7]),
        .I1(sum_Y[12]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_X2_reg[7] [3]));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__0_i_2__3
       (.I0(\OutX_FF_reg[13] [6]),
        .I1(Q[10]),
        .I2(Q[13]),
        .O(sum_X_carry__0_i_2__3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__0_i_2__4
       (.I0(sum_X[6]),
        .I1(sum_Y[11]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_X2_reg[7] [2]));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__0_i_3__3
       (.I0(\OutX_FF_reg[13] [5]),
        .I1(Q[9]),
        .I2(Q[13]),
        .O(sum_X_carry__0_i_3__3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__0_i_3__4
       (.I0(sum_X[5]),
        .I1(sum_Y[10]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_X2_reg[7] [1]));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__0_i_4__3
       (.I0(\OutX_FF_reg[13] [4]),
        .I1(Q[8]),
        .I2(Q[13]),
        .O(sum_X_carry__0_i_4__3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__0_i_4__4
       (.I0(sum_X[4]),
        .I1(sum_Y[9]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_X2_reg[7] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__1
       (.CI(sum_X_carry__0_n_0),
        .CO({sum_X_carry__1_n_0,sum_X_carry__1_n_1,sum_X_carry__1_n_2,sum_X_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\OutX_FF_reg[13] [11:8]),
        .O(sum_X[11:8]),
        .S({\OutX_FF_reg[13] [11:9],sum_X_carry__1_i_1__3_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry__1_i_1__3
       (.I0(\OutX_FF_reg[13] [8]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(sum_X_carry__1_i_1__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__2
       (.CI(sum_X_carry__1_n_0),
        .CO({NLW_sum_X_carry__2_CO_UNCONNECTED[3:1],sum_X_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\OutX_FF_reg[13] [12]}),
        .O({NLW_sum_X_carry__2_O_UNCONNECTED[3:2],sum_X[13:12]}),
        .S({1'b0,1'b0,\OutX_FF_reg[13] [13:12]}));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry_i_1__3
       (.I0(\OutX_FF_reg[13] [3]),
        .I1(Q[7]),
        .I2(Q[13]),
        .O(sum_X_carry_i_1__3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry_i_1__4
       (.I0(sum_X[3]),
        .I1(sum_Y[8]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[13] [3]));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry_i_2__3
       (.I0(\OutX_FF_reg[13] [2]),
        .I1(Q[6]),
        .I2(Q[13]),
        .O(sum_X_carry_i_2__3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry_i_2__4
       (.I0(sum_X[2]),
        .I1(sum_Y[7]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[13] [2]));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry_i_3__3
       (.I0(\OutX_FF_reg[13] [1]),
        .I1(Q[5]),
        .I2(Q[13]),
        .O(sum_X_carry_i_3__3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry_i_3__4
       (.I0(sum_X[1]),
        .I1(sum_Y[6]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[13] [1]));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry_i_4__3
       (.I0(\OutX_FF_reg[13] [0]),
        .I1(Q[4]),
        .I2(Q[13]),
        .O(sum_X_carry_i_4__3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_X_carry_i_4__4
       (.I0(sum_X[0]),
        .I1(sum_Y[5]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[13] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_Y_carry
       (.CI(1'b0),
        .CO({sum_Y_carry_n_0,sum_Y_carry_n_1,sum_Y_carry_n_2,sum_Y_carry_n_3}),
        .CYINIT(in),
        .DI(Q[3:0]),
        .O(sum_Y[3:0]),
        .S({sum_Y_carry_i_2__2_n_0,sum_Y_carry_i_3__2_n_0,sum_Y_carry_i_4__2_n_0,sum_Y_carry_i_5__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_Y_carry__0
       (.CI(sum_Y_carry_n_0),
        .CO({sum_Y_carry__0_n_0,sum_Y_carry__0_n_1,sum_Y_carry__0_n_2,sum_Y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(sum_Y[7:4]),
        .S({sum_Y_carry__0_i_1__2_n_0,sum_Y_carry__0_i_2__2_n_0,sum_Y_carry__0_i_3__2_n_0,sum_Y_carry__0_i_4__2_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__0_i_1__2
       (.I0(Q[7]),
        .I1(\OutX_FF_reg[13] [11]),
        .I2(Q[13]),
        .O(sum_Y_carry__0_i_1__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__0_i_1__3
       (.I0(sum_Y[7]),
        .I1(sum_X[12]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[7] [3]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__0_i_2__2
       (.I0(Q[6]),
        .I1(\OutX_FF_reg[13] [10]),
        .I2(Q[13]),
        .O(sum_Y_carry__0_i_2__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__0_i_2__3
       (.I0(sum_Y[6]),
        .I1(sum_X[11]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[7] [2]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__0_i_3__2
       (.I0(Q[5]),
        .I1(\OutX_FF_reg[13] [9]),
        .I2(Q[13]),
        .O(sum_Y_carry__0_i_3__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__0_i_3__3
       (.I0(sum_Y[5]),
        .I1(sum_X[10]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[7] [1]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__0_i_4__2
       (.I0(Q[4]),
        .I1(\OutX_FF_reg[13] [8]),
        .I2(Q[13]),
        .O(sum_Y_carry__0_i_4__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__0_i_4__3
       (.I0(sum_Y[4]),
        .I1(sum_X[9]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[7] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_Y_carry__1
       (.CI(sum_Y_carry__0_n_0),
        .CO({sum_Y_carry__1_n_0,sum_Y_carry__1_n_1,sum_Y_carry__1_n_2,sum_Y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(sum_Y[11:8]),
        .S({sum_Y_carry__1_i_1__2_n_0,sum_Y_carry__1_i_2__2_n_0,sum_Y_carry__1_i_3__2_n_0,sum_Y_carry__1_i_4__2_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__1_i_1__2
       (.I0(Q[11]),
        .I1(\OutX_FF_reg[13] [13]),
        .I2(Q[13]),
        .O(sum_Y_carry__1_i_1__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__1_i_1__3
       (.I0(sum_Y[11]),
        .I1(sum_X[13]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[11] [3]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__1_i_2__2
       (.I0(Q[10]),
        .I1(\OutX_FF_reg[13] [13]),
        .I2(Q[13]),
        .O(sum_Y_carry__1_i_2__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__1_i_2__3
       (.I0(sum_Y[10]),
        .I1(sum_X[13]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[11] [2]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__1_i_3__2
       (.I0(Q[9]),
        .I1(\OutX_FF_reg[13] [13]),
        .I2(Q[13]),
        .O(sum_Y_carry__1_i_3__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__1_i_3__3
       (.I0(sum_Y[9]),
        .I1(sum_X[13]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[11] [1]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__1_i_4__2
       (.I0(Q[8]),
        .I1(\OutX_FF_reg[13] [12]),
        .I2(Q[13]),
        .O(sum_Y_carry__1_i_4__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__1_i_4__3
       (.I0(sum_Y[8]),
        .I1(sum_X[13]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[11] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_Y_carry__2
       (.CI(sum_Y_carry__1_n_0),
        .CO({NLW_sum_Y_carry__2_CO_UNCONNECTED[3:1],sum_Y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[12]}),
        .O({NLW_sum_Y_carry__2_O_UNCONNECTED[3:2],sum_Y[13:12]}),
        .S({1'b0,1'b0,S}));
  LUT1 #(
    .INIT(2'h1)) 
    sum_Y_carry__2_i_1__2
       (.I0(sum_X[13]),
        .O(\pipe_reg_X2_reg[12] [1]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__2_i_2__2
       (.I0(sum_Y[12]),
        .I1(sum_X[13]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_X2_reg[12] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_Y_carry_i_1__2
       (.I0(Q[13]),
        .O(in));
  LUT1 #(
    .INIT(2'h1)) 
    sum_Y_carry_i_1__3
       (.I0(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[12]_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry_i_2__2
       (.I0(Q[3]),
        .I1(\OutX_FF_reg[13] [7]),
        .I2(Q[13]),
        .O(sum_Y_carry_i_2__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry_i_2__3
       (.I0(sum_Y[3]),
        .I1(sum_X[8]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[3] [3]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry_i_3__2
       (.I0(Q[2]),
        .I1(\OutX_FF_reg[13] [6]),
        .I2(Q[13]),
        .O(sum_Y_carry_i_3__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry_i_3__3
       (.I0(sum_Y[2]),
        .I1(sum_X[7]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[3] [2]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry_i_4__2
       (.I0(Q[1]),
        .I1(\OutX_FF_reg[13] [5]),
        .I2(Q[13]),
        .O(sum_Y_carry_i_4__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry_i_4__3
       (.I0(sum_Y[1]),
        .I1(sum_X[6]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[3] [1]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry_i_5__2
       (.I0(Q[0]),
        .I1(\OutX_FF_reg[13] [4]),
        .I2(Q[13]),
        .O(sum_Y_carry_i_5__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry_i_5__3
       (.I0(sum_Y[0]),
        .I1(sum_X[5]),
        .I2(sum_Y[13]),
        .O(\pipe_reg_Y2_reg[3] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry
       (.CI(1'b0),
        .CO({sum_theda_carry_n_0,sum_theda_carry_n_1,sum_theda_carry_n_2,sum_theda_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sum_theda_carry_i_1__1_n_0,Q[13],\OutTheda_FF_reg[12] [1],1'b0}),
        .O({\pipe_reg_theda2_reg[11] [2:1],sum_theda[7],\pipe_reg_theda2_reg[11] [0]}),
        .S({sum_theda_carry_i_2__3_n_0,sum_theda_carry_i_3__1_n_0,sum_theda_carry_i_4_n_0,\OutTheda_FF_reg[12] [0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry__0
       (.CI(sum_theda_carry_n_0),
        .CO({NLW_sum_theda_carry__0_CO_UNCONNECTED[3],sum_theda_carry__0_n_1,sum_theda_carry__0_n_2,sum_theda_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\OutTheda_FF_reg[12] [5:3]}),
        .O({sum_theda[13:12],\pipe_reg_theda2_reg[11] [4:3]}),
        .S(\OutTheda_FF_reg[12]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__0_i_1__4
       (.I0(\pipe_reg_theda2_reg[11] [4]),
        .I1(sum_theda[12]),
        .O(\pipe_reg_theda2_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__0_i_2__4
       (.I0(\pipe_reg_theda2_reg[11] [3]),
        .I1(\pipe_reg_theda2_reg[11] [4]),
        .O(\pipe_reg_theda2_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__0_i_3__3
       (.I0(\pipe_reg_theda2_reg[11] [2]),
        .I1(\pipe_reg_theda2_reg[11] [3]),
        .O(\pipe_reg_theda2_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__0_i_4__4
       (.I0(\pipe_reg_theda2_reg[11] [1]),
        .I1(\pipe_reg_theda2_reg[11] [2]),
        .O(\pipe_reg_theda2_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__1_i_1__3
       (.I0(sum_theda[12]),
        .I1(sum_theda[13]),
        .O(\pipe_reg_theda2_reg[11]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    sum_theda_carry_i_1__1
       (.I0(Q[13]),
        .O(sum_theda_carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_theda_carry_i_1__2
       (.I0(sum_Y[13]),
        .O(DI));
  LUT2 #(
    .INIT(4'h6)) 
    sum_theda_carry_i_2__3
       (.I0(Q[13]),
        .I1(\OutTheda_FF_reg[12] [3]),
        .O(sum_theda_carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_theda_carry_i_2__4
       (.I0(sum_Y[13]),
        .I1(\pipe_reg_theda2_reg[11] [1]),
        .O(\pipe_reg_Y2_reg[12] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_theda_carry_i_3__1
       (.I0(Q[13]),
        .I1(\OutTheda_FF_reg[12] [2]),
        .O(sum_theda_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_theda_carry_i_3__2
       (.I0(sum_Y[13]),
        .I1(sum_theda[7]),
        .O(\pipe_reg_Y2_reg[12] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    sum_theda_carry_i_4
       (.I0(\OutTheda_FF_reg[12] [1]),
        .O(sum_theda_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_theda_carry_i_4__0
       (.I0(\pipe_reg_theda2_reg[11] [0]),
        .O(\pipe_reg_Y2_reg[12] [0]));
endmodule

(* ORIG_REF_NAME = "single_stage" *) 
module single_stage_4
   (D,
    \pipe_reg_Y2_reg[12] ,
    sum_theda_carry__1_i_1__3,
    \pipe_reg_X2_reg[13] ,
    \pipe_reg_theda2_reg[12] ,
    sum_Y,
    sum_X,
    \OutX_FF_reg[3] ,
    \OutX_FF_reg[7] ,
    \OutY_FF_reg[3] ,
    \OutY_FF_reg[3]_0 ,
    \OutY_FF_reg[7] ,
    \OutY_FF_reg[11] ,
    \OutY_FF_reg[13] ,
    DI,
    S,
    \OutTheda_FF_reg[12] ,
    \OutTheda_FF_reg[12]_0 ,
    \OutTheda_FF_reg[13] ,
    Q,
    sum_Y_carry__2_0,
    sum_theda_carry__0_0);
  output [13:0]D;
  output [13:0]\pipe_reg_Y2_reg[12] ;
  output [8:0]sum_theda_carry__1_i_1__3;
  output [1:0]\pipe_reg_X2_reg[13] ;
  output [3:0]\pipe_reg_theda2_reg[12] ;
  input [13:0]sum_Y;
  input [13:0]sum_X;
  input [3:0]\OutX_FF_reg[3] ;
  input [3:0]\OutX_FF_reg[7] ;
  input \OutY_FF_reg[3] ;
  input [3:0]\OutY_FF_reg[3]_0 ;
  input [3:0]\OutY_FF_reg[7] ;
  input [3:0]\OutY_FF_reg[11] ;
  input [1:0]\OutY_FF_reg[13] ;
  input [1:0]DI;
  input [3:0]S;
  input [3:0]\OutTheda_FF_reg[12] ;
  input [3:0]\OutTheda_FF_reg[12]_0 ;
  input [0:0]\OutTheda_FF_reg[13] ;
  input [1:0]Q;
  input [0:0]sum_Y_carry__2_0;
  input [4:0]sum_theda_carry__0_0;

  wire [13:0]D;
  wire [1:0]DI;
  wire [3:0]\OutTheda_FF_reg[12] ;
  wire [3:0]\OutTheda_FF_reg[12]_0 ;
  wire [0:0]\OutTheda_FF_reg[13] ;
  wire [3:0]\OutX_FF_reg[3] ;
  wire [3:0]\OutX_FF_reg[7] ;
  wire [3:0]\OutY_FF_reg[11] ;
  wire [1:0]\OutY_FF_reg[13] ;
  wire \OutY_FF_reg[3] ;
  wire [3:0]\OutY_FF_reg[3]_0 ;
  wire [3:0]\OutY_FF_reg[7] ;
  wire [1:0]Q;
  wire [3:0]S;
  wire [1:0]\pipe_reg_X2_reg[13] ;
  wire [13:0]\pipe_reg_Y2_reg[12] ;
  wire [3:0]\pipe_reg_theda2_reg[12] ;
  wire [13:0]sum_X;
  wire sum_X_carry__0_n_0;
  wire sum_X_carry__0_n_1;
  wire sum_X_carry__0_n_2;
  wire sum_X_carry__0_n_3;
  wire sum_X_carry__1_n_0;
  wire sum_X_carry__1_n_1;
  wire sum_X_carry__1_n_2;
  wire sum_X_carry__1_n_3;
  wire sum_X_carry__2_n_3;
  wire sum_X_carry_n_0;
  wire sum_X_carry_n_1;
  wire sum_X_carry_n_2;
  wire sum_X_carry_n_3;
  wire [13:0]sum_Y;
  wire sum_Y_carry__0_n_0;
  wire sum_Y_carry__0_n_1;
  wire sum_Y_carry__0_n_2;
  wire sum_Y_carry__0_n_3;
  wire sum_Y_carry__1_n_0;
  wire sum_Y_carry__1_n_1;
  wire sum_Y_carry__1_n_2;
  wire sum_Y_carry__1_n_3;
  wire [0:0]sum_Y_carry__2_0;
  wire sum_Y_carry__2_n_3;
  wire sum_Y_carry_n_0;
  wire sum_Y_carry_n_1;
  wire sum_Y_carry_n_2;
  wire sum_Y_carry_n_3;
  wire [4:0]sum_theda_carry__0_0;
  wire sum_theda_carry__0_n_0;
  wire sum_theda_carry__0_n_1;
  wire sum_theda_carry__0_n_2;
  wire sum_theda_carry__0_n_3;
  wire [8:0]sum_theda_carry__1_i_1__3;
  wire sum_theda_carry_n_0;
  wire sum_theda_carry_n_1;
  wire sum_theda_carry_n_2;
  wire sum_theda_carry_n_3;
  wire [3:1]NLW_sum_X_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_sum_X_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_sum_Y_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_sum_Y_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_sum_theda_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_sum_theda_carry__1_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry
       (.CI(1'b0),
        .CO({sum_X_carry_n_0,sum_X_carry_n_1,sum_X_carry_n_2,sum_X_carry_n_3}),
        .CYINIT(sum_Y[13]),
        .DI(sum_X[3:0]),
        .O(D[3:0]),
        .S(\OutX_FF_reg[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__0
       (.CI(sum_X_carry_n_0),
        .CO({sum_X_carry__0_n_0,sum_X_carry__0_n_1,sum_X_carry__0_n_2,sum_X_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(sum_X[7:4]),
        .O(D[7:4]),
        .S(\OutX_FF_reg[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__1
       (.CI(sum_X_carry__0_n_0),
        .CO({sum_X_carry__1_n_0,sum_X_carry__1_n_1,sum_X_carry__1_n_2,sum_X_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(sum_X[11:8]),
        .O(D[11:8]),
        .S(sum_X[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_X_carry__2
       (.CI(sum_X_carry__1_n_0),
        .CO({NLW_sum_X_carry__2_CO_UNCONNECTED[3:1],sum_X_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sum_X[12]}),
        .O({NLW_sum_X_carry__2_O_UNCONNECTED[3:2],D[13:12]}),
        .S({1'b0,1'b0,sum_X[13:12]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_Y_carry
       (.CI(1'b0),
        .CO({sum_Y_carry_n_0,sum_Y_carry_n_1,sum_Y_carry_n_2,sum_Y_carry_n_3}),
        .CYINIT(\OutY_FF_reg[3] ),
        .DI(sum_Y[3:0]),
        .O(\pipe_reg_Y2_reg[12] [3:0]),
        .S(\OutY_FF_reg[3]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_Y_carry__0
       (.CI(sum_Y_carry_n_0),
        .CO({sum_Y_carry__0_n_0,sum_Y_carry__0_n_1,sum_Y_carry__0_n_2,sum_Y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(sum_Y[7:4]),
        .O(\pipe_reg_Y2_reg[12] [7:4]),
        .S(\OutY_FF_reg[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_Y_carry__1
       (.CI(sum_Y_carry__0_n_0),
        .CO({sum_Y_carry__1_n_0,sum_Y_carry__1_n_1,sum_Y_carry__1_n_2,sum_Y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(sum_Y[11:8]),
        .O(\pipe_reg_Y2_reg[12] [11:8]),
        .S(\OutY_FF_reg[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_Y_carry__2
       (.CI(sum_Y_carry__1_n_0),
        .CO({NLW_sum_Y_carry__2_CO_UNCONNECTED[3:1],sum_Y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sum_Y[12]}),
        .O({NLW_sum_Y_carry__2_O_UNCONNECTED[3:2],\pipe_reg_Y2_reg[12] [13:12]}),
        .S({1'b0,1'b0,\OutY_FF_reg[13] }));
  LUT1 #(
    .INIT(2'h1)) 
    sum_Y_carry__2_i_1__3
       (.I0(sum_Y_carry__2_0),
        .O(\pipe_reg_X2_reg[13] [1]));
  LUT3 #(
    .INIT(8'h69)) 
    sum_Y_carry__2_i_2__1
       (.I0(Q[0]),
        .I1(sum_Y_carry__2_0),
        .I2(Q[1]),
        .O(\pipe_reg_X2_reg[13] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry
       (.CI(1'b0),
        .CO({sum_theda_carry_n_0,sum_theda_carry_n_1,sum_theda_carry_n_2,sum_theda_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI[1],sum_Y[13],DI[0],1'b0}),
        .O(sum_theda_carry__1_i_1__3[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry__0
       (.CI(sum_theda_carry_n_0),
        .CO({sum_theda_carry__0_n_0,sum_theda_carry__0_n_1,sum_theda_carry__0_n_2,sum_theda_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\OutTheda_FF_reg[12] ),
        .O(sum_theda_carry__1_i_1__3[7:4]),
        .S(\OutTheda_FF_reg[12]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__0_i_1__3
       (.I0(sum_theda_carry__0_0[3]),
        .I1(sum_theda_carry__0_0[4]),
        .O(\pipe_reg_theda2_reg[12] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__0_i_2__3
       (.I0(sum_theda_carry__0_0[2]),
        .I1(sum_theda_carry__0_0[3]),
        .O(\pipe_reg_theda2_reg[12] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__0_i_3__2
       (.I0(sum_theda_carry__0_0[1]),
        .I1(sum_theda_carry__0_0[2]),
        .O(\pipe_reg_theda2_reg[12] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sum_theda_carry__0_i_4__3
       (.I0(sum_theda_carry__0_0[0]),
        .I1(sum_theda_carry__0_0[1]),
        .O(\pipe_reg_theda2_reg[12] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_theda_carry__1
       (.CI(sum_theda_carry__0_n_0),
        .CO(NLW_sum_theda_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sum_theda_carry__1_O_UNCONNECTED[3:1],sum_theda_carry__1_i_1__3[8]}),
        .S({1'b0,1'b0,1'b0,\OutTheda_FF_reg[13] }));
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
