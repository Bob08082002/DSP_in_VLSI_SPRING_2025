// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Mar 12 20:34:13 2025
// Host        : DESKTOP-T5CR5M4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW1/VIVADO/DSP_in_VLSI_HW1_v1/DSP_in_VLSI_HW1_v1.sim/sim_1/synth/timing/xsim/testbench_time_synth.v
// Design      : SelectTopK
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Comparator
   (CO,
    D,
    \shift_group_reg_r[7][1][7]_i_3_0 ,
    \shift_group_reg_r[7][1][6]_i_3_0 ,
    \shift_group_reg_r[7][1][6]_i_2_0 ,
    \In1[7] ,
    \In2[4] ,
    \In1[4] ,
    \In1[7]_0 ,
    \In4[7] ,
    \In1[4]_0 ,
    \In2[4]_0 ,
    \In2[7] ,
    DI,
    S,
    \shift_group_reg_r_reg[7][2][1] ,
    In3_IBUF,
    \shift_group_reg_r_reg[7][3][1] ,
    In4_IBUF,
    \shift_group_reg_r_reg[7][0][1] ,
    In1_IBUF,
    In2_IBUF,
    \shift_group_reg_r_reg[7][0][1]_0 ,
    \shift_group_reg_r_reg[7][0][0] ,
    \shift_group_reg_r_reg[7][0][3] ,
    \shift_group_reg_r_reg[7][0][2] ,
    \shift_group_reg_r_reg[7][0][5] ,
    \shift_group_reg_r_reg[7][0][4] ,
    \shift_group_reg_r_reg[7][0][7] ,
    \shift_group_reg_r_reg[7][0][6] ,
    \shift_group_reg_r_reg[7][3][1]_0 ,
    \shift_group_reg_r_reg[7][1][1] ,
    \shift_group_reg_r_reg[7][1][0] ,
    \shift_group_reg_r_reg[7][1][3] ,
    \shift_group_reg_r_reg[7][1][2] ,
    \shift_group_reg_r_reg[7][1][5] ,
    \shift_group_reg_r_reg[7][1][4] ,
    \shift_group_reg_r_reg[7][2][7] ,
    \shift_group_reg_r_reg[7][1][6] );
  output [0:0]CO;
  output [7:0]D;
  output [7:0]\shift_group_reg_r[7][1][7]_i_3_0 ;
  output [3:0]\shift_group_reg_r[7][1][6]_i_3_0 ;
  output [3:0]\shift_group_reg_r[7][1][6]_i_2_0 ;
  output [7:0]\In1[7] ;
  output [2:0]\In2[4] ;
  output [2:0]\In1[4] ;
  output \In1[7]_0 ;
  output [7:0]\In4[7] ;
  output [2:0]\In1[4]_0 ;
  output [2:0]\In2[4]_0 ;
  output \In2[7] ;
  input [3:0]DI;
  input [3:0]S;
  input [0:0]\shift_group_reg_r_reg[7][2][1] ;
  input [7:0]In3_IBUF;
  input [0:0]\shift_group_reg_r_reg[7][3][1] ;
  input [7:0]In4_IBUF;
  input [0:0]\shift_group_reg_r_reg[7][0][1] ;
  input [7:0]In1_IBUF;
  input [7:0]In2_IBUF;
  input \shift_group_reg_r_reg[7][0][1]_0 ;
  input \shift_group_reg_r_reg[7][0][0] ;
  input \shift_group_reg_r_reg[7][0][3] ;
  input \shift_group_reg_r_reg[7][0][2] ;
  input \shift_group_reg_r_reg[7][0][5] ;
  input \shift_group_reg_r_reg[7][0][4] ;
  input \shift_group_reg_r_reg[7][0][7] ;
  input \shift_group_reg_r_reg[7][0][6] ;
  input [0:0]\shift_group_reg_r_reg[7][3][1]_0 ;
  input \shift_group_reg_r_reg[7][1][1] ;
  input \shift_group_reg_r_reg[7][1][0] ;
  input \shift_group_reg_r_reg[7][1][3] ;
  input \shift_group_reg_r_reg[7][1][2] ;
  input \shift_group_reg_r_reg[7][1][5] ;
  input \shift_group_reg_r_reg[7][1][4] ;
  input \shift_group_reg_r_reg[7][2][7] ;
  input \shift_group_reg_r_reg[7][1][6] ;

  wire [0:0]CO;
  wire [7:0]D;
  wire [3:0]DI;
  wire [2:0]\In1[4] ;
  wire [2:0]\In1[4]_0 ;
  wire [7:0]\In1[7] ;
  wire \In1[7]_0 ;
  wire [7:0]In1_IBUF;
  wire [2:0]\In2[4] ;
  wire [2:0]\In2[4]_0 ;
  wire \In2[7] ;
  wire [7:0]In2_IBUF;
  wire [7:0]In3_IBUF;
  wire [7:0]\In4[7] ;
  wire [7:0]In4_IBUF;
  wire [3:0]S;
  wire o_Max2_carry_i_10__5_n_11;
  wire o_Max2_carry_i_11__5_n_11;
  wire o_Max2_carry_i_12__5_n_11;
  wire o_Max2_carry_i_14__5_n_11;
  wire o_Max2_carry_i_15__5_n_11;
  wire o_Max2_carry_i_16__5_n_11;
  wire o_Max2_carry_i_18__5_n_11;
  wire o_Max2_carry_i_19__5_n_11;
  wire o_Max2_carry_i_20__5_n_11;
  wire o_Max2_carry_n_12;
  wire o_Max2_carry_n_13;
  wire o_Max2_carry_n_14;
  wire \shift_group_reg_r[7][1][0]_i_2_n_11 ;
  wire \shift_group_reg_r[7][1][0]_i_3_n_11 ;
  wire \shift_group_reg_r[7][1][0]_i_4_n_11 ;
  wire \shift_group_reg_r[7][1][1]_i_2_n_11 ;
  wire \shift_group_reg_r[7][1][1]_i_3_n_11 ;
  wire \shift_group_reg_r[7][1][2]_i_2_n_11 ;
  wire \shift_group_reg_r[7][1][2]_i_3_n_11 ;
  wire \shift_group_reg_r[7][1][2]_i_4_n_11 ;
  wire \shift_group_reg_r[7][1][3]_i_2_n_11 ;
  wire \shift_group_reg_r[7][1][3]_i_3_n_11 ;
  wire \shift_group_reg_r[7][1][4]_i_2_n_11 ;
  wire \shift_group_reg_r[7][1][4]_i_3_n_11 ;
  wire \shift_group_reg_r[7][1][4]_i_4_n_11 ;
  wire \shift_group_reg_r[7][1][5]_i_2_n_11 ;
  wire \shift_group_reg_r[7][1][5]_i_3_n_11 ;
  wire [3:0]\shift_group_reg_r[7][1][6]_i_2_0 ;
  wire \shift_group_reg_r[7][1][6]_i_2_n_11 ;
  wire [3:0]\shift_group_reg_r[7][1][6]_i_3_0 ;
  wire \shift_group_reg_r[7][1][6]_i_3_n_11 ;
  wire \shift_group_reg_r[7][1][6]_i_4_n_11 ;
  wire \shift_group_reg_r[7][1][7]_i_2_n_11 ;
  wire [7:0]\shift_group_reg_r[7][1][7]_i_3_0 ;
  wire \shift_group_reg_r[7][1][7]_i_3_n_11 ;
  wire \shift_group_reg_r[7][3][0]_i_2_n_11 ;
  wire \shift_group_reg_r[7][3][1]_i_2_n_11 ;
  wire \shift_group_reg_r[7][3][2]_i_2_n_11 ;
  wire \shift_group_reg_r[7][3][3]_i_2_n_11 ;
  wire \shift_group_reg_r[7][3][4]_i_2_n_11 ;
  wire \shift_group_reg_r[7][3][5]_i_2_n_11 ;
  wire \shift_group_reg_r[7][3][6]_i_2_n_11 ;
  wire \shift_group_reg_r_reg[7][0][0] ;
  wire [0:0]\shift_group_reg_r_reg[7][0][1] ;
  wire \shift_group_reg_r_reg[7][0][1]_0 ;
  wire \shift_group_reg_r_reg[7][0][2] ;
  wire \shift_group_reg_r_reg[7][0][3] ;
  wire \shift_group_reg_r_reg[7][0][4] ;
  wire \shift_group_reg_r_reg[7][0][5] ;
  wire \shift_group_reg_r_reg[7][0][6] ;
  wire \shift_group_reg_r_reg[7][0][7] ;
  wire \shift_group_reg_r_reg[7][1][0] ;
  wire \shift_group_reg_r_reg[7][1][1] ;
  wire \shift_group_reg_r_reg[7][1][2] ;
  wire \shift_group_reg_r_reg[7][1][3] ;
  wire \shift_group_reg_r_reg[7][1][4] ;
  wire \shift_group_reg_r_reg[7][1][5] ;
  wire \shift_group_reg_r_reg[7][1][6] ;
  wire [0:0]\shift_group_reg_r_reg[7][2][1] ;
  wire \shift_group_reg_r_reg[7][2][7] ;
  wire [0:0]\shift_group_reg_r_reg[7][3][1] ;
  wire [0:0]\shift_group_reg_r_reg[7][3][1]_0 ;
  wire [3:0]NLW_o_Max2_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_Max2_carry
       (.CI(1'b0),
        .CO({CO,o_Max2_carry_n_12,o_Max2_carry_n_13,o_Max2_carry_n_14}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_o_Max2_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_Max2_carry_i_10__5
       (.I0(In1_IBUF[5]),
        .I1(CO),
        .I2(In2_IBUF[5]),
        .O(o_Max2_carry_i_10__5_n_11));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_Max2_carry_i_11__5
       (.I0(In1_IBUF[3]),
        .I1(CO),
        .I2(In2_IBUF[3]),
        .O(o_Max2_carry_i_11__5_n_11));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_Max2_carry_i_12__5
       (.I0(In1_IBUF[1]),
        .I1(CO),
        .I2(In2_IBUF[1]),
        .O(o_Max2_carry_i_12__5_n_11));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    o_Max2_carry_i_14__5
       (.I0(In2_IBUF[5]),
        .I1(CO),
        .I2(In1_IBUF[5]),
        .I3(In4_IBUF[5]),
        .I4(\shift_group_reg_r_reg[7][3][1] ),
        .I5(In3_IBUF[5]),
        .O(o_Max2_carry_i_14__5_n_11));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    o_Max2_carry_i_15__5
       (.I0(In2_IBUF[3]),
        .I1(CO),
        .I2(In1_IBUF[3]),
        .I3(In4_IBUF[3]),
        .I4(\shift_group_reg_r_reg[7][3][1] ),
        .I5(In3_IBUF[3]),
        .O(o_Max2_carry_i_15__5_n_11));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    o_Max2_carry_i_16__5
       (.I0(In2_IBUF[1]),
        .I1(CO),
        .I2(In1_IBUF[1]),
        .I3(In4_IBUF[1]),
        .I4(\shift_group_reg_r_reg[7][3][1] ),
        .I5(In3_IBUF[1]),
        .O(o_Max2_carry_i_16__5_n_11));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    o_Max2_carry_i_18__5
       (.I0(In1_IBUF[5]),
        .I1(CO),
        .I2(In2_IBUF[5]),
        .I3(In3_IBUF[5]),
        .I4(\shift_group_reg_r_reg[7][3][1] ),
        .I5(In4_IBUF[5]),
        .O(o_Max2_carry_i_18__5_n_11));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    o_Max2_carry_i_19__5
       (.I0(In1_IBUF[3]),
        .I1(CO),
        .I2(In2_IBUF[3]),
        .I3(In3_IBUF[3]),
        .I4(\shift_group_reg_r_reg[7][3][1] ),
        .I5(In4_IBUF[3]),
        .O(o_Max2_carry_i_19__5_n_11));
  LUT4 #(
    .INIT(16'h22B2)) 
    o_Max2_carry_i_1__8
       (.I0(\shift_group_reg_r[7][1][7]_i_3_n_11 ),
        .I1(\shift_group_reg_r[7][1][7]_i_2_n_11 ),
        .I2(\shift_group_reg_r[7][1][6]_i_2_n_11 ),
        .I3(\shift_group_reg_r[7][1][6]_i_3_n_11 ),
        .O(\shift_group_reg_r[7][1][6]_i_3_0 [3]));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    o_Max2_carry_i_20__5
       (.I0(In1_IBUF[1]),
        .I1(CO),
        .I2(In2_IBUF[1]),
        .I3(In3_IBUF[1]),
        .I4(\shift_group_reg_r_reg[7][3][1] ),
        .I5(In4_IBUF[1]),
        .O(o_Max2_carry_i_20__5_n_11));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    o_Max2_carry_i_2__10
       (.I0(\shift_group_reg_r[7][3][5]_i_2_n_11 ),
        .I1(\shift_group_reg_r_reg[7][1][5] ),
        .I2(In1_IBUF[4]),
        .I3(CO),
        .I4(In2_IBUF[4]),
        .I5(\shift_group_reg_r_reg[7][1][4] ),
        .O(\In1[4]_0 [2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    o_Max2_carry_i_2__8
       (.I0(\shift_group_reg_r[7][1][5]_i_2_n_11 ),
        .I1(\shift_group_reg_r[7][1][5]_i_3_n_11 ),
        .I2(\shift_group_reg_r[7][1][4]_i_2_n_11 ),
        .I3(\shift_group_reg_r[7][1][4]_i_3_n_11 ),
        .O(\shift_group_reg_r[7][1][6]_i_3_0 [2]));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    o_Max2_carry_i_2__9
       (.I0(o_Max2_carry_i_10__5_n_11),
        .I1(\shift_group_reg_r_reg[7][0][5] ),
        .I2(In2_IBUF[4]),
        .I3(CO),
        .I4(In1_IBUF[4]),
        .I5(\shift_group_reg_r_reg[7][0][4] ),
        .O(\In2[4] [2]));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    o_Max2_carry_i_3__10
       (.I0(\shift_group_reg_r[7][3][3]_i_2_n_11 ),
        .I1(\shift_group_reg_r_reg[7][1][3] ),
        .I2(In1_IBUF[2]),
        .I3(CO),
        .I4(In2_IBUF[2]),
        .I5(\shift_group_reg_r_reg[7][1][2] ),
        .O(\In1[4]_0 [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    o_Max2_carry_i_3__8
       (.I0(\shift_group_reg_r[7][1][3]_i_2_n_11 ),
        .I1(\shift_group_reg_r[7][1][3]_i_3_n_11 ),
        .I2(\shift_group_reg_r[7][1][2]_i_2_n_11 ),
        .I3(\shift_group_reg_r[7][1][2]_i_3_n_11 ),
        .O(\shift_group_reg_r[7][1][6]_i_3_0 [1]));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    o_Max2_carry_i_3__9
       (.I0(o_Max2_carry_i_11__5_n_11),
        .I1(\shift_group_reg_r_reg[7][0][3] ),
        .I2(In2_IBUF[2]),
        .I3(CO),
        .I4(In1_IBUF[2]),
        .I5(\shift_group_reg_r_reg[7][0][2] ),
        .O(\In2[4] [1]));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    o_Max2_carry_i_4__10
       (.I0(\shift_group_reg_r[7][3][1]_i_2_n_11 ),
        .I1(\shift_group_reg_r_reg[7][1][1] ),
        .I2(In1_IBUF[0]),
        .I3(CO),
        .I4(In2_IBUF[0]),
        .I5(\shift_group_reg_r_reg[7][1][0] ),
        .O(\In1[4]_0 [0]));
  LUT4 #(
    .INIT(16'h22B2)) 
    o_Max2_carry_i_4__8
       (.I0(\shift_group_reg_r[7][1][1]_i_2_n_11 ),
        .I1(\shift_group_reg_r[7][1][1]_i_3_n_11 ),
        .I2(\shift_group_reg_r[7][1][0]_i_2_n_11 ),
        .I3(\shift_group_reg_r[7][1][0]_i_3_n_11 ),
        .O(\shift_group_reg_r[7][1][6]_i_3_0 [0]));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    o_Max2_carry_i_4__9
       (.I0(o_Max2_carry_i_12__5_n_11),
        .I1(\shift_group_reg_r_reg[7][0][1]_0 ),
        .I2(In2_IBUF[0]),
        .I3(CO),
        .I4(In1_IBUF[0]),
        .I5(\shift_group_reg_r_reg[7][0][0] ),
        .O(\In2[4] [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_Max2_carry_i_5__8
       (.I0(\shift_group_reg_r[7][1][7]_i_2_n_11 ),
        .I1(\shift_group_reg_r[7][1][7]_i_3_n_11 ),
        .I2(\shift_group_reg_r[7][1][6]_i_3_n_11 ),
        .I3(\shift_group_reg_r[7][1][6]_i_2_n_11 ),
        .O(\shift_group_reg_r[7][1][6]_i_2_0 [3]));
  LUT5 #(
    .INIT(32'h41444111)) 
    o_Max2_carry_i_6__10
       (.I0(o_Max2_carry_i_18__5_n_11),
        .I1(\shift_group_reg_r_reg[7][1][4] ),
        .I2(In2_IBUF[4]),
        .I3(CO),
        .I4(In1_IBUF[4]),
        .O(\In2[4]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_Max2_carry_i_6__8
       (.I0(\shift_group_reg_r[7][1][5]_i_3_n_11 ),
        .I1(\shift_group_reg_r[7][1][5]_i_2_n_11 ),
        .I2(\shift_group_reg_r[7][1][4]_i_3_n_11 ),
        .I3(\shift_group_reg_r[7][1][4]_i_2_n_11 ),
        .O(\shift_group_reg_r[7][1][6]_i_2_0 [2]));
  LUT5 #(
    .INIT(32'h41444111)) 
    o_Max2_carry_i_6__9
       (.I0(o_Max2_carry_i_14__5_n_11),
        .I1(\shift_group_reg_r_reg[7][0][4] ),
        .I2(In1_IBUF[4]),
        .I3(CO),
        .I4(In2_IBUF[4]),
        .O(\In1[4] [2]));
  LUT5 #(
    .INIT(32'h41444111)) 
    o_Max2_carry_i_7__10
       (.I0(o_Max2_carry_i_19__5_n_11),
        .I1(\shift_group_reg_r_reg[7][1][2] ),
        .I2(In2_IBUF[2]),
        .I3(CO),
        .I4(In1_IBUF[2]),
        .O(\In2[4]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_Max2_carry_i_7__8
       (.I0(\shift_group_reg_r[7][1][3]_i_3_n_11 ),
        .I1(\shift_group_reg_r[7][1][3]_i_2_n_11 ),
        .I2(\shift_group_reg_r[7][1][2]_i_3_n_11 ),
        .I3(\shift_group_reg_r[7][1][2]_i_2_n_11 ),
        .O(\shift_group_reg_r[7][1][6]_i_2_0 [1]));
  LUT5 #(
    .INIT(32'h41444111)) 
    o_Max2_carry_i_7__9
       (.I0(o_Max2_carry_i_15__5_n_11),
        .I1(\shift_group_reg_r_reg[7][0][2] ),
        .I2(In1_IBUF[2]),
        .I3(CO),
        .I4(In2_IBUF[2]),
        .O(\In1[4] [1]));
  LUT5 #(
    .INIT(32'h41444111)) 
    o_Max2_carry_i_8__10
       (.I0(o_Max2_carry_i_20__5_n_11),
        .I1(\shift_group_reg_r_reg[7][1][0] ),
        .I2(In2_IBUF[0]),
        .I3(CO),
        .I4(In1_IBUF[0]),
        .O(\In2[4]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_Max2_carry_i_8__8
       (.I0(\shift_group_reg_r[7][1][1]_i_3_n_11 ),
        .I1(\shift_group_reg_r[7][1][1]_i_2_n_11 ),
        .I2(\shift_group_reg_r[7][1][0]_i_3_n_11 ),
        .I3(\shift_group_reg_r[7][1][0]_i_2_n_11 ),
        .O(\shift_group_reg_r[7][1][6]_i_2_0 [0]));
  LUT5 #(
    .INIT(32'h41444111)) 
    o_Max2_carry_i_8__9
       (.I0(o_Max2_carry_i_16__5_n_11),
        .I1(\shift_group_reg_r_reg[7][0][0] ),
        .I2(In1_IBUF[0]),
        .I3(CO),
        .I4(In2_IBUF[0]),
        .O(\In1[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_Max2_carry_i_9__5
       (.I0(In1_IBUF[7]),
        .I1(CO),
        .I2(In2_IBUF[7]),
        .O(\In1[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][0][0]_i_1 
       (.I0(In1_IBUF[0]),
        .I1(CO),
        .I2(In2_IBUF[0]),
        .I3(\shift_group_reg_r_reg[7][0][1] ),
        .I4(\shift_group_reg_r_reg[7][0][0] ),
        .O(\In1[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][0][1]_i_1 
       (.I0(In1_IBUF[1]),
        .I1(CO),
        .I2(In2_IBUF[1]),
        .I3(\shift_group_reg_r_reg[7][0][1] ),
        .I4(\shift_group_reg_r_reg[7][0][1]_0 ),
        .O(\In1[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][0][2]_i_1 
       (.I0(In1_IBUF[2]),
        .I1(CO),
        .I2(In2_IBUF[2]),
        .I3(\shift_group_reg_r_reg[7][0][1] ),
        .I4(\shift_group_reg_r_reg[7][0][2] ),
        .O(\In1[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][0][3]_i_1 
       (.I0(In1_IBUF[3]),
        .I1(CO),
        .I2(In2_IBUF[3]),
        .I3(\shift_group_reg_r_reg[7][0][1] ),
        .I4(\shift_group_reg_r_reg[7][0][3] ),
        .O(\In1[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][0][4]_i_1 
       (.I0(In1_IBUF[4]),
        .I1(CO),
        .I2(In2_IBUF[4]),
        .I3(\shift_group_reg_r_reg[7][0][1] ),
        .I4(\shift_group_reg_r_reg[7][0][4] ),
        .O(\In1[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][0][5]_i_1 
       (.I0(In1_IBUF[5]),
        .I1(CO),
        .I2(In2_IBUF[5]),
        .I3(\shift_group_reg_r_reg[7][0][1] ),
        .I4(\shift_group_reg_r_reg[7][0][5] ),
        .O(\In1[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][0][6]_i_1 
       (.I0(In1_IBUF[6]),
        .I1(CO),
        .I2(In2_IBUF[6]),
        .I3(\shift_group_reg_r_reg[7][0][1] ),
        .I4(\shift_group_reg_r_reg[7][0][6] ),
        .O(\In1[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][0][7]_i_1 
       (.I0(In1_IBUF[7]),
        .I1(CO),
        .I2(In2_IBUF[7]),
        .I3(\shift_group_reg_r_reg[7][0][1] ),
        .I4(\shift_group_reg_r_reg[7][0][7] ),
        .O(\In1[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][1][0]_i_1 
       (.I0(\shift_group_reg_r[7][1][0]_i_2_n_11 ),
        .I1(\shift_group_reg_r_reg[7][2][1] ),
        .I2(\shift_group_reg_r[7][1][0]_i_3_n_11 ),
        .O(\shift_group_reg_r[7][1][7]_i_3_0 [0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][1][0]_i_2 
       (.I0(In3_IBUF[0]),
        .I1(\shift_group_reg_r_reg[7][3][1] ),
        .I2(In4_IBUF[0]),
        .I3(\shift_group_reg_r_reg[7][0][1] ),
        .I4(\shift_group_reg_r[7][1][0]_i_4_n_11 ),
        .O(\shift_group_reg_r[7][1][0]_i_2_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][1][0]_i_3 
       (.I0(In2_IBUF[0]),
        .I1(CO),
        .I2(In1_IBUF[0]),
        .I3(\shift_group_reg_r_reg[7][3][1]_0 ),
        .I4(\shift_group_reg_r_reg[7][1][0] ),
        .O(\shift_group_reg_r[7][1][0]_i_3_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][1][0]_i_4 
       (.I0(In1_IBUF[0]),
        .I1(CO),
        .I2(In2_IBUF[0]),
        .O(\shift_group_reg_r[7][1][0]_i_4_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][1][1]_i_1 
       (.I0(\shift_group_reg_r[7][1][1]_i_2_n_11 ),
        .I1(\shift_group_reg_r_reg[7][2][1] ),
        .I2(\shift_group_reg_r[7][1][1]_i_3_n_11 ),
        .O(\shift_group_reg_r[7][1][7]_i_3_0 [1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][1][1]_i_2 
       (.I0(In3_IBUF[1]),
        .I1(\shift_group_reg_r_reg[7][3][1] ),
        .I2(In4_IBUF[1]),
        .I3(\shift_group_reg_r_reg[7][0][1] ),
        .I4(o_Max2_carry_i_12__5_n_11),
        .O(\shift_group_reg_r[7][1][1]_i_2_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][1][1]_i_3 
       (.I0(In2_IBUF[1]),
        .I1(CO),
        .I2(In1_IBUF[1]),
        .I3(\shift_group_reg_r_reg[7][3][1]_0 ),
        .I4(\shift_group_reg_r_reg[7][1][1] ),
        .O(\shift_group_reg_r[7][1][1]_i_3_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][1][2]_i_1 
       (.I0(\shift_group_reg_r[7][1][2]_i_2_n_11 ),
        .I1(\shift_group_reg_r_reg[7][2][1] ),
        .I2(\shift_group_reg_r[7][1][2]_i_3_n_11 ),
        .O(\shift_group_reg_r[7][1][7]_i_3_0 [2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][1][2]_i_2 
       (.I0(In3_IBUF[2]),
        .I1(\shift_group_reg_r_reg[7][3][1] ),
        .I2(In4_IBUF[2]),
        .I3(\shift_group_reg_r_reg[7][0][1] ),
        .I4(\shift_group_reg_r[7][1][2]_i_4_n_11 ),
        .O(\shift_group_reg_r[7][1][2]_i_2_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][1][2]_i_3 
       (.I0(In2_IBUF[2]),
        .I1(CO),
        .I2(In1_IBUF[2]),
        .I3(\shift_group_reg_r_reg[7][3][1]_0 ),
        .I4(\shift_group_reg_r_reg[7][1][2] ),
        .O(\shift_group_reg_r[7][1][2]_i_3_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][1][2]_i_4 
       (.I0(In1_IBUF[2]),
        .I1(CO),
        .I2(In2_IBUF[2]),
        .O(\shift_group_reg_r[7][1][2]_i_4_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][1][3]_i_1 
       (.I0(\shift_group_reg_r[7][1][3]_i_2_n_11 ),
        .I1(\shift_group_reg_r_reg[7][2][1] ),
        .I2(\shift_group_reg_r[7][1][3]_i_3_n_11 ),
        .O(\shift_group_reg_r[7][1][7]_i_3_0 [3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][1][3]_i_2 
       (.I0(In3_IBUF[3]),
        .I1(\shift_group_reg_r_reg[7][3][1] ),
        .I2(In4_IBUF[3]),
        .I3(\shift_group_reg_r_reg[7][0][1] ),
        .I4(o_Max2_carry_i_11__5_n_11),
        .O(\shift_group_reg_r[7][1][3]_i_2_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][1][3]_i_3 
       (.I0(In2_IBUF[3]),
        .I1(CO),
        .I2(In1_IBUF[3]),
        .I3(\shift_group_reg_r_reg[7][3][1]_0 ),
        .I4(\shift_group_reg_r_reg[7][1][3] ),
        .O(\shift_group_reg_r[7][1][3]_i_3_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][1][4]_i_1 
       (.I0(\shift_group_reg_r[7][1][4]_i_2_n_11 ),
        .I1(\shift_group_reg_r_reg[7][2][1] ),
        .I2(\shift_group_reg_r[7][1][4]_i_3_n_11 ),
        .O(\shift_group_reg_r[7][1][7]_i_3_0 [4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][1][4]_i_2 
       (.I0(In3_IBUF[4]),
        .I1(\shift_group_reg_r_reg[7][3][1] ),
        .I2(In4_IBUF[4]),
        .I3(\shift_group_reg_r_reg[7][0][1] ),
        .I4(\shift_group_reg_r[7][1][4]_i_4_n_11 ),
        .O(\shift_group_reg_r[7][1][4]_i_2_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][1][4]_i_3 
       (.I0(In2_IBUF[4]),
        .I1(CO),
        .I2(In1_IBUF[4]),
        .I3(\shift_group_reg_r_reg[7][3][1]_0 ),
        .I4(\shift_group_reg_r_reg[7][1][4] ),
        .O(\shift_group_reg_r[7][1][4]_i_3_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][1][4]_i_4 
       (.I0(In1_IBUF[4]),
        .I1(CO),
        .I2(In2_IBUF[4]),
        .O(\shift_group_reg_r[7][1][4]_i_4_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][1][5]_i_1 
       (.I0(\shift_group_reg_r[7][1][5]_i_2_n_11 ),
        .I1(\shift_group_reg_r_reg[7][2][1] ),
        .I2(\shift_group_reg_r[7][1][5]_i_3_n_11 ),
        .O(\shift_group_reg_r[7][1][7]_i_3_0 [5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][1][5]_i_2 
       (.I0(In3_IBUF[5]),
        .I1(\shift_group_reg_r_reg[7][3][1] ),
        .I2(In4_IBUF[5]),
        .I3(\shift_group_reg_r_reg[7][0][1] ),
        .I4(o_Max2_carry_i_10__5_n_11),
        .O(\shift_group_reg_r[7][1][5]_i_2_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][1][5]_i_3 
       (.I0(In2_IBUF[5]),
        .I1(CO),
        .I2(In1_IBUF[5]),
        .I3(\shift_group_reg_r_reg[7][3][1]_0 ),
        .I4(\shift_group_reg_r_reg[7][1][5] ),
        .O(\shift_group_reg_r[7][1][5]_i_3_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][1][6]_i_1 
       (.I0(\shift_group_reg_r[7][1][6]_i_2_n_11 ),
        .I1(\shift_group_reg_r_reg[7][2][1] ),
        .I2(\shift_group_reg_r[7][1][6]_i_3_n_11 ),
        .O(\shift_group_reg_r[7][1][7]_i_3_0 [6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][1][6]_i_2 
       (.I0(In3_IBUF[6]),
        .I1(\shift_group_reg_r_reg[7][3][1] ),
        .I2(In4_IBUF[6]),
        .I3(\shift_group_reg_r_reg[7][0][1] ),
        .I4(\shift_group_reg_r[7][1][6]_i_4_n_11 ),
        .O(\shift_group_reg_r[7][1][6]_i_2_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][1][6]_i_3 
       (.I0(In2_IBUF[6]),
        .I1(CO),
        .I2(In1_IBUF[6]),
        .I3(\shift_group_reg_r_reg[7][3][1]_0 ),
        .I4(\shift_group_reg_r_reg[7][1][6] ),
        .O(\shift_group_reg_r[7][1][6]_i_3_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][1][6]_i_4 
       (.I0(In1_IBUF[6]),
        .I1(CO),
        .I2(In2_IBUF[6]),
        .O(\shift_group_reg_r[7][1][6]_i_4_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][1][7]_i_1 
       (.I0(\shift_group_reg_r[7][1][7]_i_2_n_11 ),
        .I1(\shift_group_reg_r_reg[7][2][1] ),
        .I2(\shift_group_reg_r[7][1][7]_i_3_n_11 ),
        .O(\shift_group_reg_r[7][1][7]_i_3_0 [7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][1][7]_i_2 
       (.I0(In3_IBUF[7]),
        .I1(\shift_group_reg_r_reg[7][3][1] ),
        .I2(In4_IBUF[7]),
        .I3(\shift_group_reg_r_reg[7][0][1] ),
        .I4(\In1[7]_0 ),
        .O(\shift_group_reg_r[7][1][7]_i_2_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][1][7]_i_3 
       (.I0(In2_IBUF[7]),
        .I1(CO),
        .I2(In1_IBUF[7]),
        .I3(\shift_group_reg_r_reg[7][3][1]_0 ),
        .I4(\shift_group_reg_r_reg[7][2][7] ),
        .O(\shift_group_reg_r[7][1][7]_i_3_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][2][0]_i_1 
       (.I0(\shift_group_reg_r[7][1][0]_i_3_n_11 ),
        .I1(\shift_group_reg_r_reg[7][2][1] ),
        .I2(\shift_group_reg_r[7][1][0]_i_2_n_11 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][2][1]_i_1 
       (.I0(\shift_group_reg_r[7][1][1]_i_3_n_11 ),
        .I1(\shift_group_reg_r_reg[7][2][1] ),
        .I2(\shift_group_reg_r[7][1][1]_i_2_n_11 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][2][2]_i_1 
       (.I0(\shift_group_reg_r[7][1][2]_i_3_n_11 ),
        .I1(\shift_group_reg_r_reg[7][2][1] ),
        .I2(\shift_group_reg_r[7][1][2]_i_2_n_11 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][2][3]_i_1 
       (.I0(\shift_group_reg_r[7][1][3]_i_3_n_11 ),
        .I1(\shift_group_reg_r_reg[7][2][1] ),
        .I2(\shift_group_reg_r[7][1][3]_i_2_n_11 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][2][4]_i_1 
       (.I0(\shift_group_reg_r[7][1][4]_i_3_n_11 ),
        .I1(\shift_group_reg_r_reg[7][2][1] ),
        .I2(\shift_group_reg_r[7][1][4]_i_2_n_11 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][2][5]_i_1 
       (.I0(\shift_group_reg_r[7][1][5]_i_3_n_11 ),
        .I1(\shift_group_reg_r_reg[7][2][1] ),
        .I2(\shift_group_reg_r[7][1][5]_i_2_n_11 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][2][6]_i_1 
       (.I0(\shift_group_reg_r[7][1][6]_i_3_n_11 ),
        .I1(\shift_group_reg_r_reg[7][2][1] ),
        .I2(\shift_group_reg_r[7][1][6]_i_2_n_11 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][2][7]_i_1 
       (.I0(\shift_group_reg_r[7][1][7]_i_3_n_11 ),
        .I1(\shift_group_reg_r_reg[7][2][1] ),
        .I2(\shift_group_reg_r[7][1][7]_i_2_n_11 ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][3][0]_i_1 
       (.I0(In4_IBUF[0]),
        .I1(\shift_group_reg_r_reg[7][3][1] ),
        .I2(In3_IBUF[0]),
        .I3(\shift_group_reg_r_reg[7][3][1]_0 ),
        .I4(\shift_group_reg_r[7][3][0]_i_2_n_11 ),
        .O(\In4[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][3][0]_i_2 
       (.I0(In2_IBUF[0]),
        .I1(CO),
        .I2(In1_IBUF[0]),
        .O(\shift_group_reg_r[7][3][0]_i_2_n_11 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][3][1]_i_1 
       (.I0(In4_IBUF[1]),
        .I1(\shift_group_reg_r_reg[7][3][1] ),
        .I2(In3_IBUF[1]),
        .I3(\shift_group_reg_r_reg[7][3][1]_0 ),
        .I4(\shift_group_reg_r[7][3][1]_i_2_n_11 ),
        .O(\In4[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][3][1]_i_2 
       (.I0(In2_IBUF[1]),
        .I1(CO),
        .I2(In1_IBUF[1]),
        .O(\shift_group_reg_r[7][3][1]_i_2_n_11 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][3][2]_i_1 
       (.I0(In4_IBUF[2]),
        .I1(\shift_group_reg_r_reg[7][3][1] ),
        .I2(In3_IBUF[2]),
        .I3(\shift_group_reg_r_reg[7][3][1]_0 ),
        .I4(\shift_group_reg_r[7][3][2]_i_2_n_11 ),
        .O(\In4[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][3][2]_i_2 
       (.I0(In2_IBUF[2]),
        .I1(CO),
        .I2(In1_IBUF[2]),
        .O(\shift_group_reg_r[7][3][2]_i_2_n_11 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][3][3]_i_1 
       (.I0(In4_IBUF[3]),
        .I1(\shift_group_reg_r_reg[7][3][1] ),
        .I2(In3_IBUF[3]),
        .I3(\shift_group_reg_r_reg[7][3][1]_0 ),
        .I4(\shift_group_reg_r[7][3][3]_i_2_n_11 ),
        .O(\In4[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][3][3]_i_2 
       (.I0(In2_IBUF[3]),
        .I1(CO),
        .I2(In1_IBUF[3]),
        .O(\shift_group_reg_r[7][3][3]_i_2_n_11 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][3][4]_i_1 
       (.I0(In4_IBUF[4]),
        .I1(\shift_group_reg_r_reg[7][3][1] ),
        .I2(In3_IBUF[4]),
        .I3(\shift_group_reg_r_reg[7][3][1]_0 ),
        .I4(\shift_group_reg_r[7][3][4]_i_2_n_11 ),
        .O(\In4[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][3][4]_i_2 
       (.I0(In2_IBUF[4]),
        .I1(CO),
        .I2(In1_IBUF[4]),
        .O(\shift_group_reg_r[7][3][4]_i_2_n_11 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][3][5]_i_1 
       (.I0(In4_IBUF[5]),
        .I1(\shift_group_reg_r_reg[7][3][1] ),
        .I2(In3_IBUF[5]),
        .I3(\shift_group_reg_r_reg[7][3][1]_0 ),
        .I4(\shift_group_reg_r[7][3][5]_i_2_n_11 ),
        .O(\In4[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][3][5]_i_2 
       (.I0(In2_IBUF[5]),
        .I1(CO),
        .I2(In1_IBUF[5]),
        .O(\shift_group_reg_r[7][3][5]_i_2_n_11 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][3][6]_i_1 
       (.I0(In4_IBUF[6]),
        .I1(\shift_group_reg_r_reg[7][3][1] ),
        .I2(In3_IBUF[6]),
        .I3(\shift_group_reg_r_reg[7][3][1]_0 ),
        .I4(\shift_group_reg_r[7][3][6]_i_2_n_11 ),
        .O(\In4[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][3][6]_i_2 
       (.I0(In2_IBUF[6]),
        .I1(CO),
        .I2(In1_IBUF[6]),
        .O(\shift_group_reg_r[7][3][6]_i_2_n_11 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \shift_group_reg_r[7][3][7]_i_1 
       (.I0(In4_IBUF[7]),
        .I1(\shift_group_reg_r_reg[7][3][1] ),
        .I2(In3_IBUF[7]),
        .I3(\shift_group_reg_r_reg[7][3][1]_0 ),
        .I4(\In2[7] ),
        .O(\In4[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][3][7]_i_2 
       (.I0(In2_IBUF[7]),
        .I1(CO),
        .I2(In1_IBUF[7]),
        .O(\In2[7] ));
endmodule

(* ORIG_REF_NAME = "Comparator" *) 
module Comparator_6
   (o_Max2_carry_i_8__7,
    \In3[1] ,
    \In3[0] ,
    \In3[3] ,
    \In3[2] ,
    \In3[5] ,
    \In3[4] ,
    \In2[6] ,
    \In3[7] ,
    \In3[6] ,
    \In1[6] ,
    \In4[1] ,
    \In4[0] ,
    \In4[3] ,
    \In4[2] ,
    \In4[5] ,
    \In4[4] ,
    \In1[6]_0 ,
    \In4[7] ,
    \In4[6] ,
    \In2[6]_0 ,
    DI,
    S,
    In3_IBUF,
    In4_IBUF,
    o_Max2_carry_0,
    In2_IBUF,
    CO,
    In1_IBUF,
    o_Max2_carry_1);
  output [0:0]o_Max2_carry_i_8__7;
  output \In3[1] ;
  output \In3[0] ;
  output \In3[3] ;
  output \In3[2] ;
  output \In3[5] ;
  output \In3[4] ;
  output [0:0]\In2[6] ;
  output \In3[7] ;
  output \In3[6] ;
  output [0:0]\In1[6] ;
  output \In4[1] ;
  output \In4[0] ;
  output \In4[3] ;
  output \In4[2] ;
  output \In4[5] ;
  output \In4[4] ;
  output [0:0]\In1[6]_0 ;
  output \In4[7] ;
  output \In4[6] ;
  output [0:0]\In2[6]_0 ;
  input [3:0]DI;
  input [3:0]S;
  input [7:0]In3_IBUF;
  input [7:0]In4_IBUF;
  input o_Max2_carry_0;
  input [1:0]In2_IBUF;
  input [0:0]CO;
  input [1:0]In1_IBUF;
  input o_Max2_carry_1;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [0:0]\In1[6] ;
  wire [0:0]\In1[6]_0 ;
  wire [1:0]In1_IBUF;
  wire [0:0]\In2[6] ;
  wire [0:0]\In2[6]_0 ;
  wire [1:0]In2_IBUF;
  wire \In3[0] ;
  wire \In3[1] ;
  wire \In3[2] ;
  wire \In3[3] ;
  wire \In3[4] ;
  wire \In3[5] ;
  wire \In3[6] ;
  wire \In3[7] ;
  wire [7:0]In3_IBUF;
  wire \In4[0] ;
  wire \In4[1] ;
  wire \In4[2] ;
  wire \In4[3] ;
  wire \In4[4] ;
  wire \In4[5] ;
  wire \In4[6] ;
  wire \In4[7] ;
  wire [7:0]In4_IBUF;
  wire [3:0]S;
  wire o_Max2_carry_0;
  wire o_Max2_carry_1;
  wire o_Max2_carry_i_13__5_n_11;
  wire o_Max2_carry_i_17__5_n_11;
  wire [0:0]o_Max2_carry_i_8__7;
  wire o_Max2_carry_n_12;
  wire o_Max2_carry_n_13;
  wire o_Max2_carry_n_14;
  wire [3:0]NLW_o_Max2_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_Max2_carry
       (.CI(1'b0),
        .CO({o_Max2_carry_i_8__7,o_Max2_carry_n_12,o_Max2_carry_n_13,o_Max2_carry_n_14}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_o_Max2_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_Max2_carry_i_10__6
       (.I0(In4_IBUF[6]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In3_IBUF[6]),
        .O(\In4[6] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_Max2_carry_i_11__6
       (.I0(In4_IBUF[5]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In3_IBUF[5]),
        .O(\In4[5] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_Max2_carry_i_12__6
       (.I0(In4_IBUF[4]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In3_IBUF[4]),
        .O(\In4[4] ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    o_Max2_carry_i_13__5
       (.I0(In4_IBUF[7]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In3_IBUF[7]),
        .I3(In2_IBUF[1]),
        .I4(CO),
        .I5(In1_IBUF[1]),
        .O(o_Max2_carry_i_13__5_n_11));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_Max2_carry_i_13__6
       (.I0(In4_IBUF[3]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In3_IBUF[3]),
        .O(\In4[3] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_Max2_carry_i_14__6
       (.I0(In4_IBUF[2]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In3_IBUF[2]),
        .O(\In4[2] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_Max2_carry_i_15__6
       (.I0(In4_IBUF[1]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In3_IBUF[1]),
        .O(\In4[1] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_Max2_carry_i_16__6
       (.I0(In4_IBUF[0]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In3_IBUF[0]),
        .O(\In4[0] ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    o_Max2_carry_i_17__5
       (.I0(In3_IBUF[7]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In4_IBUF[7]),
        .I3(In1_IBUF[1]),
        .I4(CO),
        .I5(In2_IBUF[1]),
        .O(o_Max2_carry_i_17__5_n_11));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    o_Max2_carry_i_1__10
       (.I0(\In4[7] ),
        .I1(o_Max2_carry_1),
        .I2(In1_IBUF[0]),
        .I3(CO),
        .I4(In2_IBUF[0]),
        .I5(\In4[6] ),
        .O(\In1[6]_0 ));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    o_Max2_carry_i_1__9
       (.I0(\In3[7] ),
        .I1(o_Max2_carry_0),
        .I2(In2_IBUF[0]),
        .I3(CO),
        .I4(In1_IBUF[0]),
        .I5(\In3[6] ),
        .O(\In2[6] ));
  LUT5 #(
    .INIT(32'h41444111)) 
    o_Max2_carry_i_5__10
       (.I0(o_Max2_carry_i_17__5_n_11),
        .I1(\In4[6] ),
        .I2(In2_IBUF[0]),
        .I3(CO),
        .I4(In1_IBUF[0]),
        .O(\In2[6]_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    o_Max2_carry_i_5__9
       (.I0(o_Max2_carry_i_13__5_n_11),
        .I1(\In3[6] ),
        .I2(In1_IBUF[0]),
        .I3(CO),
        .I4(In2_IBUF[0]),
        .O(\In1[6] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_Max2_carry_i_9__6
       (.I0(In4_IBUF[7]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In3_IBUF[7]),
        .O(\In4[7] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][0][0]_i_2 
       (.I0(In3_IBUF[0]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In4_IBUF[0]),
        .O(\In3[0] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][0][1]_i_2 
       (.I0(In3_IBUF[1]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In4_IBUF[1]),
        .O(\In3[1] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][0][2]_i_2 
       (.I0(In3_IBUF[2]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In4_IBUF[2]),
        .O(\In3[2] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][0][3]_i_2 
       (.I0(In3_IBUF[3]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In4_IBUF[3]),
        .O(\In3[3] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][0][4]_i_2 
       (.I0(In3_IBUF[4]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In4_IBUF[4]),
        .O(\In3[4] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][0][5]_i_2 
       (.I0(In3_IBUF[5]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In4_IBUF[5]),
        .O(\In3[5] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][0][6]_i_2 
       (.I0(In3_IBUF[6]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In4_IBUF[6]),
        .O(\In3[6] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_group_reg_r[7][0][7]_i_2 
       (.I0(In3_IBUF[7]),
        .I1(o_Max2_carry_i_8__7),
        .I2(In4_IBUF[7]),
        .O(\In3[7] ));
endmodule

(* ORIG_REF_NAME = "Comparator" *) 
module Comparator_7
   (o_Max2_carry_i_8__9,
    DI,
    S);
  output [0:0]o_Max2_carry_i_8__9;
  input [3:0]DI;
  input [3:0]S;

  wire [3:0]DI;
  wire [3:0]S;
  wire [0:0]o_Max2_carry_i_8__9;
  wire o_Max2_carry_n_12;
  wire o_Max2_carry_n_13;
  wire o_Max2_carry_n_14;
  wire [3:0]NLW_o_Max2_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_Max2_carry
       (.CI(1'b0),
        .CO({o_Max2_carry_i_8__9,o_Max2_carry_n_12,o_Max2_carry_n_13,o_Max2_carry_n_14}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_o_Max2_carry_O_UNCONNECTED[3:0]),
        .S(S));
endmodule

(* ORIG_REF_NAME = "Comparator" *) 
module Comparator_8
   (o_Max2_carry_i_8__10,
    DI,
    S);
  output [0:0]o_Max2_carry_i_8__10;
  input [3:0]DI;
  input [3:0]S;

  wire [3:0]DI;
  wire [3:0]S;
  wire [0:0]o_Max2_carry_i_8__10;
  wire o_Max2_carry_n_12;
  wire o_Max2_carry_n_13;
  wire o_Max2_carry_n_14;
  wire [3:0]NLW_o_Max2_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_Max2_carry
       (.CI(1'b0),
        .CO({o_Max2_carry_i_8__10,o_Max2_carry_n_12,o_Max2_carry_n_13,o_Max2_carry_n_14}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_o_Max2_carry_O_UNCONNECTED[3:0]),
        .S(S));
endmodule

(* ORIG_REF_NAME = "Comparator" *) 
module Comparator_9
   (o_Max2_carry_i_8__8,
    S,
    DI,
    \In3[7] ,
    \In4[7] ,
    \shift_group_reg_r_reg[7][2][1] ,
    \shift_group_reg_r_reg[7][2][1]_0 ,
    In2_IBUF,
    In1_IBUF,
    In4_IBUF,
    In3_IBUF);
  output [0:0]o_Max2_carry_i_8__8;
  output [3:0]S;
  output [3:0]DI;
  output [3:0]\In3[7] ;
  output [3:0]\In4[7] ;
  input [3:0]\shift_group_reg_r_reg[7][2][1] ;
  input [3:0]\shift_group_reg_r_reg[7][2][1]_0 ;
  input [7:0]In2_IBUF;
  input [7:0]In1_IBUF;
  input [7:0]In4_IBUF;
  input [7:0]In3_IBUF;

  wire [3:0]DI;
  wire [7:0]In1_IBUF;
  wire [7:0]In2_IBUF;
  wire [3:0]\In3[7] ;
  wire [7:0]In3_IBUF;
  wire [3:0]\In4[7] ;
  wire [7:0]In4_IBUF;
  wire [3:0]S;
  wire [0:0]o_Max2_carry_i_8__8;
  wire o_Max2_carry_n_12;
  wire o_Max2_carry_n_13;
  wire o_Max2_carry_n_14;
  wire [3:0]\shift_group_reg_r_reg[7][2][1] ;
  wire [3:0]\shift_group_reg_r_reg[7][2][1]_0 ;
  wire [3:0]NLW_o_Max2_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_Max2_carry
       (.CI(1'b0),
        .CO({o_Max2_carry_i_8__8,o_Max2_carry_n_12,o_Max2_carry_n_13,o_Max2_carry_n_14}),
        .CYINIT(1'b0),
        .DI(\shift_group_reg_r_reg[7][2][1] ),
        .O(NLW_o_Max2_carry_O_UNCONNECTED[3:0]),
        .S(\shift_group_reg_r_reg[7][2][1]_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    o_Max2_carry_i_1__6
       (.I0(In2_IBUF[7]),
        .I1(In1_IBUF[7]),
        .I2(In1_IBUF[6]),
        .I3(In2_IBUF[6]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    o_Max2_carry_i_1__7
       (.I0(In4_IBUF[7]),
        .I1(In3_IBUF[7]),
        .I2(In3_IBUF[6]),
        .I3(In4_IBUF[6]),
        .O(\In4[7] [3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    o_Max2_carry_i_2__6
       (.I0(In1_IBUF[5]),
        .I1(In2_IBUF[5]),
        .I2(In1_IBUF[4]),
        .I3(In2_IBUF[4]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    o_Max2_carry_i_2__7
       (.I0(In3_IBUF[5]),
        .I1(In4_IBUF[5]),
        .I2(In3_IBUF[4]),
        .I3(In4_IBUF[4]),
        .O(\In4[7] [2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    o_Max2_carry_i_3__6
       (.I0(In1_IBUF[3]),
        .I1(In2_IBUF[3]),
        .I2(In1_IBUF[2]),
        .I3(In2_IBUF[2]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    o_Max2_carry_i_3__7
       (.I0(In3_IBUF[3]),
        .I1(In4_IBUF[3]),
        .I2(In3_IBUF[2]),
        .I3(In4_IBUF[2]),
        .O(\In4[7] [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    o_Max2_carry_i_4__6
       (.I0(In1_IBUF[1]),
        .I1(In2_IBUF[1]),
        .I2(In1_IBUF[0]),
        .I3(In2_IBUF[0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h22B2)) 
    o_Max2_carry_i_4__7
       (.I0(In3_IBUF[1]),
        .I1(In4_IBUF[1]),
        .I2(In3_IBUF[0]),
        .I3(In4_IBUF[0]),
        .O(\In4[7] [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_Max2_carry_i_5__6
       (.I0(In1_IBUF[7]),
        .I1(In2_IBUF[7]),
        .I2(In2_IBUF[6]),
        .I3(In1_IBUF[6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_Max2_carry_i_5__7
       (.I0(In3_IBUF[7]),
        .I1(In4_IBUF[7]),
        .I2(In4_IBUF[6]),
        .I3(In3_IBUF[6]),
        .O(\In3[7] [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_Max2_carry_i_6__6
       (.I0(In2_IBUF[5]),
        .I1(In1_IBUF[5]),
        .I2(In2_IBUF[4]),
        .I3(In1_IBUF[4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_Max2_carry_i_6__7
       (.I0(In4_IBUF[5]),
        .I1(In3_IBUF[5]),
        .I2(In4_IBUF[4]),
        .I3(In3_IBUF[4]),
        .O(\In3[7] [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_Max2_carry_i_7__6
       (.I0(In2_IBUF[3]),
        .I1(In1_IBUF[3]),
        .I2(In2_IBUF[2]),
        .I3(In1_IBUF[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_Max2_carry_i_7__7
       (.I0(In4_IBUF[3]),
        .I1(In3_IBUF[3]),
        .I2(In4_IBUF[2]),
        .I3(In3_IBUF[2]),
        .O(\In3[7] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_Max2_carry_i_8__6
       (.I0(In2_IBUF[1]),
        .I1(In1_IBUF[1]),
        .I2(In2_IBUF[0]),
        .I3(In1_IBUF[0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    o_Max2_carry_i_8__7
       (.I0(In4_IBUF[1]),
        .I1(In3_IBUF[1]),
        .I2(In4_IBUF[0]),
        .I3(In3_IBUF[0]),
        .O(\In3[7] [0]));
endmodule

(* FIRST_IN = "1" *) (* IDLE = "0" *) (* OUTPUT_STATE = "2" *) 
(* NotValidForBitStream *)
module SelectTopK
   (clk,
    i_rst,
    BlkIn,
    In1,
    In2,
    In3,
    In4,
    SortOut,
    OutValid);
  input clk;
  input i_rst;
  input BlkIn;
  input [7:0]In1;
  input [7:0]In2;
  input [7:0]In3;
  input [7:0]In4;
  output [7:0]SortOut;
  output OutValid;

  wire BlkIn;
  wire BlkIn_IBUF;
  wire [7:0]In1;
  wire [7:0]In1_IBUF;
  wire [7:0]In2;
  wire [7:0]In2_IBUF;
  wire [7:0]In3;
  wire [7:0]In3_IBUF;
  wire [7:0]In4;
  wire [7:0]In4_IBUF;
  wire OutValid;
  wire OutValid_OBUF;
  wire Sort4_u0_n_11;
  wire Sort4_u0_n_12;
  wire Sort4_u0_n_13;
  wire Sort4_u0_n_14;
  wire Sort4_u0_n_15;
  wire Sort4_u0_n_16;
  wire Sort4_u0_n_17;
  wire Sort4_u0_n_18;
  wire Sort4_u0_n_35;
  wire Sort4_u0_n_36;
  wire Sort4_u0_n_37;
  wire Sort4_u0_n_38;
  wire Sort4_u0_n_39;
  wire Sort4_u0_n_40;
  wire Sort4_u0_n_41;
  wire Sort4_u0_n_42;
  wire [7:0]SortOut;
  wire [7:0]SortOut_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]cnt_r;
  wire [2:0]cnt_w;
  wire comparator_tree_u0_n_11;
  wire comparator_tree_u0_n_12;
  wire comparator_tree_u0_n_13;
  wire comparator_tree_u0_n_14;
  wire comparator_tree_u0_n_15;
  wire comparator_tree_u0_n_16;
  wire comparator_tree_u0_n_17;
  wire comparator_tree_u0_n_18;
  wire comparator_tree_u0_n_19;
  wire comparator_tree_u0_n_20;
  wire comparator_tree_u0_n_21;
  wire comparator_tree_u0_n_22;
  wire comparator_tree_u0_n_23;
  wire comparator_tree_u0_n_24;
  wire comparator_tree_u0_n_25;
  wire comparator_tree_u0_n_26;
  wire comparator_tree_u0_n_35;
  wire comparator_tree_u0_n_36;
  wire comparator_tree_u0_n_37;
  wire comparator_tree_u0_n_38;
  wire comparator_tree_u0_n_39;
  wire comparator_tree_u0_n_40;
  wire comparator_tree_u0_n_41;
  wire comparator_tree_u0_n_42;
  wire [1:0]\group_idx_r_reg[0] ;
  wire [1:0]\group_idx_r_reg[1] ;
  wire [1:0]\group_idx_r_reg[2] ;
  wire [1:0]\group_idx_r_reg[3] ;
  wire [1:0]\group_idx_r_reg[4] ;
  wire [1:0]\group_idx_r_reg[5] ;
  wire [1:0]\group_idx_r_reg[6] ;
  wire [1:0]\group_idx_r_reg[7] ;
  wire [7:0]\group_reg_r_reg[0][0] ;
  wire [7:0]\group_reg_r_reg[0][1] ;
  wire [7:0]\group_reg_r_reg[0][2] ;
  wire [7:0]\group_reg_r_reg[0][3] ;
  wire [7:0]\group_reg_r_reg[1][0] ;
  wire [7:0]\group_reg_r_reg[1][1] ;
  wire [7:0]\group_reg_r_reg[1][2] ;
  wire [7:0]\group_reg_r_reg[1][3] ;
  wire [7:0]\group_reg_r_reg[2][0] ;
  wire [7:0]\group_reg_r_reg[2][1] ;
  wire [7:0]\group_reg_r_reg[2][2] ;
  wire [7:0]\group_reg_r_reg[2][3] ;
  wire [7:0]\group_reg_r_reg[3][0] ;
  wire [7:0]\group_reg_r_reg[3][1] ;
  wire [7:0]\group_reg_r_reg[3][2] ;
  wire [7:0]\group_reg_r_reg[3][3] ;
  wire [7:0]\group_reg_r_reg[4][0] ;
  wire [7:0]\group_reg_r_reg[4][1] ;
  wire [7:0]\group_reg_r_reg[4][2] ;
  wire [7:0]\group_reg_r_reg[4][3] ;
  wire [7:0]\group_reg_r_reg[5][0] ;
  wire [7:0]\group_reg_r_reg[5][1] ;
  wire [7:0]\group_reg_r_reg[5][2] ;
  wire [7:0]\group_reg_r_reg[5][3] ;
  wire [7:0]\group_reg_r_reg[6][0] ;
  wire [7:0]\group_reg_r_reg[6][1] ;
  wire [7:0]\group_reg_r_reg[6][2] ;
  wire [7:0]\group_reg_r_reg[6][3] ;
  wire [7:0]\group_reg_r_reg[7][0] ;
  wire [7:0]\group_reg_r_reg[7][1] ;
  wire [7:0]\group_reg_r_reg[7][2] ;
  wire [7:0]\group_reg_r_reg[7][3] ;
  wire \group_valid_r_reg_n_11_[0] ;
  wire \group_valid_r_reg_n_11_[1] ;
  wire \group_valid_r_reg_n_11_[2] ;
  wire \group_valid_r_reg_n_11_[3] ;
  wire \group_valid_r_reg_n_11_[4] ;
  wire \group_valid_r_reg_n_11_[5] ;
  wire \group_valid_r_reg_n_11_[6] ;
  wire \group_valid_r_reg_n_11_[7] ;
  wire \group_valid_w[0] ;
  wire i_rst;
  wire i_rst_IBUF;
  wire [1:0]nst;
  wire [7:0]\shift_group_reg_r_reg[0][0] ;
  wire [7:0]\shift_group_reg_r_reg[0][1] ;
  wire [7:0]\shift_group_reg_r_reg[0][2] ;
  wire [7:0]\shift_group_reg_r_reg[0][3] ;
  wire [7:0]\shift_group_reg_r_reg[1][0] ;
  wire [7:0]\shift_group_reg_r_reg[1][1] ;
  wire [7:0]\shift_group_reg_r_reg[1][2] ;
  wire [7:0]\shift_group_reg_r_reg[1][3] ;
  wire [7:0]\shift_group_reg_r_reg[2][0] ;
  wire [7:0]\shift_group_reg_r_reg[2][1] ;
  wire [7:0]\shift_group_reg_r_reg[2][2] ;
  wire [7:0]\shift_group_reg_r_reg[2][3] ;
  wire [7:0]\shift_group_reg_r_reg[3][0] ;
  wire [7:0]\shift_group_reg_r_reg[3][1] ;
  wire [7:0]\shift_group_reg_r_reg[3][2] ;
  wire [7:0]\shift_group_reg_r_reg[3][3] ;
  wire [7:0]\shift_group_reg_r_reg[4][0] ;
  wire [7:0]\shift_group_reg_r_reg[4][1] ;
  wire [7:0]\shift_group_reg_r_reg[4][2] ;
  wire [7:0]\shift_group_reg_r_reg[4][3] ;
  wire [7:0]\shift_group_reg_r_reg[5][0] ;
  wire [7:0]\shift_group_reg_r_reg[5][1] ;
  wire [7:0]\shift_group_reg_r_reg[5][2] ;
  wire [7:0]\shift_group_reg_r_reg[5][3] ;
  wire [7:0]\shift_group_reg_r_reg[6][0] ;
  wire [7:0]\shift_group_reg_r_reg[6][1] ;
  wire [7:0]\shift_group_reg_r_reg[6][2] ;
  wire [7:0]\shift_group_reg_r_reg[6][3] ;
  wire [7:0]\shift_group_reg_r_reg[7][0] ;
  wire [7:0]\shift_group_reg_r_reg[7][1] ;
  wire [7:0]\shift_group_reg_r_reg[7][2] ;
  wire [7:0]\shift_group_reg_r_reg[7][3] ;
  wire [7:0]\shift_group_reg_w[7][0] ;
  wire [7:0]\shift_group_reg_w[7][1] ;
  wire [1:0]st;

initial begin
 $sdf_annotate("testbench_time_synth.sdf",,,,"tool_control");
end
  IBUF BlkIn_IBUF_inst
       (.I(BlkIn),
        .O(BlkIn_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \FSM_sequential_st[0]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(BlkIn_IBUF),
        .O(nst[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h58)) 
    \FSM_sequential_st[1]_i_1 
       (.I0(st[0]),
        .I1(BlkIn_IBUF),
        .I2(st[1]),
        .O(nst[1]));
  (* FSM_ENCODED_STATES = "IDLE:00,FIRST_IN:01,OUTPUT_STATE:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(nst[0]),
        .Q(st[0]));
  (* FSM_ENCODED_STATES = "IDLE:00,FIRST_IN:01,OUTPUT_STATE:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(nst[1]),
        .Q(st[1]));
  IBUF \In1_IBUF[0]_inst 
       (.I(In1[0]),
        .O(In1_IBUF[0]));
  IBUF \In1_IBUF[1]_inst 
       (.I(In1[1]),
        .O(In1_IBUF[1]));
  IBUF \In1_IBUF[2]_inst 
       (.I(In1[2]),
        .O(In1_IBUF[2]));
  IBUF \In1_IBUF[3]_inst 
       (.I(In1[3]),
        .O(In1_IBUF[3]));
  IBUF \In1_IBUF[4]_inst 
       (.I(In1[4]),
        .O(In1_IBUF[4]));
  IBUF \In1_IBUF[5]_inst 
       (.I(In1[5]),
        .O(In1_IBUF[5]));
  IBUF \In1_IBUF[6]_inst 
       (.I(In1[6]),
        .O(In1_IBUF[6]));
  IBUF \In1_IBUF[7]_inst 
       (.I(In1[7]),
        .O(In1_IBUF[7]));
  IBUF \In2_IBUF[0]_inst 
       (.I(In2[0]),
        .O(In2_IBUF[0]));
  IBUF \In2_IBUF[1]_inst 
       (.I(In2[1]),
        .O(In2_IBUF[1]));
  IBUF \In2_IBUF[2]_inst 
       (.I(In2[2]),
        .O(In2_IBUF[2]));
  IBUF \In2_IBUF[3]_inst 
       (.I(In2[3]),
        .O(In2_IBUF[3]));
  IBUF \In2_IBUF[4]_inst 
       (.I(In2[4]),
        .O(In2_IBUF[4]));
  IBUF \In2_IBUF[5]_inst 
       (.I(In2[5]),
        .O(In2_IBUF[5]));
  IBUF \In2_IBUF[6]_inst 
       (.I(In2[6]),
        .O(In2_IBUF[6]));
  IBUF \In2_IBUF[7]_inst 
       (.I(In2[7]),
        .O(In2_IBUF[7]));
  IBUF \In3_IBUF[0]_inst 
       (.I(In3[0]),
        .O(In3_IBUF[0]));
  IBUF \In3_IBUF[1]_inst 
       (.I(In3[1]),
        .O(In3_IBUF[1]));
  IBUF \In3_IBUF[2]_inst 
       (.I(In3[2]),
        .O(In3_IBUF[2]));
  IBUF \In3_IBUF[3]_inst 
       (.I(In3[3]),
        .O(In3_IBUF[3]));
  IBUF \In3_IBUF[4]_inst 
       (.I(In3[4]),
        .O(In3_IBUF[4]));
  IBUF \In3_IBUF[5]_inst 
       (.I(In3[5]),
        .O(In3_IBUF[5]));
  IBUF \In3_IBUF[6]_inst 
       (.I(In3[6]),
        .O(In3_IBUF[6]));
  IBUF \In3_IBUF[7]_inst 
       (.I(In3[7]),
        .O(In3_IBUF[7]));
  IBUF \In4_IBUF[0]_inst 
       (.I(In4[0]),
        .O(In4_IBUF[0]));
  IBUF \In4_IBUF[1]_inst 
       (.I(In4[1]),
        .O(In4_IBUF[1]));
  IBUF \In4_IBUF[2]_inst 
       (.I(In4[2]),
        .O(In4_IBUF[2]));
  IBUF \In4_IBUF[3]_inst 
       (.I(In4[3]),
        .O(In4_IBUF[3]));
  IBUF \In4_IBUF[4]_inst 
       (.I(In4[4]),
        .O(In4_IBUF[4]));
  IBUF \In4_IBUF[5]_inst 
       (.I(In4[5]),
        .O(In4_IBUF[5]));
  IBUF \In4_IBUF[6]_inst 
       (.I(In4[6]),
        .O(In4_IBUF[6]));
  IBUF \In4_IBUF[7]_inst 
       (.I(In4[7]),
        .O(In4_IBUF[7]));
  OBUF OutValid_OBUF_inst
       (.I(OutValid_OBUF),
        .O(OutValid));
  LUT5 #(
    .INIT(32'h04444444)) 
    OutValid_OBUF_inst_i_1
       (.I0(st[0]),
        .I1(st[1]),
        .I2(cnt_r[2]),
        .I3(cnt_r[1]),
        .I4(cnt_r[0]),
        .O(OutValid_OBUF));
  Sort4 Sort4_u0
       (.D({Sort4_u0_n_11,Sort4_u0_n_12,Sort4_u0_n_13,Sort4_u0_n_14,Sort4_u0_n_15,Sort4_u0_n_16,Sort4_u0_n_17,Sort4_u0_n_18}),
        .\In1[7] (\shift_group_reg_w[7][0] ),
        .In1_IBUF(In1_IBUF),
        .In2_IBUF(In2_IBUF),
        .In3_IBUF(In3_IBUF),
        .\In4[7] ({Sort4_u0_n_35,Sort4_u0_n_36,Sort4_u0_n_37,Sort4_u0_n_38,Sort4_u0_n_39,Sort4_u0_n_40,Sort4_u0_n_41,Sort4_u0_n_42}),
        .In4_IBUF(In4_IBUF),
        .\shift_group_reg_r[7][1][7]_i_3 (\shift_group_reg_w[7][1] ));
  OBUF \SortOut_OBUF[0]_inst 
       (.I(SortOut_OBUF[0]),
        .O(SortOut[0]));
  OBUF \SortOut_OBUF[1]_inst 
       (.I(SortOut_OBUF[1]),
        .O(SortOut[1]));
  OBUF \SortOut_OBUF[2]_inst 
       (.I(SortOut_OBUF[2]),
        .O(SortOut[2]));
  OBUF \SortOut_OBUF[3]_inst 
       (.I(SortOut_OBUF[3]),
        .O(SortOut[3]));
  OBUF \SortOut_OBUF[4]_inst 
       (.I(SortOut_OBUF[4]),
        .O(SortOut[4]));
  OBUF \SortOut_OBUF[5]_inst 
       (.I(SortOut_OBUF[5]),
        .O(SortOut[5]));
  OBUF \SortOut_OBUF[6]_inst 
       (.I(SortOut_OBUF[6]),
        .O(SortOut[6]));
  OBUF \SortOut_OBUF[7]_inst 
       (.I(SortOut_OBUF[7]),
        .O(SortOut[7]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_r[0]_i_1 
       (.I0(BlkIn_IBUF),
        .I1(cnt_r[0]),
        .O(cnt_w[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \cnt_r[1]_i_1 
       (.I0(BlkIn_IBUF),
        .I1(cnt_r[0]),
        .I2(cnt_r[1]),
        .O(cnt_w[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \cnt_r[2]_i_1 
       (.I0(cnt_r[1]),
        .I1(cnt_r[0]),
        .I2(BlkIn_IBUF),
        .I3(cnt_r[2]),
        .O(cnt_w[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(cnt_w[0]),
        .Q(cnt_r[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_r_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(cnt_w[1]),
        .Q(cnt_r[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_r_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(cnt_w[2]),
        .Q(cnt_r[2]));
  comparator_tree comparator_tree_u0
       (.Q(\group_reg_r_reg[0][2] ),
        .SortOut_OBUF(SortOut_OBUF),
        .\group_idx_r_reg[0] (\group_idx_r_reg[0] ),
        .\group_idx_r_reg[0]_0_sp_1 (comparator_tree_u0_n_24),
        .\group_idx_r_reg[0]_1_sp_1 (comparator_tree_u0_n_23),
        .\group_idx_r_reg[1] (\group_idx_r_reg[1] ),
        .\group_idx_r_reg[1]_0_sp_1 (comparator_tree_u0_n_26),
        .\group_idx_r_reg[1]_1_sp_1 (comparator_tree_u0_n_25),
        .\group_idx_r_reg[2] (\group_idx_r_reg[2] ),
        .\group_idx_r_reg[2]_0_sp_1 (comparator_tree_u0_n_22),
        .\group_idx_r_reg[2]_1_sp_1 (comparator_tree_u0_n_21),
        .\group_idx_r_reg[3] (\group_idx_r_reg[3] ),
        .\group_idx_r_reg[3]_0_sp_1 (comparator_tree_u0_n_20),
        .\group_idx_r_reg[3]_1_sp_1 (comparator_tree_u0_n_19),
        .\group_idx_r_reg[4] (\group_idx_r_reg[4] ),
        .\group_idx_r_reg[4]_0_sp_1 (comparator_tree_u0_n_18),
        .\group_idx_r_reg[4]_1_sp_1 (comparator_tree_u0_n_17),
        .\group_idx_r_reg[5] (\group_idx_r_reg[5] ),
        .\group_idx_r_reg[5]_0_sp_1 (comparator_tree_u0_n_16),
        .\group_idx_r_reg[5]_1_sp_1 (comparator_tree_u0_n_15),
        .\group_idx_r_reg[6] (\group_idx_r_reg[6] ),
        .\group_idx_r_reg[6]_0_sp_1 (comparator_tree_u0_n_14),
        .\group_idx_r_reg[6]_1_sp_1 (comparator_tree_u0_n_13),
        .\group_idx_r_reg[7] (\group_idx_r_reg[7] ),
        .\group_idx_r_reg[7]_0_sp_1 (comparator_tree_u0_n_12),
        .\group_idx_r_reg[7]_1_sp_1 (comparator_tree_u0_n_11),
        .\group_valid_r_reg[0] (comparator_tree_u0_n_35),
        .\group_valid_r_reg[0]_0 (\group_valid_r_reg_n_11_[0] ),
        .\group_valid_r_reg[1] (comparator_tree_u0_n_36),
        .\group_valid_r_reg[1]_0 (\group_valid_r_reg_n_11_[1] ),
        .\group_valid_r_reg[2] (comparator_tree_u0_n_37),
        .\group_valid_r_reg[2]_0 (\group_valid_r_reg_n_11_[2] ),
        .\group_valid_r_reg[3] (comparator_tree_u0_n_38),
        .\group_valid_r_reg[3]_0 (\group_valid_r_reg_n_11_[3] ),
        .\group_valid_r_reg[4] (comparator_tree_u0_n_39),
        .\group_valid_r_reg[4]_0 (\group_valid_r_reg_n_11_[4] ),
        .\group_valid_r_reg[5] (comparator_tree_u0_n_40),
        .\group_valid_r_reg[5]_0 (\group_valid_r_reg_n_11_[5] ),
        .\group_valid_r_reg[6] (comparator_tree_u0_n_41),
        .\group_valid_r_reg[6]_0 (\group_valid_r_reg_n_11_[6] ),
        .\group_valid_r_reg[7] (comparator_tree_u0_n_42),
        .\group_valid_r_reg[7]_0 (\group_valid_r_reg_n_11_[7] ),
        .\group_valid_r_reg[7]_1 (cnt_r),
        .o_Max2_carry_i_10(\group_reg_r_reg[0][3] ),
        .o_Max2_carry_i_10_0(\group_reg_r_reg[0][0] ),
        .o_Max2_carry_i_10_1(\group_reg_r_reg[0][1] ),
        .o_Max2_carry_i_10_2(\group_reg_r_reg[1][2] ),
        .o_Max2_carry_i_10_3(\group_reg_r_reg[1][3] ),
        .o_Max2_carry_i_10_4(\group_reg_r_reg[1][0] ),
        .o_Max2_carry_i_10_5(\group_reg_r_reg[1][1] ),
        .o_Max2_carry_i_10__2(\group_reg_r_reg[4][2] ),
        .o_Max2_carry_i_10__2_0(\group_reg_r_reg[4][3] ),
        .o_Max2_carry_i_10__2_1(\group_reg_r_reg[4][0] ),
        .o_Max2_carry_i_10__2_2(\group_reg_r_reg[4][1] ),
        .o_Max2_carry_i_10__2_3(\group_reg_r_reg[5][2] ),
        .o_Max2_carry_i_10__2_4(\group_reg_r_reg[5][3] ),
        .o_Max2_carry_i_10__2_5(\group_reg_r_reg[5][0] ),
        .o_Max2_carry_i_10__2_6(\group_reg_r_reg[5][1] ),
        .o_Max2_carry_i_11__0(\group_reg_r_reg[2][2] ),
        .o_Max2_carry_i_11__0_0(\group_reg_r_reg[2][3] ),
        .o_Max2_carry_i_11__0_1(\group_reg_r_reg[2][0] ),
        .o_Max2_carry_i_11__0_2(\group_reg_r_reg[2][1] ),
        .o_Max2_carry_i_11__0_3(\group_reg_r_reg[3][2] ),
        .o_Max2_carry_i_11__0_4(\group_reg_r_reg[3][3] ),
        .o_Max2_carry_i_11__0_5(\group_reg_r_reg[3][0] ),
        .o_Max2_carry_i_11__0_6(\group_reg_r_reg[3][1] ),
        .o_Max2_carry_i_11__3(\group_reg_r_reg[6][2] ),
        .o_Max2_carry_i_11__3_0(\group_reg_r_reg[6][3] ),
        .o_Max2_carry_i_11__3_1(\group_reg_r_reg[6][0] ),
        .o_Max2_carry_i_11__3_2(\group_reg_r_reg[6][1] ),
        .o_Max2_carry_i_11__3_3(\group_reg_r_reg[7][2] ),
        .o_Max2_carry_i_11__3_4(\group_reg_r_reg[7][3] ),
        .o_Max2_carry_i_11__3_5(\group_reg_r_reg[7][0] ),
        .o_Max2_carry_i_11__3_6(\group_reg_r_reg[7][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \group_idx_r_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(comparator_tree_u0_n_24),
        .Q(\group_idx_r_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_idx_r_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(comparator_tree_u0_n_23),
        .Q(\group_idx_r_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_idx_r_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(comparator_tree_u0_n_26),
        .Q(\group_idx_r_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_idx_r_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(comparator_tree_u0_n_25),
        .Q(\group_idx_r_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_idx_r_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(comparator_tree_u0_n_22),
        .Q(\group_idx_r_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_idx_r_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(comparator_tree_u0_n_21),
        .Q(\group_idx_r_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_idx_r_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(comparator_tree_u0_n_20),
        .Q(\group_idx_r_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_idx_r_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(comparator_tree_u0_n_19),
        .Q(\group_idx_r_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_idx_r_reg[4][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(comparator_tree_u0_n_18),
        .Q(\group_idx_r_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_idx_r_reg[4][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(comparator_tree_u0_n_17),
        .Q(\group_idx_r_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_idx_r_reg[5][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(comparator_tree_u0_n_16),
        .Q(\group_idx_r_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_idx_r_reg[5][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(comparator_tree_u0_n_15),
        .Q(\group_idx_r_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_idx_r_reg[6][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(comparator_tree_u0_n_14),
        .Q(\group_idx_r_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_idx_r_reg[6][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(comparator_tree_u0_n_13),
        .Q(\group_idx_r_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_idx_r_reg[7][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(comparator_tree_u0_n_12),
        .Q(\group_idx_r_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_idx_r_reg[7][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(comparator_tree_u0_n_11),
        .Q(\group_idx_r_reg[7] [1]));
  LUT3 #(
    .INIT(8'h80)) 
    \group_reg_r[1][0][7]_i_1 
       (.I0(cnt_r[2]),
        .I1(cnt_r[1]),
        .I2(cnt_r[0]),
        .O(\group_valid_w[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][0] [0]),
        .Q(\group_reg_r_reg[0][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][0] [1]),
        .Q(\group_reg_r_reg[0][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][0] [2]),
        .Q(\group_reg_r_reg[0][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][0] [3]),
        .Q(\group_reg_r_reg[0][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][0] [4]),
        .Q(\group_reg_r_reg[0][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][0] [5]),
        .Q(\group_reg_r_reg[0][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][0] [6]),
        .Q(\group_reg_r_reg[0][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][0] [7]),
        .Q(\group_reg_r_reg[0][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][1] [0]),
        .Q(\group_reg_r_reg[0][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][1] [1]),
        .Q(\group_reg_r_reg[0][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][1] [2]),
        .Q(\group_reg_r_reg[0][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][1] [3]),
        .Q(\group_reg_r_reg[0][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][1] [4]),
        .Q(\group_reg_r_reg[0][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][1] [5]),
        .Q(\group_reg_r_reg[0][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][1] [6]),
        .Q(\group_reg_r_reg[0][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][1] [7]),
        .Q(\group_reg_r_reg[0][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][2] [0]),
        .Q(\group_reg_r_reg[0][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][2] [1]),
        .Q(\group_reg_r_reg[0][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][2] [2]),
        .Q(\group_reg_r_reg[0][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][2] [3]),
        .Q(\group_reg_r_reg[0][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][2] [4]),
        .Q(\group_reg_r_reg[0][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][2] [5]),
        .Q(\group_reg_r_reg[0][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][2] [6]),
        .Q(\group_reg_r_reg[0][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][2] [7]),
        .Q(\group_reg_r_reg[0][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][3] [0]),
        .Q(\group_reg_r_reg[0][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][3] [1]),
        .Q(\group_reg_r_reg[0][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][3] [2]),
        .Q(\group_reg_r_reg[0][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][3] [3]),
        .Q(\group_reg_r_reg[0][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][3] [4]),
        .Q(\group_reg_r_reg[0][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][3] [5]),
        .Q(\group_reg_r_reg[0][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][3] [6]),
        .Q(\group_reg_r_reg[0][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[0][3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[0][3] [7]),
        .Q(\group_reg_r_reg[0][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][0] [0]),
        .Q(\group_reg_r_reg[1][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][0] [1]),
        .Q(\group_reg_r_reg[1][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][0] [2]),
        .Q(\group_reg_r_reg[1][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][0] [3]),
        .Q(\group_reg_r_reg[1][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][0] [4]),
        .Q(\group_reg_r_reg[1][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][0] [5]),
        .Q(\group_reg_r_reg[1][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][0] [6]),
        .Q(\group_reg_r_reg[1][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][0] [7]),
        .Q(\group_reg_r_reg[1][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][1] [0]),
        .Q(\group_reg_r_reg[1][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][1] [1]),
        .Q(\group_reg_r_reg[1][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][1] [2]),
        .Q(\group_reg_r_reg[1][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][1] [3]),
        .Q(\group_reg_r_reg[1][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][1] [4]),
        .Q(\group_reg_r_reg[1][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][1] [5]),
        .Q(\group_reg_r_reg[1][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][1] [6]),
        .Q(\group_reg_r_reg[1][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][1] [7]),
        .Q(\group_reg_r_reg[1][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][2] [0]),
        .Q(\group_reg_r_reg[1][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][2] [1]),
        .Q(\group_reg_r_reg[1][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][2] [2]),
        .Q(\group_reg_r_reg[1][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][2] [3]),
        .Q(\group_reg_r_reg[1][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][2] [4]),
        .Q(\group_reg_r_reg[1][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][2] [5]),
        .Q(\group_reg_r_reg[1][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][2] [6]),
        .Q(\group_reg_r_reg[1][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][2] [7]),
        .Q(\group_reg_r_reg[1][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][3] [0]),
        .Q(\group_reg_r_reg[1][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][3] [1]),
        .Q(\group_reg_r_reg[1][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][3] [2]),
        .Q(\group_reg_r_reg[1][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][3] [3]),
        .Q(\group_reg_r_reg[1][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][3] [4]),
        .Q(\group_reg_r_reg[1][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][3] [5]),
        .Q(\group_reg_r_reg[1][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][3] [6]),
        .Q(\group_reg_r_reg[1][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[1][3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][3] [7]),
        .Q(\group_reg_r_reg[1][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][0] [0]),
        .Q(\group_reg_r_reg[2][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][0] [1]),
        .Q(\group_reg_r_reg[2][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][0] [2]),
        .Q(\group_reg_r_reg[2][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][0] [3]),
        .Q(\group_reg_r_reg[2][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][0] [4]),
        .Q(\group_reg_r_reg[2][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][0] [5]),
        .Q(\group_reg_r_reg[2][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][0] [6]),
        .Q(\group_reg_r_reg[2][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][0] [7]),
        .Q(\group_reg_r_reg[2][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][1] [0]),
        .Q(\group_reg_r_reg[2][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][1] [1]),
        .Q(\group_reg_r_reg[2][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][1] [2]),
        .Q(\group_reg_r_reg[2][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][1] [3]),
        .Q(\group_reg_r_reg[2][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][1] [4]),
        .Q(\group_reg_r_reg[2][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][1] [5]),
        .Q(\group_reg_r_reg[2][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][1] [6]),
        .Q(\group_reg_r_reg[2][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][1] [7]),
        .Q(\group_reg_r_reg[2][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][2] [0]),
        .Q(\group_reg_r_reg[2][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][2] [1]),
        .Q(\group_reg_r_reg[2][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][2] [2]),
        .Q(\group_reg_r_reg[2][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][2] [3]),
        .Q(\group_reg_r_reg[2][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][2] [4]),
        .Q(\group_reg_r_reg[2][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][2] [5]),
        .Q(\group_reg_r_reg[2][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][2] [6]),
        .Q(\group_reg_r_reg[2][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][2] [7]),
        .Q(\group_reg_r_reg[2][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][3] [0]),
        .Q(\group_reg_r_reg[2][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][3] [1]),
        .Q(\group_reg_r_reg[2][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][3] [2]),
        .Q(\group_reg_r_reg[2][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][3] [3]),
        .Q(\group_reg_r_reg[2][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][3] [4]),
        .Q(\group_reg_r_reg[2][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][3] [5]),
        .Q(\group_reg_r_reg[2][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][3] [6]),
        .Q(\group_reg_r_reg[2][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[2][3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][3] [7]),
        .Q(\group_reg_r_reg[2][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][0] [0]),
        .Q(\group_reg_r_reg[3][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][0] [1]),
        .Q(\group_reg_r_reg[3][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][0] [2]),
        .Q(\group_reg_r_reg[3][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][0] [3]),
        .Q(\group_reg_r_reg[3][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][0] [4]),
        .Q(\group_reg_r_reg[3][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][0] [5]),
        .Q(\group_reg_r_reg[3][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][0] [6]),
        .Q(\group_reg_r_reg[3][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][0] [7]),
        .Q(\group_reg_r_reg[3][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][1] [0]),
        .Q(\group_reg_r_reg[3][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][1] [1]),
        .Q(\group_reg_r_reg[3][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][1] [2]),
        .Q(\group_reg_r_reg[3][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][1] [3]),
        .Q(\group_reg_r_reg[3][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][1] [4]),
        .Q(\group_reg_r_reg[3][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][1] [5]),
        .Q(\group_reg_r_reg[3][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][1] [6]),
        .Q(\group_reg_r_reg[3][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][1] [7]),
        .Q(\group_reg_r_reg[3][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][2] [0]),
        .Q(\group_reg_r_reg[3][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][2] [1]),
        .Q(\group_reg_r_reg[3][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][2] [2]),
        .Q(\group_reg_r_reg[3][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][2] [3]),
        .Q(\group_reg_r_reg[3][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][2] [4]),
        .Q(\group_reg_r_reg[3][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][2] [5]),
        .Q(\group_reg_r_reg[3][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][2] [6]),
        .Q(\group_reg_r_reg[3][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][2] [7]),
        .Q(\group_reg_r_reg[3][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][3] [0]),
        .Q(\group_reg_r_reg[3][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][3] [1]),
        .Q(\group_reg_r_reg[3][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][3] [2]),
        .Q(\group_reg_r_reg[3][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][3] [3]),
        .Q(\group_reg_r_reg[3][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][3] [4]),
        .Q(\group_reg_r_reg[3][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][3] [5]),
        .Q(\group_reg_r_reg[3][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][3] [6]),
        .Q(\group_reg_r_reg[3][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[3][3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][3] [7]),
        .Q(\group_reg_r_reg[3][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][0] [0]),
        .Q(\group_reg_r_reg[4][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][0] [1]),
        .Q(\group_reg_r_reg[4][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][0] [2]),
        .Q(\group_reg_r_reg[4][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][0] [3]),
        .Q(\group_reg_r_reg[4][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][0] [4]),
        .Q(\group_reg_r_reg[4][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][0] [5]),
        .Q(\group_reg_r_reg[4][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][0] [6]),
        .Q(\group_reg_r_reg[4][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][0] [7]),
        .Q(\group_reg_r_reg[4][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][1] [0]),
        .Q(\group_reg_r_reg[4][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][1] [1]),
        .Q(\group_reg_r_reg[4][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][1] [2]),
        .Q(\group_reg_r_reg[4][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][1] [3]),
        .Q(\group_reg_r_reg[4][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][1] [4]),
        .Q(\group_reg_r_reg[4][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][1] [5]),
        .Q(\group_reg_r_reg[4][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][1] [6]),
        .Q(\group_reg_r_reg[4][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][1] [7]),
        .Q(\group_reg_r_reg[4][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][2] [0]),
        .Q(\group_reg_r_reg[4][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][2] [1]),
        .Q(\group_reg_r_reg[4][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][2] [2]),
        .Q(\group_reg_r_reg[4][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][2] [3]),
        .Q(\group_reg_r_reg[4][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][2] [4]),
        .Q(\group_reg_r_reg[4][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][2] [5]),
        .Q(\group_reg_r_reg[4][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][2] [6]),
        .Q(\group_reg_r_reg[4][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][2] [7]),
        .Q(\group_reg_r_reg[4][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][3] [0]),
        .Q(\group_reg_r_reg[4][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][3] [1]),
        .Q(\group_reg_r_reg[4][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][3] [2]),
        .Q(\group_reg_r_reg[4][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][3] [3]),
        .Q(\group_reg_r_reg[4][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][3] [4]),
        .Q(\group_reg_r_reg[4][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][3] [5]),
        .Q(\group_reg_r_reg[4][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][3] [6]),
        .Q(\group_reg_r_reg[4][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[4][3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][3] [7]),
        .Q(\group_reg_r_reg[4][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][0] [0]),
        .Q(\group_reg_r_reg[5][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][0] [1]),
        .Q(\group_reg_r_reg[5][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][0] [2]),
        .Q(\group_reg_r_reg[5][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][0] [3]),
        .Q(\group_reg_r_reg[5][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][0] [4]),
        .Q(\group_reg_r_reg[5][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][0] [5]),
        .Q(\group_reg_r_reg[5][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][0] [6]),
        .Q(\group_reg_r_reg[5][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][0] [7]),
        .Q(\group_reg_r_reg[5][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][1] [0]),
        .Q(\group_reg_r_reg[5][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][1] [1]),
        .Q(\group_reg_r_reg[5][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][1] [2]),
        .Q(\group_reg_r_reg[5][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][1] [3]),
        .Q(\group_reg_r_reg[5][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][1] [4]),
        .Q(\group_reg_r_reg[5][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][1] [5]),
        .Q(\group_reg_r_reg[5][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][1] [6]),
        .Q(\group_reg_r_reg[5][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][1] [7]),
        .Q(\group_reg_r_reg[5][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][2] [0]),
        .Q(\group_reg_r_reg[5][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][2] [1]),
        .Q(\group_reg_r_reg[5][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][2] [2]),
        .Q(\group_reg_r_reg[5][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][2] [3]),
        .Q(\group_reg_r_reg[5][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][2] [4]),
        .Q(\group_reg_r_reg[5][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][2] [5]),
        .Q(\group_reg_r_reg[5][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][2] [6]),
        .Q(\group_reg_r_reg[5][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][2] [7]),
        .Q(\group_reg_r_reg[5][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][3] [0]),
        .Q(\group_reg_r_reg[5][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][3] [1]),
        .Q(\group_reg_r_reg[5][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][3] [2]),
        .Q(\group_reg_r_reg[5][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][3] [3]),
        .Q(\group_reg_r_reg[5][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][3] [4]),
        .Q(\group_reg_r_reg[5][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][3] [5]),
        .Q(\group_reg_r_reg[5][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][3] [6]),
        .Q(\group_reg_r_reg[5][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[5][3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][3] [7]),
        .Q(\group_reg_r_reg[5][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][0] [0]),
        .Q(\group_reg_r_reg[6][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][0] [1]),
        .Q(\group_reg_r_reg[6][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][0] [2]),
        .Q(\group_reg_r_reg[6][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][0] [3]),
        .Q(\group_reg_r_reg[6][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][0] [4]),
        .Q(\group_reg_r_reg[6][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][0] [5]),
        .Q(\group_reg_r_reg[6][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][0] [6]),
        .Q(\group_reg_r_reg[6][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][0] [7]),
        .Q(\group_reg_r_reg[6][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][1] [0]),
        .Q(\group_reg_r_reg[6][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][1] [1]),
        .Q(\group_reg_r_reg[6][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][1] [2]),
        .Q(\group_reg_r_reg[6][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][1] [3]),
        .Q(\group_reg_r_reg[6][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][1] [4]),
        .Q(\group_reg_r_reg[6][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][1] [5]),
        .Q(\group_reg_r_reg[6][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][1] [6]),
        .Q(\group_reg_r_reg[6][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][1] [7]),
        .Q(\group_reg_r_reg[6][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][2] [0]),
        .Q(\group_reg_r_reg[6][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][2] [1]),
        .Q(\group_reg_r_reg[6][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][2] [2]),
        .Q(\group_reg_r_reg[6][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][2] [3]),
        .Q(\group_reg_r_reg[6][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][2] [4]),
        .Q(\group_reg_r_reg[6][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][2] [5]),
        .Q(\group_reg_r_reg[6][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][2] [6]),
        .Q(\group_reg_r_reg[6][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][2] [7]),
        .Q(\group_reg_r_reg[6][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][3] [0]),
        .Q(\group_reg_r_reg[6][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][3] [1]),
        .Q(\group_reg_r_reg[6][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][3] [2]),
        .Q(\group_reg_r_reg[6][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][3] [3]),
        .Q(\group_reg_r_reg[6][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][3] [4]),
        .Q(\group_reg_r_reg[6][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][3] [5]),
        .Q(\group_reg_r_reg[6][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][3] [6]),
        .Q(\group_reg_r_reg[6][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[6][3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][3] [7]),
        .Q(\group_reg_r_reg[6][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][0] [0]),
        .Q(\group_reg_r_reg[7][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][0] [1]),
        .Q(\group_reg_r_reg[7][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][0] [2]),
        .Q(\group_reg_r_reg[7][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][0] [3]),
        .Q(\group_reg_r_reg[7][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][0] [4]),
        .Q(\group_reg_r_reg[7][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][0] [5]),
        .Q(\group_reg_r_reg[7][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][0] [6]),
        .Q(\group_reg_r_reg[7][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][0] [7]),
        .Q(\group_reg_r_reg[7][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][1] [0]),
        .Q(\group_reg_r_reg[7][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][1] [1]),
        .Q(\group_reg_r_reg[7][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][1] [2]),
        .Q(\group_reg_r_reg[7][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][1] [3]),
        .Q(\group_reg_r_reg[7][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][1] [4]),
        .Q(\group_reg_r_reg[7][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][1] [5]),
        .Q(\group_reg_r_reg[7][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][1] [6]),
        .Q(\group_reg_r_reg[7][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][1] [7]),
        .Q(\group_reg_r_reg[7][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][2] [0]),
        .Q(\group_reg_r_reg[7][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][2] [1]),
        .Q(\group_reg_r_reg[7][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][2] [2]),
        .Q(\group_reg_r_reg[7][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][2] [3]),
        .Q(\group_reg_r_reg[7][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][2] [4]),
        .Q(\group_reg_r_reg[7][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][2] [5]),
        .Q(\group_reg_r_reg[7][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][2] [6]),
        .Q(\group_reg_r_reg[7][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][2] [7]),
        .Q(\group_reg_r_reg[7][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][3] [0]),
        .Q(\group_reg_r_reg[7][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][3] [1]),
        .Q(\group_reg_r_reg[7][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][3] [2]),
        .Q(\group_reg_r_reg[7][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][3] [3]),
        .Q(\group_reg_r_reg[7][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][3] [4]),
        .Q(\group_reg_r_reg[7][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][3] [5]),
        .Q(\group_reg_r_reg[7][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][3] [6]),
        .Q(\group_reg_r_reg[7][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \group_reg_r_reg[7][3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\group_valid_w[0] ),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][3] [7]),
        .Q(\group_reg_r_reg[7][3] [7]));
  FDPE #(
    .INIT(1'b1)) 
    \group_valid_r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(comparator_tree_u0_n_35),
        .PRE(i_rst_IBUF),
        .Q(\group_valid_r_reg_n_11_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \group_valid_r_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(comparator_tree_u0_n_36),
        .PRE(i_rst_IBUF),
        .Q(\group_valid_r_reg_n_11_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \group_valid_r_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(comparator_tree_u0_n_37),
        .PRE(i_rst_IBUF),
        .Q(\group_valid_r_reg_n_11_[2] ));
  FDPE #(
    .INIT(1'b1)) 
    \group_valid_r_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(comparator_tree_u0_n_38),
        .PRE(i_rst_IBUF),
        .Q(\group_valid_r_reg_n_11_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \group_valid_r_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(comparator_tree_u0_n_39),
        .PRE(i_rst_IBUF),
        .Q(\group_valid_r_reg_n_11_[4] ));
  FDPE #(
    .INIT(1'b1)) 
    \group_valid_r_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(comparator_tree_u0_n_40),
        .PRE(i_rst_IBUF),
        .Q(\group_valid_r_reg_n_11_[5] ));
  FDPE #(
    .INIT(1'b1)) 
    \group_valid_r_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(comparator_tree_u0_n_41),
        .PRE(i_rst_IBUF),
        .Q(\group_valid_r_reg_n_11_[6] ));
  FDPE #(
    .INIT(1'b1)) 
    \group_valid_r_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(comparator_tree_u0_n_42),
        .PRE(i_rst_IBUF),
        .Q(\group_valid_r_reg_n_11_[7] ));
  IBUF i_rst_IBUF_inst
       (.I(i_rst),
        .O(i_rst_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][0] [0]),
        .Q(\shift_group_reg_r_reg[0][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][0] [1]),
        .Q(\shift_group_reg_r_reg[0][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][0] [2]),
        .Q(\shift_group_reg_r_reg[0][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][0] [3]),
        .Q(\shift_group_reg_r_reg[0][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][0] [4]),
        .Q(\shift_group_reg_r_reg[0][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][0] [5]),
        .Q(\shift_group_reg_r_reg[0][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][0] [6]),
        .Q(\shift_group_reg_r_reg[0][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][0] [7]),
        .Q(\shift_group_reg_r_reg[0][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][1] [0]),
        .Q(\shift_group_reg_r_reg[0][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][1] [1]),
        .Q(\shift_group_reg_r_reg[0][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][1] [2]),
        .Q(\shift_group_reg_r_reg[0][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][1] [3]),
        .Q(\shift_group_reg_r_reg[0][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][1] [4]),
        .Q(\shift_group_reg_r_reg[0][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][1] [5]),
        .Q(\shift_group_reg_r_reg[0][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][1] [6]),
        .Q(\shift_group_reg_r_reg[0][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][1] [7]),
        .Q(\shift_group_reg_r_reg[0][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][2] [0]),
        .Q(\shift_group_reg_r_reg[0][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][2] [1]),
        .Q(\shift_group_reg_r_reg[0][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][2] [2]),
        .Q(\shift_group_reg_r_reg[0][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][2] [3]),
        .Q(\shift_group_reg_r_reg[0][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][2] [4]),
        .Q(\shift_group_reg_r_reg[0][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][2] [5]),
        .Q(\shift_group_reg_r_reg[0][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][2] [6]),
        .Q(\shift_group_reg_r_reg[0][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][2] [7]),
        .Q(\shift_group_reg_r_reg[0][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][3] [0]),
        .Q(\shift_group_reg_r_reg[0][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][3] [1]),
        .Q(\shift_group_reg_r_reg[0][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][3] [2]),
        .Q(\shift_group_reg_r_reg[0][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][3] [3]),
        .Q(\shift_group_reg_r_reg[0][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][3] [4]),
        .Q(\shift_group_reg_r_reg[0][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][3] [5]),
        .Q(\shift_group_reg_r_reg[0][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][3] [6]),
        .Q(\shift_group_reg_r_reg[0][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[0][3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[1][3] [7]),
        .Q(\shift_group_reg_r_reg[0][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][0] [0]),
        .Q(\shift_group_reg_r_reg[1][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][0] [1]),
        .Q(\shift_group_reg_r_reg[1][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][0] [2]),
        .Q(\shift_group_reg_r_reg[1][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][0] [3]),
        .Q(\shift_group_reg_r_reg[1][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][0] [4]),
        .Q(\shift_group_reg_r_reg[1][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][0] [5]),
        .Q(\shift_group_reg_r_reg[1][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][0] [6]),
        .Q(\shift_group_reg_r_reg[1][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][0] [7]),
        .Q(\shift_group_reg_r_reg[1][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][1] [0]),
        .Q(\shift_group_reg_r_reg[1][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][1] [1]),
        .Q(\shift_group_reg_r_reg[1][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][1] [2]),
        .Q(\shift_group_reg_r_reg[1][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][1] [3]),
        .Q(\shift_group_reg_r_reg[1][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][1] [4]),
        .Q(\shift_group_reg_r_reg[1][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][1] [5]),
        .Q(\shift_group_reg_r_reg[1][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][1] [6]),
        .Q(\shift_group_reg_r_reg[1][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][1] [7]),
        .Q(\shift_group_reg_r_reg[1][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][2] [0]),
        .Q(\shift_group_reg_r_reg[1][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][2] [1]),
        .Q(\shift_group_reg_r_reg[1][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][2] [2]),
        .Q(\shift_group_reg_r_reg[1][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][2] [3]),
        .Q(\shift_group_reg_r_reg[1][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][2] [4]),
        .Q(\shift_group_reg_r_reg[1][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][2] [5]),
        .Q(\shift_group_reg_r_reg[1][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][2] [6]),
        .Q(\shift_group_reg_r_reg[1][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][2] [7]),
        .Q(\shift_group_reg_r_reg[1][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][3] [0]),
        .Q(\shift_group_reg_r_reg[1][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][3] [1]),
        .Q(\shift_group_reg_r_reg[1][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][3] [2]),
        .Q(\shift_group_reg_r_reg[1][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][3] [3]),
        .Q(\shift_group_reg_r_reg[1][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][3] [4]),
        .Q(\shift_group_reg_r_reg[1][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][3] [5]),
        .Q(\shift_group_reg_r_reg[1][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][3] [6]),
        .Q(\shift_group_reg_r_reg[1][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[1][3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[2][3] [7]),
        .Q(\shift_group_reg_r_reg[1][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][0] [0]),
        .Q(\shift_group_reg_r_reg[2][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][0] [1]),
        .Q(\shift_group_reg_r_reg[2][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][0] [2]),
        .Q(\shift_group_reg_r_reg[2][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][0] [3]),
        .Q(\shift_group_reg_r_reg[2][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][0] [4]),
        .Q(\shift_group_reg_r_reg[2][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][0] [5]),
        .Q(\shift_group_reg_r_reg[2][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][0] [6]),
        .Q(\shift_group_reg_r_reg[2][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][0] [7]),
        .Q(\shift_group_reg_r_reg[2][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][1] [0]),
        .Q(\shift_group_reg_r_reg[2][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][1] [1]),
        .Q(\shift_group_reg_r_reg[2][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][1] [2]),
        .Q(\shift_group_reg_r_reg[2][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][1] [3]),
        .Q(\shift_group_reg_r_reg[2][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][1] [4]),
        .Q(\shift_group_reg_r_reg[2][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][1] [5]),
        .Q(\shift_group_reg_r_reg[2][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][1] [6]),
        .Q(\shift_group_reg_r_reg[2][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][1] [7]),
        .Q(\shift_group_reg_r_reg[2][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][2] [0]),
        .Q(\shift_group_reg_r_reg[2][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][2] [1]),
        .Q(\shift_group_reg_r_reg[2][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][2] [2]),
        .Q(\shift_group_reg_r_reg[2][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][2] [3]),
        .Q(\shift_group_reg_r_reg[2][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][2] [4]),
        .Q(\shift_group_reg_r_reg[2][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][2] [5]),
        .Q(\shift_group_reg_r_reg[2][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][2] [6]),
        .Q(\shift_group_reg_r_reg[2][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][2] [7]),
        .Q(\shift_group_reg_r_reg[2][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][3] [0]),
        .Q(\shift_group_reg_r_reg[2][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][3] [1]),
        .Q(\shift_group_reg_r_reg[2][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][3] [2]),
        .Q(\shift_group_reg_r_reg[2][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][3] [3]),
        .Q(\shift_group_reg_r_reg[2][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][3] [4]),
        .Q(\shift_group_reg_r_reg[2][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][3] [5]),
        .Q(\shift_group_reg_r_reg[2][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][3] [6]),
        .Q(\shift_group_reg_r_reg[2][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[2][3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[3][3] [7]),
        .Q(\shift_group_reg_r_reg[2][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][0] [0]),
        .Q(\shift_group_reg_r_reg[3][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][0] [1]),
        .Q(\shift_group_reg_r_reg[3][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][0] [2]),
        .Q(\shift_group_reg_r_reg[3][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][0] [3]),
        .Q(\shift_group_reg_r_reg[3][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][0] [4]),
        .Q(\shift_group_reg_r_reg[3][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][0] [5]),
        .Q(\shift_group_reg_r_reg[3][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][0] [6]),
        .Q(\shift_group_reg_r_reg[3][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][0] [7]),
        .Q(\shift_group_reg_r_reg[3][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][1] [0]),
        .Q(\shift_group_reg_r_reg[3][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][1] [1]),
        .Q(\shift_group_reg_r_reg[3][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][1] [2]),
        .Q(\shift_group_reg_r_reg[3][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][1] [3]),
        .Q(\shift_group_reg_r_reg[3][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][1] [4]),
        .Q(\shift_group_reg_r_reg[3][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][1] [5]),
        .Q(\shift_group_reg_r_reg[3][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][1] [6]),
        .Q(\shift_group_reg_r_reg[3][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][1] [7]),
        .Q(\shift_group_reg_r_reg[3][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][2] [0]),
        .Q(\shift_group_reg_r_reg[3][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][2] [1]),
        .Q(\shift_group_reg_r_reg[3][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][2] [2]),
        .Q(\shift_group_reg_r_reg[3][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][2] [3]),
        .Q(\shift_group_reg_r_reg[3][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][2] [4]),
        .Q(\shift_group_reg_r_reg[3][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][2] [5]),
        .Q(\shift_group_reg_r_reg[3][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][2] [6]),
        .Q(\shift_group_reg_r_reg[3][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][2] [7]),
        .Q(\shift_group_reg_r_reg[3][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][3] [0]),
        .Q(\shift_group_reg_r_reg[3][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][3] [1]),
        .Q(\shift_group_reg_r_reg[3][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][3] [2]),
        .Q(\shift_group_reg_r_reg[3][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][3] [3]),
        .Q(\shift_group_reg_r_reg[3][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][3] [4]),
        .Q(\shift_group_reg_r_reg[3][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][3] [5]),
        .Q(\shift_group_reg_r_reg[3][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][3] [6]),
        .Q(\shift_group_reg_r_reg[3][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[3][3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[4][3] [7]),
        .Q(\shift_group_reg_r_reg[3][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][0] [0]),
        .Q(\shift_group_reg_r_reg[4][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][0] [1]),
        .Q(\shift_group_reg_r_reg[4][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][0] [2]),
        .Q(\shift_group_reg_r_reg[4][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][0] [3]),
        .Q(\shift_group_reg_r_reg[4][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][0] [4]),
        .Q(\shift_group_reg_r_reg[4][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][0] [5]),
        .Q(\shift_group_reg_r_reg[4][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][0] [6]),
        .Q(\shift_group_reg_r_reg[4][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][0] [7]),
        .Q(\shift_group_reg_r_reg[4][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][1] [0]),
        .Q(\shift_group_reg_r_reg[4][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][1] [1]),
        .Q(\shift_group_reg_r_reg[4][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][1] [2]),
        .Q(\shift_group_reg_r_reg[4][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][1] [3]),
        .Q(\shift_group_reg_r_reg[4][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][1] [4]),
        .Q(\shift_group_reg_r_reg[4][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][1] [5]),
        .Q(\shift_group_reg_r_reg[4][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][1] [6]),
        .Q(\shift_group_reg_r_reg[4][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][1] [7]),
        .Q(\shift_group_reg_r_reg[4][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][2] [0]),
        .Q(\shift_group_reg_r_reg[4][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][2] [1]),
        .Q(\shift_group_reg_r_reg[4][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][2] [2]),
        .Q(\shift_group_reg_r_reg[4][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][2] [3]),
        .Q(\shift_group_reg_r_reg[4][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][2] [4]),
        .Q(\shift_group_reg_r_reg[4][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][2] [5]),
        .Q(\shift_group_reg_r_reg[4][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][2] [6]),
        .Q(\shift_group_reg_r_reg[4][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][2] [7]),
        .Q(\shift_group_reg_r_reg[4][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][3] [0]),
        .Q(\shift_group_reg_r_reg[4][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][3] [1]),
        .Q(\shift_group_reg_r_reg[4][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][3] [2]),
        .Q(\shift_group_reg_r_reg[4][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][3] [3]),
        .Q(\shift_group_reg_r_reg[4][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][3] [4]),
        .Q(\shift_group_reg_r_reg[4][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][3] [5]),
        .Q(\shift_group_reg_r_reg[4][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][3] [6]),
        .Q(\shift_group_reg_r_reg[4][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[4][3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[5][3] [7]),
        .Q(\shift_group_reg_r_reg[4][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][0] [0]),
        .Q(\shift_group_reg_r_reg[5][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][0] [1]),
        .Q(\shift_group_reg_r_reg[5][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][0] [2]),
        .Q(\shift_group_reg_r_reg[5][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][0] [3]),
        .Q(\shift_group_reg_r_reg[5][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][0] [4]),
        .Q(\shift_group_reg_r_reg[5][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][0] [5]),
        .Q(\shift_group_reg_r_reg[5][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][0] [6]),
        .Q(\shift_group_reg_r_reg[5][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][0] [7]),
        .Q(\shift_group_reg_r_reg[5][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][1] [0]),
        .Q(\shift_group_reg_r_reg[5][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][1] [1]),
        .Q(\shift_group_reg_r_reg[5][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][1] [2]),
        .Q(\shift_group_reg_r_reg[5][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][1] [3]),
        .Q(\shift_group_reg_r_reg[5][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][1] [4]),
        .Q(\shift_group_reg_r_reg[5][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][1] [5]),
        .Q(\shift_group_reg_r_reg[5][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][1] [6]),
        .Q(\shift_group_reg_r_reg[5][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][1] [7]),
        .Q(\shift_group_reg_r_reg[5][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][2] [0]),
        .Q(\shift_group_reg_r_reg[5][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][2] [1]),
        .Q(\shift_group_reg_r_reg[5][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][2] [2]),
        .Q(\shift_group_reg_r_reg[5][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][2] [3]),
        .Q(\shift_group_reg_r_reg[5][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][2] [4]),
        .Q(\shift_group_reg_r_reg[5][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][2] [5]),
        .Q(\shift_group_reg_r_reg[5][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][2] [6]),
        .Q(\shift_group_reg_r_reg[5][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][2] [7]),
        .Q(\shift_group_reg_r_reg[5][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][3] [0]),
        .Q(\shift_group_reg_r_reg[5][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][3] [1]),
        .Q(\shift_group_reg_r_reg[5][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][3] [2]),
        .Q(\shift_group_reg_r_reg[5][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][3] [3]),
        .Q(\shift_group_reg_r_reg[5][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][3] [4]),
        .Q(\shift_group_reg_r_reg[5][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][3] [5]),
        .Q(\shift_group_reg_r_reg[5][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][3] [6]),
        .Q(\shift_group_reg_r_reg[5][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[5][3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[6][3] [7]),
        .Q(\shift_group_reg_r_reg[5][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][0] [0]),
        .Q(\shift_group_reg_r_reg[6][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][0] [1]),
        .Q(\shift_group_reg_r_reg[6][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][0] [2]),
        .Q(\shift_group_reg_r_reg[6][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][0] [3]),
        .Q(\shift_group_reg_r_reg[6][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][0] [4]),
        .Q(\shift_group_reg_r_reg[6][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][0] [5]),
        .Q(\shift_group_reg_r_reg[6][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][0] [6]),
        .Q(\shift_group_reg_r_reg[6][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][0] [7]),
        .Q(\shift_group_reg_r_reg[6][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][1] [0]),
        .Q(\shift_group_reg_r_reg[6][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][1] [1]),
        .Q(\shift_group_reg_r_reg[6][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][1] [2]),
        .Q(\shift_group_reg_r_reg[6][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][1] [3]),
        .Q(\shift_group_reg_r_reg[6][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][1] [4]),
        .Q(\shift_group_reg_r_reg[6][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][1] [5]),
        .Q(\shift_group_reg_r_reg[6][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][1] [6]),
        .Q(\shift_group_reg_r_reg[6][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][1] [7]),
        .Q(\shift_group_reg_r_reg[6][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][2] [0]),
        .Q(\shift_group_reg_r_reg[6][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][2] [1]),
        .Q(\shift_group_reg_r_reg[6][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][2] [2]),
        .Q(\shift_group_reg_r_reg[6][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][2] [3]),
        .Q(\shift_group_reg_r_reg[6][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][2] [4]),
        .Q(\shift_group_reg_r_reg[6][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][2] [5]),
        .Q(\shift_group_reg_r_reg[6][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][2] [6]),
        .Q(\shift_group_reg_r_reg[6][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][2] [7]),
        .Q(\shift_group_reg_r_reg[6][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][3] [0]),
        .Q(\shift_group_reg_r_reg[6][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][3] [1]),
        .Q(\shift_group_reg_r_reg[6][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][3] [2]),
        .Q(\shift_group_reg_r_reg[6][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][3] [3]),
        .Q(\shift_group_reg_r_reg[6][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][3] [4]),
        .Q(\shift_group_reg_r_reg[6][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][3] [5]),
        .Q(\shift_group_reg_r_reg[6][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][3] [6]),
        .Q(\shift_group_reg_r_reg[6][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[6][3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_r_reg[7][3] [7]),
        .Q(\shift_group_reg_r_reg[6][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_w[7][0] [0]),
        .Q(\shift_group_reg_r_reg[7][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_w[7][0] [1]),
        .Q(\shift_group_reg_r_reg[7][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_w[7][0] [2]),
        .Q(\shift_group_reg_r_reg[7][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_w[7][0] [3]),
        .Q(\shift_group_reg_r_reg[7][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_w[7][0] [4]),
        .Q(\shift_group_reg_r_reg[7][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_w[7][0] [5]),
        .Q(\shift_group_reg_r_reg[7][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_w[7][0] [6]),
        .Q(\shift_group_reg_r_reg[7][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_w[7][0] [7]),
        .Q(\shift_group_reg_r_reg[7][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_w[7][1] [0]),
        .Q(\shift_group_reg_r_reg[7][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_w[7][1] [1]),
        .Q(\shift_group_reg_r_reg[7][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_w[7][1] [2]),
        .Q(\shift_group_reg_r_reg[7][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_w[7][1] [3]),
        .Q(\shift_group_reg_r_reg[7][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_w[7][1] [4]),
        .Q(\shift_group_reg_r_reg[7][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_w[7][1] [5]),
        .Q(\shift_group_reg_r_reg[7][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_w[7][1] [6]),
        .Q(\shift_group_reg_r_reg[7][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\shift_group_reg_w[7][1] [7]),
        .Q(\shift_group_reg_r_reg[7][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(Sort4_u0_n_18),
        .Q(\shift_group_reg_r_reg[7][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(Sort4_u0_n_17),
        .Q(\shift_group_reg_r_reg[7][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(Sort4_u0_n_16),
        .Q(\shift_group_reg_r_reg[7][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(Sort4_u0_n_15),
        .Q(\shift_group_reg_r_reg[7][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(Sort4_u0_n_14),
        .Q(\shift_group_reg_r_reg[7][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(Sort4_u0_n_13),
        .Q(\shift_group_reg_r_reg[7][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(Sort4_u0_n_12),
        .Q(\shift_group_reg_r_reg[7][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(Sort4_u0_n_11),
        .Q(\shift_group_reg_r_reg[7][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(Sort4_u0_n_42),
        .Q(\shift_group_reg_r_reg[7][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(Sort4_u0_n_41),
        .Q(\shift_group_reg_r_reg[7][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(Sort4_u0_n_40),
        .Q(\shift_group_reg_r_reg[7][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(Sort4_u0_n_39),
        .Q(\shift_group_reg_r_reg[7][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(Sort4_u0_n_38),
        .Q(\shift_group_reg_r_reg[7][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(Sort4_u0_n_37),
        .Q(\shift_group_reg_r_reg[7][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(Sort4_u0_n_36),
        .Q(\shift_group_reg_r_reg[7][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_group_reg_r_reg[7][3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(Sort4_u0_n_35),
        .Q(\shift_group_reg_r_reg[7][3] [7]));
endmodule

module Sort4
   (D,
    \shift_group_reg_r[7][1][7]_i_3 ,
    \In1[7] ,
    \In4[7] ,
    In2_IBUF,
    In1_IBUF,
    In4_IBUF,
    In3_IBUF);
  output [7:0]D;
  output [7:0]\shift_group_reg_r[7][1][7]_i_3 ;
  output [7:0]\In1[7] ;
  output [7:0]\In4[7] ;
  input [7:0]In2_IBUF;
  input [7:0]In1_IBUF;
  input [7:0]In4_IBUF;
  input [7:0]In3_IBUF;

  wire Comparator_u0_n_11;
  wire Comparator_u0_n_28;
  wire Comparator_u0_n_29;
  wire Comparator_u0_n_30;
  wire Comparator_u0_n_31;
  wire Comparator_u0_n_32;
  wire Comparator_u0_n_33;
  wire Comparator_u0_n_34;
  wire Comparator_u0_n_35;
  wire Comparator_u0_n_44;
  wire Comparator_u0_n_45;
  wire Comparator_u0_n_46;
  wire Comparator_u0_n_47;
  wire Comparator_u0_n_48;
  wire Comparator_u0_n_49;
  wire Comparator_u0_n_50;
  wire Comparator_u0_n_59;
  wire Comparator_u0_n_60;
  wire Comparator_u0_n_61;
  wire Comparator_u0_n_62;
  wire Comparator_u0_n_63;
  wire Comparator_u0_n_64;
  wire Comparator_u0_n_65;
  wire Comparator_u1_n_11;
  wire Comparator_u1_n_12;
  wire Comparator_u1_n_13;
  wire Comparator_u1_n_14;
  wire Comparator_u1_n_15;
  wire Comparator_u1_n_16;
  wire Comparator_u1_n_17;
  wire Comparator_u1_n_18;
  wire Comparator_u1_n_19;
  wire Comparator_u1_n_20;
  wire Comparator_u1_n_21;
  wire Comparator_u1_n_22;
  wire Comparator_u1_n_23;
  wire Comparator_u1_n_24;
  wire Comparator_u1_n_25;
  wire Comparator_u1_n_26;
  wire Comparator_u1_n_27;
  wire Comparator_u1_n_28;
  wire Comparator_u1_n_29;
  wire Comparator_u1_n_30;
  wire Comparator_u1_n_31;
  wire Comparator_u2_n_11;
  wire Comparator_u3_n_11;
  wire Comparator_u4_n_11;
  wire Comparator_u4_n_12;
  wire Comparator_u4_n_13;
  wire Comparator_u4_n_14;
  wire Comparator_u4_n_15;
  wire Comparator_u4_n_16;
  wire Comparator_u4_n_17;
  wire Comparator_u4_n_18;
  wire Comparator_u4_n_19;
  wire Comparator_u4_n_20;
  wire Comparator_u4_n_21;
  wire Comparator_u4_n_22;
  wire Comparator_u4_n_23;
  wire Comparator_u4_n_24;
  wire Comparator_u4_n_25;
  wire Comparator_u4_n_26;
  wire Comparator_u4_n_27;
  wire [7:0]D;
  wire [7:0]\In1[7] ;
  wire [7:0]In1_IBUF;
  wire [7:0]In2_IBUF;
  wire [7:0]In3_IBUF;
  wire [7:0]\In4[7] ;
  wire [7:0]In4_IBUF;
  wire [7:0]\shift_group_reg_r[7][1][7]_i_3 ;

  Comparator Comparator_u0
       (.CO(Comparator_u0_n_11),
        .D(D),
        .DI({Comparator_u4_n_16,Comparator_u4_n_17,Comparator_u4_n_18,Comparator_u4_n_19}),
        .\In1[4] ({Comparator_u0_n_47,Comparator_u0_n_48,Comparator_u0_n_49}),
        .\In1[4]_0 ({Comparator_u0_n_59,Comparator_u0_n_60,Comparator_u0_n_61}),
        .\In1[7] (\In1[7] ),
        .\In1[7]_0 (Comparator_u0_n_50),
        .In1_IBUF(In1_IBUF),
        .\In2[4] ({Comparator_u0_n_44,Comparator_u0_n_45,Comparator_u0_n_46}),
        .\In2[4]_0 ({Comparator_u0_n_62,Comparator_u0_n_63,Comparator_u0_n_64}),
        .\In2[7] (Comparator_u0_n_65),
        .In2_IBUF(In2_IBUF),
        .In3_IBUF(In3_IBUF),
        .\In4[7] (\In4[7] ),
        .In4_IBUF(In4_IBUF),
        .S({Comparator_u4_n_12,Comparator_u4_n_13,Comparator_u4_n_14,Comparator_u4_n_15}),
        .\shift_group_reg_r[7][1][6]_i_2_0 ({Comparator_u0_n_32,Comparator_u0_n_33,Comparator_u0_n_34,Comparator_u0_n_35}),
        .\shift_group_reg_r[7][1][6]_i_3_0 ({Comparator_u0_n_28,Comparator_u0_n_29,Comparator_u0_n_30,Comparator_u0_n_31}),
        .\shift_group_reg_r[7][1][7]_i_3_0 (\shift_group_reg_r[7][1][7]_i_3 ),
        .\shift_group_reg_r_reg[7][0][0] (Comparator_u1_n_13),
        .\shift_group_reg_r_reg[7][0][1] (Comparator_u2_n_11),
        .\shift_group_reg_r_reg[7][0][1]_0 (Comparator_u1_n_12),
        .\shift_group_reg_r_reg[7][0][2] (Comparator_u1_n_15),
        .\shift_group_reg_r_reg[7][0][3] (Comparator_u1_n_14),
        .\shift_group_reg_r_reg[7][0][4] (Comparator_u1_n_17),
        .\shift_group_reg_r_reg[7][0][5] (Comparator_u1_n_16),
        .\shift_group_reg_r_reg[7][0][6] (Comparator_u1_n_20),
        .\shift_group_reg_r_reg[7][0][7] (Comparator_u1_n_19),
        .\shift_group_reg_r_reg[7][1][0] (Comparator_u1_n_23),
        .\shift_group_reg_r_reg[7][1][1] (Comparator_u1_n_22),
        .\shift_group_reg_r_reg[7][1][2] (Comparator_u1_n_25),
        .\shift_group_reg_r_reg[7][1][3] (Comparator_u1_n_24),
        .\shift_group_reg_r_reg[7][1][4] (Comparator_u1_n_27),
        .\shift_group_reg_r_reg[7][1][5] (Comparator_u1_n_26),
        .\shift_group_reg_r_reg[7][1][6] (Comparator_u1_n_30),
        .\shift_group_reg_r_reg[7][2][1] (Comparator_u4_n_11),
        .\shift_group_reg_r_reg[7][2][7] (Comparator_u1_n_29),
        .\shift_group_reg_r_reg[7][3][1] (Comparator_u1_n_11),
        .\shift_group_reg_r_reg[7][3][1]_0 (Comparator_u3_n_11));
  Comparator_6 Comparator_u1
       (.CO(Comparator_u0_n_11),
        .DI({Comparator_u4_n_24,Comparator_u4_n_25,Comparator_u4_n_26,Comparator_u4_n_27}),
        .\In1[6] (Comparator_u1_n_21),
        .\In1[6]_0 (Comparator_u1_n_28),
        .In1_IBUF(In1_IBUF[7:6]),
        .\In2[6] (Comparator_u1_n_18),
        .\In2[6]_0 (Comparator_u1_n_31),
        .In2_IBUF(In2_IBUF[7:6]),
        .\In3[0] (Comparator_u1_n_13),
        .\In3[1] (Comparator_u1_n_12),
        .\In3[2] (Comparator_u1_n_15),
        .\In3[3] (Comparator_u1_n_14),
        .\In3[4] (Comparator_u1_n_17),
        .\In3[5] (Comparator_u1_n_16),
        .\In3[6] (Comparator_u1_n_20),
        .\In3[7] (Comparator_u1_n_19),
        .In3_IBUF(In3_IBUF),
        .\In4[0] (Comparator_u1_n_23),
        .\In4[1] (Comparator_u1_n_22),
        .\In4[2] (Comparator_u1_n_25),
        .\In4[3] (Comparator_u1_n_24),
        .\In4[4] (Comparator_u1_n_27),
        .\In4[5] (Comparator_u1_n_26),
        .\In4[6] (Comparator_u1_n_30),
        .\In4[7] (Comparator_u1_n_29),
        .In4_IBUF(In4_IBUF),
        .S({Comparator_u4_n_20,Comparator_u4_n_21,Comparator_u4_n_22,Comparator_u4_n_23}),
        .o_Max2_carry_0(Comparator_u0_n_50),
        .o_Max2_carry_1(Comparator_u0_n_65),
        .o_Max2_carry_i_8__7(Comparator_u1_n_11));
  Comparator_7 Comparator_u2
       (.DI({Comparator_u1_n_18,Comparator_u0_n_44,Comparator_u0_n_45,Comparator_u0_n_46}),
        .S({Comparator_u1_n_21,Comparator_u0_n_47,Comparator_u0_n_48,Comparator_u0_n_49}),
        .o_Max2_carry_i_8__9(Comparator_u2_n_11));
  Comparator_8 Comparator_u3
       (.DI({Comparator_u1_n_28,Comparator_u0_n_59,Comparator_u0_n_60,Comparator_u0_n_61}),
        .S({Comparator_u1_n_31,Comparator_u0_n_62,Comparator_u0_n_63,Comparator_u0_n_64}),
        .o_Max2_carry_i_8__10(Comparator_u3_n_11));
  Comparator_9 Comparator_u4
       (.DI({Comparator_u4_n_16,Comparator_u4_n_17,Comparator_u4_n_18,Comparator_u4_n_19}),
        .In1_IBUF(In1_IBUF),
        .In2_IBUF(In2_IBUF),
        .\In3[7] ({Comparator_u4_n_20,Comparator_u4_n_21,Comparator_u4_n_22,Comparator_u4_n_23}),
        .In3_IBUF(In3_IBUF),
        .\In4[7] ({Comparator_u4_n_24,Comparator_u4_n_25,Comparator_u4_n_26,Comparator_u4_n_27}),
        .In4_IBUF(In4_IBUF),
        .S({Comparator_u4_n_12,Comparator_u4_n_13,Comparator_u4_n_14,Comparator_u4_n_15}),
        .o_Max2_carry_i_8__8(Comparator_u4_n_11),
        .\shift_group_reg_r_reg[7][2][1] ({Comparator_u0_n_28,Comparator_u0_n_29,Comparator_u0_n_30,Comparator_u0_n_31}),
        .\shift_group_reg_r_reg[7][2][1]_0 ({Comparator_u0_n_32,Comparator_u0_n_33,Comparator_u0_n_34,Comparator_u0_n_35}));
endmodule

module comparator_tree
   (\group_idx_r_reg[7]_1_sp_1 ,
    \group_idx_r_reg[7]_0_sp_1 ,
    \group_idx_r_reg[6]_1_sp_1 ,
    \group_idx_r_reg[6]_0_sp_1 ,
    \group_idx_r_reg[5]_1_sp_1 ,
    \group_idx_r_reg[5]_0_sp_1 ,
    \group_idx_r_reg[4]_1_sp_1 ,
    \group_idx_r_reg[4]_0_sp_1 ,
    \group_idx_r_reg[3]_1_sp_1 ,
    \group_idx_r_reg[3]_0_sp_1 ,
    \group_idx_r_reg[2]_1_sp_1 ,
    \group_idx_r_reg[2]_0_sp_1 ,
    \group_idx_r_reg[0]_1_sp_1 ,
    \group_idx_r_reg[0]_0_sp_1 ,
    \group_idx_r_reg[1]_1_sp_1 ,
    \group_idx_r_reg[1]_0_sp_1 ,
    SortOut_OBUF,
    \group_valid_r_reg[0] ,
    \group_valid_r_reg[1] ,
    \group_valid_r_reg[2] ,
    \group_valid_r_reg[3] ,
    \group_valid_r_reg[4] ,
    \group_valid_r_reg[5] ,
    \group_valid_r_reg[6] ,
    \group_valid_r_reg[7] ,
    \group_idx_r_reg[7] ,
    \group_idx_r_reg[6] ,
    \group_idx_r_reg[5] ,
    \group_idx_r_reg[4] ,
    \group_idx_r_reg[3] ,
    \group_idx_r_reg[2] ,
    \group_idx_r_reg[0] ,
    \group_idx_r_reg[1] ,
    \group_valid_r_reg[0]_0 ,
    \group_valid_r_reg[1]_0 ,
    Q,
    o_Max2_carry_i_10,
    o_Max2_carry_i_10_0,
    o_Max2_carry_i_10_1,
    o_Max2_carry_i_10_2,
    o_Max2_carry_i_10_3,
    o_Max2_carry_i_10_4,
    o_Max2_carry_i_10_5,
    \group_valid_r_reg[2]_0 ,
    \group_valid_r_reg[3]_0 ,
    o_Max2_carry_i_11__0,
    o_Max2_carry_i_11__0_0,
    o_Max2_carry_i_11__0_1,
    o_Max2_carry_i_11__0_2,
    o_Max2_carry_i_11__0_3,
    o_Max2_carry_i_11__0_4,
    o_Max2_carry_i_11__0_5,
    o_Max2_carry_i_11__0_6,
    \group_valid_r_reg[4]_0 ,
    \group_valid_r_reg[5]_0 ,
    o_Max2_carry_i_10__2,
    o_Max2_carry_i_10__2_0,
    o_Max2_carry_i_10__2_1,
    o_Max2_carry_i_10__2_2,
    o_Max2_carry_i_10__2_3,
    o_Max2_carry_i_10__2_4,
    o_Max2_carry_i_10__2_5,
    o_Max2_carry_i_10__2_6,
    \group_valid_r_reg[6]_0 ,
    \group_valid_r_reg[7]_0 ,
    o_Max2_carry_i_11__3,
    o_Max2_carry_i_11__3_0,
    o_Max2_carry_i_11__3_1,
    o_Max2_carry_i_11__3_2,
    o_Max2_carry_i_11__3_3,
    o_Max2_carry_i_11__3_4,
    o_Max2_carry_i_11__3_5,
    o_Max2_carry_i_11__3_6,
    \group_valid_r_reg[7]_1 );
  output \group_idx_r_reg[7]_1_sp_1 ;
  output \group_idx_r_reg[7]_0_sp_1 ;
  output \group_idx_r_reg[6]_1_sp_1 ;
  output \group_idx_r_reg[6]_0_sp_1 ;
  output \group_idx_r_reg[5]_1_sp_1 ;
  output \group_idx_r_reg[5]_0_sp_1 ;
  output \group_idx_r_reg[4]_1_sp_1 ;
  output \group_idx_r_reg[4]_0_sp_1 ;
  output \group_idx_r_reg[3]_1_sp_1 ;
  output \group_idx_r_reg[3]_0_sp_1 ;
  output \group_idx_r_reg[2]_1_sp_1 ;
  output \group_idx_r_reg[2]_0_sp_1 ;
  output \group_idx_r_reg[0]_1_sp_1 ;
  output \group_idx_r_reg[0]_0_sp_1 ;
  output \group_idx_r_reg[1]_1_sp_1 ;
  output \group_idx_r_reg[1]_0_sp_1 ;
  output [7:0]SortOut_OBUF;
  output \group_valid_r_reg[0] ;
  output \group_valid_r_reg[1] ;
  output \group_valid_r_reg[2] ;
  output \group_valid_r_reg[3] ;
  output \group_valid_r_reg[4] ;
  output \group_valid_r_reg[5] ;
  output \group_valid_r_reg[6] ;
  output \group_valid_r_reg[7] ;
  input [1:0]\group_idx_r_reg[7] ;
  input [1:0]\group_idx_r_reg[6] ;
  input [1:0]\group_idx_r_reg[5] ;
  input [1:0]\group_idx_r_reg[4] ;
  input [1:0]\group_idx_r_reg[3] ;
  input [1:0]\group_idx_r_reg[2] ;
  input [1:0]\group_idx_r_reg[0] ;
  input [1:0]\group_idx_r_reg[1] ;
  input \group_valid_r_reg[0]_0 ;
  input \group_valid_r_reg[1]_0 ;
  input [7:0]Q;
  input [7:0]o_Max2_carry_i_10;
  input [7:0]o_Max2_carry_i_10_0;
  input [7:0]o_Max2_carry_i_10_1;
  input [7:0]o_Max2_carry_i_10_2;
  input [7:0]o_Max2_carry_i_10_3;
  input [7:0]o_Max2_carry_i_10_4;
  input [7:0]o_Max2_carry_i_10_5;
  input \group_valid_r_reg[2]_0 ;
  input \group_valid_r_reg[3]_0 ;
  input [7:0]o_Max2_carry_i_11__0;
  input [7:0]o_Max2_carry_i_11__0_0;
  input [7:0]o_Max2_carry_i_11__0_1;
  input [7:0]o_Max2_carry_i_11__0_2;
  input [7:0]o_Max2_carry_i_11__0_3;
  input [7:0]o_Max2_carry_i_11__0_4;
  input [7:0]o_Max2_carry_i_11__0_5;
  input [7:0]o_Max2_carry_i_11__0_6;
  input \group_valid_r_reg[4]_0 ;
  input \group_valid_r_reg[5]_0 ;
  input [7:0]o_Max2_carry_i_10__2;
  input [7:0]o_Max2_carry_i_10__2_0;
  input [7:0]o_Max2_carry_i_10__2_1;
  input [7:0]o_Max2_carry_i_10__2_2;
  input [7:0]o_Max2_carry_i_10__2_3;
  input [7:0]o_Max2_carry_i_10__2_4;
  input [7:0]o_Max2_carry_i_10__2_5;
  input [7:0]o_Max2_carry_i_10__2_6;
  input \group_valid_r_reg[6]_0 ;
  input \group_valid_r_reg[7]_0 ;
  input [7:0]o_Max2_carry_i_11__3;
  input [7:0]o_Max2_carry_i_11__3_0;
  input [7:0]o_Max2_carry_i_11__3_1;
  input [7:0]o_Max2_carry_i_11__3_2;
  input [7:0]o_Max2_carry_i_11__3_3;
  input [7:0]o_Max2_carry_i_11__3_4;
  input [7:0]o_Max2_carry_i_11__3_5;
  input [7:0]o_Max2_carry_i_11__3_6;
  input [2:0]\group_valid_r_reg[7]_1 ;

  wire [7:0]Q;
  wire [7:0]SortOut_OBUF;
  wire find_max_u0_n_35;
  wire find_max_u0_n_36;
  wire find_max_u0_n_37;
  wire find_max_u0_n_38;
  wire find_max_u0_n_39;
  wire find_max_u0_n_40;
  wire find_max_u0_n_41;
  wire find_max_u0_n_42;
  wire find_max_u0_n_43;
  wire find_max_u0_n_44;
  wire find_max_u0_n_45;
  wire find_max_u0_n_46;
  wire find_max_u0_n_47;
  wire find_max_u0_n_48;
  wire find_max_u0_n_49;
  wire find_max_u0_n_50;
  wire find_max_u1_n_11;
  wire find_max_u1_n_12;
  wire find_max_u1_n_13;
  wire find_max_u1_n_14;
  wire find_max_u1_n_15;
  wire find_max_u1_n_16;
  wire find_max_u1_n_17;
  wire find_max_u1_n_18;
  wire find_max_u1_n_19;
  wire find_max_u2_n_11;
  wire find_max_u2_n_12;
  wire find_max_u2_n_13;
  wire find_max_u2_n_14;
  wire find_max_u2_n_15;
  wire find_max_u2_n_16;
  wire find_max_u2_n_17;
  wire find_max_u2_n_18;
  wire find_max_u2_n_19;
  wire find_max_u2_n_20;
  wire find_max_u2_n_21;
  wire find_max_u2_n_22;
  wire find_max_u2_n_23;
  wire find_max_u2_n_24;
  wire find_max_u2_n_25;
  wire find_max_u2_n_26;
  wire find_max_u2_n_27;
  wire find_max_u2_n_28;
  wire find_max_u2_n_29;
  wire find_max_u3_n_11;
  wire find_max_u3_n_12;
  wire find_max_u3_n_13;
  wire find_max_u3_n_14;
  wire find_max_u3_n_15;
  wire find_max_u3_n_16;
  wire find_max_u3_n_17;
  wire find_max_u3_n_18;
  wire find_max_u3_n_19;
  wire find_max_u4_n_11;
  wire find_max_u5_n_11;
  wire find_max_u6_n_100;
  wire find_max_u6_n_101;
  wire find_max_u6_n_102;
  wire find_max_u6_n_103;
  wire find_max_u6_n_104;
  wire find_max_u6_n_105;
  wire find_max_u6_n_106;
  wire find_max_u6_n_107;
  wire find_max_u6_n_11;
  wire find_max_u6_n_12;
  wire find_max_u6_n_13;
  wire find_max_u6_n_14;
  wire find_max_u6_n_15;
  wire find_max_u6_n_24;
  wire find_max_u6_n_25;
  wire find_max_u6_n_26;
  wire find_max_u6_n_27;
  wire find_max_u6_n_28;
  wire find_max_u6_n_29;
  wire find_max_u6_n_30;
  wire find_max_u6_n_31;
  wire find_max_u6_n_32;
  wire find_max_u6_n_33;
  wire find_max_u6_n_34;
  wire find_max_u6_n_35;
  wire find_max_u6_n_36;
  wire find_max_u6_n_37;
  wire find_max_u6_n_38;
  wire find_max_u6_n_39;
  wire find_max_u6_n_40;
  wire find_max_u6_n_41;
  wire find_max_u6_n_42;
  wire find_max_u6_n_43;
  wire find_max_u6_n_44;
  wire find_max_u6_n_45;
  wire find_max_u6_n_46;
  wire find_max_u6_n_47;
  wire find_max_u6_n_48;
  wire find_max_u6_n_49;
  wire find_max_u6_n_50;
  wire find_max_u6_n_51;
  wire find_max_u6_n_52;
  wire find_max_u6_n_53;
  wire find_max_u6_n_54;
  wire find_max_u6_n_55;
  wire find_max_u6_n_56;
  wire find_max_u6_n_57;
  wire find_max_u6_n_58;
  wire find_max_u6_n_59;
  wire find_max_u6_n_60;
  wire find_max_u6_n_61;
  wire find_max_u6_n_62;
  wire find_max_u6_n_63;
  wire find_max_u6_n_64;
  wire find_max_u6_n_65;
  wire find_max_u6_n_66;
  wire find_max_u6_n_67;
  wire find_max_u6_n_68;
  wire find_max_u6_n_69;
  wire find_max_u6_n_70;
  wire find_max_u6_n_71;
  wire find_max_u6_n_72;
  wire find_max_u6_n_73;
  wire find_max_u6_n_74;
  wire find_max_u6_n_75;
  wire find_max_u6_n_76;
  wire find_max_u6_n_77;
  wire find_max_u6_n_78;
  wire find_max_u6_n_79;
  wire find_max_u6_n_80;
  wire find_max_u6_n_81;
  wire find_max_u6_n_82;
  wire find_max_u6_n_83;
  wire find_max_u6_n_84;
  wire find_max_u6_n_85;
  wire find_max_u6_n_86;
  wire find_max_u6_n_87;
  wire find_max_u6_n_88;
  wire find_max_u6_n_89;
  wire find_max_u6_n_90;
  wire find_max_u6_n_91;
  wire find_max_u6_n_92;
  wire find_max_u6_n_93;
  wire find_max_u6_n_94;
  wire find_max_u6_n_95;
  wire find_max_u6_n_96;
  wire find_max_u6_n_97;
  wire find_max_u6_n_98;
  wire find_max_u6_n_99;
  wire [1:0]\group_idx_r_reg[0] ;
  wire \group_idx_r_reg[0]_0_sn_1 ;
  wire \group_idx_r_reg[0]_1_sn_1 ;
  wire [1:0]\group_idx_r_reg[1] ;
  wire \group_idx_r_reg[1]_0_sn_1 ;
  wire \group_idx_r_reg[1]_1_sn_1 ;
  wire [1:0]\group_idx_r_reg[2] ;
  wire \group_idx_r_reg[2]_0_sn_1 ;
  wire \group_idx_r_reg[2]_1_sn_1 ;
  wire [1:0]\group_idx_r_reg[3] ;
  wire \group_idx_r_reg[3]_0_sn_1 ;
  wire \group_idx_r_reg[3]_1_sn_1 ;
  wire [1:0]\group_idx_r_reg[4] ;
  wire \group_idx_r_reg[4]_0_sn_1 ;
  wire \group_idx_r_reg[4]_1_sn_1 ;
  wire [1:0]\group_idx_r_reg[5] ;
  wire \group_idx_r_reg[5]_0_sn_1 ;
  wire \group_idx_r_reg[5]_1_sn_1 ;
  wire [1:0]\group_idx_r_reg[6] ;
  wire \group_idx_r_reg[6]_0_sn_1 ;
  wire \group_idx_r_reg[6]_1_sn_1 ;
  wire [1:0]\group_idx_r_reg[7] ;
  wire \group_idx_r_reg[7]_0_sn_1 ;
  wire \group_idx_r_reg[7]_1_sn_1 ;
  wire [7:0]group_reg_r;
  wire \group_valid_r_reg[0] ;
  wire \group_valid_r_reg[0]_0 ;
  wire \group_valid_r_reg[1] ;
  wire \group_valid_r_reg[1]_0 ;
  wire \group_valid_r_reg[2] ;
  wire \group_valid_r_reg[2]_0 ;
  wire \group_valid_r_reg[3] ;
  wire \group_valid_r_reg[3]_0 ;
  wire \group_valid_r_reg[4] ;
  wire \group_valid_r_reg[4]_0 ;
  wire \group_valid_r_reg[5] ;
  wire \group_valid_r_reg[5]_0 ;
  wire \group_valid_r_reg[6] ;
  wire \group_valid_r_reg[6]_0 ;
  wire \group_valid_r_reg[7] ;
  wire \group_valid_r_reg[7]_0 ;
  wire [2:0]\group_valid_r_reg[7]_1 ;
  wire [7:0]o_Max2_carry_i_10;
  wire [7:0]o_Max2_carry_i_10_0;
  wire [7:0]o_Max2_carry_i_10_1;
  wire [7:0]o_Max2_carry_i_10_2;
  wire [7:0]o_Max2_carry_i_10_3;
  wire [7:0]o_Max2_carry_i_10_4;
  wire [7:0]o_Max2_carry_i_10_5;
  wire [7:0]o_Max2_carry_i_10__2;
  wire [7:0]o_Max2_carry_i_10__2_0;
  wire [7:0]o_Max2_carry_i_10__2_1;
  wire [7:0]o_Max2_carry_i_10__2_2;
  wire [7:0]o_Max2_carry_i_10__2_3;
  wire [7:0]o_Max2_carry_i_10__2_4;
  wire [7:0]o_Max2_carry_i_10__2_5;
  wire [7:0]o_Max2_carry_i_10__2_6;
  wire [7:0]o_Max2_carry_i_11__0;
  wire [7:0]o_Max2_carry_i_11__0_0;
  wire [7:0]o_Max2_carry_i_11__0_1;
  wire [7:0]o_Max2_carry_i_11__0_2;
  wire [7:0]o_Max2_carry_i_11__0_3;
  wire [7:0]o_Max2_carry_i_11__0_4;
  wire [7:0]o_Max2_carry_i_11__0_5;
  wire [7:0]o_Max2_carry_i_11__0_6;
  wire [7:0]o_Max2_carry_i_11__3;
  wire [7:0]o_Max2_carry_i_11__3_0;
  wire [7:0]o_Max2_carry_i_11__3_1;
  wire [7:0]o_Max2_carry_i_11__3_2;
  wire [7:0]o_Max2_carry_i_11__3_3;
  wire [7:0]o_Max2_carry_i_11__3_4;
  wire [7:0]o_Max2_carry_i_11__3_5;
  wire [7:0]o_Max2_carry_i_11__3_6;

  assign \group_idx_r_reg[0]_0_sp_1  = \group_idx_r_reg[0]_0_sn_1 ;
  assign \group_idx_r_reg[0]_1_sp_1  = \group_idx_r_reg[0]_1_sn_1 ;
  assign \group_idx_r_reg[1]_0_sp_1  = \group_idx_r_reg[1]_0_sn_1 ;
  assign \group_idx_r_reg[1]_1_sp_1  = \group_idx_r_reg[1]_1_sn_1 ;
  assign \group_idx_r_reg[2]_0_sp_1  = \group_idx_r_reg[2]_0_sn_1 ;
  assign \group_idx_r_reg[2]_1_sp_1  = \group_idx_r_reg[2]_1_sn_1 ;
  assign \group_idx_r_reg[3]_0_sp_1  = \group_idx_r_reg[3]_0_sn_1 ;
  assign \group_idx_r_reg[3]_1_sp_1  = \group_idx_r_reg[3]_1_sn_1 ;
  assign \group_idx_r_reg[4]_0_sp_1  = \group_idx_r_reg[4]_0_sn_1 ;
  assign \group_idx_r_reg[4]_1_sp_1  = \group_idx_r_reg[4]_1_sn_1 ;
  assign \group_idx_r_reg[5]_0_sp_1  = \group_idx_r_reg[5]_0_sn_1 ;
  assign \group_idx_r_reg[5]_1_sp_1  = \group_idx_r_reg[5]_1_sn_1 ;
  assign \group_idx_r_reg[6]_0_sp_1  = \group_idx_r_reg[6]_0_sn_1 ;
  assign \group_idx_r_reg[6]_1_sp_1  = \group_idx_r_reg[6]_1_sn_1 ;
  assign \group_idx_r_reg[7]_0_sp_1  = \group_idx_r_reg[7]_0_sn_1 ;
  assign \group_idx_r_reg[7]_1_sp_1  = \group_idx_r_reg[7]_1_sn_1 ;
  find_max find_max_u0
       (.CO(find_max_u6_n_11),
        .DI({find_max_u6_n_26,find_max_u6_n_27,find_max_u6_n_28,find_max_u6_n_29}),
        .S({find_max_u6_n_12,find_max_u6_n_13,find_max_u6_n_14,find_max_u6_n_15}),
        .\SortOut[0] (find_max_u2_n_26),
        .\SortOut[1] (find_max_u2_n_25),
        .\SortOut[2] (find_max_u2_n_24),
        .\SortOut[3] (find_max_u2_n_23),
        .\SortOut[4] (find_max_u2_n_22),
        .\SortOut[5] (find_max_u2_n_21),
        .\SortOut[6] (find_max_u2_n_20),
        .\SortOut[7] (find_max_u2_n_11),
        .SortOut_OBUF(SortOut_OBUF),
        .\SortOut_OBUF[1]_inst_i_2_0 (find_max_u6_n_34),
        .\SortOut_OBUF[3]_inst_i_2_0 (find_max_u6_n_32),
        .\SortOut_OBUF[5]_inst_i_2_0 (find_max_u6_n_30),
        .\SortOut_OBUF[6]_inst_i_3 ({find_max_u0_n_35,find_max_u0_n_36,find_max_u0_n_37,find_max_u0_n_38}),
        .\SortOut_OBUF[6]_inst_i_3_0 ({find_max_u0_n_39,find_max_u0_n_40,find_max_u0_n_41,find_max_u0_n_42}),
        .\SortOut_OBUF[7]_inst_i_2_0 (find_max_u6_n_24),
        .\SortOut_OBUF[7]_inst_i_2_1 (find_max_u4_n_11),
        .\group_idx_r_reg[0] (\group_idx_r_reg[0] ),
        .\group_idx_r_reg[0]_0_sp_1 (\group_idx_r_reg[0]_0_sn_1 ),
        .\group_idx_r_reg[0]_1_sp_1 (\group_idx_r_reg[0]_1_sn_1 ),
        .\group_idx_r_reg[1] (\group_idx_r_reg[1] ),
        .\group_idx_r_reg[1]_0_sp_1 (\group_idx_r_reg[1]_0_sn_1 ),
        .\group_idx_r_reg[1]_1_sp_1 (\group_idx_r_reg[1]_1_sn_1 ),
        .\group_idx_r_reg[2] (\group_idx_r_reg[2] ),
        .\group_idx_r_reg[2]_0_sp_1 (\group_idx_r_reg[2]_0_sn_1 ),
        .\group_idx_r_reg[2]_1_sp_1 (\group_idx_r_reg[2]_1_sn_1 ),
        .\group_idx_r_reg[3] (\group_idx_r_reg[3] ),
        .\group_idx_r_reg[3]_0_sp_1 (\group_idx_r_reg[3]_0_sn_1 ),
        .\group_idx_r_reg[3]_1_sp_1 (\group_idx_r_reg[3]_1_sn_1 ),
        .\group_idx_r_reg[4] (\group_idx_r_reg[4] ),
        .\group_idx_r_reg[4]_0_sp_1 (\group_idx_r_reg[4]_0_sn_1 ),
        .\group_idx_r_reg[4]_1_sp_1 (\group_idx_r_reg[4]_1_sn_1 ),
        .\group_idx_r_reg[5] (\group_idx_r_reg[5] ),
        .\group_idx_r_reg[5]_0_sp_1 (\group_idx_r_reg[5]_0_sn_1 ),
        .\group_idx_r_reg[5]_1_sp_1 (\group_idx_r_reg[5]_1_sn_1 ),
        .\group_idx_r_reg[6] (\group_idx_r_reg[6] ),
        .\group_idx_r_reg[6]_0_sp_1 (\group_idx_r_reg[6]_0_sn_1 ),
        .\group_idx_r_reg[6]_1_sp_1 (\group_idx_r_reg[6]_1_sn_1 ),
        .\group_idx_r_reg[7] (\group_idx_r_reg[7] ),
        .\group_idx_r_reg[7]_0_sp_1 (\group_idx_r_reg[7]_0_sn_1 ),
        .\group_idx_r_reg[7]_1_sp_1 (\group_idx_r_reg[7]_1_sn_1 ),
        .group_reg_r(group_reg_r),
        .\group_valid_r_reg[0] ({find_max_u0_n_43,find_max_u0_n_44,find_max_u0_n_45,find_max_u0_n_46}),
        .\group_valid_r_reg[0]_0 ({find_max_u0_n_47,find_max_u0_n_48,find_max_u0_n_49,find_max_u0_n_50}),
        .\group_valid_r_reg[0]_1 (\group_valid_r_reg[0] ),
        .\group_valid_r_reg[0]_2 (\group_valid_r_reg[0]_0 ),
        .\group_valid_r_reg[1] (\group_valid_r_reg[1] ),
        .\group_valid_r_reg[1]_0 (\group_valid_r_reg[1]_0 ),
        .\group_valid_r_reg[2] (\group_valid_r_reg[2] ),
        .\group_valid_r_reg[2]_0 (\group_valid_r_reg[2]_0 ),
        .\group_valid_r_reg[3] (\group_valid_r_reg[3] ),
        .\group_valid_r_reg[3]_0 (find_max_u2_n_28),
        .\group_valid_r_reg[3]_1 (\group_valid_r_reg[3]_0 ),
        .\group_valid_r_reg[4] (\group_valid_r_reg[4] ),
        .\group_valid_r_reg[4]_0 (\group_valid_r_reg[4]_0 ),
        .\group_valid_r_reg[5] (\group_valid_r_reg[5] ),
        .\group_valid_r_reg[5]_0 (\group_valid_r_reg[5]_0 ),
        .\group_valid_r_reg[6] (\group_valid_r_reg[6] ),
        .\group_valid_r_reg[6]_0 (\group_valid_r_reg[6]_0 ),
        .\group_valid_r_reg[7] (\group_valid_r_reg[7] ),
        .\group_valid_r_reg[7]_0 (find_max_u1_n_19),
        .\group_valid_r_reg[7]_1 (find_max_u2_n_27),
        .\group_valid_r_reg[7]_2 (find_max_u2_n_29),
        .\group_valid_r_reg[7]_3 (\group_valid_r_reg[7]_0 ),
        .\group_valid_r_reg[7]_4 (\group_valid_r_reg[7]_1 ),
        .o_Max2_carry_0(find_max_u1_n_11),
        .o_Max2_carry_1(find_max_u1_n_13),
        .o_Max2_carry_2(find_max_u1_n_15),
        .o_Max2_carry_3(find_max_u1_n_17),
        .o_Max2_carry_i_5_0(find_max_u1_n_12),
        .o_Max2_carry_i_5__0_0(find_max_u6_n_25),
        .o_Max2_carry_i_6_0(find_max_u1_n_14),
        .o_Max2_carry_i_6__0_0(find_max_u6_n_31),
        .o_Max2_carry_i_7_0(find_max_u1_n_16),
        .o_Max2_carry_i_7__0_0(find_max_u6_n_33),
        .o_Max2_carry_i_8_0(find_max_u1_n_18),
        .o_Max2_carry_i_8__0_0(find_max_u6_n_35));
  find_max_0 find_max_u1
       (.DI({find_max_u6_n_44,find_max_u6_n_45,find_max_u6_n_46,find_max_u6_n_47}),
        .S({find_max_u6_n_36,find_max_u6_n_37,find_max_u6_n_38,find_max_u6_n_39}),
        .\SortOut_OBUF[0]_inst_i_2 (find_max_u6_n_56),
        .\SortOut_OBUF[0]_inst_i_2_0 (find_max_u6_n_59),
        .\SortOut_OBUF[2]_inst_i_2 (find_max_u6_n_52),
        .\SortOut_OBUF[2]_inst_i_2_0 (find_max_u6_n_55),
        .\SortOut_OBUF[4]_inst_i_2 (find_max_u6_n_48),
        .\SortOut_OBUF[4]_inst_i_2_0 (find_max_u6_n_51),
        .\SortOut_OBUF[6]_inst_i_2 (find_max_u6_n_40),
        .\SortOut_OBUF[6]_inst_i_2_0 (find_max_u6_n_43),
        .\group_idx_r[7][1]_i_5 (\group_valid_r_reg[0]_0 ),
        .\group_idx_r[7][1]_i_5_0 (\group_valid_r_reg[1]_0 ),
        .\group_idx_r[7][1]_i_5_1 (find_max_u4_n_11),
        .\group_valid_r_reg[2] (find_max_u1_n_11),
        .\group_valid_r_reg[2]_0 (find_max_u1_n_12),
        .\group_valid_r_reg[2]_1 (find_max_u1_n_13),
        .\group_valid_r_reg[2]_2 (find_max_u1_n_14),
        .\group_valid_r_reg[2]_3 (find_max_u1_n_15),
        .\group_valid_r_reg[2]_4 (find_max_u1_n_16),
        .\group_valid_r_reg[2]_5 (find_max_u1_n_17),
        .\group_valid_r_reg[2]_6 (find_max_u1_n_18),
        .\group_valid_r_reg[2]_7 (find_max_u1_n_19),
        .o_Max2_carry_i_1__0(find_max_u6_n_42),
        .o_Max2_carry_i_1__0_0(find_max_u6_n_41),
        .o_Max2_carry_i_1__0_1(\group_valid_r_reg[2]_0 ),
        .o_Max2_carry_i_1__0_2(\group_valid_r_reg[3]_0 ),
        .o_Max2_carry_i_2__0(find_max_u6_n_49),
        .o_Max2_carry_i_2__0_0(find_max_u6_n_50),
        .o_Max2_carry_i_3__0(find_max_u6_n_53),
        .o_Max2_carry_i_3__0_0(find_max_u6_n_54),
        .o_Max2_carry_i_4__0(find_max_u6_n_57),
        .o_Max2_carry_i_4__0_0(find_max_u6_n_58));
  find_max_1 find_max_u2
       (.CO(find_max_u5_n_11),
        .DI({find_max_u6_n_68,find_max_u6_n_69,find_max_u6_n_70,find_max_u6_n_71}),
        .S({find_max_u6_n_60,find_max_u6_n_61,find_max_u6_n_62,find_max_u6_n_63}),
        .\SortOut_OBUF[0]_inst_i_1 (find_max_u3_n_19),
        .\SortOut_OBUF[1]_inst_i_3_0 (find_max_u6_n_81),
        .\SortOut_OBUF[1]_inst_i_3_1 (find_max_u6_n_82),
        .\SortOut_OBUF[2]_inst_i_1 (find_max_u3_n_17),
        .\SortOut_OBUF[3]_inst_i_3_0 (find_max_u6_n_77),
        .\SortOut_OBUF[3]_inst_i_3_1 (find_max_u6_n_78),
        .\SortOut_OBUF[4]_inst_i_1 (find_max_u3_n_15),
        .\SortOut_OBUF[5]_inst_i_3_0 (find_max_u6_n_73),
        .\SortOut_OBUF[5]_inst_i_3_1 (find_max_u6_n_74),
        .\SortOut_OBUF[6]_inst_i_1 (find_max_u3_n_13),
        .\SortOut_OBUF[7]_inst_i_4_0 (find_max_u6_n_66),
        .\SortOut_OBUF[7]_inst_i_4_1 (find_max_u6_n_65),
        .\SortOut_OBUF[7]_inst_i_4_2 (\group_valid_r_reg[4]_0 ),
        .\SortOut_OBUF[7]_inst_i_4_3 (\group_valid_r_reg[5]_0 ),
        .\group_idx_r[7][1]_i_5 (\group_valid_r_reg[6]_0 ),
        .\group_idx_r[7][1]_i_5_0 (\group_valid_r_reg[7]_0 ),
        .\group_idx_r[7][1]_i_5_1 (find_max_u3_n_11),
        .\group_valid_r_reg[4] (find_max_u2_n_11),
        .\group_valid_r_reg[4]_0 ({find_max_u2_n_12,find_max_u2_n_13,find_max_u2_n_14,find_max_u2_n_15}),
        .\group_valid_r_reg[4]_1 ({find_max_u2_n_16,find_max_u2_n_17,find_max_u2_n_18,find_max_u2_n_19}),
        .\group_valid_r_reg[4]_2 (find_max_u2_n_20),
        .\group_valid_r_reg[4]_3 (find_max_u2_n_21),
        .\group_valid_r_reg[4]_4 (find_max_u2_n_22),
        .\group_valid_r_reg[4]_5 (find_max_u2_n_23),
        .\group_valid_r_reg[4]_6 (find_max_u2_n_24),
        .\group_valid_r_reg[4]_7 (find_max_u2_n_25),
        .\group_valid_r_reg[4]_8 (find_max_u2_n_26),
        .\group_valid_r_reg[4]_9 (find_max_u2_n_29),
        .\group_valid_r_reg[6] (find_max_u2_n_27),
        .\group_valid_r_reg[7] (find_max_u2_n_28),
        .o_Max2_carry_0(find_max_u3_n_12),
        .o_Max2_carry_1(find_max_u3_n_14),
        .o_Max2_carry_2(find_max_u3_n_16),
        .o_Max2_carry_3(find_max_u3_n_18),
        .o_Max2_carry_i_5__3_0(find_max_u6_n_64),
        .o_Max2_carry_i_5__3_1(find_max_u6_n_67),
        .o_Max2_carry_i_6__3_0(find_max_u6_n_72),
        .o_Max2_carry_i_6__3_1(find_max_u6_n_75),
        .o_Max2_carry_i_7__3_0(find_max_u6_n_76),
        .o_Max2_carry_i_7__3_1(find_max_u6_n_79),
        .o_Max2_carry_i_8__3_0(find_max_u6_n_80),
        .o_Max2_carry_i_8__3_1(find_max_u6_n_83));
  find_max_2 find_max_u3
       (.DI({find_max_u6_n_92,find_max_u6_n_93,find_max_u6_n_94,find_max_u6_n_95}),
        .S({find_max_u6_n_84,find_max_u6_n_85,find_max_u6_n_86,find_max_u6_n_87}),
        .\SortOut_OBUF[0]_inst_i_3 (find_max_u6_n_104),
        .\SortOut_OBUF[0]_inst_i_3_0 (find_max_u6_n_107),
        .\SortOut_OBUF[2]_inst_i_3 (find_max_u6_n_100),
        .\SortOut_OBUF[2]_inst_i_3_0 (find_max_u6_n_103),
        .\SortOut_OBUF[4]_inst_i_3 (find_max_u6_n_96),
        .\SortOut_OBUF[4]_inst_i_3_0 (find_max_u6_n_99),
        .\SortOut_OBUF[6]_inst_i_3 (find_max_u6_n_88),
        .\SortOut_OBUF[6]_inst_i_3_0 (find_max_u6_n_91),
        .\group_valid_r_reg[6] (find_max_u3_n_12),
        .\group_valid_r_reg[6]_0 (find_max_u3_n_13),
        .\group_valid_r_reg[6]_1 (find_max_u3_n_14),
        .\group_valid_r_reg[6]_2 (find_max_u3_n_15),
        .\group_valid_r_reg[6]_3 (find_max_u3_n_16),
        .\group_valid_r_reg[6]_4 (find_max_u3_n_17),
        .\group_valid_r_reg[6]_5 (find_max_u3_n_18),
        .\group_valid_r_reg[6]_6 (find_max_u3_n_19),
        .o_Max2_carry_i_1__3(find_max_u6_n_90),
        .o_Max2_carry_i_1__3_0(find_max_u6_n_89),
        .o_Max2_carry_i_1__3_1(\group_valid_r_reg[6]_0 ),
        .o_Max2_carry_i_1__3_2(\group_valid_r_reg[7]_0 ),
        .o_Max2_carry_i_2__3(find_max_u6_n_97),
        .o_Max2_carry_i_2__3_0(find_max_u6_n_98),
        .o_Max2_carry_i_3__3(find_max_u6_n_101),
        .o_Max2_carry_i_3__3_0(find_max_u6_n_102),
        .o_Max2_carry_i_4__3(find_max_u6_n_105),
        .o_Max2_carry_i_4__3_0(find_max_u6_n_106),
        .o_Max2_carry_i_8__5(find_max_u3_n_11));
  find_max_3 find_max_u4
       (.\SortOut_OBUF[7]_inst_i_7 ({find_max_u0_n_47,find_max_u0_n_48,find_max_u0_n_49,find_max_u0_n_50}),
        .\SortOut_OBUF[7]_inst_i_7_0 ({find_max_u0_n_43,find_max_u0_n_44,find_max_u0_n_45,find_max_u0_n_46}),
        .o_Max2_carry_i_8__0(find_max_u4_n_11));
  find_max_4 find_max_u5
       (.CO(find_max_u5_n_11),
        .\SortOut_OBUF[7]_inst_i_10 ({find_max_u2_n_16,find_max_u2_n_17,find_max_u2_n_18,find_max_u2_n_19}),
        .\SortOut_OBUF[7]_inst_i_10_0 ({find_max_u2_n_12,find_max_u2_n_13,find_max_u2_n_14,find_max_u2_n_15}));
  find_max_5 find_max_u6
       (.CO(find_max_u6_n_11),
        .DI({find_max_u6_n_26,find_max_u6_n_27,find_max_u6_n_28,find_max_u6_n_29}),
        .Q(Q),
        .S({find_max_u6_n_12,find_max_u6_n_13,find_max_u6_n_14,find_max_u6_n_15}),
        .\group_idx_r[7][1]_i_7 ({find_max_u0_n_39,find_max_u0_n_40,find_max_u0_n_41,find_max_u0_n_42}),
        .\group_idx_r[7][1]_i_7_0 ({find_max_u0_n_35,find_max_u0_n_36,find_max_u0_n_37,find_max_u0_n_38}),
        .\group_idx_r_reg[0] (\group_idx_r_reg[0] ),
        .\group_idx_r_reg[1] (\group_idx_r_reg[1] ),
        .\group_idx_r_reg[2] (\group_idx_r_reg[2] ),
        .\group_idx_r_reg[3] (\group_idx_r_reg[3] ),
        .\group_idx_r_reg[4] (\group_idx_r_reg[4] ),
        .\group_idx_r_reg[5] (\group_idx_r_reg[5] ),
        .\group_idx_r_reg[6] (\group_idx_r_reg[6] ),
        .\group_idx_r_reg[7] (\group_idx_r_reg[7] ),
        .group_reg_r(group_reg_r),
        .\group_reg_r_reg[1][2][0] (find_max_u6_n_35),
        .\group_reg_r_reg[1][2][1] (find_max_u6_n_34),
        .\group_reg_r_reg[1][2][2] (find_max_u6_n_33),
        .\group_reg_r_reg[1][2][3] (find_max_u6_n_32),
        .\group_reg_r_reg[1][2][4] (find_max_u6_n_31),
        .\group_reg_r_reg[1][2][5] (find_max_u6_n_30),
        .\group_reg_r_reg[1][2][6] (find_max_u6_n_25),
        .\group_reg_r_reg[1][2][7] (find_max_u6_n_24),
        .\group_reg_r_reg[2][2][0] (find_max_u6_n_56),
        .\group_reg_r_reg[2][2][1] (find_max_u6_n_57),
        .\group_reg_r_reg[2][2][2] (find_max_u6_n_52),
        .\group_reg_r_reg[2][2][3] (find_max_u6_n_53),
        .\group_reg_r_reg[2][2][4] (find_max_u6_n_48),
        .\group_reg_r_reg[2][2][5] (find_max_u6_n_49),
        .\group_reg_r_reg[2][2][6] ({find_max_u6_n_36,find_max_u6_n_37,find_max_u6_n_38,find_max_u6_n_39}),
        .\group_reg_r_reg[2][2][6]_0 (find_max_u6_n_40),
        .\group_reg_r_reg[2][2][6]_1 ({find_max_u6_n_44,find_max_u6_n_45,find_max_u6_n_46,find_max_u6_n_47}),
        .\group_reg_r_reg[2][2][7] (find_max_u6_n_42),
        .\group_reg_r_reg[3][2][0] (find_max_u6_n_59),
        .\group_reg_r_reg[3][2][1] (find_max_u6_n_58),
        .\group_reg_r_reg[3][2][2] (find_max_u6_n_55),
        .\group_reg_r_reg[3][2][3] (find_max_u6_n_54),
        .\group_reg_r_reg[3][2][4] (find_max_u6_n_51),
        .\group_reg_r_reg[3][2][5] (find_max_u6_n_50),
        .\group_reg_r_reg[3][2][6] (find_max_u6_n_43),
        .\group_reg_r_reg[3][2][7] (find_max_u6_n_41),
        .\group_reg_r_reg[4][2][0] (find_max_u6_n_80),
        .\group_reg_r_reg[4][2][1] (find_max_u6_n_81),
        .\group_reg_r_reg[4][2][2] (find_max_u6_n_76),
        .\group_reg_r_reg[4][2][3] (find_max_u6_n_77),
        .\group_reg_r_reg[4][2][4] (find_max_u6_n_72),
        .\group_reg_r_reg[4][2][5] (find_max_u6_n_73),
        .\group_reg_r_reg[4][2][6] ({find_max_u6_n_60,find_max_u6_n_61,find_max_u6_n_62,find_max_u6_n_63}),
        .\group_reg_r_reg[4][2][6]_0 (find_max_u6_n_64),
        .\group_reg_r_reg[4][2][6]_1 ({find_max_u6_n_68,find_max_u6_n_69,find_max_u6_n_70,find_max_u6_n_71}),
        .\group_reg_r_reg[4][2][7] (find_max_u6_n_66),
        .\group_reg_r_reg[5][2][0] (find_max_u6_n_83),
        .\group_reg_r_reg[5][2][1] (find_max_u6_n_82),
        .\group_reg_r_reg[5][2][2] (find_max_u6_n_79),
        .\group_reg_r_reg[5][2][3] (find_max_u6_n_78),
        .\group_reg_r_reg[5][2][4] (find_max_u6_n_75),
        .\group_reg_r_reg[5][2][5] (find_max_u6_n_74),
        .\group_reg_r_reg[5][2][6] (find_max_u6_n_67),
        .\group_reg_r_reg[5][2][7] (find_max_u6_n_65),
        .\group_reg_r_reg[6][2][0] (find_max_u6_n_104),
        .\group_reg_r_reg[6][2][1] (find_max_u6_n_105),
        .\group_reg_r_reg[6][2][2] (find_max_u6_n_100),
        .\group_reg_r_reg[6][2][3] (find_max_u6_n_101),
        .\group_reg_r_reg[6][2][4] (find_max_u6_n_96),
        .\group_reg_r_reg[6][2][5] (find_max_u6_n_97),
        .\group_reg_r_reg[6][2][6] ({find_max_u6_n_84,find_max_u6_n_85,find_max_u6_n_86,find_max_u6_n_87}),
        .\group_reg_r_reg[6][2][6]_0 (find_max_u6_n_88),
        .\group_reg_r_reg[6][2][6]_1 ({find_max_u6_n_92,find_max_u6_n_93,find_max_u6_n_94,find_max_u6_n_95}),
        .\group_reg_r_reg[6][2][7] (find_max_u6_n_90),
        .\group_reg_r_reg[7][2][0] (find_max_u6_n_107),
        .\group_reg_r_reg[7][2][1] (find_max_u6_n_106),
        .\group_reg_r_reg[7][2][2] (find_max_u6_n_103),
        .\group_reg_r_reg[7][2][3] (find_max_u6_n_102),
        .\group_reg_r_reg[7][2][4] (find_max_u6_n_99),
        .\group_reg_r_reg[7][2][5] (find_max_u6_n_98),
        .\group_reg_r_reg[7][2][6] (find_max_u6_n_91),
        .\group_reg_r_reg[7][2][7] (find_max_u6_n_89),
        .o_Max2_carry_i_10(o_Max2_carry_i_10),
        .o_Max2_carry_i_10_0(o_Max2_carry_i_10_0),
        .o_Max2_carry_i_10_1(o_Max2_carry_i_10_1),
        .o_Max2_carry_i_10_2(o_Max2_carry_i_10_2),
        .o_Max2_carry_i_10_3(o_Max2_carry_i_10_3),
        .o_Max2_carry_i_10_4(o_Max2_carry_i_10_4),
        .o_Max2_carry_i_10_5(o_Max2_carry_i_10_5),
        .o_Max2_carry_i_10__2(o_Max2_carry_i_10__2),
        .o_Max2_carry_i_10__2_0(o_Max2_carry_i_10__2_0),
        .o_Max2_carry_i_10__2_1(o_Max2_carry_i_10__2_1),
        .o_Max2_carry_i_10__2_2(o_Max2_carry_i_10__2_2),
        .o_Max2_carry_i_10__2_3(o_Max2_carry_i_10__2_3),
        .o_Max2_carry_i_10__2_4(o_Max2_carry_i_10__2_4),
        .o_Max2_carry_i_10__2_5(o_Max2_carry_i_10__2_5),
        .o_Max2_carry_i_10__2_6(o_Max2_carry_i_10__2_6),
        .o_Max2_carry_i_11__0(o_Max2_carry_i_11__0),
        .o_Max2_carry_i_11__0_0(o_Max2_carry_i_11__0_0),
        .o_Max2_carry_i_11__0_1(o_Max2_carry_i_11__0_1),
        .o_Max2_carry_i_11__0_2(o_Max2_carry_i_11__0_2),
        .o_Max2_carry_i_11__0_3(o_Max2_carry_i_11__0_3),
        .o_Max2_carry_i_11__0_4(o_Max2_carry_i_11__0_4),
        .o_Max2_carry_i_11__0_5(o_Max2_carry_i_11__0_5),
        .o_Max2_carry_i_11__0_6(o_Max2_carry_i_11__0_6),
        .o_Max2_carry_i_11__3(o_Max2_carry_i_11__3),
        .o_Max2_carry_i_11__3_0(o_Max2_carry_i_11__3_0),
        .o_Max2_carry_i_11__3_1(o_Max2_carry_i_11__3_1),
        .o_Max2_carry_i_11__3_2(o_Max2_carry_i_11__3_2),
        .o_Max2_carry_i_11__3_3(o_Max2_carry_i_11__3_3),
        .o_Max2_carry_i_11__3_4(o_Max2_carry_i_11__3_4),
        .o_Max2_carry_i_11__3_5(o_Max2_carry_i_11__3_5),
        .o_Max2_carry_i_11__3_6(o_Max2_carry_i_11__3_6));
endmodule

module find_max
   (\group_idx_r_reg[7]_1_sp_1 ,
    \group_idx_r_reg[7]_0_sp_1 ,
    \group_idx_r_reg[6]_1_sp_1 ,
    \group_idx_r_reg[6]_0_sp_1 ,
    \group_idx_r_reg[5]_1_sp_1 ,
    \group_idx_r_reg[5]_0_sp_1 ,
    \group_idx_r_reg[4]_1_sp_1 ,
    \group_idx_r_reg[4]_0_sp_1 ,
    \group_idx_r_reg[3]_1_sp_1 ,
    \group_idx_r_reg[3]_0_sp_1 ,
    \group_idx_r_reg[2]_1_sp_1 ,
    \group_idx_r_reg[2]_0_sp_1 ,
    \group_idx_r_reg[0]_1_sp_1 ,
    \group_idx_r_reg[0]_0_sp_1 ,
    \group_idx_r_reg[1]_1_sp_1 ,
    \group_idx_r_reg[1]_0_sp_1 ,
    SortOut_OBUF,
    \SortOut_OBUF[6]_inst_i_3 ,
    \SortOut_OBUF[6]_inst_i_3_0 ,
    \group_valid_r_reg[0] ,
    \group_valid_r_reg[0]_0 ,
    \group_valid_r_reg[0]_1 ,
    \group_valid_r_reg[1] ,
    \group_valid_r_reg[2] ,
    \group_valid_r_reg[3] ,
    \group_valid_r_reg[4] ,
    \group_valid_r_reg[5] ,
    \group_valid_r_reg[6] ,
    \group_valid_r_reg[7] ,
    DI,
    S,
    \group_idx_r_reg[7] ,
    \group_idx_r_reg[6] ,
    \group_idx_r_reg[5] ,
    \group_idx_r_reg[4] ,
    \group_idx_r_reg[3] ,
    \group_idx_r_reg[2] ,
    \group_idx_r_reg[0] ,
    \group_idx_r_reg[1] ,
    \SortOut[7] ,
    \SortOut[6] ,
    o_Max2_carry_0,
    o_Max2_carry_i_5_0,
    group_reg_r,
    \SortOut_OBUF[7]_inst_i_2_0 ,
    \group_valid_r_reg[0]_2 ,
    \group_valid_r_reg[1]_0 ,
    o_Max2_carry_i_5__0_0,
    \SortOut[5] ,
    \SortOut[4] ,
    o_Max2_carry_1,
    o_Max2_carry_i_6_0,
    \SortOut_OBUF[5]_inst_i_2_0 ,
    o_Max2_carry_i_6__0_0,
    \SortOut[3] ,
    \SortOut[2] ,
    o_Max2_carry_2,
    o_Max2_carry_i_7_0,
    \SortOut_OBUF[3]_inst_i_2_0 ,
    o_Max2_carry_i_7__0_0,
    \SortOut[1] ,
    \SortOut[0] ,
    o_Max2_carry_3,
    o_Max2_carry_i_8_0,
    \SortOut_OBUF[1]_inst_i_2_0 ,
    o_Max2_carry_i_8__0_0,
    \group_valid_r_reg[7]_0 ,
    \group_valid_r_reg[7]_1 ,
    \group_valid_r_reg[7]_2 ,
    \group_valid_r_reg[3]_0 ,
    CO,
    \group_valid_r_reg[6]_0 ,
    \group_valid_r_reg[7]_3 ,
    \group_valid_r_reg[4]_0 ,
    \group_valid_r_reg[5]_0 ,
    \group_valid_r_reg[2]_0 ,
    \group_valid_r_reg[3]_1 ,
    \SortOut_OBUF[7]_inst_i_2_1 ,
    \group_valid_r_reg[7]_4 );
  output \group_idx_r_reg[7]_1_sp_1 ;
  output \group_idx_r_reg[7]_0_sp_1 ;
  output \group_idx_r_reg[6]_1_sp_1 ;
  output \group_idx_r_reg[6]_0_sp_1 ;
  output \group_idx_r_reg[5]_1_sp_1 ;
  output \group_idx_r_reg[5]_0_sp_1 ;
  output \group_idx_r_reg[4]_1_sp_1 ;
  output \group_idx_r_reg[4]_0_sp_1 ;
  output \group_idx_r_reg[3]_1_sp_1 ;
  output \group_idx_r_reg[3]_0_sp_1 ;
  output \group_idx_r_reg[2]_1_sp_1 ;
  output \group_idx_r_reg[2]_0_sp_1 ;
  output \group_idx_r_reg[0]_1_sp_1 ;
  output \group_idx_r_reg[0]_0_sp_1 ;
  output \group_idx_r_reg[1]_1_sp_1 ;
  output \group_idx_r_reg[1]_0_sp_1 ;
  output [7:0]SortOut_OBUF;
  output [3:0]\SortOut_OBUF[6]_inst_i_3 ;
  output [3:0]\SortOut_OBUF[6]_inst_i_3_0 ;
  output [3:0]\group_valid_r_reg[0] ;
  output [3:0]\group_valid_r_reg[0]_0 ;
  output \group_valid_r_reg[0]_1 ;
  output \group_valid_r_reg[1] ;
  output \group_valid_r_reg[2] ;
  output \group_valid_r_reg[3] ;
  output \group_valid_r_reg[4] ;
  output \group_valid_r_reg[5] ;
  output \group_valid_r_reg[6] ;
  output \group_valid_r_reg[7] ;
  input [3:0]DI;
  input [3:0]S;
  input [1:0]\group_idx_r_reg[7] ;
  input [1:0]\group_idx_r_reg[6] ;
  input [1:0]\group_idx_r_reg[5] ;
  input [1:0]\group_idx_r_reg[4] ;
  input [1:0]\group_idx_r_reg[3] ;
  input [1:0]\group_idx_r_reg[2] ;
  input [1:0]\group_idx_r_reg[0] ;
  input [1:0]\group_idx_r_reg[1] ;
  input \SortOut[7] ;
  input \SortOut[6] ;
  input o_Max2_carry_0;
  input o_Max2_carry_i_5_0;
  input [7:0]group_reg_r;
  input \SortOut_OBUF[7]_inst_i_2_0 ;
  input \group_valid_r_reg[0]_2 ;
  input \group_valid_r_reg[1]_0 ;
  input o_Max2_carry_i_5__0_0;
  input \SortOut[5] ;
  input \SortOut[4] ;
  input o_Max2_carry_1;
  input o_Max2_carry_i_6_0;
  input \SortOut_OBUF[5]_inst_i_2_0 ;
  input o_Max2_carry_i_6__0_0;
  input \SortOut[3] ;
  input \SortOut[2] ;
  input o_Max2_carry_2;
  input o_Max2_carry_i_7_0;
  input \SortOut_OBUF[3]_inst_i_2_0 ;
  input o_Max2_carry_i_7__0_0;
  input \SortOut[1] ;
  input \SortOut[0] ;
  input o_Max2_carry_3;
  input o_Max2_carry_i_8_0;
  input \SortOut_OBUF[1]_inst_i_2_0 ;
  input o_Max2_carry_i_8__0_0;
  input \group_valid_r_reg[7]_0 ;
  input \group_valid_r_reg[7]_1 ;
  input \group_valid_r_reg[7]_2 ;
  input \group_valid_r_reg[3]_0 ;
  input [0:0]CO;
  input \group_valid_r_reg[6]_0 ;
  input \group_valid_r_reg[7]_3 ;
  input \group_valid_r_reg[4]_0 ;
  input \group_valid_r_reg[5]_0 ;
  input \group_valid_r_reg[2]_0 ;
  input \group_valid_r_reg[3]_1 ;
  input [0:0]\SortOut_OBUF[7]_inst_i_2_1 ;
  input [2:0]\group_valid_r_reg[7]_4 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [2:0]Max_idx;
  wire [3:0]S;
  wire \SortOut[0] ;
  wire \SortOut[1] ;
  wire \SortOut[2] ;
  wire \SortOut[3] ;
  wire \SortOut[4] ;
  wire \SortOut[5] ;
  wire \SortOut[6] ;
  wire \SortOut[7] ;
  wire [7:0]SortOut_OBUF;
  wire \SortOut_OBUF[0]_inst_i_2_n_11 ;
  wire \SortOut_OBUF[1]_inst_i_2_0 ;
  wire \SortOut_OBUF[1]_inst_i_2_n_11 ;
  wire \SortOut_OBUF[2]_inst_i_2_n_11 ;
  wire \SortOut_OBUF[3]_inst_i_2_0 ;
  wire \SortOut_OBUF[3]_inst_i_2_n_11 ;
  wire \SortOut_OBUF[4]_inst_i_2_n_11 ;
  wire \SortOut_OBUF[5]_inst_i_2_0 ;
  wire \SortOut_OBUF[5]_inst_i_2_n_11 ;
  wire \SortOut_OBUF[6]_inst_i_2_n_11 ;
  wire [3:0]\SortOut_OBUF[6]_inst_i_3 ;
  wire [3:0]\SortOut_OBUF[6]_inst_i_3_0 ;
  wire \SortOut_OBUF[7]_inst_i_2_0 ;
  wire [0:0]\SortOut_OBUF[7]_inst_i_2_1 ;
  wire \SortOut_OBUF[7]_inst_i_2_n_11 ;
  wire \SortOut_OBUF[7]_inst_i_3_n_11 ;
  wire \SortOut_OBUF[7]_inst_i_5_n_11 ;
  wire \SortOut_OBUF[7]_inst_i_6_n_11 ;
  wire \SortOut_OBUF[7]_inst_i_7_n_11 ;
  wire \group_idx_r[0][1]_i_2_n_11 ;
  wire \group_idx_r[3][1]_i_2_n_11 ;
  wire \group_idx_r[5][1]_i_2_n_11 ;
  wire \group_idx_r[7][1]_i_10_n_11 ;
  wire \group_idx_r[7][1]_i_11_n_11 ;
  wire \group_idx_r[7][1]_i_12_n_11 ;
  wire \group_idx_r[7][1]_i_13_n_11 ;
  wire \group_idx_r[7][1]_i_14_n_11 ;
  wire \group_idx_r[7][1]_i_15_n_11 ;
  wire \group_idx_r[7][1]_i_16_n_11 ;
  wire \group_idx_r[7][1]_i_17_n_11 ;
  wire \group_idx_r[7][1]_i_18_n_11 ;
  wire \group_idx_r[7][1]_i_2_n_11 ;
  wire \group_idx_r[7][1]_i_6_n_11 ;
  wire [1:0]\group_idx_r_reg[0] ;
  wire \group_idx_r_reg[0]_0_sn_1 ;
  wire \group_idx_r_reg[0]_1_sn_1 ;
  wire [1:0]\group_idx_r_reg[1] ;
  wire \group_idx_r_reg[1]_0_sn_1 ;
  wire \group_idx_r_reg[1]_1_sn_1 ;
  wire [1:0]\group_idx_r_reg[2] ;
  wire \group_idx_r_reg[2]_0_sn_1 ;
  wire \group_idx_r_reg[2]_1_sn_1 ;
  wire [1:0]\group_idx_r_reg[3] ;
  wire \group_idx_r_reg[3]_0_sn_1 ;
  wire \group_idx_r_reg[3]_1_sn_1 ;
  wire [1:0]\group_idx_r_reg[4] ;
  wire \group_idx_r_reg[4]_0_sn_1 ;
  wire \group_idx_r_reg[4]_1_sn_1 ;
  wire [1:0]\group_idx_r_reg[5] ;
  wire \group_idx_r_reg[5]_0_sn_1 ;
  wire \group_idx_r_reg[5]_1_sn_1 ;
  wire [1:0]\group_idx_r_reg[6] ;
  wire \group_idx_r_reg[6]_0_sn_1 ;
  wire \group_idx_r_reg[6]_1_sn_1 ;
  wire [1:0]\group_idx_r_reg[7] ;
  wire \group_idx_r_reg[7]_0_sn_1 ;
  wire \group_idx_r_reg[7]_1_sn_1 ;
  wire [1:0]group_idx_w;
  wire [7:0]group_reg_r;
  wire [3:0]\group_valid_r_reg[0] ;
  wire [3:0]\group_valid_r_reg[0]_0 ;
  wire \group_valid_r_reg[0]_1 ;
  wire \group_valid_r_reg[0]_2 ;
  wire \group_valid_r_reg[1] ;
  wire \group_valid_r_reg[1]_0 ;
  wire \group_valid_r_reg[2] ;
  wire \group_valid_r_reg[2]_0 ;
  wire \group_valid_r_reg[3] ;
  wire \group_valid_r_reg[3]_0 ;
  wire \group_valid_r_reg[3]_1 ;
  wire \group_valid_r_reg[4] ;
  wire \group_valid_r_reg[4]_0 ;
  wire \group_valid_r_reg[5] ;
  wire \group_valid_r_reg[5]_0 ;
  wire \group_valid_r_reg[6] ;
  wire \group_valid_r_reg[6]_0 ;
  wire \group_valid_r_reg[7] ;
  wire \group_valid_r_reg[7]_0 ;
  wire \group_valid_r_reg[7]_1 ;
  wire \group_valid_r_reg[7]_2 ;
  wire \group_valid_r_reg[7]_3 ;
  wire [2:0]\group_valid_r_reg[7]_4 ;
  wire max_valid1;
  wire max_valid4;
  wire o_Max2;
  wire o_Max2_carry_0;
  wire o_Max2_carry_1;
  wire o_Max2_carry_2;
  wire o_Max2_carry_3;
  wire o_Max2_carry_i_10_n_11;
  wire o_Max2_carry_i_13_n_11;
  wire o_Max2_carry_i_15_n_11;
  wire o_Max2_carry_i_17_n_11;
  wire o_Max2_carry_i_19_n_11;
  wire o_Max2_carry_i_21_n_11;
  wire o_Max2_carry_i_23_n_11;
  wire o_Max2_carry_i_5_0;
  wire o_Max2_carry_i_5__0_0;
  wire o_Max2_carry_i_6_0;
  wire o_Max2_carry_i_6__0_0;
  wire o_Max2_carry_i_7_0;
  wire o_Max2_carry_i_7__0_0;
  wire o_Max2_carry_i_8_0;
  wire o_Max2_carry_i_8__0_0;
  wire o_Max2_carry_i_9_n_11;
  wire o_Max2_carry_n_12;
  wire o_Max2_carry_n_13;
  wire o_Max2_carry_n_14;
  wire [3:0]NLW_o_Max2_carry_O_UNCONNECTED;

  assign \group_idx_r_reg[0]_0_sp_1  = \group_idx_r_reg[0]_0_sn_1 ;
  assign \group_idx_r_reg[0]_1_sp_1  = \group_idx_r_reg[0]_1_sn_1 ;
  assign \group_idx_r_reg[1]_0_sp_1  = \group_idx_r_reg[1]_0_sn_1 ;
  assign \group_idx_r_reg[1]_1_sp_1  = \group_idx_r_reg[1]_1_sn_1 ;
  assign \group_idx_r_reg[2]_0_sp_1  = \group_idx_r_reg[2]_0_sn_1 ;
  assign \group_idx_r_reg[2]_1_sp_1  = \group_idx_r_reg[2]_1_sn_1 ;
  assign \group_idx_r_reg[3]_0_sp_1  = \group_idx_r_reg[3]_0_sn_1 ;
  assign \group_idx_r_reg[3]_1_sp_1  = \group_idx_r_reg[3]_1_sn_1 ;
  assign \group_idx_r_reg[4]_0_sp_1  = \group_idx_r_reg[4]_0_sn_1 ;
  assign \group_idx_r_reg[4]_1_sp_1  = \group_idx_r_reg[4]_1_sn_1 ;
  assign \group_idx_r_reg[5]_0_sp_1  = \group_idx_r_reg[5]_0_sn_1 ;
  assign \group_idx_r_reg[5]_1_sp_1  = \group_idx_r_reg[5]_1_sn_1 ;
  assign \group_idx_r_reg[6]_0_sp_1  = \group_idx_r_reg[6]_0_sn_1 ;
  assign \group_idx_r_reg[6]_1_sp_1  = \group_idx_r_reg[6]_1_sn_1 ;
  assign \group_idx_r_reg[7]_0_sp_1  = \group_idx_r_reg[7]_0_sn_1 ;
  assign \group_idx_r_reg[7]_1_sp_1  = \group_idx_r_reg[7]_1_sn_1 ;
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[0]_inst_i_1 
       (.I0(\SortOut_OBUF[0]_inst_i_2_n_11 ),
        .I1(\SortOut_OBUF[7]_inst_i_3_n_11 ),
        .I2(\SortOut[0] ),
        .I3(\SortOut_OBUF[7]_inst_i_5_n_11 ),
        .O(SortOut_OBUF[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[0]_inst_i_2 
       (.I0(o_Max2_carry_i_21_n_11),
        .I1(\SortOut_OBUF[7]_inst_i_6_n_11 ),
        .I2(o_Max2_carry_i_8_0),
        .I3(\SortOut_OBUF[7]_inst_i_7_n_11 ),
        .O(\SortOut_OBUF[0]_inst_i_2_n_11 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[1]_inst_i_1 
       (.I0(\SortOut_OBUF[1]_inst_i_2_n_11 ),
        .I1(\SortOut_OBUF[7]_inst_i_3_n_11 ),
        .I2(\SortOut[1] ),
        .I3(\SortOut_OBUF[7]_inst_i_5_n_11 ),
        .O(SortOut_OBUF[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[1]_inst_i_2 
       (.I0(o_Max2_carry_i_23_n_11),
        .I1(\SortOut_OBUF[7]_inst_i_6_n_11 ),
        .I2(o_Max2_carry_3),
        .I3(\SortOut_OBUF[7]_inst_i_7_n_11 ),
        .O(\SortOut_OBUF[1]_inst_i_2_n_11 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[2]_inst_i_1 
       (.I0(\SortOut_OBUF[2]_inst_i_2_n_11 ),
        .I1(\SortOut_OBUF[7]_inst_i_3_n_11 ),
        .I2(\SortOut[2] ),
        .I3(\SortOut_OBUF[7]_inst_i_5_n_11 ),
        .O(SortOut_OBUF[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[2]_inst_i_2 
       (.I0(o_Max2_carry_i_17_n_11),
        .I1(\SortOut_OBUF[7]_inst_i_6_n_11 ),
        .I2(o_Max2_carry_i_7_0),
        .I3(\SortOut_OBUF[7]_inst_i_7_n_11 ),
        .O(\SortOut_OBUF[2]_inst_i_2_n_11 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[3]_inst_i_1 
       (.I0(\SortOut_OBUF[3]_inst_i_2_n_11 ),
        .I1(\SortOut_OBUF[7]_inst_i_3_n_11 ),
        .I2(\SortOut[3] ),
        .I3(\SortOut_OBUF[7]_inst_i_5_n_11 ),
        .O(SortOut_OBUF[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[3]_inst_i_2 
       (.I0(o_Max2_carry_i_19_n_11),
        .I1(\SortOut_OBUF[7]_inst_i_6_n_11 ),
        .I2(o_Max2_carry_2),
        .I3(\SortOut_OBUF[7]_inst_i_7_n_11 ),
        .O(\SortOut_OBUF[3]_inst_i_2_n_11 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[4]_inst_i_1 
       (.I0(\SortOut_OBUF[4]_inst_i_2_n_11 ),
        .I1(\SortOut_OBUF[7]_inst_i_3_n_11 ),
        .I2(\SortOut[4] ),
        .I3(\SortOut_OBUF[7]_inst_i_5_n_11 ),
        .O(SortOut_OBUF[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[4]_inst_i_2 
       (.I0(o_Max2_carry_i_13_n_11),
        .I1(\SortOut_OBUF[7]_inst_i_6_n_11 ),
        .I2(o_Max2_carry_i_6_0),
        .I3(\SortOut_OBUF[7]_inst_i_7_n_11 ),
        .O(\SortOut_OBUF[4]_inst_i_2_n_11 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[5]_inst_i_1 
       (.I0(\SortOut_OBUF[5]_inst_i_2_n_11 ),
        .I1(\SortOut_OBUF[7]_inst_i_3_n_11 ),
        .I2(\SortOut[5] ),
        .I3(\SortOut_OBUF[7]_inst_i_5_n_11 ),
        .O(SortOut_OBUF[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[5]_inst_i_2 
       (.I0(o_Max2_carry_i_15_n_11),
        .I1(\SortOut_OBUF[7]_inst_i_6_n_11 ),
        .I2(o_Max2_carry_1),
        .I3(\SortOut_OBUF[7]_inst_i_7_n_11 ),
        .O(\SortOut_OBUF[5]_inst_i_2_n_11 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[6]_inst_i_1 
       (.I0(\SortOut_OBUF[6]_inst_i_2_n_11 ),
        .I1(\SortOut_OBUF[7]_inst_i_3_n_11 ),
        .I2(\SortOut[6] ),
        .I3(\SortOut_OBUF[7]_inst_i_5_n_11 ),
        .O(SortOut_OBUF[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[6]_inst_i_2 
       (.I0(o_Max2_carry_i_9_n_11),
        .I1(\SortOut_OBUF[7]_inst_i_6_n_11 ),
        .I2(o_Max2_carry_i_5_0),
        .I3(\SortOut_OBUF[7]_inst_i_7_n_11 ),
        .O(\SortOut_OBUF[6]_inst_i_2_n_11 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[7]_inst_i_1 
       (.I0(\SortOut_OBUF[7]_inst_i_2_n_11 ),
        .I1(\SortOut_OBUF[7]_inst_i_3_n_11 ),
        .I2(\SortOut[7] ),
        .I3(\SortOut_OBUF[7]_inst_i_5_n_11 ),
        .O(SortOut_OBUF[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[7]_inst_i_2 
       (.I0(o_Max2_carry_i_10_n_11),
        .I1(\SortOut_OBUF[7]_inst_i_6_n_11 ),
        .I2(o_Max2_carry_0),
        .I3(\SortOut_OBUF[7]_inst_i_7_n_11 ),
        .O(\SortOut_OBUF[7]_inst_i_2_n_11 ));
  LUT6 #(
    .INIT(64'hAAAAAAAB00000000)) 
    \SortOut_OBUF[7]_inst_i_3 
       (.I0(CO),
        .I1(\group_valid_r_reg[6]_0 ),
        .I2(\group_valid_r_reg[7]_3 ),
        .I3(\group_valid_r_reg[4]_0 ),
        .I4(\group_valid_r_reg[5]_0 ),
        .I5(max_valid4),
        .O(\SortOut_OBUF[7]_inst_i_3_n_11 ));
  LUT6 #(
    .INIT(64'h55555554FFFFFFFC)) 
    \SortOut_OBUF[7]_inst_i_5 
       (.I0(CO),
        .I1(\group_valid_r_reg[6]_0 ),
        .I2(\group_valid_r_reg[7]_3 ),
        .I3(\group_valid_r_reg[4]_0 ),
        .I4(\group_valid_r_reg[5]_0 ),
        .I5(max_valid4),
        .O(\SortOut_OBUF[7]_inst_i_5_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hA8A8A8FC)) 
    \SortOut_OBUF[7]_inst_i_6 
       (.I0(\SortOut_OBUF[7]_inst_i_2_1 ),
        .I1(\group_valid_r_reg[1]_0 ),
        .I2(\group_valid_r_reg[0]_2 ),
        .I3(\group_valid_r_reg[3]_1 ),
        .I4(\group_valid_r_reg[2]_0 ),
        .O(\SortOut_OBUF[7]_inst_i_6_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h57575700)) 
    \SortOut_OBUF[7]_inst_i_7 
       (.I0(\SortOut_OBUF[7]_inst_i_2_1 ),
        .I1(\group_valid_r_reg[1]_0 ),
        .I2(\group_valid_r_reg[0]_2 ),
        .I3(\group_valid_r_reg[3]_1 ),
        .I4(\group_valid_r_reg[2]_0 ),
        .O(\SortOut_OBUF[7]_inst_i_7_n_11 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SortOut_OBUF[7]_inst_i_8 
       (.I0(\group_valid_r_reg[2]_0 ),
        .I1(\group_valid_r_reg[3]_1 ),
        .I2(\group_valid_r_reg[0]_2 ),
        .I3(\group_valid_r_reg[1]_0 ),
        .O(max_valid4));
  LUT6 #(
    .INIT(64'hFFDF0000000A0000)) 
    \group_idx_r[0][0]_i_1 
       (.I0(\group_idx_r[0][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_idx_r_reg[0] [0]),
        .O(\group_idx_r_reg[0]_0_sn_1 ));
  LUT6 #(
    .INIT(64'hFFFD000000280000)) 
    \group_idx_r[0][1]_i_1 
       (.I0(\group_idx_r[0][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_idx_r_reg[0] [1]),
        .O(\group_idx_r_reg[0]_1_sn_1 ));
  LUT6 #(
    .INIT(64'h0015151515151515)) 
    \group_idx_r[0][1]_i_2 
       (.I0(Max_idx[2]),
        .I1(\group_valid_r_reg[3]_0 ),
        .I2(\SortOut_OBUF[7]_inst_i_5_n_11 ),
        .I3(max_valid1),
        .I4(\SortOut_OBUF[7]_inst_i_7_n_11 ),
        .I5(\SortOut_OBUF[7]_inst_i_3_n_11 ),
        .O(\group_idx_r[0][1]_i_2_n_11 ));
  LUT6 #(
    .INIT(64'hDFFF00000A000000)) 
    \group_idx_r[1][0]_i_1 
       (.I0(\group_idx_r[0][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_idx_r_reg[1] [0]),
        .O(\group_idx_r_reg[1]_0_sn_1 ));
  LUT6 #(
    .INIT(64'hFDFF000028000000)) 
    \group_idx_r[1][1]_i_1 
       (.I0(\group_idx_r[0][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_idx_r_reg[1] [1]),
        .O(\group_idx_r_reg[1]_1_sn_1 ));
  LUT6 #(
    .INIT(64'hFFDF0000000A0000)) 
    \group_idx_r[2][0]_i_1 
       (.I0(\group_idx_r[3][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_idx_r_reg[2] [0]),
        .O(\group_idx_r_reg[2]_0_sn_1 ));
  LUT6 #(
    .INIT(64'hFFFD000000280000)) 
    \group_idx_r[2][1]_i_1 
       (.I0(\group_idx_r[3][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_idx_r_reg[2] [1]),
        .O(\group_idx_r_reg[2]_1_sn_1 ));
  LUT6 #(
    .INIT(64'hDFFF00000A000000)) 
    \group_idx_r[3][0]_i_1 
       (.I0(\group_idx_r[3][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_idx_r_reg[3] [0]),
        .O(\group_idx_r_reg[3]_0_sn_1 ));
  LUT6 #(
    .INIT(64'hFDFF000028000000)) 
    \group_idx_r[3][1]_i_1 
       (.I0(\group_idx_r[3][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_idx_r_reg[3] [1]),
        .O(\group_idx_r_reg[3]_1_sn_1 ));
  LUT6 #(
    .INIT(64'h00000000F8888888)) 
    \group_idx_r[3][1]_i_2 
       (.I0(\group_valid_r_reg[3]_0 ),
        .I1(\SortOut_OBUF[7]_inst_i_5_n_11 ),
        .I2(max_valid1),
        .I3(\SortOut_OBUF[7]_inst_i_7_n_11 ),
        .I4(\SortOut_OBUF[7]_inst_i_3_n_11 ),
        .I5(Max_idx[2]),
        .O(\group_idx_r[3][1]_i_2_n_11 ));
  LUT6 #(
    .INIT(64'hFFDF0000000A0000)) 
    \group_idx_r[4][0]_i_1 
       (.I0(\group_idx_r[5][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_idx_r_reg[4] [0]),
        .O(\group_idx_r_reg[4]_0_sn_1 ));
  LUT6 #(
    .INIT(64'hFFFD000000280000)) 
    \group_idx_r[4][1]_i_1 
       (.I0(\group_idx_r[5][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_idx_r_reg[4] [1]),
        .O(\group_idx_r_reg[4]_1_sn_1 ));
  LUT6 #(
    .INIT(64'hDFFF00000A000000)) 
    \group_idx_r[5][0]_i_1 
       (.I0(\group_idx_r[5][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_idx_r_reg[5] [0]),
        .O(\group_idx_r_reg[5]_0_sn_1 ));
  LUT6 #(
    .INIT(64'hFDFF000028000000)) 
    \group_idx_r[5][1]_i_1 
       (.I0(\group_idx_r[5][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_idx_r_reg[5] [1]),
        .O(\group_idx_r_reg[5]_1_sn_1 ));
  LUT6 #(
    .INIT(64'h002A2A2A2A2A2A2A)) 
    \group_idx_r[5][1]_i_2 
       (.I0(Max_idx[2]),
        .I1(\group_valid_r_reg[3]_0 ),
        .I2(\SortOut_OBUF[7]_inst_i_5_n_11 ),
        .I3(max_valid1),
        .I4(\SortOut_OBUF[7]_inst_i_7_n_11 ),
        .I5(\SortOut_OBUF[7]_inst_i_3_n_11 ),
        .O(\group_idx_r[5][1]_i_2_n_11 ));
  LUT6 #(
    .INIT(64'hFFDF0000000A0000)) 
    \group_idx_r[6][0]_i_1 
       (.I0(\group_idx_r[7][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_idx_r_reg[6] [0]),
        .O(\group_idx_r_reg[6]_0_sn_1 ));
  LUT6 #(
    .INIT(64'hFFFD000000280000)) 
    \group_idx_r[6][1]_i_1 
       (.I0(\group_idx_r[7][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_idx_r_reg[6] [1]),
        .O(\group_idx_r_reg[6]_1_sn_1 ));
  LUT6 #(
    .INIT(64'hDFFF00000A000000)) 
    \group_idx_r[7][0]_i_1 
       (.I0(\group_idx_r[7][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_idx_r_reg[7] [0]),
        .O(\group_idx_r_reg[7]_0_sn_1 ));
  LUT6 #(
    .INIT(64'hFDFF000028000000)) 
    \group_idx_r[7][1]_i_1 
       (.I0(\group_idx_r[7][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_idx_r_reg[7] [1]),
        .O(\group_idx_r_reg[7]_1_sn_1 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \group_idx_r[7][1]_i_10 
       (.I0(\group_idx_r[5][1]_i_2_n_11 ),
        .I1(\group_idx_r_reg[5] [1]),
        .I2(Max_idx[0]),
        .I3(\group_idx_r[0][1]_i_2_n_11 ),
        .I4(\group_idx_r_reg[1] [1]),
        .O(\group_idx_r[7][1]_i_10_n_11 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \group_idx_r[7][1]_i_11 
       (.I0(\group_idx_r[7][1]_i_2_n_11 ),
        .I1(\group_idx_r_reg[7] [1]),
        .I2(Max_idx[0]),
        .I3(\group_idx_r[3][1]_i_2_n_11 ),
        .I4(\group_idx_r_reg[3] [1]),
        .O(\group_idx_r[7][1]_i_11_n_11 ));
  LUT5 #(
    .INIT(32'h0F080808)) 
    \group_idx_r[7][1]_i_12 
       (.I0(\group_idx_r[5][1]_i_2_n_11 ),
        .I1(\group_idx_r_reg[4] [1]),
        .I2(Max_idx[0]),
        .I3(\group_idx_r[0][1]_i_2_n_11 ),
        .I4(\group_idx_r_reg[0] [1]),
        .O(\group_idx_r[7][1]_i_12_n_11 ));
  LUT5 #(
    .INIT(32'h0F080808)) 
    \group_idx_r[7][1]_i_13 
       (.I0(\group_idx_r[7][1]_i_2_n_11 ),
        .I1(\group_idx_r_reg[6] [1]),
        .I2(Max_idx[0]),
        .I3(\group_idx_r[3][1]_i_2_n_11 ),
        .I4(\group_idx_r_reg[2] [1]),
        .O(\group_idx_r[7][1]_i_13_n_11 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \group_idx_r[7][1]_i_14 
       (.I0(\group_idx_r[5][1]_i_2_n_11 ),
        .I1(\group_idx_r_reg[5] [0]),
        .I2(Max_idx[0]),
        .I3(\group_idx_r[0][1]_i_2_n_11 ),
        .I4(\group_idx_r_reg[1] [0]),
        .O(\group_idx_r[7][1]_i_14_n_11 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \group_idx_r[7][1]_i_15 
       (.I0(\group_idx_r[7][1]_i_2_n_11 ),
        .I1(\group_idx_r_reg[7] [0]),
        .I2(Max_idx[0]),
        .I3(\group_idx_r[3][1]_i_2_n_11 ),
        .I4(\group_idx_r_reg[3] [0]),
        .O(\group_idx_r[7][1]_i_15_n_11 ));
  LUT5 #(
    .INIT(32'h0F080808)) 
    \group_idx_r[7][1]_i_16 
       (.I0(\group_idx_r[5][1]_i_2_n_11 ),
        .I1(\group_idx_r_reg[4] [0]),
        .I2(Max_idx[0]),
        .I3(\group_idx_r[0][1]_i_2_n_11 ),
        .I4(\group_idx_r_reg[0] [0]),
        .O(\group_idx_r[7][1]_i_16_n_11 ));
  LUT5 #(
    .INIT(32'h0F080808)) 
    \group_idx_r[7][1]_i_17 
       (.I0(\group_idx_r[7][1]_i_2_n_11 ),
        .I1(\group_idx_r_reg[6] [0]),
        .I2(Max_idx[0]),
        .I3(\group_idx_r[3][1]_i_2_n_11 ),
        .I4(\group_idx_r_reg[2] [0]),
        .O(\group_idx_r[7][1]_i_17_n_11 ));
  LUT6 #(
    .INIT(64'h0000F100F100F100)) 
    \group_idx_r[7][1]_i_18 
       (.I0(\group_valid_r_reg[2]_0 ),
        .I1(\group_valid_r_reg[3]_1 ),
        .I2(\SortOut_OBUF[7]_inst_i_2_1 ),
        .I3(\group_valid_r_reg[1]_0 ),
        .I4(\group_valid_r_reg[0]_2 ),
        .I5(o_Max2),
        .O(\group_idx_r[7][1]_i_18_n_11 ));
  LUT6 #(
    .INIT(64'hAA80808080808080)) 
    \group_idx_r[7][1]_i_2 
       (.I0(Max_idx[2]),
        .I1(\group_valid_r_reg[3]_0 ),
        .I2(\SortOut_OBUF[7]_inst_i_5_n_11 ),
        .I3(max_valid1),
        .I4(\SortOut_OBUF[7]_inst_i_7_n_11 ),
        .I5(\SortOut_OBUF[7]_inst_i_3_n_11 ),
        .O(\group_idx_r[7][1]_i_2_n_11 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \group_idx_r[7][1]_i_3 
       (.I0(\group_idx_r[7][1]_i_10_n_11 ),
        .I1(\group_idx_r[7][1]_i_11_n_11 ),
        .I2(\group_idx_r[7][1]_i_12_n_11 ),
        .I3(\group_idx_r[7][1]_i_13_n_11 ),
        .O(group_idx_w[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \group_idx_r[7][1]_i_4 
       (.I0(\group_idx_r[7][1]_i_14_n_11 ),
        .I1(\group_idx_r[7][1]_i_15_n_11 ),
        .I2(\group_idx_r[7][1]_i_16_n_11 ),
        .I3(\group_idx_r[7][1]_i_17_n_11 ),
        .O(group_idx_w[0]));
  LUT6 #(
    .INIT(64'hFFFFFFE0E0E0E0E0)) 
    \group_idx_r[7][1]_i_5 
       (.I0(\group_idx_r[7][1]_i_18_n_11 ),
        .I1(\group_valid_r_reg[7]_0 ),
        .I2(\SortOut_OBUF[7]_inst_i_3_n_11 ),
        .I3(\group_valid_r_reg[7]_1 ),
        .I4(\group_valid_r_reg[7]_2 ),
        .I5(\SortOut_OBUF[7]_inst_i_5_n_11 ),
        .O(Max_idx[0]));
  LUT3 #(
    .INIT(8'h7F)) 
    \group_idx_r[7][1]_i_6 
       (.I0(\group_valid_r_reg[7]_4 [0]),
        .I1(\group_valid_r_reg[7]_4 [1]),
        .I2(\group_valid_r_reg[7]_4 [2]),
        .O(\group_idx_r[7][1]_i_6_n_11 ));
  LUT6 #(
    .INIT(64'h0FFF0FFF0FFF0EEE)) 
    \group_idx_r[7][1]_i_7 
       (.I0(\group_valid_r_reg[4]_0 ),
        .I1(\group_valid_r_reg[5]_0 ),
        .I2(max_valid4),
        .I3(CO),
        .I4(\group_valid_r_reg[7]_3 ),
        .I5(\group_valid_r_reg[6]_0 ),
        .O(Max_idx[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \group_idx_r[7][1]_i_9 
       (.I0(\group_valid_r_reg[2]_0 ),
        .I1(\group_valid_r_reg[3]_1 ),
        .O(max_valid1));
  LUT6 #(
    .INIT(64'hFF7FFFFF0000FFFF)) 
    \group_valid_r[0]_i_1 
       (.I0(\group_idx_r[0][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_valid_r_reg[0]_2 ),
        .O(\group_valid_r_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF0000FFFF)) 
    \group_valid_r[1]_i_1 
       (.I0(\group_idx_r[0][1]_i_2_n_11 ),
        .I1(Max_idx[0]),
        .I2(group_idx_w[1]),
        .I3(group_idx_w[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_valid_r_reg[1]_0 ),
        .O(\group_valid_r_reg[1] ));
  LUT6 #(
    .INIT(64'hFF7FFFFF0000FFFF)) 
    \group_valid_r[2]_i_1 
       (.I0(\group_idx_r[3][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_valid_r_reg[2]_0 ),
        .O(\group_valid_r_reg[2] ));
  LUT6 #(
    .INIT(64'h7FFFFFFF0000FFFF)) 
    \group_valid_r[3]_i_1 
       (.I0(\group_idx_r[3][1]_i_2_n_11 ),
        .I1(Max_idx[0]),
        .I2(group_idx_w[1]),
        .I3(group_idx_w[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_valid_r_reg[3]_1 ),
        .O(\group_valid_r_reg[3] ));
  LUT6 #(
    .INIT(64'hFF7FFFFF0000FFFF)) 
    \group_valid_r[4]_i_1 
       (.I0(\group_idx_r[5][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_valid_r_reg[4]_0 ),
        .O(\group_valid_r_reg[4] ));
  LUT6 #(
    .INIT(64'h7FFFFFFF0000FFFF)) 
    \group_valid_r[5]_i_1 
       (.I0(\group_idx_r[5][1]_i_2_n_11 ),
        .I1(Max_idx[0]),
        .I2(group_idx_w[1]),
        .I3(group_idx_w[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_valid_r_reg[5]_0 ),
        .O(\group_valid_r_reg[5] ));
  LUT6 #(
    .INIT(64'hFF7FFFFF0000FFFF)) 
    \group_valid_r[6]_i_1 
       (.I0(\group_idx_r[7][1]_i_2_n_11 ),
        .I1(group_idx_w[1]),
        .I2(group_idx_w[0]),
        .I3(Max_idx[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_valid_r_reg[6]_0 ),
        .O(\group_valid_r_reg[6] ));
  LUT6 #(
    .INIT(64'h7FFFFFFF0000FFFF)) 
    \group_valid_r[7]_i_1 
       (.I0(\group_idx_r[7][1]_i_2_n_11 ),
        .I1(Max_idx[0]),
        .I2(group_idx_w[1]),
        .I3(group_idx_w[0]),
        .I4(\group_idx_r[7][1]_i_6_n_11 ),
        .I5(\group_valid_r_reg[7]_3 ),
        .O(\group_valid_r_reg[7] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_Max2_carry
       (.CI(1'b0),
        .CO({o_Max2,o_Max2_carry_n_12,o_Max2_carry_n_13,o_Max2_carry_n_14}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_o_Max2_carry_O_UNCONNECTED[3:0]),
        .S(S));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_1
       (.I0(\SortOut_OBUF[6]_inst_i_2_n_11 ),
        .I1(\SortOut_OBUF[7]_inst_i_2_n_11 ),
        .I2(\SortOut[7] ),
        .I3(\SortOut[6] ),
        .O(\SortOut_OBUF[6]_inst_i_3_0 [3]));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_10
       (.I0(group_reg_r[7]),
        .I1(\SortOut_OBUF[7]_inst_i_2_0 ),
        .I2(o_Max2),
        .I3(\group_valid_r_reg[0]_2 ),
        .I4(\group_valid_r_reg[1]_0 ),
        .O(o_Max2_carry_i_10_n_11));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_13
       (.I0(group_reg_r[4]),
        .I1(o_Max2_carry_i_6__0_0),
        .I2(o_Max2),
        .I3(\group_valid_r_reg[0]_2 ),
        .I4(\group_valid_r_reg[1]_0 ),
        .O(o_Max2_carry_i_13_n_11));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_15
       (.I0(group_reg_r[5]),
        .I1(\SortOut_OBUF[5]_inst_i_2_0 ),
        .I2(o_Max2),
        .I3(\group_valid_r_reg[0]_2 ),
        .I4(\group_valid_r_reg[1]_0 ),
        .O(o_Max2_carry_i_15_n_11));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_17
       (.I0(group_reg_r[2]),
        .I1(o_Max2_carry_i_7__0_0),
        .I2(o_Max2),
        .I3(\group_valid_r_reg[0]_2 ),
        .I4(\group_valid_r_reg[1]_0 ),
        .O(o_Max2_carry_i_17_n_11));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_19
       (.I0(group_reg_r[3]),
        .I1(\SortOut_OBUF[3]_inst_i_2_0 ),
        .I2(o_Max2),
        .I3(\group_valid_r_reg[0]_2 ),
        .I4(\group_valid_r_reg[1]_0 ),
        .O(o_Max2_carry_i_19_n_11));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_1__0
       (.I0(o_Max2_carry_i_9_n_11),
        .I1(o_Max2_carry_i_10_n_11),
        .I2(o_Max2_carry_0),
        .I3(o_Max2_carry_i_5_0),
        .O(\group_valid_r_reg[0]_0 [3]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_2
       (.I0(\SortOut_OBUF[4]_inst_i_2_n_11 ),
        .I1(\SortOut[5] ),
        .I2(\SortOut_OBUF[5]_inst_i_2_n_11 ),
        .I3(\SortOut[4] ),
        .O(\SortOut_OBUF[6]_inst_i_3_0 [2]));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_21
       (.I0(group_reg_r[0]),
        .I1(o_Max2_carry_i_8__0_0),
        .I2(o_Max2),
        .I3(\group_valid_r_reg[0]_2 ),
        .I4(\group_valid_r_reg[1]_0 ),
        .O(o_Max2_carry_i_21_n_11));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_23
       (.I0(group_reg_r[1]),
        .I1(\SortOut_OBUF[1]_inst_i_2_0 ),
        .I2(o_Max2),
        .I3(\group_valid_r_reg[0]_2 ),
        .I4(\group_valid_r_reg[1]_0 ),
        .O(o_Max2_carry_i_23_n_11));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_2__0
       (.I0(o_Max2_carry_i_13_n_11),
        .I1(o_Max2_carry_1),
        .I2(o_Max2_carry_i_15_n_11),
        .I3(o_Max2_carry_i_6_0),
        .O(\group_valid_r_reg[0]_0 [2]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_3
       (.I0(\SortOut_OBUF[2]_inst_i_2_n_11 ),
        .I1(\SortOut[3] ),
        .I2(\SortOut_OBUF[3]_inst_i_2_n_11 ),
        .I3(\SortOut[2] ),
        .O(\SortOut_OBUF[6]_inst_i_3_0 [1]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_3__0
       (.I0(o_Max2_carry_i_17_n_11),
        .I1(o_Max2_carry_2),
        .I2(o_Max2_carry_i_19_n_11),
        .I3(o_Max2_carry_i_7_0),
        .O(\group_valid_r_reg[0]_0 [1]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_4
       (.I0(\SortOut_OBUF[0]_inst_i_2_n_11 ),
        .I1(\SortOut[1] ),
        .I2(\SortOut_OBUF[1]_inst_i_2_n_11 ),
        .I3(\SortOut[0] ),
        .O(\SortOut_OBUF[6]_inst_i_3_0 [0]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_4__0
       (.I0(o_Max2_carry_i_21_n_11),
        .I1(o_Max2_carry_3),
        .I2(o_Max2_carry_i_23_n_11),
        .I3(o_Max2_carry_i_8_0),
        .O(\group_valid_r_reg[0]_0 [0]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_5
       (.I0(\SortOut_OBUF[6]_inst_i_2_n_11 ),
        .I1(\SortOut[7] ),
        .I2(\SortOut_OBUF[7]_inst_i_2_n_11 ),
        .I3(\SortOut[6] ),
        .O(\SortOut_OBUF[6]_inst_i_3 [3]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_5__0
       (.I0(o_Max2_carry_i_9_n_11),
        .I1(o_Max2_carry_0),
        .I2(o_Max2_carry_i_10_n_11),
        .I3(o_Max2_carry_i_5_0),
        .O(\group_valid_r_reg[0] [3]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_6
       (.I0(\SortOut_OBUF[4]_inst_i_2_n_11 ),
        .I1(\SortOut_OBUF[5]_inst_i_2_n_11 ),
        .I2(\SortOut[5] ),
        .I3(\SortOut[4] ),
        .O(\SortOut_OBUF[6]_inst_i_3 [2]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_6__0
       (.I0(o_Max2_carry_i_13_n_11),
        .I1(o_Max2_carry_i_15_n_11),
        .I2(o_Max2_carry_1),
        .I3(o_Max2_carry_i_6_0),
        .O(\group_valid_r_reg[0] [2]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_7
       (.I0(\SortOut_OBUF[2]_inst_i_2_n_11 ),
        .I1(\SortOut_OBUF[3]_inst_i_2_n_11 ),
        .I2(\SortOut[3] ),
        .I3(\SortOut[2] ),
        .O(\SortOut_OBUF[6]_inst_i_3 [1]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_7__0
       (.I0(o_Max2_carry_i_17_n_11),
        .I1(o_Max2_carry_i_19_n_11),
        .I2(o_Max2_carry_2),
        .I3(o_Max2_carry_i_7_0),
        .O(\group_valid_r_reg[0] [1]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_8
       (.I0(\SortOut_OBUF[0]_inst_i_2_n_11 ),
        .I1(\SortOut_OBUF[1]_inst_i_2_n_11 ),
        .I2(\SortOut[1] ),
        .I3(\SortOut[0] ),
        .O(\SortOut_OBUF[6]_inst_i_3 [0]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_8__0
       (.I0(o_Max2_carry_i_21_n_11),
        .I1(o_Max2_carry_i_23_n_11),
        .I2(o_Max2_carry_3),
        .I3(o_Max2_carry_i_8_0),
        .O(\group_valid_r_reg[0] [0]));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_9
       (.I0(group_reg_r[6]),
        .I1(o_Max2_carry_i_5__0_0),
        .I2(o_Max2),
        .I3(\group_valid_r_reg[0]_2 ),
        .I4(\group_valid_r_reg[1]_0 ),
        .O(o_Max2_carry_i_9_n_11));
endmodule

(* ORIG_REF_NAME = "find_max" *) 
module find_max_0
   (\group_valid_r_reg[2] ,
    \group_valid_r_reg[2]_0 ,
    \group_valid_r_reg[2]_1 ,
    \group_valid_r_reg[2]_2 ,
    \group_valid_r_reg[2]_3 ,
    \group_valid_r_reg[2]_4 ,
    \group_valid_r_reg[2]_5 ,
    \group_valid_r_reg[2]_6 ,
    \group_valid_r_reg[2]_7 ,
    DI,
    S,
    o_Max2_carry_i_1__0,
    o_Max2_carry_i_1__0_0,
    o_Max2_carry_i_1__0_1,
    o_Max2_carry_i_1__0_2,
    \SortOut_OBUF[6]_inst_i_2 ,
    \SortOut_OBUF[6]_inst_i_2_0 ,
    o_Max2_carry_i_2__0,
    o_Max2_carry_i_2__0_0,
    \SortOut_OBUF[4]_inst_i_2 ,
    \SortOut_OBUF[4]_inst_i_2_0 ,
    o_Max2_carry_i_3__0,
    o_Max2_carry_i_3__0_0,
    \SortOut_OBUF[2]_inst_i_2 ,
    \SortOut_OBUF[2]_inst_i_2_0 ,
    o_Max2_carry_i_4__0,
    o_Max2_carry_i_4__0_0,
    \SortOut_OBUF[0]_inst_i_2 ,
    \SortOut_OBUF[0]_inst_i_2_0 ,
    \group_idx_r[7][1]_i_5 ,
    \group_idx_r[7][1]_i_5_0 ,
    \group_idx_r[7][1]_i_5_1 );
  output \group_valid_r_reg[2] ;
  output \group_valid_r_reg[2]_0 ;
  output \group_valid_r_reg[2]_1 ;
  output \group_valid_r_reg[2]_2 ;
  output \group_valid_r_reg[2]_3 ;
  output \group_valid_r_reg[2]_4 ;
  output \group_valid_r_reg[2]_5 ;
  output \group_valid_r_reg[2]_6 ;
  output \group_valid_r_reg[2]_7 ;
  input [3:0]DI;
  input [3:0]S;
  input o_Max2_carry_i_1__0;
  input o_Max2_carry_i_1__0_0;
  input o_Max2_carry_i_1__0_1;
  input o_Max2_carry_i_1__0_2;
  input \SortOut_OBUF[6]_inst_i_2 ;
  input \SortOut_OBUF[6]_inst_i_2_0 ;
  input o_Max2_carry_i_2__0;
  input o_Max2_carry_i_2__0_0;
  input \SortOut_OBUF[4]_inst_i_2 ;
  input \SortOut_OBUF[4]_inst_i_2_0 ;
  input o_Max2_carry_i_3__0;
  input o_Max2_carry_i_3__0_0;
  input \SortOut_OBUF[2]_inst_i_2 ;
  input \SortOut_OBUF[2]_inst_i_2_0 ;
  input o_Max2_carry_i_4__0;
  input o_Max2_carry_i_4__0_0;
  input \SortOut_OBUF[0]_inst_i_2 ;
  input \SortOut_OBUF[0]_inst_i_2_0 ;
  input \group_idx_r[7][1]_i_5 ;
  input \group_idx_r[7][1]_i_5_0 ;
  input [0:0]\group_idx_r[7][1]_i_5_1 ;

  wire [3:0]DI;
  wire [3:0]S;
  wire \SortOut_OBUF[0]_inst_i_2 ;
  wire \SortOut_OBUF[0]_inst_i_2_0 ;
  wire \SortOut_OBUF[2]_inst_i_2 ;
  wire \SortOut_OBUF[2]_inst_i_2_0 ;
  wire \SortOut_OBUF[4]_inst_i_2 ;
  wire \SortOut_OBUF[4]_inst_i_2_0 ;
  wire \SortOut_OBUF[6]_inst_i_2 ;
  wire \SortOut_OBUF[6]_inst_i_2_0 ;
  wire \group_idx_r[7][1]_i_5 ;
  wire \group_idx_r[7][1]_i_5_0 ;
  wire [0:0]\group_idx_r[7][1]_i_5_1 ;
  wire \group_valid_r_reg[2] ;
  wire \group_valid_r_reg[2]_0 ;
  wire \group_valid_r_reg[2]_1 ;
  wire \group_valid_r_reg[2]_2 ;
  wire \group_valid_r_reg[2]_3 ;
  wire \group_valid_r_reg[2]_4 ;
  wire \group_valid_r_reg[2]_5 ;
  wire \group_valid_r_reg[2]_6 ;
  wire \group_valid_r_reg[2]_7 ;
  wire o_Max2_carry_i_1__0;
  wire o_Max2_carry_i_1__0_0;
  wire o_Max2_carry_i_1__0_1;
  wire o_Max2_carry_i_1__0_2;
  wire o_Max2_carry_i_2__0;
  wire o_Max2_carry_i_2__0_0;
  wire o_Max2_carry_i_3__0;
  wire o_Max2_carry_i_3__0_0;
  wire o_Max2_carry_i_4__0;
  wire o_Max2_carry_i_4__0_0;
  wire o_Max2_carry_n_11;
  wire o_Max2_carry_n_12;
  wire o_Max2_carry_n_13;
  wire o_Max2_carry_n_14;
  wire [3:0]NLW_o_Max2_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000007070707070)) 
    \group_idx_r[7][1]_i_19 
       (.I0(o_Max2_carry_n_11),
        .I1(o_Max2_carry_i_1__0_1),
        .I2(o_Max2_carry_i_1__0_2),
        .I3(\group_idx_r[7][1]_i_5 ),
        .I4(\group_idx_r[7][1]_i_5_0 ),
        .I5(\group_idx_r[7][1]_i_5_1 ),
        .O(\group_valid_r_reg[2]_7 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_Max2_carry
       (.CI(1'b0),
        .CO({o_Max2_carry_n_11,o_Max2_carry_n_12,o_Max2_carry_n_13,o_Max2_carry_n_14}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_o_Max2_carry_O_UNCONNECTED[3:0]),
        .S(S));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_11__0
       (.I0(o_Max2_carry_i_1__0),
        .I1(o_Max2_carry_i_1__0_0),
        .I2(o_Max2_carry_n_11),
        .I3(o_Max2_carry_i_1__0_1),
        .I4(o_Max2_carry_i_1__0_2),
        .O(\group_valid_r_reg[2] ));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_12__0
       (.I0(\SortOut_OBUF[6]_inst_i_2 ),
        .I1(\SortOut_OBUF[6]_inst_i_2_0 ),
        .I2(o_Max2_carry_n_11),
        .I3(o_Max2_carry_i_1__0_1),
        .I4(o_Max2_carry_i_1__0_2),
        .O(\group_valid_r_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_14__0
       (.I0(o_Max2_carry_i_2__0),
        .I1(o_Max2_carry_i_2__0_0),
        .I2(o_Max2_carry_n_11),
        .I3(o_Max2_carry_i_1__0_1),
        .I4(o_Max2_carry_i_1__0_2),
        .O(\group_valid_r_reg[2]_1 ));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_16__0
       (.I0(\SortOut_OBUF[4]_inst_i_2 ),
        .I1(\SortOut_OBUF[4]_inst_i_2_0 ),
        .I2(o_Max2_carry_n_11),
        .I3(o_Max2_carry_i_1__0_1),
        .I4(o_Max2_carry_i_1__0_2),
        .O(\group_valid_r_reg[2]_2 ));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_18__0
       (.I0(o_Max2_carry_i_3__0),
        .I1(o_Max2_carry_i_3__0_0),
        .I2(o_Max2_carry_n_11),
        .I3(o_Max2_carry_i_1__0_1),
        .I4(o_Max2_carry_i_1__0_2),
        .O(\group_valid_r_reg[2]_3 ));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_20__0
       (.I0(\SortOut_OBUF[2]_inst_i_2 ),
        .I1(\SortOut_OBUF[2]_inst_i_2_0 ),
        .I2(o_Max2_carry_n_11),
        .I3(o_Max2_carry_i_1__0_1),
        .I4(o_Max2_carry_i_1__0_2),
        .O(\group_valid_r_reg[2]_4 ));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_22__0
       (.I0(o_Max2_carry_i_4__0),
        .I1(o_Max2_carry_i_4__0_0),
        .I2(o_Max2_carry_n_11),
        .I3(o_Max2_carry_i_1__0_1),
        .I4(o_Max2_carry_i_1__0_2),
        .O(\group_valid_r_reg[2]_5 ));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_24__0
       (.I0(\SortOut_OBUF[0]_inst_i_2 ),
        .I1(\SortOut_OBUF[0]_inst_i_2_0 ),
        .I2(o_Max2_carry_n_11),
        .I3(o_Max2_carry_i_1__0_1),
        .I4(o_Max2_carry_i_1__0_2),
        .O(\group_valid_r_reg[2]_6 ));
endmodule

(* ORIG_REF_NAME = "find_max" *) 
module find_max_1
   (\group_valid_r_reg[4] ,
    \group_valid_r_reg[4]_0 ,
    \group_valid_r_reg[4]_1 ,
    \group_valid_r_reg[4]_2 ,
    \group_valid_r_reg[4]_3 ,
    \group_valid_r_reg[4]_4 ,
    \group_valid_r_reg[4]_5 ,
    \group_valid_r_reg[4]_6 ,
    \group_valid_r_reg[4]_7 ,
    \group_valid_r_reg[4]_8 ,
    \group_valid_r_reg[6] ,
    \group_valid_r_reg[7] ,
    \group_valid_r_reg[4]_9 ,
    DI,
    S,
    o_Max2_carry_0,
    \SortOut_OBUF[6]_inst_i_1 ,
    \SortOut_OBUF[7]_inst_i_4_0 ,
    \SortOut_OBUF[7]_inst_i_4_1 ,
    \SortOut_OBUF[7]_inst_i_4_2 ,
    \SortOut_OBUF[7]_inst_i_4_3 ,
    o_Max2_carry_i_5__3_0,
    o_Max2_carry_i_5__3_1,
    o_Max2_carry_1,
    \SortOut_OBUF[4]_inst_i_1 ,
    \SortOut_OBUF[5]_inst_i_3_0 ,
    \SortOut_OBUF[5]_inst_i_3_1 ,
    o_Max2_carry_i_6__3_0,
    o_Max2_carry_i_6__3_1,
    o_Max2_carry_2,
    \SortOut_OBUF[2]_inst_i_1 ,
    \SortOut_OBUF[3]_inst_i_3_0 ,
    \SortOut_OBUF[3]_inst_i_3_1 ,
    o_Max2_carry_i_7__3_0,
    o_Max2_carry_i_7__3_1,
    o_Max2_carry_3,
    \SortOut_OBUF[0]_inst_i_1 ,
    \SortOut_OBUF[1]_inst_i_3_0 ,
    \SortOut_OBUF[1]_inst_i_3_1 ,
    o_Max2_carry_i_8__3_0,
    o_Max2_carry_i_8__3_1,
    \group_idx_r[7][1]_i_5 ,
    \group_idx_r[7][1]_i_5_0 ,
    CO,
    \group_idx_r[7][1]_i_5_1 );
  output \group_valid_r_reg[4] ;
  output [3:0]\group_valid_r_reg[4]_0 ;
  output [3:0]\group_valid_r_reg[4]_1 ;
  output \group_valid_r_reg[4]_2 ;
  output \group_valid_r_reg[4]_3 ;
  output \group_valid_r_reg[4]_4 ;
  output \group_valid_r_reg[4]_5 ;
  output \group_valid_r_reg[4]_6 ;
  output \group_valid_r_reg[4]_7 ;
  output \group_valid_r_reg[4]_8 ;
  output \group_valid_r_reg[6] ;
  output \group_valid_r_reg[7] ;
  output \group_valid_r_reg[4]_9 ;
  input [3:0]DI;
  input [3:0]S;
  input o_Max2_carry_0;
  input \SortOut_OBUF[6]_inst_i_1 ;
  input \SortOut_OBUF[7]_inst_i_4_0 ;
  input \SortOut_OBUF[7]_inst_i_4_1 ;
  input \SortOut_OBUF[7]_inst_i_4_2 ;
  input \SortOut_OBUF[7]_inst_i_4_3 ;
  input o_Max2_carry_i_5__3_0;
  input o_Max2_carry_i_5__3_1;
  input o_Max2_carry_1;
  input \SortOut_OBUF[4]_inst_i_1 ;
  input \SortOut_OBUF[5]_inst_i_3_0 ;
  input \SortOut_OBUF[5]_inst_i_3_1 ;
  input o_Max2_carry_i_6__3_0;
  input o_Max2_carry_i_6__3_1;
  input o_Max2_carry_2;
  input \SortOut_OBUF[2]_inst_i_1 ;
  input \SortOut_OBUF[3]_inst_i_3_0 ;
  input \SortOut_OBUF[3]_inst_i_3_1 ;
  input o_Max2_carry_i_7__3_0;
  input o_Max2_carry_i_7__3_1;
  input o_Max2_carry_3;
  input \SortOut_OBUF[0]_inst_i_1 ;
  input \SortOut_OBUF[1]_inst_i_3_0 ;
  input \SortOut_OBUF[1]_inst_i_3_1 ;
  input o_Max2_carry_i_8__3_0;
  input o_Max2_carry_i_8__3_1;
  input \group_idx_r[7][1]_i_5 ;
  input \group_idx_r[7][1]_i_5_0 ;
  input [0:0]CO;
  input [0:0]\group_idx_r[7][1]_i_5_1 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]S;
  wire \SortOut_OBUF[0]_inst_i_1 ;
  wire \SortOut_OBUF[1]_inst_i_3_0 ;
  wire \SortOut_OBUF[1]_inst_i_3_1 ;
  wire \SortOut_OBUF[2]_inst_i_1 ;
  wire \SortOut_OBUF[3]_inst_i_3_0 ;
  wire \SortOut_OBUF[3]_inst_i_3_1 ;
  wire \SortOut_OBUF[4]_inst_i_1 ;
  wire \SortOut_OBUF[5]_inst_i_3_0 ;
  wire \SortOut_OBUF[5]_inst_i_3_1 ;
  wire \SortOut_OBUF[6]_inst_i_1 ;
  wire \SortOut_OBUF[7]_inst_i_10_n_11 ;
  wire \SortOut_OBUF[7]_inst_i_4_0 ;
  wire \SortOut_OBUF[7]_inst_i_4_1 ;
  wire \SortOut_OBUF[7]_inst_i_4_2 ;
  wire \SortOut_OBUF[7]_inst_i_4_3 ;
  wire \SortOut_OBUF[7]_inst_i_9_n_11 ;
  wire \group_idx_r[7][1]_i_5 ;
  wire \group_idx_r[7][1]_i_5_0 ;
  wire [0:0]\group_idx_r[7][1]_i_5_1 ;
  wire \group_valid_r_reg[4] ;
  wire [3:0]\group_valid_r_reg[4]_0 ;
  wire [3:0]\group_valid_r_reg[4]_1 ;
  wire \group_valid_r_reg[4]_2 ;
  wire \group_valid_r_reg[4]_3 ;
  wire \group_valid_r_reg[4]_4 ;
  wire \group_valid_r_reg[4]_5 ;
  wire \group_valid_r_reg[4]_6 ;
  wire \group_valid_r_reg[4]_7 ;
  wire \group_valid_r_reg[4]_8 ;
  wire \group_valid_r_reg[4]_9 ;
  wire \group_valid_r_reg[6] ;
  wire \group_valid_r_reg[7] ;
  wire o_Max2_carry_0;
  wire o_Max2_carry_1;
  wire o_Max2_carry_2;
  wire o_Max2_carry_3;
  wire o_Max2_carry_i_10__2_n_11;
  wire o_Max2_carry_i_13__2_n_11;
  wire o_Max2_carry_i_15__2_n_11;
  wire o_Max2_carry_i_17__2_n_11;
  wire o_Max2_carry_i_19__2_n_11;
  wire o_Max2_carry_i_21__2_n_11;
  wire o_Max2_carry_i_23__2_n_11;
  wire o_Max2_carry_i_5__3_0;
  wire o_Max2_carry_i_5__3_1;
  wire o_Max2_carry_i_6__3_0;
  wire o_Max2_carry_i_6__3_1;
  wire o_Max2_carry_i_7__3_0;
  wire o_Max2_carry_i_7__3_1;
  wire o_Max2_carry_i_8__3_0;
  wire o_Max2_carry_i_8__3_1;
  wire o_Max2_carry_i_9__2_n_11;
  wire o_Max2_carry_n_11;
  wire o_Max2_carry_n_12;
  wire o_Max2_carry_n_13;
  wire o_Max2_carry_n_14;
  wire [3:0]NLW_o_Max2_carry_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[0]_inst_i_3 
       (.I0(o_Max2_carry_i_21__2_n_11),
        .I1(\SortOut_OBUF[7]_inst_i_9_n_11 ),
        .I2(\SortOut_OBUF[0]_inst_i_1 ),
        .I3(\SortOut_OBUF[7]_inst_i_10_n_11 ),
        .O(\group_valid_r_reg[4]_8 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[1]_inst_i_3 
       (.I0(o_Max2_carry_i_23__2_n_11),
        .I1(\SortOut_OBUF[7]_inst_i_9_n_11 ),
        .I2(o_Max2_carry_3),
        .I3(\SortOut_OBUF[7]_inst_i_10_n_11 ),
        .O(\group_valid_r_reg[4]_7 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[2]_inst_i_3 
       (.I0(o_Max2_carry_i_17__2_n_11),
        .I1(\SortOut_OBUF[7]_inst_i_9_n_11 ),
        .I2(\SortOut_OBUF[2]_inst_i_1 ),
        .I3(\SortOut_OBUF[7]_inst_i_10_n_11 ),
        .O(\group_valid_r_reg[4]_6 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[3]_inst_i_3 
       (.I0(o_Max2_carry_i_19__2_n_11),
        .I1(\SortOut_OBUF[7]_inst_i_9_n_11 ),
        .I2(o_Max2_carry_2),
        .I3(\SortOut_OBUF[7]_inst_i_10_n_11 ),
        .O(\group_valid_r_reg[4]_5 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[4]_inst_i_3 
       (.I0(o_Max2_carry_i_13__2_n_11),
        .I1(\SortOut_OBUF[7]_inst_i_9_n_11 ),
        .I2(\SortOut_OBUF[4]_inst_i_1 ),
        .I3(\SortOut_OBUF[7]_inst_i_10_n_11 ),
        .O(\group_valid_r_reg[4]_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[5]_inst_i_3 
       (.I0(o_Max2_carry_i_15__2_n_11),
        .I1(\SortOut_OBUF[7]_inst_i_9_n_11 ),
        .I2(o_Max2_carry_1),
        .I3(\SortOut_OBUF[7]_inst_i_10_n_11 ),
        .O(\group_valid_r_reg[4]_3 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[6]_inst_i_3 
       (.I0(o_Max2_carry_i_9__2_n_11),
        .I1(\SortOut_OBUF[7]_inst_i_9_n_11 ),
        .I2(\SortOut_OBUF[6]_inst_i_1 ),
        .I3(\SortOut_OBUF[7]_inst_i_10_n_11 ),
        .O(\group_valid_r_reg[4]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h57575700)) 
    \SortOut_OBUF[7]_inst_i_10 
       (.I0(CO),
        .I1(\SortOut_OBUF[7]_inst_i_4_3 ),
        .I2(\SortOut_OBUF[7]_inst_i_4_2 ),
        .I3(\group_idx_r[7][1]_i_5_0 ),
        .I4(\group_idx_r[7][1]_i_5 ),
        .O(\SortOut_OBUF[7]_inst_i_10_n_11 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \SortOut_OBUF[7]_inst_i_4 
       (.I0(o_Max2_carry_i_10__2_n_11),
        .I1(\SortOut_OBUF[7]_inst_i_9_n_11 ),
        .I2(o_Max2_carry_0),
        .I3(\SortOut_OBUF[7]_inst_i_10_n_11 ),
        .O(\group_valid_r_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hA8A8A8FC)) 
    \SortOut_OBUF[7]_inst_i_9 
       (.I0(CO),
        .I1(\SortOut_OBUF[7]_inst_i_4_3 ),
        .I2(\SortOut_OBUF[7]_inst_i_4_2 ),
        .I3(\group_idx_r[7][1]_i_5_0 ),
        .I4(\group_idx_r[7][1]_i_5 ),
        .O(\SortOut_OBUF[7]_inst_i_9_n_11 ));
  LUT6 #(
    .INIT(64'h0000F100F100F100)) 
    \group_idx_r[7][1]_i_20 
       (.I0(\group_idx_r[7][1]_i_5 ),
        .I1(\group_idx_r[7][1]_i_5_0 ),
        .I2(CO),
        .I3(\SortOut_OBUF[7]_inst_i_4_3 ),
        .I4(\SortOut_OBUF[7]_inst_i_4_2 ),
        .I5(o_Max2_carry_n_11),
        .O(\group_valid_r_reg[6] ));
  LUT6 #(
    .INIT(64'h00001F001F001F00)) 
    \group_idx_r[7][1]_i_21 
       (.I0(\SortOut_OBUF[7]_inst_i_4_2 ),
        .I1(\SortOut_OBUF[7]_inst_i_4_3 ),
        .I2(CO),
        .I3(\group_idx_r[7][1]_i_5_0 ),
        .I4(\group_idx_r[7][1]_i_5 ),
        .I5(\group_idx_r[7][1]_i_5_1 ),
        .O(\group_valid_r_reg[4]_9 ));
  LUT5 #(
    .INIT(32'h545454FC)) 
    \group_idx_r[7][1]_i_8 
       (.I0(CO),
        .I1(\group_idx_r[7][1]_i_5_0 ),
        .I2(\group_idx_r[7][1]_i_5 ),
        .I3(\SortOut_OBUF[7]_inst_i_4_3 ),
        .I4(\SortOut_OBUF[7]_inst_i_4_2 ),
        .O(\group_valid_r_reg[7] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_Max2_carry
       (.CI(1'b0),
        .CO({o_Max2_carry_n_11,o_Max2_carry_n_12,o_Max2_carry_n_13,o_Max2_carry_n_14}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_o_Max2_carry_O_UNCONNECTED[3:0]),
        .S(S));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_10__2
       (.I0(\SortOut_OBUF[7]_inst_i_4_0 ),
        .I1(\SortOut_OBUF[7]_inst_i_4_1 ),
        .I2(o_Max2_carry_n_11),
        .I3(\SortOut_OBUF[7]_inst_i_4_2 ),
        .I4(\SortOut_OBUF[7]_inst_i_4_3 ),
        .O(o_Max2_carry_i_10__2_n_11));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_13__2
       (.I0(o_Max2_carry_i_6__3_0),
        .I1(o_Max2_carry_i_6__3_1),
        .I2(o_Max2_carry_n_11),
        .I3(\SortOut_OBUF[7]_inst_i_4_2 ),
        .I4(\SortOut_OBUF[7]_inst_i_4_3 ),
        .O(o_Max2_carry_i_13__2_n_11));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_15__2
       (.I0(\SortOut_OBUF[5]_inst_i_3_0 ),
        .I1(\SortOut_OBUF[5]_inst_i_3_1 ),
        .I2(o_Max2_carry_n_11),
        .I3(\SortOut_OBUF[7]_inst_i_4_2 ),
        .I4(\SortOut_OBUF[7]_inst_i_4_3 ),
        .O(o_Max2_carry_i_15__2_n_11));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_17__2
       (.I0(o_Max2_carry_i_7__3_0),
        .I1(o_Max2_carry_i_7__3_1),
        .I2(o_Max2_carry_n_11),
        .I3(\SortOut_OBUF[7]_inst_i_4_2 ),
        .I4(\SortOut_OBUF[7]_inst_i_4_3 ),
        .O(o_Max2_carry_i_17__2_n_11));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_19__2
       (.I0(\SortOut_OBUF[3]_inst_i_3_0 ),
        .I1(\SortOut_OBUF[3]_inst_i_3_1 ),
        .I2(o_Max2_carry_n_11),
        .I3(\SortOut_OBUF[7]_inst_i_4_2 ),
        .I4(\SortOut_OBUF[7]_inst_i_4_3 ),
        .O(o_Max2_carry_i_19__2_n_11));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_1__3
       (.I0(o_Max2_carry_i_9__2_n_11),
        .I1(o_Max2_carry_i_10__2_n_11),
        .I2(o_Max2_carry_0),
        .I3(\SortOut_OBUF[6]_inst_i_1 ),
        .O(\group_valid_r_reg[4]_1 [3]));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_21__2
       (.I0(o_Max2_carry_i_8__3_0),
        .I1(o_Max2_carry_i_8__3_1),
        .I2(o_Max2_carry_n_11),
        .I3(\SortOut_OBUF[7]_inst_i_4_2 ),
        .I4(\SortOut_OBUF[7]_inst_i_4_3 ),
        .O(o_Max2_carry_i_21__2_n_11));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_23__2
       (.I0(\SortOut_OBUF[1]_inst_i_3_0 ),
        .I1(\SortOut_OBUF[1]_inst_i_3_1 ),
        .I2(o_Max2_carry_n_11),
        .I3(\SortOut_OBUF[7]_inst_i_4_2 ),
        .I4(\SortOut_OBUF[7]_inst_i_4_3 ),
        .O(o_Max2_carry_i_23__2_n_11));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_2__3
       (.I0(o_Max2_carry_i_13__2_n_11),
        .I1(o_Max2_carry_1),
        .I2(o_Max2_carry_i_15__2_n_11),
        .I3(\SortOut_OBUF[4]_inst_i_1 ),
        .O(\group_valid_r_reg[4]_1 [2]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_3__3
       (.I0(o_Max2_carry_i_17__2_n_11),
        .I1(o_Max2_carry_2),
        .I2(o_Max2_carry_i_19__2_n_11),
        .I3(\SortOut_OBUF[2]_inst_i_1 ),
        .O(\group_valid_r_reg[4]_1 [1]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_4__3
       (.I0(o_Max2_carry_i_21__2_n_11),
        .I1(o_Max2_carry_3),
        .I2(o_Max2_carry_i_23__2_n_11),
        .I3(\SortOut_OBUF[0]_inst_i_1 ),
        .O(\group_valid_r_reg[4]_1 [0]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_5__3
       (.I0(o_Max2_carry_i_9__2_n_11),
        .I1(o_Max2_carry_0),
        .I2(o_Max2_carry_i_10__2_n_11),
        .I3(\SortOut_OBUF[6]_inst_i_1 ),
        .O(\group_valid_r_reg[4]_0 [3]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_6__3
       (.I0(o_Max2_carry_i_13__2_n_11),
        .I1(o_Max2_carry_i_15__2_n_11),
        .I2(o_Max2_carry_1),
        .I3(\SortOut_OBUF[4]_inst_i_1 ),
        .O(\group_valid_r_reg[4]_0 [2]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_7__3
       (.I0(o_Max2_carry_i_17__2_n_11),
        .I1(o_Max2_carry_i_19__2_n_11),
        .I2(o_Max2_carry_2),
        .I3(\SortOut_OBUF[2]_inst_i_1 ),
        .O(\group_valid_r_reg[4]_0 [1]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_8__3
       (.I0(o_Max2_carry_i_21__2_n_11),
        .I1(o_Max2_carry_i_23__2_n_11),
        .I2(o_Max2_carry_3),
        .I3(\SortOut_OBUF[0]_inst_i_1 ),
        .O(\group_valid_r_reg[4]_0 [0]));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_9__2
       (.I0(o_Max2_carry_i_5__3_0),
        .I1(o_Max2_carry_i_5__3_1),
        .I2(o_Max2_carry_n_11),
        .I3(\SortOut_OBUF[7]_inst_i_4_2 ),
        .I4(\SortOut_OBUF[7]_inst_i_4_3 ),
        .O(o_Max2_carry_i_9__2_n_11));
endmodule

(* ORIG_REF_NAME = "find_max" *) 
module find_max_2
   (o_Max2_carry_i_8__5,
    \group_valid_r_reg[6] ,
    \group_valid_r_reg[6]_0 ,
    \group_valid_r_reg[6]_1 ,
    \group_valid_r_reg[6]_2 ,
    \group_valid_r_reg[6]_3 ,
    \group_valid_r_reg[6]_4 ,
    \group_valid_r_reg[6]_5 ,
    \group_valid_r_reg[6]_6 ,
    DI,
    S,
    o_Max2_carry_i_1__3,
    o_Max2_carry_i_1__3_0,
    o_Max2_carry_i_1__3_1,
    o_Max2_carry_i_1__3_2,
    \SortOut_OBUF[6]_inst_i_3 ,
    \SortOut_OBUF[6]_inst_i_3_0 ,
    o_Max2_carry_i_2__3,
    o_Max2_carry_i_2__3_0,
    \SortOut_OBUF[4]_inst_i_3 ,
    \SortOut_OBUF[4]_inst_i_3_0 ,
    o_Max2_carry_i_3__3,
    o_Max2_carry_i_3__3_0,
    \SortOut_OBUF[2]_inst_i_3 ,
    \SortOut_OBUF[2]_inst_i_3_0 ,
    o_Max2_carry_i_4__3,
    o_Max2_carry_i_4__3_0,
    \SortOut_OBUF[0]_inst_i_3 ,
    \SortOut_OBUF[0]_inst_i_3_0 );
  output [0:0]o_Max2_carry_i_8__5;
  output \group_valid_r_reg[6] ;
  output \group_valid_r_reg[6]_0 ;
  output \group_valid_r_reg[6]_1 ;
  output \group_valid_r_reg[6]_2 ;
  output \group_valid_r_reg[6]_3 ;
  output \group_valid_r_reg[6]_4 ;
  output \group_valid_r_reg[6]_5 ;
  output \group_valid_r_reg[6]_6 ;
  input [3:0]DI;
  input [3:0]S;
  input o_Max2_carry_i_1__3;
  input o_Max2_carry_i_1__3_0;
  input o_Max2_carry_i_1__3_1;
  input o_Max2_carry_i_1__3_2;
  input \SortOut_OBUF[6]_inst_i_3 ;
  input \SortOut_OBUF[6]_inst_i_3_0 ;
  input o_Max2_carry_i_2__3;
  input o_Max2_carry_i_2__3_0;
  input \SortOut_OBUF[4]_inst_i_3 ;
  input \SortOut_OBUF[4]_inst_i_3_0 ;
  input o_Max2_carry_i_3__3;
  input o_Max2_carry_i_3__3_0;
  input \SortOut_OBUF[2]_inst_i_3 ;
  input \SortOut_OBUF[2]_inst_i_3_0 ;
  input o_Max2_carry_i_4__3;
  input o_Max2_carry_i_4__3_0;
  input \SortOut_OBUF[0]_inst_i_3 ;
  input \SortOut_OBUF[0]_inst_i_3_0 ;

  wire [3:0]DI;
  wire [3:0]S;
  wire \SortOut_OBUF[0]_inst_i_3 ;
  wire \SortOut_OBUF[0]_inst_i_3_0 ;
  wire \SortOut_OBUF[2]_inst_i_3 ;
  wire \SortOut_OBUF[2]_inst_i_3_0 ;
  wire \SortOut_OBUF[4]_inst_i_3 ;
  wire \SortOut_OBUF[4]_inst_i_3_0 ;
  wire \SortOut_OBUF[6]_inst_i_3 ;
  wire \SortOut_OBUF[6]_inst_i_3_0 ;
  wire \group_valid_r_reg[6] ;
  wire \group_valid_r_reg[6]_0 ;
  wire \group_valid_r_reg[6]_1 ;
  wire \group_valid_r_reg[6]_2 ;
  wire \group_valid_r_reg[6]_3 ;
  wire \group_valid_r_reg[6]_4 ;
  wire \group_valid_r_reg[6]_5 ;
  wire \group_valid_r_reg[6]_6 ;
  wire o_Max2_carry_i_1__3;
  wire o_Max2_carry_i_1__3_0;
  wire o_Max2_carry_i_1__3_1;
  wire o_Max2_carry_i_1__3_2;
  wire o_Max2_carry_i_2__3;
  wire o_Max2_carry_i_2__3_0;
  wire o_Max2_carry_i_3__3;
  wire o_Max2_carry_i_3__3_0;
  wire o_Max2_carry_i_4__3;
  wire o_Max2_carry_i_4__3_0;
  wire [0:0]o_Max2_carry_i_8__5;
  wire o_Max2_carry_n_12;
  wire o_Max2_carry_n_13;
  wire o_Max2_carry_n_14;
  wire [3:0]NLW_o_Max2_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_Max2_carry
       (.CI(1'b0),
        .CO({o_Max2_carry_i_8__5,o_Max2_carry_n_12,o_Max2_carry_n_13,o_Max2_carry_n_14}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_o_Max2_carry_O_UNCONNECTED[3:0]),
        .S(S));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_11__3
       (.I0(o_Max2_carry_i_1__3),
        .I1(o_Max2_carry_i_1__3_0),
        .I2(o_Max2_carry_i_8__5),
        .I3(o_Max2_carry_i_1__3_1),
        .I4(o_Max2_carry_i_1__3_2),
        .O(\group_valid_r_reg[6] ));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_12__3
       (.I0(\SortOut_OBUF[6]_inst_i_3 ),
        .I1(\SortOut_OBUF[6]_inst_i_3_0 ),
        .I2(o_Max2_carry_i_8__5),
        .I3(o_Max2_carry_i_1__3_1),
        .I4(o_Max2_carry_i_1__3_2),
        .O(\group_valid_r_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_14__3
       (.I0(o_Max2_carry_i_2__3),
        .I1(o_Max2_carry_i_2__3_0),
        .I2(o_Max2_carry_i_8__5),
        .I3(o_Max2_carry_i_1__3_1),
        .I4(o_Max2_carry_i_1__3_2),
        .O(\group_valid_r_reg[6]_1 ));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_16__3
       (.I0(\SortOut_OBUF[4]_inst_i_3 ),
        .I1(\SortOut_OBUF[4]_inst_i_3_0 ),
        .I2(o_Max2_carry_i_8__5),
        .I3(o_Max2_carry_i_1__3_1),
        .I4(o_Max2_carry_i_1__3_2),
        .O(\group_valid_r_reg[6]_2 ));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_18__3
       (.I0(o_Max2_carry_i_3__3),
        .I1(o_Max2_carry_i_3__3_0),
        .I2(o_Max2_carry_i_8__5),
        .I3(o_Max2_carry_i_1__3_1),
        .I4(o_Max2_carry_i_1__3_2),
        .O(\group_valid_r_reg[6]_3 ));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_20__3
       (.I0(\SortOut_OBUF[2]_inst_i_3 ),
        .I1(\SortOut_OBUF[2]_inst_i_3_0 ),
        .I2(o_Max2_carry_i_8__5),
        .I3(o_Max2_carry_i_1__3_1),
        .I4(o_Max2_carry_i_1__3_2),
        .O(\group_valid_r_reg[6]_4 ));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_22__3
       (.I0(o_Max2_carry_i_4__3),
        .I1(o_Max2_carry_i_4__3_0),
        .I2(o_Max2_carry_i_8__5),
        .I3(o_Max2_carry_i_1__3_1),
        .I4(o_Max2_carry_i_1__3_2),
        .O(\group_valid_r_reg[6]_5 ));
  LUT5 #(
    .INIT(32'hACCCAA00)) 
    o_Max2_carry_i_24__3
       (.I0(\SortOut_OBUF[0]_inst_i_3 ),
        .I1(\SortOut_OBUF[0]_inst_i_3_0 ),
        .I2(o_Max2_carry_i_8__5),
        .I3(o_Max2_carry_i_1__3_1),
        .I4(o_Max2_carry_i_1__3_2),
        .O(\group_valid_r_reg[6]_6 ));
endmodule

(* ORIG_REF_NAME = "find_max" *) 
module find_max_3
   (o_Max2_carry_i_8__0,
    \SortOut_OBUF[7]_inst_i_7 ,
    \SortOut_OBUF[7]_inst_i_7_0 );
  output [0:0]o_Max2_carry_i_8__0;
  input [3:0]\SortOut_OBUF[7]_inst_i_7 ;
  input [3:0]\SortOut_OBUF[7]_inst_i_7_0 ;

  wire [3:0]\SortOut_OBUF[7]_inst_i_7 ;
  wire [3:0]\SortOut_OBUF[7]_inst_i_7_0 ;
  wire [0:0]o_Max2_carry_i_8__0;
  wire o_Max2_carry_n_12;
  wire o_Max2_carry_n_13;
  wire o_Max2_carry_n_14;
  wire [3:0]NLW_o_Max2_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_Max2_carry
       (.CI(1'b0),
        .CO({o_Max2_carry_i_8__0,o_Max2_carry_n_12,o_Max2_carry_n_13,o_Max2_carry_n_14}),
        .CYINIT(1'b0),
        .DI(\SortOut_OBUF[7]_inst_i_7 ),
        .O(NLW_o_Max2_carry_O_UNCONNECTED[3:0]),
        .S(\SortOut_OBUF[7]_inst_i_7_0 ));
endmodule

(* ORIG_REF_NAME = "find_max" *) 
module find_max_4
   (CO,
    \SortOut_OBUF[7]_inst_i_10 ,
    \SortOut_OBUF[7]_inst_i_10_0 );
  output [0:0]CO;
  input [3:0]\SortOut_OBUF[7]_inst_i_10 ;
  input [3:0]\SortOut_OBUF[7]_inst_i_10_0 ;

  wire [0:0]CO;
  wire [3:0]\SortOut_OBUF[7]_inst_i_10 ;
  wire [3:0]\SortOut_OBUF[7]_inst_i_10_0 ;
  wire o_Max2_carry_n_12;
  wire o_Max2_carry_n_13;
  wire o_Max2_carry_n_14;
  wire [3:0]NLW_o_Max2_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_Max2_carry
       (.CI(1'b0),
        .CO({CO,o_Max2_carry_n_12,o_Max2_carry_n_13,o_Max2_carry_n_14}),
        .CYINIT(1'b0),
        .DI(\SortOut_OBUF[7]_inst_i_10 ),
        .O(NLW_o_Max2_carry_O_UNCONNECTED[3:0]),
        .S(\SortOut_OBUF[7]_inst_i_10_0 ));
endmodule

(* ORIG_REF_NAME = "find_max" *) 
module find_max_5
   (CO,
    S,
    group_reg_r,
    \group_reg_r_reg[1][2][7] ,
    \group_reg_r_reg[1][2][6] ,
    DI,
    \group_reg_r_reg[1][2][5] ,
    \group_reg_r_reg[1][2][4] ,
    \group_reg_r_reg[1][2][3] ,
    \group_reg_r_reg[1][2][2] ,
    \group_reg_r_reg[1][2][1] ,
    \group_reg_r_reg[1][2][0] ,
    \group_reg_r_reg[2][2][6] ,
    \group_reg_r_reg[2][2][6]_0 ,
    \group_reg_r_reg[3][2][7] ,
    \group_reg_r_reg[2][2][7] ,
    \group_reg_r_reg[3][2][6] ,
    \group_reg_r_reg[2][2][6]_1 ,
    \group_reg_r_reg[2][2][4] ,
    \group_reg_r_reg[2][2][5] ,
    \group_reg_r_reg[3][2][5] ,
    \group_reg_r_reg[3][2][4] ,
    \group_reg_r_reg[2][2][2] ,
    \group_reg_r_reg[2][2][3] ,
    \group_reg_r_reg[3][2][3] ,
    \group_reg_r_reg[3][2][2] ,
    \group_reg_r_reg[2][2][0] ,
    \group_reg_r_reg[2][2][1] ,
    \group_reg_r_reg[3][2][1] ,
    \group_reg_r_reg[3][2][0] ,
    \group_reg_r_reg[4][2][6] ,
    \group_reg_r_reg[4][2][6]_0 ,
    \group_reg_r_reg[5][2][7] ,
    \group_reg_r_reg[4][2][7] ,
    \group_reg_r_reg[5][2][6] ,
    \group_reg_r_reg[4][2][6]_1 ,
    \group_reg_r_reg[4][2][4] ,
    \group_reg_r_reg[4][2][5] ,
    \group_reg_r_reg[5][2][5] ,
    \group_reg_r_reg[5][2][4] ,
    \group_reg_r_reg[4][2][2] ,
    \group_reg_r_reg[4][2][3] ,
    \group_reg_r_reg[5][2][3] ,
    \group_reg_r_reg[5][2][2] ,
    \group_reg_r_reg[4][2][0] ,
    \group_reg_r_reg[4][2][1] ,
    \group_reg_r_reg[5][2][1] ,
    \group_reg_r_reg[5][2][0] ,
    \group_reg_r_reg[6][2][6] ,
    \group_reg_r_reg[6][2][6]_0 ,
    \group_reg_r_reg[7][2][7] ,
    \group_reg_r_reg[6][2][7] ,
    \group_reg_r_reg[7][2][6] ,
    \group_reg_r_reg[6][2][6]_1 ,
    \group_reg_r_reg[6][2][4] ,
    \group_reg_r_reg[6][2][5] ,
    \group_reg_r_reg[7][2][5] ,
    \group_reg_r_reg[7][2][4] ,
    \group_reg_r_reg[6][2][2] ,
    \group_reg_r_reg[6][2][3] ,
    \group_reg_r_reg[7][2][3] ,
    \group_reg_r_reg[7][2][2] ,
    \group_reg_r_reg[6][2][0] ,
    \group_reg_r_reg[6][2][1] ,
    \group_reg_r_reg[7][2][1] ,
    \group_reg_r_reg[7][2][0] ,
    \group_idx_r[7][1]_i_7 ,
    \group_idx_r[7][1]_i_7_0 ,
    Q,
    o_Max2_carry_i_10,
    \group_idx_r_reg[0] ,
    o_Max2_carry_i_10_0,
    o_Max2_carry_i_10_1,
    o_Max2_carry_i_10_2,
    o_Max2_carry_i_10_3,
    \group_idx_r_reg[1] ,
    o_Max2_carry_i_10_4,
    o_Max2_carry_i_10_5,
    o_Max2_carry_i_11__0,
    o_Max2_carry_i_11__0_0,
    \group_idx_r_reg[2] ,
    o_Max2_carry_i_11__0_1,
    o_Max2_carry_i_11__0_2,
    o_Max2_carry_i_11__0_3,
    o_Max2_carry_i_11__0_4,
    \group_idx_r_reg[3] ,
    o_Max2_carry_i_11__0_5,
    o_Max2_carry_i_11__0_6,
    o_Max2_carry_i_10__2,
    o_Max2_carry_i_10__2_0,
    \group_idx_r_reg[4] ,
    o_Max2_carry_i_10__2_1,
    o_Max2_carry_i_10__2_2,
    o_Max2_carry_i_10__2_3,
    o_Max2_carry_i_10__2_4,
    \group_idx_r_reg[5] ,
    o_Max2_carry_i_10__2_5,
    o_Max2_carry_i_10__2_6,
    o_Max2_carry_i_11__3,
    o_Max2_carry_i_11__3_0,
    \group_idx_r_reg[6] ,
    o_Max2_carry_i_11__3_1,
    o_Max2_carry_i_11__3_2,
    o_Max2_carry_i_11__3_3,
    o_Max2_carry_i_11__3_4,
    \group_idx_r_reg[7] ,
    o_Max2_carry_i_11__3_5,
    o_Max2_carry_i_11__3_6);
  output [0:0]CO;
  output [3:0]S;
  output [7:0]group_reg_r;
  output \group_reg_r_reg[1][2][7] ;
  output \group_reg_r_reg[1][2][6] ;
  output [3:0]DI;
  output \group_reg_r_reg[1][2][5] ;
  output \group_reg_r_reg[1][2][4] ;
  output \group_reg_r_reg[1][2][3] ;
  output \group_reg_r_reg[1][2][2] ;
  output \group_reg_r_reg[1][2][1] ;
  output \group_reg_r_reg[1][2][0] ;
  output [3:0]\group_reg_r_reg[2][2][6] ;
  output \group_reg_r_reg[2][2][6]_0 ;
  output \group_reg_r_reg[3][2][7] ;
  output \group_reg_r_reg[2][2][7] ;
  output \group_reg_r_reg[3][2][6] ;
  output [3:0]\group_reg_r_reg[2][2][6]_1 ;
  output \group_reg_r_reg[2][2][4] ;
  output \group_reg_r_reg[2][2][5] ;
  output \group_reg_r_reg[3][2][5] ;
  output \group_reg_r_reg[3][2][4] ;
  output \group_reg_r_reg[2][2][2] ;
  output \group_reg_r_reg[2][2][3] ;
  output \group_reg_r_reg[3][2][3] ;
  output \group_reg_r_reg[3][2][2] ;
  output \group_reg_r_reg[2][2][0] ;
  output \group_reg_r_reg[2][2][1] ;
  output \group_reg_r_reg[3][2][1] ;
  output \group_reg_r_reg[3][2][0] ;
  output [3:0]\group_reg_r_reg[4][2][6] ;
  output \group_reg_r_reg[4][2][6]_0 ;
  output \group_reg_r_reg[5][2][7] ;
  output \group_reg_r_reg[4][2][7] ;
  output \group_reg_r_reg[5][2][6] ;
  output [3:0]\group_reg_r_reg[4][2][6]_1 ;
  output \group_reg_r_reg[4][2][4] ;
  output \group_reg_r_reg[4][2][5] ;
  output \group_reg_r_reg[5][2][5] ;
  output \group_reg_r_reg[5][2][4] ;
  output \group_reg_r_reg[4][2][2] ;
  output \group_reg_r_reg[4][2][3] ;
  output \group_reg_r_reg[5][2][3] ;
  output \group_reg_r_reg[5][2][2] ;
  output \group_reg_r_reg[4][2][0] ;
  output \group_reg_r_reg[4][2][1] ;
  output \group_reg_r_reg[5][2][1] ;
  output \group_reg_r_reg[5][2][0] ;
  output [3:0]\group_reg_r_reg[6][2][6] ;
  output \group_reg_r_reg[6][2][6]_0 ;
  output \group_reg_r_reg[7][2][7] ;
  output \group_reg_r_reg[6][2][7] ;
  output \group_reg_r_reg[7][2][6] ;
  output [3:0]\group_reg_r_reg[6][2][6]_1 ;
  output \group_reg_r_reg[6][2][4] ;
  output \group_reg_r_reg[6][2][5] ;
  output \group_reg_r_reg[7][2][5] ;
  output \group_reg_r_reg[7][2][4] ;
  output \group_reg_r_reg[6][2][2] ;
  output \group_reg_r_reg[6][2][3] ;
  output \group_reg_r_reg[7][2][3] ;
  output \group_reg_r_reg[7][2][2] ;
  output \group_reg_r_reg[6][2][0] ;
  output \group_reg_r_reg[6][2][1] ;
  output \group_reg_r_reg[7][2][1] ;
  output \group_reg_r_reg[7][2][0] ;
  input [3:0]\group_idx_r[7][1]_i_7 ;
  input [3:0]\group_idx_r[7][1]_i_7_0 ;
  input [7:0]Q;
  input [7:0]o_Max2_carry_i_10;
  input [1:0]\group_idx_r_reg[0] ;
  input [7:0]o_Max2_carry_i_10_0;
  input [7:0]o_Max2_carry_i_10_1;
  input [7:0]o_Max2_carry_i_10_2;
  input [7:0]o_Max2_carry_i_10_3;
  input [1:0]\group_idx_r_reg[1] ;
  input [7:0]o_Max2_carry_i_10_4;
  input [7:0]o_Max2_carry_i_10_5;
  input [7:0]o_Max2_carry_i_11__0;
  input [7:0]o_Max2_carry_i_11__0_0;
  input [1:0]\group_idx_r_reg[2] ;
  input [7:0]o_Max2_carry_i_11__0_1;
  input [7:0]o_Max2_carry_i_11__0_2;
  input [7:0]o_Max2_carry_i_11__0_3;
  input [7:0]o_Max2_carry_i_11__0_4;
  input [1:0]\group_idx_r_reg[3] ;
  input [7:0]o_Max2_carry_i_11__0_5;
  input [7:0]o_Max2_carry_i_11__0_6;
  input [7:0]o_Max2_carry_i_10__2;
  input [7:0]o_Max2_carry_i_10__2_0;
  input [1:0]\group_idx_r_reg[4] ;
  input [7:0]o_Max2_carry_i_10__2_1;
  input [7:0]o_Max2_carry_i_10__2_2;
  input [7:0]o_Max2_carry_i_10__2_3;
  input [7:0]o_Max2_carry_i_10__2_4;
  input [1:0]\group_idx_r_reg[5] ;
  input [7:0]o_Max2_carry_i_10__2_5;
  input [7:0]o_Max2_carry_i_10__2_6;
  input [7:0]o_Max2_carry_i_11__3;
  input [7:0]o_Max2_carry_i_11__3_0;
  input [1:0]\group_idx_r_reg[6] ;
  input [7:0]o_Max2_carry_i_11__3_1;
  input [7:0]o_Max2_carry_i_11__3_2;
  input [7:0]o_Max2_carry_i_11__3_3;
  input [7:0]o_Max2_carry_i_11__3_4;
  input [1:0]\group_idx_r_reg[7] ;
  input [7:0]o_Max2_carry_i_11__3_5;
  input [7:0]o_Max2_carry_i_11__3_6;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [7:0]Q;
  wire [3:0]S;
  wire [3:0]\group_idx_r[7][1]_i_7 ;
  wire [3:0]\group_idx_r[7][1]_i_7_0 ;
  wire [1:0]\group_idx_r_reg[0] ;
  wire [1:0]\group_idx_r_reg[1] ;
  wire [1:0]\group_idx_r_reg[2] ;
  wire [1:0]\group_idx_r_reg[3] ;
  wire [1:0]\group_idx_r_reg[4] ;
  wire [1:0]\group_idx_r_reg[5] ;
  wire [1:0]\group_idx_r_reg[6] ;
  wire [1:0]\group_idx_r_reg[7] ;
  wire [7:0]group_reg_r;
  wire \group_reg_r_reg[1][2][0] ;
  wire \group_reg_r_reg[1][2][1] ;
  wire \group_reg_r_reg[1][2][2] ;
  wire \group_reg_r_reg[1][2][3] ;
  wire \group_reg_r_reg[1][2][4] ;
  wire \group_reg_r_reg[1][2][5] ;
  wire \group_reg_r_reg[1][2][6] ;
  wire \group_reg_r_reg[1][2][7] ;
  wire \group_reg_r_reg[2][2][0] ;
  wire \group_reg_r_reg[2][2][1] ;
  wire \group_reg_r_reg[2][2][2] ;
  wire \group_reg_r_reg[2][2][3] ;
  wire \group_reg_r_reg[2][2][4] ;
  wire \group_reg_r_reg[2][2][5] ;
  wire [3:0]\group_reg_r_reg[2][2][6] ;
  wire \group_reg_r_reg[2][2][6]_0 ;
  wire [3:0]\group_reg_r_reg[2][2][6]_1 ;
  wire \group_reg_r_reg[2][2][7] ;
  wire \group_reg_r_reg[3][2][0] ;
  wire \group_reg_r_reg[3][2][1] ;
  wire \group_reg_r_reg[3][2][2] ;
  wire \group_reg_r_reg[3][2][3] ;
  wire \group_reg_r_reg[3][2][4] ;
  wire \group_reg_r_reg[3][2][5] ;
  wire \group_reg_r_reg[3][2][6] ;
  wire \group_reg_r_reg[3][2][7] ;
  wire \group_reg_r_reg[4][2][0] ;
  wire \group_reg_r_reg[4][2][1] ;
  wire \group_reg_r_reg[4][2][2] ;
  wire \group_reg_r_reg[4][2][3] ;
  wire \group_reg_r_reg[4][2][4] ;
  wire \group_reg_r_reg[4][2][5] ;
  wire [3:0]\group_reg_r_reg[4][2][6] ;
  wire \group_reg_r_reg[4][2][6]_0 ;
  wire [3:0]\group_reg_r_reg[4][2][6]_1 ;
  wire \group_reg_r_reg[4][2][7] ;
  wire \group_reg_r_reg[5][2][0] ;
  wire \group_reg_r_reg[5][2][1] ;
  wire \group_reg_r_reg[5][2][2] ;
  wire \group_reg_r_reg[5][2][3] ;
  wire \group_reg_r_reg[5][2][4] ;
  wire \group_reg_r_reg[5][2][5] ;
  wire \group_reg_r_reg[5][2][6] ;
  wire \group_reg_r_reg[5][2][7] ;
  wire \group_reg_r_reg[6][2][0] ;
  wire \group_reg_r_reg[6][2][1] ;
  wire \group_reg_r_reg[6][2][2] ;
  wire \group_reg_r_reg[6][2][3] ;
  wire \group_reg_r_reg[6][2][4] ;
  wire \group_reg_r_reg[6][2][5] ;
  wire [3:0]\group_reg_r_reg[6][2][6] ;
  wire \group_reg_r_reg[6][2][6]_0 ;
  wire [3:0]\group_reg_r_reg[6][2][6]_1 ;
  wire \group_reg_r_reg[6][2][7] ;
  wire \group_reg_r_reg[7][2][0] ;
  wire \group_reg_r_reg[7][2][1] ;
  wire \group_reg_r_reg[7][2][2] ;
  wire \group_reg_r_reg[7][2][3] ;
  wire \group_reg_r_reg[7][2][4] ;
  wire \group_reg_r_reg[7][2][5] ;
  wire \group_reg_r_reg[7][2][6] ;
  wire \group_reg_r_reg[7][2][7] ;
  wire [7:0]o_Max2_carry_i_10;
  wire [7:0]o_Max2_carry_i_10_0;
  wire [7:0]o_Max2_carry_i_10_1;
  wire [7:0]o_Max2_carry_i_10_2;
  wire [7:0]o_Max2_carry_i_10_3;
  wire [7:0]o_Max2_carry_i_10_4;
  wire [7:0]o_Max2_carry_i_10_5;
  wire [7:0]o_Max2_carry_i_10__2;
  wire [7:0]o_Max2_carry_i_10__2_0;
  wire [7:0]o_Max2_carry_i_10__2_1;
  wire [7:0]o_Max2_carry_i_10__2_2;
  wire [7:0]o_Max2_carry_i_10__2_3;
  wire [7:0]o_Max2_carry_i_10__2_4;
  wire [7:0]o_Max2_carry_i_10__2_5;
  wire [7:0]o_Max2_carry_i_10__2_6;
  wire [7:0]o_Max2_carry_i_11__0;
  wire [7:0]o_Max2_carry_i_11__0_0;
  wire [7:0]o_Max2_carry_i_11__0_1;
  wire [7:0]o_Max2_carry_i_11__0_2;
  wire [7:0]o_Max2_carry_i_11__0_3;
  wire [7:0]o_Max2_carry_i_11__0_4;
  wire [7:0]o_Max2_carry_i_11__0_5;
  wire [7:0]o_Max2_carry_i_11__0_6;
  wire [7:0]o_Max2_carry_i_11__3;
  wire [7:0]o_Max2_carry_i_11__3_0;
  wire [7:0]o_Max2_carry_i_11__3_1;
  wire [7:0]o_Max2_carry_i_11__3_2;
  wire [7:0]o_Max2_carry_i_11__3_3;
  wire [7:0]o_Max2_carry_i_11__3_4;
  wire [7:0]o_Max2_carry_i_11__3_5;
  wire [7:0]o_Max2_carry_i_11__3_6;
  wire o_Max2_carry_n_12;
  wire o_Max2_carry_n_13;
  wire o_Max2_carry_n_14;
  wire [3:0]NLW_o_Max2_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_Max2_carry
       (.CI(1'b0),
        .CO({CO,o_Max2_carry_n_12,o_Max2_carry_n_13,o_Max2_carry_n_14}),
        .CYINIT(1'b0),
        .DI(\group_idx_r[7][1]_i_7 ),
        .O(NLW_o_Max2_carry_O_UNCONNECTED[3:0]),
        .S(\group_idx_r[7][1]_i_7_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_10__0
       (.I0(Q[7]),
        .I1(o_Max2_carry_i_10[7]),
        .I2(\group_idx_r_reg[0] [1]),
        .I3(\group_idx_r_reg[0] [0]),
        .I4(o_Max2_carry_i_10_0[7]),
        .I5(o_Max2_carry_i_10_1[7]),
        .O(group_reg_r[7]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_10__1
       (.I0(o_Max2_carry_i_11__0[7]),
        .I1(o_Max2_carry_i_11__0_0[7]),
        .I2(\group_idx_r_reg[2] [1]),
        .I3(\group_idx_r_reg[2] [0]),
        .I4(o_Max2_carry_i_11__0_1[7]),
        .I5(o_Max2_carry_i_11__0_2[7]),
        .O(\group_reg_r_reg[2][2][7] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_10__3
       (.I0(o_Max2_carry_i_10__2[7]),
        .I1(o_Max2_carry_i_10__2_0[7]),
        .I2(\group_idx_r_reg[4] [1]),
        .I3(\group_idx_r_reg[4] [0]),
        .I4(o_Max2_carry_i_10__2_1[7]),
        .I5(o_Max2_carry_i_10__2_2[7]),
        .O(\group_reg_r_reg[4][2][7] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_10__4
       (.I0(o_Max2_carry_i_11__3[7]),
        .I1(o_Max2_carry_i_11__3_0[7]),
        .I2(\group_idx_r_reg[6] [1]),
        .I3(\group_idx_r_reg[6] [0]),
        .I4(o_Max2_carry_i_11__3_1[7]),
        .I5(o_Max2_carry_i_11__3_2[7]),
        .O(\group_reg_r_reg[6][2][7] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_11
       (.I0(o_Max2_carry_i_10_2[7]),
        .I1(o_Max2_carry_i_10_3[7]),
        .I2(\group_idx_r_reg[1] [1]),
        .I3(\group_idx_r_reg[1] [0]),
        .I4(o_Max2_carry_i_10_4[7]),
        .I5(o_Max2_carry_i_10_5[7]),
        .O(\group_reg_r_reg[1][2][7] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_11__1
       (.I0(o_Max2_carry_i_11__0_3[7]),
        .I1(o_Max2_carry_i_11__0_4[7]),
        .I2(\group_idx_r_reg[3] [1]),
        .I3(\group_idx_r_reg[3] [0]),
        .I4(o_Max2_carry_i_11__0_5[7]),
        .I5(o_Max2_carry_i_11__0_6[7]),
        .O(\group_reg_r_reg[3][2][7] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_11__2
       (.I0(o_Max2_carry_i_10__2_3[7]),
        .I1(o_Max2_carry_i_10__2_4[7]),
        .I2(\group_idx_r_reg[5] [1]),
        .I3(\group_idx_r_reg[5] [0]),
        .I4(o_Max2_carry_i_10__2_5[7]),
        .I5(o_Max2_carry_i_10__2_6[7]),
        .O(\group_reg_r_reg[5][2][7] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_11__4
       (.I0(o_Max2_carry_i_11__3_3[7]),
        .I1(o_Max2_carry_i_11__3_4[7]),
        .I2(\group_idx_r_reg[7] [1]),
        .I3(\group_idx_r_reg[7] [0]),
        .I4(o_Max2_carry_i_11__3_5[7]),
        .I5(o_Max2_carry_i_11__3_6[7]),
        .O(\group_reg_r_reg[7][2][7] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_12
       (.I0(o_Max2_carry_i_10_2[6]),
        .I1(o_Max2_carry_i_10_3[6]),
        .I2(\group_idx_r_reg[1] [1]),
        .I3(\group_idx_r_reg[1] [0]),
        .I4(o_Max2_carry_i_10_4[6]),
        .I5(o_Max2_carry_i_10_5[6]),
        .O(\group_reg_r_reg[1][2][6] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_12__1
       (.I0(o_Max2_carry_i_11__0_3[6]),
        .I1(o_Max2_carry_i_11__0_4[6]),
        .I2(\group_idx_r_reg[3] [1]),
        .I3(\group_idx_r_reg[3] [0]),
        .I4(o_Max2_carry_i_11__0_5[6]),
        .I5(o_Max2_carry_i_11__0_6[6]),
        .O(\group_reg_r_reg[3][2][6] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_12__2
       (.I0(o_Max2_carry_i_10__2_3[6]),
        .I1(o_Max2_carry_i_10__2_4[6]),
        .I2(\group_idx_r_reg[5] [1]),
        .I3(\group_idx_r_reg[5] [0]),
        .I4(o_Max2_carry_i_10__2_5[6]),
        .I5(o_Max2_carry_i_10__2_6[6]),
        .O(\group_reg_r_reg[5][2][6] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_12__4
       (.I0(o_Max2_carry_i_11__3_3[6]),
        .I1(o_Max2_carry_i_11__3_4[6]),
        .I2(\group_idx_r_reg[7] [1]),
        .I3(\group_idx_r_reg[7] [0]),
        .I4(o_Max2_carry_i_11__3_5[6]),
        .I5(o_Max2_carry_i_11__3_6[6]),
        .O(\group_reg_r_reg[7][2][6] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_13__0
       (.I0(Q[4]),
        .I1(o_Max2_carry_i_10[4]),
        .I2(\group_idx_r_reg[0] [1]),
        .I3(\group_idx_r_reg[0] [0]),
        .I4(o_Max2_carry_i_10_0[4]),
        .I5(o_Max2_carry_i_10_1[4]),
        .O(group_reg_r[4]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_13__1
       (.I0(o_Max2_carry_i_11__0[4]),
        .I1(o_Max2_carry_i_11__0_0[4]),
        .I2(\group_idx_r_reg[2] [1]),
        .I3(\group_idx_r_reg[2] [0]),
        .I4(o_Max2_carry_i_11__0_1[4]),
        .I5(o_Max2_carry_i_11__0_2[4]),
        .O(\group_reg_r_reg[2][2][4] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_13__3
       (.I0(o_Max2_carry_i_10__2[4]),
        .I1(o_Max2_carry_i_10__2_0[4]),
        .I2(\group_idx_r_reg[4] [1]),
        .I3(\group_idx_r_reg[4] [0]),
        .I4(o_Max2_carry_i_10__2_1[4]),
        .I5(o_Max2_carry_i_10__2_2[4]),
        .O(\group_reg_r_reg[4][2][4] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_13__4
       (.I0(o_Max2_carry_i_11__3[4]),
        .I1(o_Max2_carry_i_11__3_0[4]),
        .I2(\group_idx_r_reg[6] [1]),
        .I3(\group_idx_r_reg[6] [0]),
        .I4(o_Max2_carry_i_11__3_1[4]),
        .I5(o_Max2_carry_i_11__3_2[4]),
        .O(\group_reg_r_reg[6][2][4] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_14
       (.I0(o_Max2_carry_i_10_2[5]),
        .I1(o_Max2_carry_i_10_3[5]),
        .I2(\group_idx_r_reg[1] [1]),
        .I3(\group_idx_r_reg[1] [0]),
        .I4(o_Max2_carry_i_10_4[5]),
        .I5(o_Max2_carry_i_10_5[5]),
        .O(\group_reg_r_reg[1][2][5] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_14__1
       (.I0(o_Max2_carry_i_11__0_3[5]),
        .I1(o_Max2_carry_i_11__0_4[5]),
        .I2(\group_idx_r_reg[3] [1]),
        .I3(\group_idx_r_reg[3] [0]),
        .I4(o_Max2_carry_i_11__0_5[5]),
        .I5(o_Max2_carry_i_11__0_6[5]),
        .O(\group_reg_r_reg[3][2][5] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_14__2
       (.I0(o_Max2_carry_i_10__2_3[5]),
        .I1(o_Max2_carry_i_10__2_4[5]),
        .I2(\group_idx_r_reg[5] [1]),
        .I3(\group_idx_r_reg[5] [0]),
        .I4(o_Max2_carry_i_10__2_5[5]),
        .I5(o_Max2_carry_i_10__2_6[5]),
        .O(\group_reg_r_reg[5][2][5] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_14__4
       (.I0(o_Max2_carry_i_11__3_3[5]),
        .I1(o_Max2_carry_i_11__3_4[5]),
        .I2(\group_idx_r_reg[7] [1]),
        .I3(\group_idx_r_reg[7] [0]),
        .I4(o_Max2_carry_i_11__3_5[5]),
        .I5(o_Max2_carry_i_11__3_6[5]),
        .O(\group_reg_r_reg[7][2][5] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_15__0
       (.I0(Q[5]),
        .I1(o_Max2_carry_i_10[5]),
        .I2(\group_idx_r_reg[0] [1]),
        .I3(\group_idx_r_reg[0] [0]),
        .I4(o_Max2_carry_i_10_0[5]),
        .I5(o_Max2_carry_i_10_1[5]),
        .O(group_reg_r[5]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_15__1
       (.I0(o_Max2_carry_i_11__0[5]),
        .I1(o_Max2_carry_i_11__0_0[5]),
        .I2(\group_idx_r_reg[2] [1]),
        .I3(\group_idx_r_reg[2] [0]),
        .I4(o_Max2_carry_i_11__0_1[5]),
        .I5(o_Max2_carry_i_11__0_2[5]),
        .O(\group_reg_r_reg[2][2][5] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_15__3
       (.I0(o_Max2_carry_i_10__2[5]),
        .I1(o_Max2_carry_i_10__2_0[5]),
        .I2(\group_idx_r_reg[4] [1]),
        .I3(\group_idx_r_reg[4] [0]),
        .I4(o_Max2_carry_i_10__2_1[5]),
        .I5(o_Max2_carry_i_10__2_2[5]),
        .O(\group_reg_r_reg[4][2][5] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_15__4
       (.I0(o_Max2_carry_i_11__3[5]),
        .I1(o_Max2_carry_i_11__3_0[5]),
        .I2(\group_idx_r_reg[6] [1]),
        .I3(\group_idx_r_reg[6] [0]),
        .I4(o_Max2_carry_i_11__3_1[5]),
        .I5(o_Max2_carry_i_11__3_2[5]),
        .O(\group_reg_r_reg[6][2][5] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_16
       (.I0(o_Max2_carry_i_10_2[4]),
        .I1(o_Max2_carry_i_10_3[4]),
        .I2(\group_idx_r_reg[1] [1]),
        .I3(\group_idx_r_reg[1] [0]),
        .I4(o_Max2_carry_i_10_4[4]),
        .I5(o_Max2_carry_i_10_5[4]),
        .O(\group_reg_r_reg[1][2][4] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_16__1
       (.I0(o_Max2_carry_i_11__0_3[4]),
        .I1(o_Max2_carry_i_11__0_4[4]),
        .I2(\group_idx_r_reg[3] [1]),
        .I3(\group_idx_r_reg[3] [0]),
        .I4(o_Max2_carry_i_11__0_5[4]),
        .I5(o_Max2_carry_i_11__0_6[4]),
        .O(\group_reg_r_reg[3][2][4] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_16__2
       (.I0(o_Max2_carry_i_10__2_3[4]),
        .I1(o_Max2_carry_i_10__2_4[4]),
        .I2(\group_idx_r_reg[5] [1]),
        .I3(\group_idx_r_reg[5] [0]),
        .I4(o_Max2_carry_i_10__2_5[4]),
        .I5(o_Max2_carry_i_10__2_6[4]),
        .O(\group_reg_r_reg[5][2][4] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_16__4
       (.I0(o_Max2_carry_i_11__3_3[4]),
        .I1(o_Max2_carry_i_11__3_4[4]),
        .I2(\group_idx_r_reg[7] [1]),
        .I3(\group_idx_r_reg[7] [0]),
        .I4(o_Max2_carry_i_11__3_5[4]),
        .I5(o_Max2_carry_i_11__3_6[4]),
        .O(\group_reg_r_reg[7][2][4] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_17__0
       (.I0(Q[2]),
        .I1(o_Max2_carry_i_10[2]),
        .I2(\group_idx_r_reg[0] [1]),
        .I3(\group_idx_r_reg[0] [0]),
        .I4(o_Max2_carry_i_10_0[2]),
        .I5(o_Max2_carry_i_10_1[2]),
        .O(group_reg_r[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_17__1
       (.I0(o_Max2_carry_i_11__0[2]),
        .I1(o_Max2_carry_i_11__0_0[2]),
        .I2(\group_idx_r_reg[2] [1]),
        .I3(\group_idx_r_reg[2] [0]),
        .I4(o_Max2_carry_i_11__0_1[2]),
        .I5(o_Max2_carry_i_11__0_2[2]),
        .O(\group_reg_r_reg[2][2][2] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_17__3
       (.I0(o_Max2_carry_i_10__2[2]),
        .I1(o_Max2_carry_i_10__2_0[2]),
        .I2(\group_idx_r_reg[4] [1]),
        .I3(\group_idx_r_reg[4] [0]),
        .I4(o_Max2_carry_i_10__2_1[2]),
        .I5(o_Max2_carry_i_10__2_2[2]),
        .O(\group_reg_r_reg[4][2][2] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_17__4
       (.I0(o_Max2_carry_i_11__3[2]),
        .I1(o_Max2_carry_i_11__3_0[2]),
        .I2(\group_idx_r_reg[6] [1]),
        .I3(\group_idx_r_reg[6] [0]),
        .I4(o_Max2_carry_i_11__3_1[2]),
        .I5(o_Max2_carry_i_11__3_2[2]),
        .O(\group_reg_r_reg[6][2][2] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_18
       (.I0(o_Max2_carry_i_10_2[3]),
        .I1(o_Max2_carry_i_10_3[3]),
        .I2(\group_idx_r_reg[1] [1]),
        .I3(\group_idx_r_reg[1] [0]),
        .I4(o_Max2_carry_i_10_4[3]),
        .I5(o_Max2_carry_i_10_5[3]),
        .O(\group_reg_r_reg[1][2][3] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_18__1
       (.I0(o_Max2_carry_i_11__0_3[3]),
        .I1(o_Max2_carry_i_11__0_4[3]),
        .I2(\group_idx_r_reg[3] [1]),
        .I3(\group_idx_r_reg[3] [0]),
        .I4(o_Max2_carry_i_11__0_5[3]),
        .I5(o_Max2_carry_i_11__0_6[3]),
        .O(\group_reg_r_reg[3][2][3] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_18__2
       (.I0(o_Max2_carry_i_10__2_3[3]),
        .I1(o_Max2_carry_i_10__2_4[3]),
        .I2(\group_idx_r_reg[5] [1]),
        .I3(\group_idx_r_reg[5] [0]),
        .I4(o_Max2_carry_i_10__2_5[3]),
        .I5(o_Max2_carry_i_10__2_6[3]),
        .O(\group_reg_r_reg[5][2][3] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_18__4
       (.I0(o_Max2_carry_i_11__3_3[3]),
        .I1(o_Max2_carry_i_11__3_4[3]),
        .I2(\group_idx_r_reg[7] [1]),
        .I3(\group_idx_r_reg[7] [0]),
        .I4(o_Max2_carry_i_11__3_5[3]),
        .I5(o_Max2_carry_i_11__3_6[3]),
        .O(\group_reg_r_reg[7][2][3] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_19__0
       (.I0(Q[3]),
        .I1(o_Max2_carry_i_10[3]),
        .I2(\group_idx_r_reg[0] [1]),
        .I3(\group_idx_r_reg[0] [0]),
        .I4(o_Max2_carry_i_10_0[3]),
        .I5(o_Max2_carry_i_10_1[3]),
        .O(group_reg_r[3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_19__1
       (.I0(o_Max2_carry_i_11__0[3]),
        .I1(o_Max2_carry_i_11__0_0[3]),
        .I2(\group_idx_r_reg[2] [1]),
        .I3(\group_idx_r_reg[2] [0]),
        .I4(o_Max2_carry_i_11__0_1[3]),
        .I5(o_Max2_carry_i_11__0_2[3]),
        .O(\group_reg_r_reg[2][2][3] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_19__3
       (.I0(o_Max2_carry_i_10__2[3]),
        .I1(o_Max2_carry_i_10__2_0[3]),
        .I2(\group_idx_r_reg[4] [1]),
        .I3(\group_idx_r_reg[4] [0]),
        .I4(o_Max2_carry_i_10__2_1[3]),
        .I5(o_Max2_carry_i_10__2_2[3]),
        .O(\group_reg_r_reg[4][2][3] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_19__4
       (.I0(o_Max2_carry_i_11__3[3]),
        .I1(o_Max2_carry_i_11__3_0[3]),
        .I2(\group_idx_r_reg[6] [1]),
        .I3(\group_idx_r_reg[6] [0]),
        .I4(o_Max2_carry_i_11__3_1[3]),
        .I5(o_Max2_carry_i_11__3_2[3]),
        .O(\group_reg_r_reg[6][2][3] ));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_1__1
       (.I0(group_reg_r[6]),
        .I1(group_reg_r[7]),
        .I2(\group_reg_r_reg[1][2][7] ),
        .I3(\group_reg_r_reg[1][2][6] ),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_1__2
       (.I0(\group_reg_r_reg[2][2][6]_0 ),
        .I1(\group_reg_r_reg[2][2][7] ),
        .I2(\group_reg_r_reg[3][2][7] ),
        .I3(\group_reg_r_reg[3][2][6] ),
        .O(\group_reg_r_reg[2][2][6]_1 [3]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_1__4
       (.I0(\group_reg_r_reg[4][2][6]_0 ),
        .I1(\group_reg_r_reg[4][2][7] ),
        .I2(\group_reg_r_reg[5][2][7] ),
        .I3(\group_reg_r_reg[5][2][6] ),
        .O(\group_reg_r_reg[4][2][6]_1 [3]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_1__5
       (.I0(\group_reg_r_reg[6][2][6]_0 ),
        .I1(\group_reg_r_reg[6][2][7] ),
        .I2(\group_reg_r_reg[7][2][7] ),
        .I3(\group_reg_r_reg[7][2][6] ),
        .O(\group_reg_r_reg[6][2][6]_1 [3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_20
       (.I0(o_Max2_carry_i_10_2[2]),
        .I1(o_Max2_carry_i_10_3[2]),
        .I2(\group_idx_r_reg[1] [1]),
        .I3(\group_idx_r_reg[1] [0]),
        .I4(o_Max2_carry_i_10_4[2]),
        .I5(o_Max2_carry_i_10_5[2]),
        .O(\group_reg_r_reg[1][2][2] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_20__1
       (.I0(o_Max2_carry_i_11__0_3[2]),
        .I1(o_Max2_carry_i_11__0_4[2]),
        .I2(\group_idx_r_reg[3] [1]),
        .I3(\group_idx_r_reg[3] [0]),
        .I4(o_Max2_carry_i_11__0_5[2]),
        .I5(o_Max2_carry_i_11__0_6[2]),
        .O(\group_reg_r_reg[3][2][2] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_20__2
       (.I0(o_Max2_carry_i_10__2_3[2]),
        .I1(o_Max2_carry_i_10__2_4[2]),
        .I2(\group_idx_r_reg[5] [1]),
        .I3(\group_idx_r_reg[5] [0]),
        .I4(o_Max2_carry_i_10__2_5[2]),
        .I5(o_Max2_carry_i_10__2_6[2]),
        .O(\group_reg_r_reg[5][2][2] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_20__4
       (.I0(o_Max2_carry_i_11__3_3[2]),
        .I1(o_Max2_carry_i_11__3_4[2]),
        .I2(\group_idx_r_reg[7] [1]),
        .I3(\group_idx_r_reg[7] [0]),
        .I4(o_Max2_carry_i_11__3_5[2]),
        .I5(o_Max2_carry_i_11__3_6[2]),
        .O(\group_reg_r_reg[7][2][2] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_21__0
       (.I0(Q[0]),
        .I1(o_Max2_carry_i_10[0]),
        .I2(\group_idx_r_reg[0] [1]),
        .I3(\group_idx_r_reg[0] [0]),
        .I4(o_Max2_carry_i_10_0[0]),
        .I5(o_Max2_carry_i_10_1[0]),
        .O(group_reg_r[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_21__1
       (.I0(o_Max2_carry_i_11__0[0]),
        .I1(o_Max2_carry_i_11__0_0[0]),
        .I2(\group_idx_r_reg[2] [1]),
        .I3(\group_idx_r_reg[2] [0]),
        .I4(o_Max2_carry_i_11__0_1[0]),
        .I5(o_Max2_carry_i_11__0_2[0]),
        .O(\group_reg_r_reg[2][2][0] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_21__3
       (.I0(o_Max2_carry_i_10__2[0]),
        .I1(o_Max2_carry_i_10__2_0[0]),
        .I2(\group_idx_r_reg[4] [1]),
        .I3(\group_idx_r_reg[4] [0]),
        .I4(o_Max2_carry_i_10__2_1[0]),
        .I5(o_Max2_carry_i_10__2_2[0]),
        .O(\group_reg_r_reg[4][2][0] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_21__4
       (.I0(o_Max2_carry_i_11__3[0]),
        .I1(o_Max2_carry_i_11__3_0[0]),
        .I2(\group_idx_r_reg[6] [1]),
        .I3(\group_idx_r_reg[6] [0]),
        .I4(o_Max2_carry_i_11__3_1[0]),
        .I5(o_Max2_carry_i_11__3_2[0]),
        .O(\group_reg_r_reg[6][2][0] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_22
       (.I0(o_Max2_carry_i_10_2[1]),
        .I1(o_Max2_carry_i_10_3[1]),
        .I2(\group_idx_r_reg[1] [1]),
        .I3(\group_idx_r_reg[1] [0]),
        .I4(o_Max2_carry_i_10_4[1]),
        .I5(o_Max2_carry_i_10_5[1]),
        .O(\group_reg_r_reg[1][2][1] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_22__1
       (.I0(o_Max2_carry_i_11__0_3[1]),
        .I1(o_Max2_carry_i_11__0_4[1]),
        .I2(\group_idx_r_reg[3] [1]),
        .I3(\group_idx_r_reg[3] [0]),
        .I4(o_Max2_carry_i_11__0_5[1]),
        .I5(o_Max2_carry_i_11__0_6[1]),
        .O(\group_reg_r_reg[3][2][1] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_22__2
       (.I0(o_Max2_carry_i_10__2_3[1]),
        .I1(o_Max2_carry_i_10__2_4[1]),
        .I2(\group_idx_r_reg[5] [1]),
        .I3(\group_idx_r_reg[5] [0]),
        .I4(o_Max2_carry_i_10__2_5[1]),
        .I5(o_Max2_carry_i_10__2_6[1]),
        .O(\group_reg_r_reg[5][2][1] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_22__4
       (.I0(o_Max2_carry_i_11__3_3[1]),
        .I1(o_Max2_carry_i_11__3_4[1]),
        .I2(\group_idx_r_reg[7] [1]),
        .I3(\group_idx_r_reg[7] [0]),
        .I4(o_Max2_carry_i_11__3_5[1]),
        .I5(o_Max2_carry_i_11__3_6[1]),
        .O(\group_reg_r_reg[7][2][1] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_23__0
       (.I0(Q[1]),
        .I1(o_Max2_carry_i_10[1]),
        .I2(\group_idx_r_reg[0] [1]),
        .I3(\group_idx_r_reg[0] [0]),
        .I4(o_Max2_carry_i_10_0[1]),
        .I5(o_Max2_carry_i_10_1[1]),
        .O(group_reg_r[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_23__1
       (.I0(o_Max2_carry_i_11__0[1]),
        .I1(o_Max2_carry_i_11__0_0[1]),
        .I2(\group_idx_r_reg[2] [1]),
        .I3(\group_idx_r_reg[2] [0]),
        .I4(o_Max2_carry_i_11__0_1[1]),
        .I5(o_Max2_carry_i_11__0_2[1]),
        .O(\group_reg_r_reg[2][2][1] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_23__3
       (.I0(o_Max2_carry_i_10__2[1]),
        .I1(o_Max2_carry_i_10__2_0[1]),
        .I2(\group_idx_r_reg[4] [1]),
        .I3(\group_idx_r_reg[4] [0]),
        .I4(o_Max2_carry_i_10__2_1[1]),
        .I5(o_Max2_carry_i_10__2_2[1]),
        .O(\group_reg_r_reg[4][2][1] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_23__4
       (.I0(o_Max2_carry_i_11__3[1]),
        .I1(o_Max2_carry_i_11__3_0[1]),
        .I2(\group_idx_r_reg[6] [1]),
        .I3(\group_idx_r_reg[6] [0]),
        .I4(o_Max2_carry_i_11__3_1[1]),
        .I5(o_Max2_carry_i_11__3_2[1]),
        .O(\group_reg_r_reg[6][2][1] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_24
       (.I0(o_Max2_carry_i_10_2[0]),
        .I1(o_Max2_carry_i_10_3[0]),
        .I2(\group_idx_r_reg[1] [1]),
        .I3(\group_idx_r_reg[1] [0]),
        .I4(o_Max2_carry_i_10_4[0]),
        .I5(o_Max2_carry_i_10_5[0]),
        .O(\group_reg_r_reg[1][2][0] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_24__1
       (.I0(o_Max2_carry_i_11__0_3[0]),
        .I1(o_Max2_carry_i_11__0_4[0]),
        .I2(\group_idx_r_reg[3] [1]),
        .I3(\group_idx_r_reg[3] [0]),
        .I4(o_Max2_carry_i_11__0_5[0]),
        .I5(o_Max2_carry_i_11__0_6[0]),
        .O(\group_reg_r_reg[3][2][0] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_24__2
       (.I0(o_Max2_carry_i_10__2_3[0]),
        .I1(o_Max2_carry_i_10__2_4[0]),
        .I2(\group_idx_r_reg[5] [1]),
        .I3(\group_idx_r_reg[5] [0]),
        .I4(o_Max2_carry_i_10__2_5[0]),
        .I5(o_Max2_carry_i_10__2_6[0]),
        .O(\group_reg_r_reg[5][2][0] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_24__4
       (.I0(o_Max2_carry_i_11__3_3[0]),
        .I1(o_Max2_carry_i_11__3_4[0]),
        .I2(\group_idx_r_reg[7] [1]),
        .I3(\group_idx_r_reg[7] [0]),
        .I4(o_Max2_carry_i_11__3_5[0]),
        .I5(o_Max2_carry_i_11__3_6[0]),
        .O(\group_reg_r_reg[7][2][0] ));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_2__1
       (.I0(group_reg_r[4]),
        .I1(\group_reg_r_reg[1][2][5] ),
        .I2(group_reg_r[5]),
        .I3(\group_reg_r_reg[1][2][4] ),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_2__2
       (.I0(\group_reg_r_reg[2][2][4] ),
        .I1(\group_reg_r_reg[3][2][5] ),
        .I2(\group_reg_r_reg[2][2][5] ),
        .I3(\group_reg_r_reg[3][2][4] ),
        .O(\group_reg_r_reg[2][2][6]_1 [2]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_2__4
       (.I0(\group_reg_r_reg[4][2][4] ),
        .I1(\group_reg_r_reg[5][2][5] ),
        .I2(\group_reg_r_reg[4][2][5] ),
        .I3(\group_reg_r_reg[5][2][4] ),
        .O(\group_reg_r_reg[4][2][6]_1 [2]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_2__5
       (.I0(\group_reg_r_reg[6][2][4] ),
        .I1(\group_reg_r_reg[7][2][5] ),
        .I2(\group_reg_r_reg[6][2][5] ),
        .I3(\group_reg_r_reg[7][2][4] ),
        .O(\group_reg_r_reg[6][2][6]_1 [2]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_3__1
       (.I0(group_reg_r[2]),
        .I1(\group_reg_r_reg[1][2][3] ),
        .I2(group_reg_r[3]),
        .I3(\group_reg_r_reg[1][2][2] ),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_3__2
       (.I0(\group_reg_r_reg[2][2][2] ),
        .I1(\group_reg_r_reg[3][2][3] ),
        .I2(\group_reg_r_reg[2][2][3] ),
        .I3(\group_reg_r_reg[3][2][2] ),
        .O(\group_reg_r_reg[2][2][6]_1 [1]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_3__4
       (.I0(\group_reg_r_reg[4][2][2] ),
        .I1(\group_reg_r_reg[5][2][3] ),
        .I2(\group_reg_r_reg[4][2][3] ),
        .I3(\group_reg_r_reg[5][2][2] ),
        .O(\group_reg_r_reg[4][2][6]_1 [1]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_3__5
       (.I0(\group_reg_r_reg[6][2][2] ),
        .I1(\group_reg_r_reg[7][2][3] ),
        .I2(\group_reg_r_reg[6][2][3] ),
        .I3(\group_reg_r_reg[7][2][2] ),
        .O(\group_reg_r_reg[6][2][6]_1 [1]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_4__1
       (.I0(group_reg_r[0]),
        .I1(\group_reg_r_reg[1][2][1] ),
        .I2(group_reg_r[1]),
        .I3(\group_reg_r_reg[1][2][0] ),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_4__2
       (.I0(\group_reg_r_reg[2][2][0] ),
        .I1(\group_reg_r_reg[3][2][1] ),
        .I2(\group_reg_r_reg[2][2][1] ),
        .I3(\group_reg_r_reg[3][2][0] ),
        .O(\group_reg_r_reg[2][2][6]_1 [0]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_4__4
       (.I0(\group_reg_r_reg[4][2][0] ),
        .I1(\group_reg_r_reg[5][2][1] ),
        .I2(\group_reg_r_reg[4][2][1] ),
        .I3(\group_reg_r_reg[5][2][0] ),
        .O(\group_reg_r_reg[4][2][6]_1 [0]));
  LUT4 #(
    .INIT(16'h30B2)) 
    o_Max2_carry_i_4__5
       (.I0(\group_reg_r_reg[6][2][0] ),
        .I1(\group_reg_r_reg[7][2][1] ),
        .I2(\group_reg_r_reg[6][2][1] ),
        .I3(\group_reg_r_reg[7][2][0] ),
        .O(\group_reg_r_reg[6][2][6]_1 [0]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_5__1
       (.I0(group_reg_r[6]),
        .I1(\group_reg_r_reg[1][2][7] ),
        .I2(group_reg_r[7]),
        .I3(\group_reg_r_reg[1][2][6] ),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_5__2
       (.I0(\group_reg_r_reg[2][2][6]_0 ),
        .I1(\group_reg_r_reg[3][2][7] ),
        .I2(\group_reg_r_reg[2][2][7] ),
        .I3(\group_reg_r_reg[3][2][6] ),
        .O(\group_reg_r_reg[2][2][6] [3]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_5__4
       (.I0(\group_reg_r_reg[4][2][6]_0 ),
        .I1(\group_reg_r_reg[5][2][7] ),
        .I2(\group_reg_r_reg[4][2][7] ),
        .I3(\group_reg_r_reg[5][2][6] ),
        .O(\group_reg_r_reg[4][2][6] [3]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_5__5
       (.I0(\group_reg_r_reg[6][2][6]_0 ),
        .I1(\group_reg_r_reg[7][2][7] ),
        .I2(\group_reg_r_reg[6][2][7] ),
        .I3(\group_reg_r_reg[7][2][6] ),
        .O(\group_reg_r_reg[6][2][6] [3]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_6__1
       (.I0(group_reg_r[4]),
        .I1(group_reg_r[5]),
        .I2(\group_reg_r_reg[1][2][5] ),
        .I3(\group_reg_r_reg[1][2][4] ),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_6__2
       (.I0(\group_reg_r_reg[2][2][4] ),
        .I1(\group_reg_r_reg[2][2][5] ),
        .I2(\group_reg_r_reg[3][2][5] ),
        .I3(\group_reg_r_reg[3][2][4] ),
        .O(\group_reg_r_reg[2][2][6] [2]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_6__4
       (.I0(\group_reg_r_reg[4][2][4] ),
        .I1(\group_reg_r_reg[4][2][5] ),
        .I2(\group_reg_r_reg[5][2][5] ),
        .I3(\group_reg_r_reg[5][2][4] ),
        .O(\group_reg_r_reg[4][2][6] [2]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_6__5
       (.I0(\group_reg_r_reg[6][2][4] ),
        .I1(\group_reg_r_reg[6][2][5] ),
        .I2(\group_reg_r_reg[7][2][5] ),
        .I3(\group_reg_r_reg[7][2][4] ),
        .O(\group_reg_r_reg[6][2][6] [2]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_7__1
       (.I0(group_reg_r[2]),
        .I1(group_reg_r[3]),
        .I2(\group_reg_r_reg[1][2][3] ),
        .I3(\group_reg_r_reg[1][2][2] ),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_7__2
       (.I0(\group_reg_r_reg[2][2][2] ),
        .I1(\group_reg_r_reg[2][2][3] ),
        .I2(\group_reg_r_reg[3][2][3] ),
        .I3(\group_reg_r_reg[3][2][2] ),
        .O(\group_reg_r_reg[2][2][6] [1]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_7__4
       (.I0(\group_reg_r_reg[4][2][2] ),
        .I1(\group_reg_r_reg[4][2][3] ),
        .I2(\group_reg_r_reg[5][2][3] ),
        .I3(\group_reg_r_reg[5][2][2] ),
        .O(\group_reg_r_reg[4][2][6] [1]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_7__5
       (.I0(\group_reg_r_reg[6][2][2] ),
        .I1(\group_reg_r_reg[6][2][3] ),
        .I2(\group_reg_r_reg[7][2][3] ),
        .I3(\group_reg_r_reg[7][2][2] ),
        .O(\group_reg_r_reg[6][2][6] [1]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_8__1
       (.I0(group_reg_r[0]),
        .I1(group_reg_r[1]),
        .I2(\group_reg_r_reg[1][2][1] ),
        .I3(\group_reg_r_reg[1][2][0] ),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_8__2
       (.I0(\group_reg_r_reg[2][2][0] ),
        .I1(\group_reg_r_reg[2][2][1] ),
        .I2(\group_reg_r_reg[3][2][1] ),
        .I3(\group_reg_r_reg[3][2][0] ),
        .O(\group_reg_r_reg[2][2][6] [0]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_8__4
       (.I0(\group_reg_r_reg[4][2][0] ),
        .I1(\group_reg_r_reg[4][2][1] ),
        .I2(\group_reg_r_reg[5][2][1] ),
        .I3(\group_reg_r_reg[5][2][0] ),
        .O(\group_reg_r_reg[4][2][6] [0]));
  LUT4 #(
    .INIT(16'h8241)) 
    o_Max2_carry_i_8__5
       (.I0(\group_reg_r_reg[6][2][0] ),
        .I1(\group_reg_r_reg[6][2][1] ),
        .I2(\group_reg_r_reg[7][2][1] ),
        .I3(\group_reg_r_reg[7][2][0] ),
        .O(\group_reg_r_reg[6][2][6] [0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_9__0
       (.I0(Q[6]),
        .I1(o_Max2_carry_i_10[6]),
        .I2(\group_idx_r_reg[0] [1]),
        .I3(\group_idx_r_reg[0] [0]),
        .I4(o_Max2_carry_i_10_0[6]),
        .I5(o_Max2_carry_i_10_1[6]),
        .O(group_reg_r[6]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_9__1
       (.I0(o_Max2_carry_i_11__0[6]),
        .I1(o_Max2_carry_i_11__0_0[6]),
        .I2(\group_idx_r_reg[2] [1]),
        .I3(\group_idx_r_reg[2] [0]),
        .I4(o_Max2_carry_i_11__0_1[6]),
        .I5(o_Max2_carry_i_11__0_2[6]),
        .O(\group_reg_r_reg[2][2][6]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_9__3
       (.I0(o_Max2_carry_i_10__2[6]),
        .I1(o_Max2_carry_i_10__2_0[6]),
        .I2(\group_idx_r_reg[4] [1]),
        .I3(\group_idx_r_reg[4] [0]),
        .I4(o_Max2_carry_i_10__2_1[6]),
        .I5(o_Max2_carry_i_10__2_2[6]),
        .O(\group_reg_r_reg[4][2][6]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    o_Max2_carry_i_9__4
       (.I0(o_Max2_carry_i_11__3[6]),
        .I1(o_Max2_carry_i_11__3_0[6]),
        .I2(\group_idx_r_reg[6] [1]),
        .I3(\group_idx_r_reg[6] [0]),
        .I4(o_Max2_carry_i_11__3_1[6]),
        .I5(o_Max2_carry_i_11__3_2[6]),
        .O(\group_reg_r_reg[6][2][6]_0 ));
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
