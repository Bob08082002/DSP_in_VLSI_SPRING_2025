//                      CORDIC_original                   //
// NO PIPELINE, only insert register in input and output. //
module CORDIC#(
        parameter C_IWL = 5,
        parameter C_FWL = 15
)(
		input Clk,
		input Reset, // rst_n
		
		input i_vectoring_mode,
		input signed[C_IWL+C_FWL-1:0]i_X, 
		input signed[C_IWL+C_FWL-1:0]i_Y, 
		
		
		output o_vectoring_mode,
		output signed[C_IWL+C_FWL-1:0]o_X,
		output signed[C_IWL+C_FWL-1:0]o_Y
);
integer i;
// interconnection
wire signed [C_IWL+C_FWL-1:0]wire_X [0:16];
wire signed [C_IWL+C_FWL-1:0]wire_Y [0:16];
wire wire_vectoring_mode[0:16];

// input, output FF
reg signed [C_IWL+C_FWL-1:0]i_X_FF_r, i_Y_FF_r;
reg i_vectoring_mode_FF_r;
reg signed [C_IWL+C_FWL-1:0]o_X_FF_r, o_Y_FF_r;
reg o_vectoring_mode_FF_r;
wire o_vectoring_mode_FF_w;

// regs // memorize parameters in vectoring mode
reg rotate_180_mem_r; // 1: rorate 180 degree; 0: rorate 0 degree

// pipeline registers
// reg signed [C_IWL+C_FWL-1:0]pipe_reg_X_r[0:3];
// wire signed [C_IWL+C_FWL-1:0]pipe_reg_X_w[0:3];
// reg signed [C_IWL+C_FWL-1:0]pipe_reg_Y_r[0:3];
// wire signed [C_IWL+C_FWL-1:0]pipe_reg_Y_w[0:3];
// reg pipe_reg_vectoring_mode_r[0:3];
// wire pipe_reg_vectoring_mode_w[0:3];


// ---------- output ----------
assign o_X = o_X_FF_r;
assign o_Y = o_Y_FF_r;
assign o_vectoring_mode = o_vectoring_mode_FF_r;




// ---------- initial stage ----------
// *-1
wire signed[C_IWL+C_FWL-1:0]neg_X = (~i_X_FF_r) + 1; // i_X_FF_r * -1
wire signed[C_IWL+C_FWL-1:0]neg_Y = (~i_Y_FF_r) + 1; // i_Y_FF_r * -1

// 2 or 3 quadrants
wire rotate_180_vector_mode = (i_X_FF_r < 0); // ==> 2 or 3 quadrants
wire current_rotate_180 = (i_vectoring_mode_FF_r)? rotate_180_vector_mode:rotate_180_mem_r;

// rotate  180 degree
assign wire_X[0] = (current_rotate_180)? neg_X:i_X_FF_r;
assign wire_Y[0] = (current_rotate_180)? neg_Y:i_Y_FF_r;
assign wire_vectoring_mode[0] = i_vectoring_mode_FF_r;

