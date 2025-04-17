//                      CORDIC_original                   //
// NO PIPELINE, only insert register in input and output. //
`define ANGLE


module CORDIC_original (
		input clk,
		input i_rst,
		input ValidIn,
		input signed[12:0]InX, 
		input signed[12:0]InY, 
		output ValidOut_Theda,
		output ValidOut_Magnitude,
		output signed[13:0]OutX,
		output signed[13:0]OutY,
		output signed[13:0]OutTheda,
		output signed[13:0]Magnitude
);
// interconnection
wire signed [13:0]wire_X [0:11];
wire signed [13:0]wire_Y [0:11];
wire signed [13:0]wire_theda [0:11];
// input, output FF
reg signed[12:0]InX_FF, InY_FF;
reg ValidIn_FF1, ValidIn_FF2, ValidIn_FF3;
reg signed [13:0]OutX_FF, OutY_FF, OutTheda_FF, Magnitude_FF;

// output
assign OutX = OutX_FF;
assign OutY = OutY_FF;
assign ValidOut_Theda = ValidIn_FF2;
assign OutTheda = OutTheda_FF;
assign ValidOut_Magnitude = ValidIn_FF3;
assign Magnitude = Magnitude_FF;




// ---------- initial stage ----------
// *-1
wire signed[12:0]neg_X = (~InX_FF) + 1; // InX_FF * -1
wire signed[12:0]neg_Y = (~InY_FF) + 1; // InY_FF * -1
// 2 or 3 quadrants
wire Is_X_neg = (InX_FF < 0); // ==> 2 or 3 quadrants
wire Is_Y_neg = (InY_FF < 0); // ==> 3 quadrants
// mux
assign wire_X[0] = (Is_X_neg)? neg_X:InX_FF;
assign wire_Y[0] = (Is_X_neg)? neg_Y:InY_FF;
assign wire_theda[0] = (Is_X_neg)? ((Is_Y_neg)? 'b10011011011110:'b01100100100010) : 0; // 'b10011011011110 is -pi, 'b01100100100010 is +pi. // angle offset

// ---------- N stage ----------
`ifdef ANGLE // N = 11
// single_stage single_stage_ux(clk, i_rst, const_stage_idx, const_elementary_angle,       i_X,       i_Y,       i_theda,       o_X,       o_Y,       o_theda);
   single_stage single_stage_u0(clk, i_rst,               0,       'b00011001001000, wire_X[0], wire_Y[0], wire_theda[0], wire_X[1], wire_Y[1], wire_theda[1]);
   single_stage single_stage_u1(clk, i_rst,               1,       'b00001110110110, wire_X[1], wire_Y[1], wire_theda[1], wire_X[2], wire_Y[2], wire_theda[2]);
   single_stage single_stage_u2(clk, i_rst,               2,       'b00000111110110, wire_X[2], wire_Y[2], wire_theda[2], wire_X[3], wire_Y[3], wire_theda[3]);
   single_stage single_stage_u3(clk, i_rst,               3,       'b00000011111111, wire_X[3], wire_Y[3], wire_theda[3], wire_X[4], wire_Y[4], wire_theda[4]);
   single_stage single_stage_u4(clk, i_rst,               4,       'b00000010000000, wire_X[4], wire_Y[4], wire_theda[4], wire_X[5], wire_Y[5], wire_theda[5]);
   single_stage single_stage_u5(clk, i_rst,               5,       'b00000001000000, wire_X[5], wire_Y[5], wire_theda[5], wire_X[6], wire_Y[6], wire_theda[6]);
   single_stage single_stage_u6(clk, i_rst,               6,       'b00000000100000, wire_X[6], wire_Y[6], wire_theda[6], wire_X[7], wire_Y[7], wire_theda[7]);
   single_stage single_stage_u7(clk, i_rst,               7,       'b00000000010000, wire_X[7], wire_Y[7], wire_theda[7], wire_X[8], wire_Y[8], wire_theda[8]);
   single_stage single_stage_u8(clk, i_rst,               8,       'b00000000001000, wire_X[8], wire_Y[8], wire_theda[8], wire_X[9], wire_Y[9], wire_theda[9]);
   single_stage single_stage_u9(clk, i_rst,               9,       'b00000000000100, wire_X[9], wire_Y[9], wire_theda[9],wire_X[10],wire_Y[10],wire_theda[10]);
   single_stage single_stage_u10(clk, i_rst,             10,       'b00000000000010,wire_X[10],wire_Y[10],wire_theda[10],wire_X[11],wire_Y[11],wire_theda[11]);
   wire signed [13:0] X_N = wire_X[11];
   wire signed [13:0] Y_N = wire_Y[11];
   wire signed [13:0] Theda_N = wire_theda[11];
`endif

// ---------- Magnitude CSD ---------- 
// S*X(N)
wire signed [13:0]X_N_shift_1 = OutX_FF >>> 1;
wire signed [13:0]X_N_shift_3 = OutX_FF >>> 3;
wire signed [13:0]X_N_shift_6 = OutX_FF >>> 6;
wire signed [13:0]X_N_shift_9 = OutX_FF >>> 9;
wire signed [13:0]X_N_shift_11 = OutX_FF >>> 11;
wire signed [14:0]sum_1_3 = X_N_shift_1 + X_N_shift_3;
wire signed [14:0]sum_9_11 = X_N_shift_9 + X_N_shift_11;
wire signed [14:0]sum_6_911 = X_N_shift_6 + sum_9_11[13:0];
wire signed [14:0]sum_magnitude = sum_1_3[13:0] - sum_6_911[13:0];


// input FF
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		InX_FF <= 0;
		InY_FF <= 0;
	end
	else begin
		InX_FF <= InX;
		InY_FF <= InY;
	end
end
// VALID FF
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		ValidIn_FF1 <= 0;
		ValidIn_FF2 <= 0;
		ValidIn_FF3 <= 0;
	end
	else begin
		ValidIn_FF1 <= ValidIn;
		ValidIn_FF2 <= ValidIn_FF1;
		ValidIn_FF3 <= ValidIn_FF2;
	end
end
// output FF
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		OutX_FF <= 0;
		OutY_FF <= 0;
		OutTheda_FF <= 0;
		Magnitude_FF <= 0;
	end
	else begin
		OutX_FF <= X_N;
		OutY_FF <= Y_N;
		OutTheda_FF <= Theda_N;
		Magnitude_FF <= sum_magnitude;
	end
end
endmodule






module single_stage (
		input clk,
		input i_rst,
		// constant
		input signed[4:0] const_stage_idx,
		input signed [13:0]const_elementary_angle,

		// input //(3.11)
		input signed [13:0]i_X, 
		input signed [13:0]i_Y, 
		input signed [13:0]i_theda, 
		
		// output //(3.11)
		output signed [13:0]o_X,
		output signed [13:0]o_Y,
		output signed [13:0]o_theda
);
// shift
wire signed[13:0]x_shift = i_X >>> const_stage_idx;
wire signed[13:0]y_shift = i_Y >>> const_stage_idx;

// *-1
wire signed[13:0]neg_x_shift = (~x_shift) + 1; // x_shift * -1
wire signed[13:0]neg_y_shift = (~y_shift) + 1; // y_shift * -1
wire signed[13:0]neg_elementary_angle = (~const_elementary_angle) + 1; // const_elementary_angle * -1

// ui
wire Is_Y_pos = (i_Y >= 0);

// mux
wire signed[13:0]ui_X = (Is_Y_pos)? neg_x_shift:x_shift;
wire signed[13:0]ui_Y = (Is_Y_pos)? y_shift:neg_y_shift;
wire signed[13:0]ui_elementary_angle = (Is_Y_pos)?const_elementary_angle:neg_elementary_angle;

// adders //(4.11) = (3.11) + (3.11)
wire signed[14:0]sum_X = i_X + ui_Y;
wire signed[14:0]sum_Y = i_Y + ui_X;
wire signed[14:0]sum_theda = i_theda + ui_elementary_angle;


// truncate
assign o_X = sum_X[13:0];
assign o_Y = sum_Y[13:0];
assign o_theda = sum_theda[13:0];

endmodule