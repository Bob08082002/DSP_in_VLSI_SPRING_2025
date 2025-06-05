//                      CORDIC_original                   //
// NO PIPELINE, only insert register in input and output. //


module CORDIC(
		input Clk,
		input Reset,
		
		input i_vectoring_mode,
		
		input i_in_valid,
		input signed[19:0]i_X, 
		input signed[19:0]i_Y, 
		
		output o_out_valid,
		output signed[19:0]o_X,
		output signed[19:0]o_Y
);
// interconnection
wire signed [19:0]wire_X [0:16];
wire signed [19:0]wire_Y [0:16];

// input, output FF
reg signed [19:0]i_X_FF_r, i_Y_FF_r;
reg signed [19:0]o_X_FF_r, o_Y_FF_r;

// output


// regs // memorize parameters in vectoring mode
reg rotate_180_mem_r; // 1: rorate 180 degree; 0: rorate 0 degree
reg  [15:0]ui_mem_r;   // ui_mem_r == 1: ui = -1; ui_mem_r == 0: ui = +1; // memorize rotated sequence in vectoring mode
wire  [15:0]ui_mem_w;  // ui_mem_r == 1: ui = -1; ui_mem_r == 0: ui = +1; // memorize rotated sequence in vectoring mode


// ---------- initial stage ----------
// *-1
wire signed[19:0]neg_X = (~i_X_FF_r) + 1; // i_X_FF_r * -1
wire signed[19:0]neg_Y = (~i_Y_FF_r) + 1; // i_Y_FF_r * -1

// 2 or 3 quadrants
wire rotate_180_vector_mode = (i_X_FF_r < 0); // ==> 2 or 3 quadrants
wire rotate_180 = (i_vectoring_mode)? rotate_180_vector_mode:rotate_180_mem_r;

// rotate  180 degree
assign wire_X[0] = (rotate_180)? neg_X:i_X_FF_r;
assign wire_Y[0] = (rotate_180)? neg_Y:i_Y_FF_r;

// ---------- N stage ----------
//single_stage single_stage_ux(const_stage_idx, i_vectoring_mode,     i_ui_mem,         i_X,        i_Y,     o_ui_mem,         o_X,        o_Y);
single_stage   single_stage_u0 (             0, i_vectoring_mode, ui_mem_r[ 0],  wire_X[ 0], wire_Y[ 0], ui_mem_w[ 0],  wire_X[ 1], wire_Y[ 1]);
single_stage   single_stage_u1 (             1, i_vectoring_mode, ui_mem_r[ 1],  wire_X[ 1], wire_Y[ 1], ui_mem_w[ 1],  wire_X[ 2], wire_Y[ 2]);
single_stage   single_stage_u2 (             2, i_vectoring_mode, ui_mem_r[ 2],  wire_X[ 2], wire_Y[ 2], ui_mem_w[ 2],  wire_X[ 3], wire_Y[ 3]);
single_stage   single_stage_u3 (             3, i_vectoring_mode, ui_mem_r[ 3],  wire_X[ 3], wire_Y[ 3], ui_mem_w[ 3],  wire_X[ 4], wire_Y[ 4]);
single_stage   single_stage_u4 (             4, i_vectoring_mode, ui_mem_r[ 4],  wire_X[ 4], wire_Y[ 4], ui_mem_w[ 4],  wire_X[ 5], wire_Y[ 5]);
single_stage   single_stage_u5 (             5, i_vectoring_mode, ui_mem_r[ 5],  wire_X[ 5], wire_Y[ 5], ui_mem_w[ 5],  wire_X[ 6], wire_Y[ 6]);
single_stage   single_stage_u6 (             6, i_vectoring_mode, ui_mem_r[ 6],  wire_X[ 6], wire_Y[ 6], ui_mem_w[ 6],  wire_X[ 7], wire_Y[ 7]);
single_stage   single_stage_u7 (             7, i_vectoring_mode, ui_mem_r[ 7],  wire_X[ 7], wire_Y[ 7], ui_mem_w[ 7],  wire_X[ 8], wire_Y[ 8]);
single_stage   single_stage_u8 (             8, i_vectoring_mode, ui_mem_r[ 8],  wire_X[ 8], wire_Y[ 8], ui_mem_w[ 8],  wire_X[ 9], wire_Y[ 9]);
single_stage   single_stage_u9 (             9, i_vectoring_mode, ui_mem_r[ 9],  wire_X[ 9], wire_Y[ 9], ui_mem_w[ 9],  wire_X[10], wire_Y[10]);
single_stage   single_stage_u10(            10, i_vectoring_mode, ui_mem_r[10],  wire_X[10], wire_Y[10], ui_mem_w[10],  wire_X[11], wire_Y[11]);
single_stage   single_stage_u11(            11, i_vectoring_mode, ui_mem_r[11],  wire_X[11], wire_Y[11], ui_mem_w[11],  wire_X[12], wire_Y[12]);
single_stage   single_stage_u12(            12, i_vectoring_mode, ui_mem_r[12],  wire_X[12], wire_Y[12], ui_mem_w[12],  wire_X[13], wire_Y[13]);
single_stage   single_stage_u13(            13, i_vectoring_mode, ui_mem_r[13],  wire_X[13], wire_Y[13], ui_mem_w[13],  wire_X[14], wire_Y[14]);
single_stage   single_stage_u14(            14, i_vectoring_mode, ui_mem_r[14],  wire_X[14], wire_Y[14], ui_mem_w[14],  wire_X[15], wire_Y[15]); 
single_stage   single_stage_u15(            15, i_vectoring_mode, ui_mem_r[15],  wire_X[15], wire_Y[15], ui_mem_w[15],  wire_X[16], wire_Y[16]);

