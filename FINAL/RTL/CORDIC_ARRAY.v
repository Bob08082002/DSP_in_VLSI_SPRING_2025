
module CORDIC_ARRAY#(
		parameter PIPE_STAGE = 8, // 切了幾刀: number of PIPE_FLAG==1 in CORDIC.v
        parameter C_IWL = 5,
        parameter C_FWL = 15
)(
		input Clk,
		input Reset, // rst_n
		
		input i_vectoring_mode,
		input signed[C_IWL+C_FWL-1:0]i_data_1, 
		input signed[C_IWL+C_FWL-1:0]i_data_2, 
		input signed[C_IWL+C_FWL-1:0]i_data_3, 
		input signed[C_IWL+C_FWL-1:0]i_data_4, 
		
		
		output signed[C_IWL+C_FWL-1:0]o_data_1, 
		output signed[C_IWL+C_FWL-1:0]o_data_2, 
		output signed[C_IWL+C_FWL-1:0]o_data_3, 
		output signed[C_IWL+C_FWL-1:0]o_data_4
);
integer i;
// interconnect wire
wire w_vectoring_mode_cordic[1:6];
wire w_vectoring_mode_du[0:3];

wire signed [C_IWL+C_FWL-1:0] w_X[1:6];
wire signed [C_IWL+C_FWL-1:0] w_Y[1:6];
wire signed [C_IWL+C_FWL-1:0] w_data_du[0:3];

wire signed[C_IWL+C_FWL-1:0] w_cordic_in_data_1, w_cordic_in_data_2, w_cordic_in_data_3, w_cordic_in_data_4;
wire signed[C_IWL+C_FWL-1:0] w_cordic_out_data_1, w_cordic_out_data_2, w_cordic_out_data_3, w_cordic_out_data_4;

// pipeline registers
// reg signed[C_IWL+C_FWL-1:0]pipe_reg_i_data_3_r[0:3]; // skew buffer in tb
// reg signed[C_IWL+C_FWL-1:0]pipe_reg_i_data_4_r[0:7]; // skew buffer in tb
reg signed[C_IWL+C_FWL-1:0]pipe_reg_o_data_1_r[0:PIPE_STAGE*2-1];
reg signed[C_IWL+C_FWL-1:0]pipe_reg_o_data_2_r[0:PIPE_STAGE-1]; 


// ---------- output ----------
assign o_data_1 = pipe_reg_o_data_1_r[PIPE_STAGE*2-1];
assign o_data_2 = pipe_reg_o_data_2_r[PIPE_STAGE-1];
assign o_data_3 = w_cordic_out_data_3;
assign o_data_4 = w_cordic_out_data_4;

// ---------- pipeline registers ----------
always@(posedge Clk or negedge Reset)begin
	if(!Reset)begin
		for (i = 0; i < PIPE_STAGE; i = i + 1)begin
			// pipe_reg_i_data_3_r[i] <= 0; // skew buffer in tb
			pipe_reg_o_data_2_r[i] <= 0;
		end
		for (i = 0; i < PIPE_STAGE*2; i = i + 1)begin
			// pipe_reg_i_data_4_r[i] <= 0; // skew buffer in tb
			pipe_reg_o_data_1_r[i] <= 0;
		end
	end
	else begin
		// skew buffer in tb
		// pipe_reg_i_data_3_r[0] <= i_data_3;
		// for (i = 1; i < 4; i = i + 1)begin
		// 	pipe_reg_i_data_3_r[i] <= pipe_reg_i_data_3_r[i - 1];
		// end
		// pipe_reg_i_data_4_r[0] <= i_data_4;
		// for (i = 1; i < 8; i = i + 1)begin
		// 	pipe_reg_i_data_4_r[i] <= pipe_reg_i_data_4_r[i - 1];
		// end
		pipe_reg_o_data_1_r[0] <= w_cordic_out_data_1; // de-skew registers
		for (i = 1; i < PIPE_STAGE*2; i = i + 1)begin
			pipe_reg_o_data_1_r[i] <= pipe_reg_o_data_1_r[i - 1];
		end
		pipe_reg_o_data_2_r[0] <= w_cordic_out_data_2; // de-skew registers
		for (i = 1; i < PIPE_STAGE; i = i + 1)begin
			pipe_reg_o_data_2_r[i] <= pipe_reg_o_data_2_r[i - 1];
		end
	end
end

// ---------- CORDIC systolic array inputx4 & outputx4 ----------
assign w_cordic_in_data_1 = i_data_1;
assign w_cordic_in_data_2 = i_data_2;
assign w_cordic_in_data_3 = i_data_3;
assign w_cordic_in_data_4 = i_data_4;

assign w_cordic_out_data_1 = w_X[3];
assign w_cordic_out_data_2 = w_X[5];
assign w_cordic_out_data_3 = w_X[6];
assign w_cordic_out_data_4 = w_data_du[3];


