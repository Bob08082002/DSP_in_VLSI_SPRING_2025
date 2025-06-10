// delay unit
module top#(
		parameter CORDIC_PIPE_STAGE = 8,
        parameter C_IWL = 5,
        parameter C_FWL = 15,
        parameter B_IWL = 5,
        parameter B_FWL = 15
)(
		input Clk,
		input Reset, // rst_n
		
		input InValid,
		input signed[C_IWL+C_FWL-1:0]InData1, 
		input signed[C_IWL+C_FWL-1:0]InData2, 
		input signed[C_IWL+C_FWL-1:0]InData3, 
		input signed[C_IWL+C_FWL-1:0]InData4, 
		
		output OutValid,
		output signed[C_IWL+C_FWL-1:0]OutData1, 
		output signed[C_IWL+C_FWL-1:0]OutData2, 
		output signed[C_IWL+C_FWL-1:0]OutData3, 
		output signed[C_IWL+C_FWL-1:0]OutData4
);

integer i;
// input FF
reg InValid_FF1_r, InValid_FF2_r;
reg signed[C_IWL+C_FWL-1:0]InData1_FF_r; 
reg signed[C_IWL+C_FWL-1:0]InData2_FF_r; 
reg signed[C_IWL+C_FWL-1:0]InData3_FF_r; 
reg signed[C_IWL+C_FWL-1:0]InData4_FF_r; 
// flags
wire vectoring_mode;
reg vectoring_mode_FF[0:(5*CORDIC_PIPE_STAGE + 4) - 1]; // in_valid of backsub
// interconnect wires
wire signed[C_IWL+C_FWL-1:0]w_data_cordic_array[0:3]; 
wire w_in_valid_backsub;
wire w_out_valid_backsub;
wire signed[B_IWL+B_FWL-1:0]w_data_backsub[0:3]; 





// flags
assign vectoring_mode = (InValid_FF1_r==1) && (InValid_FF2_r==0); // first cycle of InValid
// vectoring_mode_FF: for in_valid of backsub
always@(posedge Clk or negedge Reset)begin
	if(!Reset)begin
		for(i = 0; i < (5*CORDIC_PIPE_STAGE + 4); i = i + 1)begin
			vectoring_mode_FF[i] <= 0;
		end
	end
	else begin
		vectoring_mode_FF[0] <= vectoring_mode;
		for(i = 1; i < (5*CORDIC_PIPE_STAGE + 4); i = i + 1)begin
			vectoring_mode_FF[i] <= vectoring_mode_FF[i - 1];
		end

	end	
end

CORDIC_ARRAY  #(.PIPE_STAGE(CORDIC_PIPE_STAGE), .C_IWL(C_IWL), .C_FWL(C_FWL)) CORDIC_ARRAY_u0(
	.Clk(Clk),
	.Reset(Reset),
	
	.i_vectoring_mode(vectoring_mode),
	.i_data_1(InData1_FF_r), 
	.i_data_2(InData2_FF_r), 
	.i_data_3(InData3_FF_r), 
	.i_data_4(InData4_FF_r), 
	
	
	.o_data_1(w_data_cordic_array[0]), 
	.o_data_2(w_data_cordic_array[1]), 
	.o_data_3(w_data_cordic_array[2]), 
	.o_data_4(w_data_cordic_array[3])
);

// assign OutData1 = w_data_cordic_array[0];
// assign OutData2 = w_data_cordic_array[1];
// assign OutData3 = w_data_cordic_array[2];
// assign OutData4 = w_data_cordic_array[3];


BACK_SUBSTITUTION #(
	.C_IWL(C_IWL),
	.C_FWL(C_FWL),
	.B_IWL(B_IWL),
	.B_FWL(B_FWL)
)BACK_SUBSTITUTION_u0 (
        .clk(Clk),
        .rst_n(Reset),
        .in_valid(w_in_valid_backsub), 
        .c3_x(w_data_cordic_array[0]), 
        .c5_x(w_data_cordic_array[1]),
        .c6_x(w_data_cordic_array[2]),
        .c6_y(w_data_cordic_array[3]),
        .out_valid(w_out_valid_backsub),
        .OutData1(w_data_backsub[0]),
        .OutData2(w_data_backsub[1]),
        .OutData3(w_data_backsub[2]),
        .OutData4(w_data_backsub[3]),
        // Debugging ports
        .reciprocal()
);

assign w_in_valid_backsub = vectoring_mode_FF[(5*CORDIC_PIPE_STAGE + 4) - 1];
assign OutValid = w_out_valid_backsub;
assign OutData1 = w_data_backsub[0];
assign OutData2 = w_data_backsub[1];
assign OutData3 = w_data_backsub[2];
assign OutData4 = w_data_backsub[3];



// input FF
always@(posedge Clk or negedge Reset)begin
	if(!Reset)begin
		InValid_FF1_r <= 0;
		InValid_FF2_r <= 0;
		InData1_FF_r <= 0;
		InData2_FF_r <= 0;
		InData3_FF_r <= 0;
		InData4_FF_r <= 0;
	end
	else begin
		InValid_FF1_r <= InValid;
		InValid_FF2_r <= InValid_FF1_r;
		InData1_FF_r <= InData1;
		InData2_FF_r <= InData2;
		InData3_FF_r <= InData3;
		InData4_FF_r <= InData4;
	end	
end






endmodule