wire signed [19:0]csd_X_in = wire_X[16];
wire signed [19:0]csd_Y_in = wire_Y[16];


// ---------- Magnitude CSD ---------- 
// S*X
// csd_str = inverse(0000010100n00n00n010)
wire signed [19:0]X_shift_1 = csd_X_in >>> 1;
wire signed [19:0]X_shift_3 = csd_X_in >>> 3;
wire signed [19:0]X_shift_6 = csd_X_in >>> 6;
wire signed [19:0]X_shift_9 = csd_X_in >>> 9;
wire signed [19:0]X_shift_12 = csd_X_in >>> 12;
wire signed [19:0]X_shift_14 = csd_X_in >>> 14;


wire signed [19:0]X_sum_1_3 = X_shift_1 + X_shift_3;
wire signed [19:0]X_sum_1_3_14 = X_sum_1_3 + X_shift_14;

wire signed [19:0]X_sum_6_9 = X_shift_6 + X_shift_9;
wire signed [19:0]X_sum_6_9_12 = X_sum_6_9 + X_shift_12;

wire signed [19:0]X_sum = X_sum_1_3_14 - X_sum_6_9_12;


/*
wire signed [19:0]X_shift_5 = csd_X_in >>> 5;
wire signed [19:0]X_shift_7 = csd_X_in >>> 7;
wire signed [19:0]X_shift_10 = csd_X_in >>> 10;
wire signed [19:0]X_shift_13 = csd_X_in >>> 13;
wire signed [19:0]X_shift_16 = csd_X_in >>> 16;
wire signed [19:0]X_shift_18 = csd_X_in >>> 18;


wire signed [19:0]X_sum_5_7 = X_shift_5 + X_shift_7;
wire signed [19:0]X_sum_5_7_18 = X_sum_5_7 + X_shift_18;

wire signed [19:0]X_sum_10_13 = X_shift_10 + X_shift_13;
wire signed [19:0]X_sum_10_13_16 = X_sum_10_13 + X_shift_16;

wire signed [19:0]X_sum = X_sum_5_7_18 - X_sum_10_13_16;
*/

/*
wire signed [19:0]X_shift_1 = csd_X_in >>> 1;
wire signed [19:0]X_shift_3 = csd_X_in >>> 3;
wire signed [19:0]X_shift_6 = csd_X_in >>> 6;
wire signed [19:0]X_shift_9 = csd_X_in >>> 9;
wire signed [19:0]X_shift_12 = csd_X_in >>> 12;
wire signed [19:0]X_shift_14 = csd_X_in >>> 14;


wire signed [19:0]X_sum_1_12 = X_shift_1 + X_shift_12;
wire signed [19:0]X_sum_1_12_14 = X_sum_1_12 + X_shift_14;

wire signed [19:0]X_sum_3_6 = X_shift_3 + X_shift_6;
wire signed [19:0]X_sum_3_6_9 = X_sum_3_6 + X_shift_9;

wire signed [19:0]X_sum = X_sum_1_12_14 - X_sum_3_6_9;
*/