// ---------- N stages ----------
single_stage #(.STAGE_IDX( 0), .PIPE_FLAG(1), .C_IWL(C_IWL), .C_FWL(C_FWL)) single_stage_u0 (Clk, Reset, wire_vectoring_mode[ 0],  wire_X[ 0], wire_Y[ 0], wire_vectoring_mode[ 1], wire_X[ 1], wire_Y[ 1]);
single_stage #(.STAGE_IDX( 1), .PIPE_FLAG(0), .C_IWL(C_IWL), .C_FWL(C_FWL)) single_stage_u1 (Clk, Reset, wire_vectoring_mode[ 1],  wire_X[ 1], wire_Y[ 1], wire_vectoring_mode[ 2], wire_X[ 2], wire_Y[ 2]);
single_stage #(.STAGE_IDX( 2), .PIPE_FLAG(1), .C_IWL(C_IWL), .C_FWL(C_FWL)) single_stage_u2 (Clk, Reset, wire_vectoring_mode[ 2],  wire_X[ 2], wire_Y[ 2], wire_vectoring_mode[ 3], wire_X[ 3], wire_Y[ 3]);
single_stage #(.STAGE_IDX( 3), .PIPE_FLAG(0), .C_IWL(C_IWL), .C_FWL(C_FWL)) single_stage_u3 (Clk, Reset, wire_vectoring_mode[ 3],  wire_X[ 3], wire_Y[ 3], wire_vectoring_mode[ 4], wire_X[ 4], wire_Y[ 4]);
single_stage #(.STAGE_IDX( 4), .PIPE_FLAG(1), .C_IWL(C_IWL), .C_FWL(C_FWL)) single_stage_u4 (Clk, Reset, wire_vectoring_mode[ 4],  wire_X[ 4], wire_Y[ 4], wire_vectoring_mode[ 5], wire_X[ 5], wire_Y[ 5]);
single_stage #(.STAGE_IDX( 5), .PIPE_FLAG(0), .C_IWL(C_IWL), .C_FWL(C_FWL)) single_stage_u5 (Clk, Reset, wire_vectoring_mode[ 5],  wire_X[ 5], wire_Y[ 5], wire_vectoring_mode[ 6], wire_X[ 6], wire_Y[ 6]);
single_stage #(.STAGE_IDX( 6), .PIPE_FLAG(1), .C_IWL(C_IWL), .C_FWL(C_FWL)) single_stage_u6 (Clk, Reset, wire_vectoring_mode[ 6],  wire_X[ 6], wire_Y[ 6], wire_vectoring_mode[ 7], wire_X[ 7], wire_Y[ 7]);
single_stage #(.STAGE_IDX( 7), .PIPE_FLAG(0), .C_IWL(C_IWL), .C_FWL(C_FWL)) single_stage_u7 (Clk, Reset, wire_vectoring_mode[ 7],  wire_X[ 7], wire_Y[ 7], wire_vectoring_mode[ 8], wire_X[ 8], wire_Y[ 8]);
single_stage #(.STAGE_IDX( 8), .PIPE_FLAG(1), .C_IWL(C_IWL), .C_FWL(C_FWL)) single_stage_u8 (Clk, Reset, wire_vectoring_mode[ 8],  wire_X[ 8], wire_Y[ 8], wire_vectoring_mode[ 9], wire_X[ 9], wire_Y[ 9]);
single_stage #(.STAGE_IDX( 9), .PIPE_FLAG(0), .C_IWL(C_IWL), .C_FWL(C_FWL)) single_stage_u9 (Clk, Reset, wire_vectoring_mode[ 9],  wire_X[ 9], wire_Y[ 9], wire_vectoring_mode[10], wire_X[10], wire_Y[10]);
single_stage #(.STAGE_IDX(10), .PIPE_FLAG(1), .C_IWL(C_IWL), .C_FWL(C_FWL)) single_stage_u10(Clk, Reset, wire_vectoring_mode[10],  wire_X[10], wire_Y[10], wire_vectoring_mode[11], wire_X[11], wire_Y[11]);
single_stage #(.STAGE_IDX(11), .PIPE_FLAG(0), .C_IWL(C_IWL), .C_FWL(C_FWL)) single_stage_u11(Clk, Reset, wire_vectoring_mode[11],  wire_X[11], wire_Y[11], wire_vectoring_mode[12], wire_X[12], wire_Y[12]);
single_stage #(.STAGE_IDX(12), .PIPE_FLAG(1), .C_IWL(C_IWL), .C_FWL(C_FWL)) single_stage_u12(Clk, Reset, wire_vectoring_mode[12],  wire_X[12], wire_Y[12], wire_vectoring_mode[13], wire_X[13], wire_Y[13]);
single_stage #(.STAGE_IDX(13), .PIPE_FLAG(0), .C_IWL(C_IWL), .C_FWL(C_FWL)) single_stage_u13(Clk, Reset, wire_vectoring_mode[13],  wire_X[13], wire_Y[13], wire_vectoring_mode[14], wire_X[14], wire_Y[14]);
single_stage #(.STAGE_IDX(14), .PIPE_FLAG(1), .C_IWL(C_IWL), .C_FWL(C_FWL)) single_stage_u14(Clk, Reset, wire_vectoring_mode[14],  wire_X[14], wire_Y[14], wire_vectoring_mode[15], wire_X[15], wire_Y[15]); 



wire signed [C_IWL+C_FWL-1:0]csd_X_in = wire_X[15];
wire signed [C_IWL+C_FWL-1:0]csd_Y_in = wire_Y[15];
assign o_vectoring_mode_FF_w = wire_vectoring_mode[15]; // last stage's vectoring_mode