// ---------- row 1 of CORDIC systolic array ----------
DU_0 #(.C_IWL(C_IWL), .C_FWL(C_FWL)) DU_u0(
		.Clk(Clk),
		.Reset(Reset),
		.i_vectoring_mode(i_vectoring_mode),
		.i_data(w_cordic_in_data_1),  // X or Y
		.o_vectoring_mode(w_vectoring_mode_du[0]),
		.o_data(w_data_du[0])  // X or Y
);
CORDIC #(.C_IWL(C_IWL), .C_FWL(C_FWL))  CORDIC_u1(
		.Clk(Clk),
		.Reset(Reset),
		.i_vectoring_mode(w_vectoring_mode_du[0]),
		.i_X(w_data_du[0]), 
		.i_Y(w_cordic_in_data_2), 
		.o_vectoring_mode(w_vectoring_mode_cordic[1]),
		.o_X(w_X[1]),
		.o_Y(w_Y[1])
);
CORDIC #(.C_IWL(C_IWL), .C_FWL(C_FWL))  CORDIC_u2(
		.Clk(Clk),
		.Reset(Reset),
		.i_vectoring_mode(w_vectoring_mode_cordic[1]),
		.i_X(w_X[1]), 
		.i_Y(w_cordic_in_data_3), 
		.o_vectoring_mode(w_vectoring_mode_cordic[2]),
		.o_X(w_X[2]),
		.o_Y(w_Y[2])
);
CORDIC #(.C_IWL(C_IWL), .C_FWL(C_FWL))  CORDIC_u3(
		.Clk(Clk),
		.Reset(Reset),
		.i_vectoring_mode(w_vectoring_mode_cordic[2]),
		.i_X(w_X[2]), 
		.i_Y(w_cordic_in_data_4), 
		.o_vectoring_mode(w_vectoring_mode_cordic[3]),
		.o_X(w_X[3]),
		.o_Y(w_Y[3])
);
// ---------- row 2 of CORDIC systolic array ----------
DU_1_2 #(.PIPE_STAGE(PIPE_STAGE), .C_IWL(C_IWL), .C_FWL(C_FWL))  DU_u1(
		.Clk(Clk),
		.Reset(Reset),
		.i_vectoring_mode(w_vectoring_mode_cordic[1]),
		.i_data(w_Y[1]),  // X or Y
		.o_vectoring_mode(w_vectoring_mode_du[1]),
		.o_data(w_data_du[1])  // X or Y
);
CORDIC #(.C_IWL(C_IWL), .C_FWL(C_FWL))  CORDIC_u4(
		.Clk(Clk),
		.Reset(Reset),
		.i_vectoring_mode(w_vectoring_mode_du[1]),
		.i_X(w_data_du[1]), 
		.i_Y(w_Y[2]), 
		.o_vectoring_mode(w_vectoring_mode_cordic[4]),
		.o_X(w_X[4]),
		.o_Y(w_Y[4])
);
CORDIC #(.C_IWL(C_IWL), .C_FWL(C_FWL))  CORDIC_u5(
		.Clk(Clk),
		.Reset(Reset),
		.i_vectoring_mode(w_vectoring_mode_cordic[4]),
		.i_X(w_X[4]), 
		.i_Y(w_Y[3]), 
		.o_vectoring_mode(w_vectoring_mode_cordic[5]),
		.o_X(w_X[5]),
		.o_Y(w_Y[5])
);
// ---------- row 3 of CORDIC systolic array ----------
DU_1_2 #(.PIPE_STAGE(PIPE_STAGE), .C_IWL(C_IWL), .C_FWL(C_FWL))  DU_u2(
		.Clk(Clk),
		.Reset(Reset),
		.i_vectoring_mode(w_vectoring_mode_cordic[4]),
		.i_data(w_Y[4]),  // X or Y
		.o_vectoring_mode(w_vectoring_mode_du[2]),
		.o_data(w_data_du[2])  // X or Y
);
CORDIC #(.C_IWL(C_IWL), .C_FWL(C_FWL))  CORDIC_u6(
		.Clk(Clk),
		.Reset(Reset),
		.i_vectoring_mode(w_vectoring_mode_du[2]),
		.i_X(w_data_du[2]), 
		.i_Y(w_Y[5]), 
		.o_vectoring_mode(w_vectoring_mode_cordic[6]),
		.o_X(w_X[6]),
		.o_Y(w_Y[6])
);
// ---------- row 4 of CORDIC systolic array ----------
DU_3 #(.C_IWL(C_IWL), .C_FWL(C_FWL))  DU_u3( 
		.Clk(Clk),
		.Reset(Reset),
		.i_vectoring_mode(w_vectoring_mode_cordic[6]),
		.i_data(w_Y[6]),  // X or Y
		.o_vectoring_mode(w_vectoring_mode_du[3]),
		.o_data(w_data_du[3])  // X or Y
);


endmodule