// S*Y
// csd_str = inverse(0000010100n00n00n010)
wire signed [19:0]Y_shift_1  = csd_Y_in >>> 1;
wire signed [19:0]Y_shift_3  = csd_Y_in >>> 3;
wire signed [19:0]Y_shift_6  = csd_Y_in >>> 6;
wire signed [19:0]Y_shift_9  = csd_Y_in >>> 9;
wire signed [19:0]Y_shift_12 = csd_Y_in >>> 12;
wire signed [19:0]Y_shift_14 = csd_Y_in >>> 14;


wire signed [19:0]Y_sum_1_12 = Y_shift_1 + Y_shift_12;
wire signed [19:0]Y_sum_1_12_14 = Y_sum_1_12 + Y_shift_14;
				  
wire signed [19:0]Y_sum_3_6 = Y_shift_3 + Y_shift_6;
wire signed [19:0]Y_sum_3_6_9 = Y_sum_3_6 + Y_shift_9;
				  
wire signed [19:0]Y_sum = Y_sum_1_12_14 - Y_sum_3_6_9;



// flags
// 1 (quadrants 2, 3): rorate 180 degree; 0 (quadrants 1, 4): rorate 0 degree
always@(posedge Clk or posedge Reset)begin
	if(Reset)begin
		rotate_180_mem_r <= 0;
	end
	else if(i_vectoring_mode)begin
		rotate_180_mem_r <= rotate_180_vector_mode;
	end
end
always@(posedge Clk or posedge Reset)begin
	if(Reset)begin
		ui_mem_r <= 0;
	end
	else if(i_vectoring_mode)begin
		ui_mem_r <= ui_mem_w;
	end
end




// input FF // no FF 
always@(*)begin
	i_X_FF_r = i_X;
	i_Y_FF_r = i_Y;
end

/*

// VALID FF
always@(posedge Clk or posedge Reset)begin
	if(Reset)begin
		ValidIn_FF1 <= 0;
		ValidIn_FF2 <= 0;
		ValidIn_FF3 <= 0;
	end
	else begin
		ValidIn_FF1 <= InVaild;
		ValidIn_FF2 <= ValidIn_FF1;
		ValidIn_FF3 <= ValidIn_FF2;
	end
end
// output FF
always@(posedge Clk or posedge Reset)begin
	if(Reset)begin
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
end*/
endmodule






module single_stage (
		// constant
		input signed[4:0] const_stage_idx,
		
		
		input i_vectoring_mode,
		
		
		// memorize rotated sequence in vectoring mode
		input i_ui_mem,  // i_ui_mem == 1: ui = -1; i_ui_mem == 0: ui = +1
		// input X, Y
		input signed [19:0]i_X, 
		input signed [19:0]i_Y, 

		// memorize rotated sequence in vectoring mode
		output o_ui_mem,  // o_ui_mem == 1: ui = -1; o_ui_mem == 0: ui = +1
		// output X, Y
		output signed [19:0]o_X,
		output signed [19:0]o_Y
);
// shift
wire signed[19:0]x_shift = i_X >>> const_stage_idx;
wire signed[19:0]y_shift = i_Y >>> const_stage_idx;

// *-1
wire signed[19:0]neg_x_shift = (~x_shift) + 1; // x_shift * -1
wire signed[19:0]neg_y_shift = (~y_shift) + 1; // y_shift * -1


// ui
wire ui_vector_mode = (i_Y > 0); // ui_vector_mode == 1: ui = -1; ui_vector_mode == 0: ui = +1
wire ui = (i_vectoring_mode)? ui_vector_mode:i_ui_mem;
assign o_ui_mem = ui_vector_mode;

// mux
wire signed[19:0]ui_X = (ui)? neg_x_shift:x_shift;
wire signed[19:0]ui_Y = (ui)? y_shift:neg_y_shift;

// adders
wire signed[19:0]sum_X = i_X + ui_Y;
wire signed[19:0]sum_Y = i_Y + ui_X;


// truncate
assign o_X = sum_X[19:0];
assign o_Y = sum_Y[19:0];

endmodule