// ---------- Magnitude CSD ---------- 
// S*X
// csd_str = inverse(0000010100n00n00n010) 
wire signed [C_IWL+C_FWL-1:0]X_shift_1 = csd_X_in >>> 1;
wire signed [C_IWL+C_FWL-1:0]X_shift_3 = csd_X_in >>> 3;
wire signed [C_IWL+C_FWL-1:0]X_shift_6 = csd_X_in >>> 6;
wire signed [C_IWL+C_FWL-1:0]X_shift_9 = csd_X_in >>> 9;
wire signed [C_IWL+C_FWL-1:0]X_shift_12 = csd_X_in >>> 12;
wire signed [C_IWL+C_FWL-1:0]X_shift_14 = csd_X_in >>> 14;


wire signed [C_IWL+C_FWL-1:0]X_sum_1_3 = X_shift_1 + X_shift_3;
wire signed [C_IWL+C_FWL-1:0]X_sum_1_3_14 = X_sum_1_3 + X_shift_14;

wire signed [C_IWL+C_FWL-1:0]X_sum_6_9 = X_shift_6 + X_shift_9;
wire signed [C_IWL+C_FWL-1:0]X_sum_6_9_12 = X_sum_6_9 + X_shift_12;

wire signed [C_IWL+C_FWL-1:0]X_sum = X_sum_1_3_14 - X_sum_6_9_12;


// S*Y
// csd_str = inverse(0000010100n00n00n010)
wire signed [C_IWL+C_FWL-1:0]Y_shift_1 = csd_Y_in >>> 1;
wire signed [C_IWL+C_FWL-1:0]Y_shift_3 = csd_Y_in >>> 3;
wire signed [C_IWL+C_FWL-1:0]Y_shift_6 = csd_Y_in >>> 6;
wire signed [C_IWL+C_FWL-1:0]Y_shift_9 = csd_Y_in >>> 9;
wire signed [C_IWL+C_FWL-1:0]Y_shift_12 = csd_Y_in >>> 12;
wire signed [C_IWL+C_FWL-1:0]Y_shift_14 = csd_Y_in >>> 14;


wire signed [C_IWL+C_FWL-1:0]Y_sum_1_3 = Y_shift_1 + Y_shift_3;
wire signed [C_IWL+C_FWL-1:0]Y_sum_1_3_14 = Y_sum_1_3 + Y_shift_14;

wire signed [C_IWL+C_FWL-1:0]Y_sum_6_9 = Y_shift_6 + Y_shift_9;
wire signed [C_IWL+C_FWL-1:0]Y_sum_6_9_12 = Y_sum_6_9 + Y_shift_12;

wire signed [C_IWL+C_FWL-1:0]Y_sum = Y_sum_1_3_14 - Y_sum_6_9_12;


// ---------- set Y = 0 when i_vectoring_mode_FF_r ----------
wire signed [C_IWL+C_FWL-1:0]X_sum_set = X_sum;
wire signed [C_IWL+C_FWL-1:0]Y_sum_set = (o_vectoring_mode_FF_w)? 0:Y_sum;





// ---------- ctrl flags ----------
// 1 (quadrants 2, 3): rorate 180 degree; 0 (quadrants 1, 4): rorate 0 degree
// at initial stage
always@(posedge Clk or negedge Reset)begin
	if(!Reset)begin
		rotate_180_mem_r <= 0;
	end
	else if(i_vectoring_mode_FF_r)begin
		rotate_180_mem_r <= rotate_180_vector_mode;
	end
end

// ---------- pipeline registers ---------- 
/*always@(posedge Clk or negedge Reset)begin
	if(!Reset)begin
		for (i = 0; i < 4; i = i + 1)begin
			pipe_reg_X_r[i] <= 0;
			pipe_reg_Y_r[i] <= 0;
			pipe_reg_vectoring_mode_r[i] <= 0;
		end
	end
	else begin
		for (i = 0; i < 4; i = i + 1)begin
			pipe_reg_X_r[i] <= pipe_reg_X_w[i];
			pipe_reg_Y_r[i] <= pipe_reg_Y_w[i];
			pipe_reg_vectoring_mode_r[i] <= pipe_reg_vectoring_mode_w[i];
		end
	end
end*/


// ---------- input FF ---------- 
// no FF 
always@(*)begin
	i_X_FF_r = i_X;
	i_Y_FF_r = i_Y;
	i_vectoring_mode_FF_r = i_vectoring_mode;
end


// ---------- output FF ----------
always@(posedge Clk or negedge Reset)begin
	if(!Reset)begin
		o_X_FF_r <= 0;
		o_Y_FF_r <= 0;
		o_vectoring_mode_FF_r <= 0;
	end
	else begin
		o_X_FF_r <= X_sum_set;
		o_Y_FF_r <= Y_sum_set;
		o_vectoring_mode_FF_r <= o_vectoring_mode_FF_w;
	end
