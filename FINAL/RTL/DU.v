// delay unit
// DU 0
module DU_0#(
        parameter C_IWL = 5,
        parameter C_FWL = 15
)(
		input Clk,
		input Reset, // rst_n
		
		input i_vectoring_mode,
		input signed[C_IWL+C_FWL-1:0]i_data,  // X or Y
		
		
		output reg o_vectoring_mode,
		output reg signed[C_IWL+C_FWL-1:0]o_data  // X or Y
);


always@(posedge Clk or negedge Reset)begin
	if(!Reset)begin
		o_vectoring_mode <= 0;
		o_data <= 0;
	end
	else begin
		o_vectoring_mode <= i_vectoring_mode;
		o_data <= i_data;
	end
end

endmodule

// delay unit
// DU 1, 2 // with pipeline register
module DU_1_2#(
		parameter PIPE_STAGE = 8, // 切了幾刀: number of PIPE_FLAG==1 in CORDIC.v
        parameter C_IWL = 5,
        parameter C_FWL = 15
)(
		input Clk,
		input Reset, // rst_n
		
		input i_vectoring_mode,
		input signed[C_IWL+C_FWL-1:0]i_data,  // X or Y
		
		
		output reg o_vectoring_mode,
		output reg signed[C_IWL+C_FWL-1:0]o_data  // X or Y
);
integer i;
reg vectoring_mode_FF_r;

// pipeline register
reg pipe_reg_vectoring_mode_r[0:PIPE_STAGE-1];
reg signed[C_IWL+C_FWL-1:0]pipe_reg_data_r[0:PIPE_STAGE-1];


always@(posedge Clk or negedge Reset)begin
	if(!Reset)begin
		vectoring_mode_FF_r <= 0;
		for (i=0; i<PIPE_STAGE; i=i+1)begin
			pipe_reg_vectoring_mode_r[i] <= 0;
		end
		o_vectoring_mode <= 0;
		
		
		
		for (i=0; i<PIPE_STAGE; i=i+1)begin
			pipe_reg_data_r[i] <= 0;
		end
		o_data <= 0;
	end
	else begin
		vectoring_mode_FF_r <= i_vectoring_mode;
		pipe_reg_vectoring_mode_r[0] <= vectoring_mode_FF_r;
		for (i=1; i<PIPE_STAGE; i=i+1)begin
			pipe_reg_vectoring_mode_r[i] <= pipe_reg_vectoring_mode_r[i - 1];
		end
		o_vectoring_mode <= pipe_reg_vectoring_mode_r[PIPE_STAGE-1];
		
		
		
		
		pipe_reg_data_r[0] <= i_data;
		for (i=1; i<PIPE_STAGE; i=i+1)begin
			pipe_reg_data_r[i] <= pipe_reg_data_r[i - 1];
		end
		o_data <= pipe_reg_data_r[PIPE_STAGE-1];
	end
end
endmodule



// delay unit
// DU 3
module DU_3#(
        parameter C_IWL = 5,
        parameter C_FWL = 15
)(
		input Clk,
		input Reset, // rst_n
		
		input i_vectoring_mode,
		input signed[C_IWL+C_FWL-1:0]i_data,  // X or Y
		
		
		output reg o_vectoring_mode,
		output reg signed[C_IWL+C_FWL-1:0]o_data  // X or Y
);

reg vectoring_mode_FF_r;
always@(posedge Clk or negedge Reset)begin
	if(!Reset)begin
		o_vectoring_mode <= 0;
		vectoring_mode_FF_r <= 0;
		o_data <= 0;
	end
	else begin
		vectoring_mode_FF_r <= i_vectoring_mode;
		o_vectoring_mode <= vectoring_mode_FF_r;
		o_data <= i_data;
	end
end

endmodule