end

endmodule






module single_stage #(
		parameter STAGE_IDX = 0,
		parameter PIPE_FLAG = 0, // 0: no pipeline, 1: pipeline
        parameter C_IWL = 5,
        parameter C_FWL = 15
)(
		input Clk,
		input Reset,
		
		input i_vectoring_mode,
		// input X, Y
		input signed [C_IWL+C_FWL-1:0]i_X, 
		input signed [C_IWL+C_FWL-1:0]i_Y, 
		
		
		output o_vectoring_mode,
		// output X, Y
		output signed [C_IWL+C_FWL-1:0]o_X,
		output signed [C_IWL+C_FWL-1:0]o_Y
);
// shift
wire signed[C_IWL+C_FWL-1:0]x_shift = i_X >>> STAGE_IDX;
wire signed[C_IWL+C_FWL-1:0]y_shift = i_Y >>> STAGE_IDX;

// *-1
wire signed[C_IWL+C_FWL-1:0]neg_x_shift = (~x_shift) + 1; // x_shift * -1
wire signed[C_IWL+C_FWL-1:0]neg_y_shift = (~y_shift) + 1; // y_shift * -1


// ui
reg [1:0]ui_vector_mode;
// memorize rotated sequence in vectoring mode
reg [1:0]ui_mem_r; 
always@(*)begin
	if(i_Y > 0)begin
		ui_vector_mode = 'b11; // -1
	end
	else if(i_Y == 0)begin
		ui_vector_mode = 'b00; // 0
	end
	else begin // i_Y < 0
		ui_vector_mode = 'b01; // +1
	end
end
wire [1:0]current_ui = (i_vectoring_mode)? ui_vector_mode:ui_mem_r;
// memorize rotated sequence in vectoring mode
always@(posedge Clk or negedge Reset)begin
	if(!Reset)begin
		ui_mem_r <= 0;
	end
	else if(i_vectoring_mode)begin
		ui_mem_r <= ui_vector_mode;
	end
end


// mux
reg signed[C_IWL+C_FWL-1:0]ui_X; 
reg signed[C_IWL+C_FWL-1:0]ui_Y; 
always@(*)begin
	if(current_ui=='b01)begin // current_ui = +1
		ui_X = x_shift;
		ui_Y = neg_y_shift;
	end
	else if(current_ui=='b11)begin // current_ui = -1
		ui_X = neg_x_shift;
		ui_Y = y_shift;
	end
	else begin // current_ui = 0
		ui_X = 0;
		ui_Y = 0;
	end
end

// adders
wire signed[C_IWL+C_FWL-1:0]sum_X = i_X + ui_Y;
wire signed[C_IWL+C_FWL-1:0]sum_Y = i_Y + ui_X;


// pipeline
wire signed[C_IWL+C_FWL-1:0]tuncate_X;
wire signed[C_IWL+C_FWL-1:0]tuncate_Y;
wire w_vectoring_mode;
generate
	if(PIPE_FLAG)begin // pipeline
		reg signed[C_IWL+C_FWL-1:0]pipe_reg_X_r;
		reg signed[C_IWL+C_FWL-1:0]pipe_reg_Y_r;
		reg pipe_reg_vectoring_mode_r;
		always@(posedge Clk or negedge Reset)begin
			if(!Reset)begin
				pipe_reg_X_r <= 0;
				pipe_reg_Y_r <= 0;
				pipe_reg_vectoring_mode_r <= 0;
			end
			else begin
				pipe_reg_X_r <= sum_X[C_IWL+C_FWL-1:0];
				pipe_reg_Y_r <= sum_Y[C_IWL+C_FWL-1:0];
				pipe_reg_vectoring_mode_r <= i_vectoring_mode;
			end
		end
		assign tuncate_X = pipe_reg_X_r;
		assign tuncate_Y = pipe_reg_Y_r;
		assign w_vectoring_mode = pipe_reg_vectoring_mode_r;
		
	end
	else begin // no pipeline
		assign tuncate_X = sum_X[C_IWL+C_FWL-1:0];
		assign tuncate_Y = sum_Y[C_IWL+C_FWL-1:0];
		assign w_vectoring_mode = i_vectoring_mode;
	end
endgenerate



// output
assign o_X = tuncate_X;
assign o_Y = tuncate_Y;
assign o_vectoring_mode = w_vectoring_mode;

endmodule