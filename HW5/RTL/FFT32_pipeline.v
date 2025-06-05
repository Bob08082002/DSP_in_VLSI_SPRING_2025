//                      FFT32_pipeline                   //
// WITH PIPELINE                                         //
`define WORD_LEN 11


module FFT32_pipeline (
		input clk,
		input i_rst,
		input signed [`WORD_LEN-1:0] FFTInRe, 
		input signed [`WORD_LEN-1:0] FFTInIm, 
		input in_valid,
		
		output signed [`WORD_LEN-1:0] MDCOutUpRe, 
		output signed [`WORD_LEN-1:0] MDCOutUpIm, 
		output signed [`WORD_LEN-1:0] MDCOutDownRe, 
		output signed [`WORD_LEN-1:0] MDCOutDownIm, 
		output MDC_out_valid,
		
		output signed [`WORD_LEN-1:0] FFTOutRe, 
		output signed [`WORD_LEN-1:0] FFTOutIm, 
		output FFT_out_valid
);

// counter
reg [4:0] cnt_r, cnt_w;
// flag
reg flag_start_cal_r;
reg flag_start_out_r;

// pipeline register
reg signed [`WORD_LEN-1:0] commutator_UO_re_pipe_r[0:3];
reg signed [`WORD_LEN-1:0] commutator_UO_im_pipe_r[0:3];
reg signed [`WORD_LEN-1:0] commutator_LO_re_pipe_r[0:3];
reg signed [`WORD_LEN-1:0] commutator_LO_im_pipe_r[0:3];

reg signed [`WORD_LEN-1:0] butterfly_UO_re_pipe_r[0:3];
reg signed [`WORD_LEN-1:0] butterfly_UO_im_pipe_r[0:3];
reg signed [`WORD_LEN-1:0] butterfly_LO_re_pipe_r[0:3];
reg signed [`WORD_LEN-1:0] butterfly_LO_im_pipe_r[0:3];

reg signed [`WORD_LEN-1:0] ROM_re_pipe_r[0:3];
reg signed [`WORD_LEN-1:0] ROM_im_pipe_r[0:3];

// input FF
reg [`WORD_LEN-1:0] FFTInRe_FF_r;
reg [`WORD_LEN-1:0] FFTInIm_FF_r;
reg in_valid_FF_r;

// output FF
reg signed [`WORD_LEN-1:0] MDCOutUpRe_FF_r; 
reg signed [`WORD_LEN-1:0] MDCOutUpIm_FF_r; 
reg signed [`WORD_LEN-1:0] MDCOutDownRe_FF_r; 
reg signed [`WORD_LEN-1:0] MDCOutDownIm_FF_r; 
reg MDC_out_valid_FF_r;

reg signed [`WORD_LEN-1:0] FFTOutRe_FF_r;
reg signed [`WORD_LEN-1:0] FFTOutIm_FF_r;
reg FFT_out_valid_FF_r;

// connection wires
wire signed [`WORD_LEN-1:0] w_delay_out_re_L_stage[1:4];
wire signed [`WORD_LEN-1:0] w_delay_out_im_L_stage[1:4];
wire w_commutator_mode_stage[0:4]; //(0: switch, 1: bypass operation)
wire signed [`WORD_LEN-1:0] w_commutator_UO_re_stage[0:4];
wire signed [`WORD_LEN-1:0] w_commutator_UO_im_stage[0:4];
wire signed [`WORD_LEN-1:0] w_commutator_LO_re_stage[0:4];
wire signed [`WORD_LEN-1:0] w_commutator_LO_im_stage[0:4];
wire signed [`WORD_LEN-1:0] w_delay_out_re_U_stage[0:4]; 
wire signed [`WORD_LEN-1:0] w_delay_out_im_U_stage[0:4];
wire signed [`WORD_LEN-1:0] w_butterfly_UO_re_stage[0:4];
wire signed [`WORD_LEN-1:0] w_butterfly_UO_im_stage[0:4];
wire signed [`WORD_LEN-1:0] w_butterfly_LO_re_stage[0:4];
wire signed [`WORD_LEN-1:0] w_butterfly_LO_im_stage[0:4];
wire [3:0] w_addr_stage[0:4]; 
wire signed [`WORD_LEN-1:0] w_ROM_out_re_stage[0:4];
wire signed [`WORD_LEN-1:0] w_ROM_out_im_stage[0:4];
wire signed [`WORD_LEN-1:0] w_twiddle_mul_result_re_stage[0:4];
wire signed [`WORD_LEN-1:0] w_twiddle_mul_result_im_stage[0:4];

wire [`WORD_LEN*2-1:0] w_MemOut; // {MemOut_re, MemOut_im}
wire w_out_valid;

// output
assign MDCOutUpRe = MDCOutUpRe_FF_r;
assign MDCOutUpIm = MDCOutUpIm_FF_r;
assign MDCOutDownRe = MDCOutDownRe_FF_r;  
assign MDCOutDownIm = MDCOutDownIm_FF_r;  
assign MDC_out_valid = MDC_out_valid_FF_r;

assign FFTOutRe = FFTOutRe_FF_r;
assign FFTOutIm = FFTOutIm_FF_r;
assign FFT_out_valid = FFT_out_valid_FF_r;

// control logic
assign w_commutator_mode_stage[0] = (cnt_r <= 15)? 0: 1; //(0: switch, 1: bypass operation) // 0 ~ 15
assign w_addr_stage[0] = cnt_r[3:0] ; // 0 ~ 15

assign w_commutator_mode_stage[1] = (cnt_r >= 25 || cnt_r == 0)? 0: 1; //(0: switch, 1: bypass operation) 
assign w_addr_stage[1] = cnt_r[2:0] - 2; // 0 ~ 7

assign w_commutator_mode_stage[2] = (cnt_r == 31 || cnt_r <= 2 || (cnt_r >= 7 && cnt_r <= 10))? 0: 1; //(0: switch, 1: bypass operation) 
assign w_addr_stage[2] = cnt_r[1:0] ; // 0 ~ 3

assign w_commutator_mode_stage[3] = ((cnt_r >= 3 && cnt_r <= 4) || (cnt_r >= 7 && cnt_r <= 8) || (cnt_r >= 11 && cnt_r <= 12) || (cnt_r >= 15 && cnt_r <= 16))? 0: 1; //(0: switch, 1: bypass operation) 
assign w_addr_stage[3] = cnt_r[0]; // 0 ~ 1

assign w_commutator_mode_stage[4] = (cnt_r == 16 || cnt_r == 18 || cnt_r == 20 || cnt_r == 6 || cnt_r == 8 || cnt_r == 10 || cnt_r == 12 || cnt_r == 14)? 0: 1; //(0: switch, 1: bypass operation) 
// stage 1
commutator commutator_stage1(
		.i_commutator_UI_re(0),
		.i_commutator_UI_im(0),
		
		.i_commutator_LI_re(FFTInRe_FF_r),
		.i_commutator_LI_im(FFTInIm_FF_r),
		.i_commutator_mode(w_commutator_mode_stage[0]), 
		
		.o_commutator_UO_re(w_commutator_UO_re_stage[0]),
		.o_commutator_UO_im(w_commutator_UO_im_stage[0]),
		.o_commutator_LO_re(w_commutator_LO_re_stage[0]),
		.o_commutator_LO_im(w_commutator_LO_im_stage[0])
);
delay_element #(16) delay_element_U_stage1(
		.clk(clk),
		.i_rst(i_rst),
		.i_delay_in_re(w_commutator_UO_re_stage[0]), 
		.i_delay_in_im(w_commutator_UO_im_stage[0]),
		
		.o_delay_out_re(w_delay_out_re_U_stage[0]), 
		.o_delay_out_im(w_delay_out_im_U_stage[0])
);
butterfly_unit butterfly_unit_stage1(
		.i_butterfly_UI_re(w_delay_out_re_U_stage[0]),
		.i_butterfly_UI_im(w_delay_out_im_U_stage[0]),
		.i_butterfly_LI_re(w_commutator_LO_re_stage[0]),
		.i_butterfly_LI_im(w_commutator_LO_im_stage[0]),
		
		.o_butterfly_UO_re(w_butterfly_UO_re_stage[0]),
		.o_butterfly_UO_im(w_butterfly_UO_im_stage[0]),
		.o_butterfly_LO_re(w_butterfly_LO_re_stage[0]),
		.o_butterfly_LO_im(w_butterfly_LO_im_stage[0])
);

// pipeline register
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		butterfly_UO_re_pipe_r[0] <= 0;
		butterfly_UO_im_pipe_r[0] <= 0;
		butterfly_LO_re_pipe_r[0] <= 0;
		butterfly_LO_im_pipe_r[0] <= 0;
	end
	else begin
		butterfly_UO_re_pipe_r[0] <= w_butterfly_UO_re_stage[0];
		butterfly_UO_im_pipe_r[0] <= w_butterfly_UO_im_stage[0];
		butterfly_LO_re_pipe_r[0] <= w_butterfly_LO_re_stage[0];
		butterfly_LO_im_pipe_r[0] <= w_butterfly_LO_im_stage[0];
	end
end

ROM32 ROM32_stage1(
		.i_addr(w_addr_stage[0]), // 0 ~ 15
		
		.o_ROM_out_re(w_ROM_out_re_stage[0]),
		.o_ROM_out_im(w_ROM_out_im_stage[0])
);

// pipeline register
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		ROM_re_pipe_r[0] <= 0;
		ROM_im_pipe_r[0] <= 0;
	end
	else begin
		ROM_re_pipe_r[0] <= w_ROM_out_re_stage[0];
		ROM_im_pipe_r[0] <= w_ROM_out_im_stage[0];
	end
end


twiddle_mul twiddle_mul_stage1(
		.i_twiddle_factor_re(ROM_re_pipe_r[0]),
		.i_twiddle_factor_im(ROM_im_pipe_r[0]),
		.i_butterfly_LO_re(butterfly_LO_re_pipe_r[0]),
		.i_butterfly_LO_im(butterfly_LO_im_pipe_r[0]),
		
		.o_twiddle_mul_result_re(w_twiddle_mul_result_re_stage[0]),
		.o_twiddle_mul_result_im(w_twiddle_mul_result_im_stage[0])
);
// stage 2
delay_element #(8) delay_element_L_stage2(
		.clk(clk),
		.i_rst(i_rst),
		.i_delay_in_re(w_twiddle_mul_result_re_stage[0]), 
		.i_delay_in_im(w_twiddle_mul_result_im_stage[0]),
		
		.o_delay_out_re(w_delay_out_re_L_stage[1]), 
		.o_delay_out_im(w_delay_out_im_L_stage[1])
);
commutator commutator_stage2(
		.i_commutator_UI_re(butterfly_UO_re_pipe_r[0]),
		.i_commutator_UI_im(butterfly_UO_im_pipe_r[0]),
		
		.i_commutator_LI_re(w_delay_out_re_L_stage[1]),
		.i_commutator_LI_im(w_delay_out_im_L_stage[1]),
		.i_commutator_mode(w_commutator_mode_stage[1]), 
		
		.o_commutator_UO_re(w_commutator_UO_re_stage[1]),
		.o_commutator_UO_im(w_commutator_UO_im_stage[1]),
		.o_commutator_LO_re(w_commutator_LO_re_stage[1]),
		.o_commutator_LO_im(w_commutator_LO_im_stage[1])
);

// pipeline register
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		commutator_UO_re_pipe_r[0] <= 0;
		commutator_UO_im_pipe_r[0] <= 0;
		commutator_LO_re_pipe_r[0] <= 0;
		commutator_LO_im_pipe_r[0] <= 0;
	end
	else begin
		commutator_UO_re_pipe_r[0] <= w_commutator_UO_re_stage[1];
		commutator_UO_im_pipe_r[0] <= w_commutator_UO_im_stage[1];
		commutator_LO_re_pipe_r[0] <= w_commutator_LO_re_stage[1];
		commutator_LO_im_pipe_r[0] <= w_commutator_LO_im_stage[1];
	end
end


delay_element #(8) delay_element_U_stage2(
		.clk(clk),
		.i_rst(i_rst),
		.i_delay_in_re(commutator_UO_re_pipe_r[0]), 
		.i_delay_in_im(commutator_UO_im_pipe_r[0]),
		
		.o_delay_out_re(w_delay_out_re_U_stage[1]), 
		.o_delay_out_im(w_delay_out_im_U_stage[1])
);
butterfly_unit butterfly_unit_stage2(
		.i_butterfly_UI_re(w_delay_out_re_U_stage[1]),
		.i_butterfly_UI_im(w_delay_out_im_U_stage[1]),
		.i_butterfly_LI_re(commutator_LO_re_pipe_r[0]),
		.i_butterfly_LI_im(commutator_LO_im_pipe_r[0]),
		
		.o_butterfly_UO_re(w_butterfly_UO_re_stage[1]),
		.o_butterfly_UO_im(w_butterfly_UO_im_stage[1]),
		.o_butterfly_LO_re(w_butterfly_LO_re_stage[1]),
		.o_butterfly_LO_im(w_butterfly_LO_im_stage[1])
);
// pipeline register
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		butterfly_UO_re_pipe_r[1] <= 0;
		butterfly_UO_im_pipe_r[1] <= 0;
		butterfly_LO_re_pipe_r[1] <= 0;
		butterfly_LO_im_pipe_r[1] <= 0;
	end
	else begin
		butterfly_UO_re_pipe_r[1] <= w_butterfly_UO_re_stage[1];
		butterfly_UO_im_pipe_r[1] <= w_butterfly_UO_im_stage[1];
		butterfly_LO_re_pipe_r[1] <= w_butterfly_LO_re_stage[1];
		butterfly_LO_im_pipe_r[1] <= w_butterfly_LO_im_stage[1];
	end
end
ROM16 ROM16_stage2(
		.i_addr(w_addr_stage[1]), // 0 ~ 7
		
		.o_ROM_out_re(w_ROM_out_re_stage[1]),
		.o_ROM_out_im(w_ROM_out_im_stage[1])
);
// pipeline register
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		ROM_re_pipe_r[1] <= 0;
		ROM_im_pipe_r[1] <= 0;
	end
	else begin
		ROM_re_pipe_r[1] <= w_ROM_out_re_stage[1];
		ROM_im_pipe_r[1] <= w_ROM_out_im_stage[1];
	end
end
twiddle_mul twiddle_mul_stage2(
		.i_twiddle_factor_re(ROM_re_pipe_r[1]),
		.i_twiddle_factor_im(ROM_im_pipe_r[1]),
		.i_butterfly_LO_re(butterfly_LO_re_pipe_r[1]),
		.i_butterfly_LO_im(butterfly_LO_im_pipe_r[1]),
		
		.o_twiddle_mul_result_re(w_twiddle_mul_result_re_stage[1]),
		.o_twiddle_mul_result_im(w_twiddle_mul_result_im_stage[1])
);
// stage 3
delay_element #(4) delay_element_L_stage3(
		.clk(clk),
		.i_rst(i_rst),
		.i_delay_in_re(w_twiddle_mul_result_re_stage[1]), 
		.i_delay_in_im(w_twiddle_mul_result_im_stage[1]),
		
		.o_delay_out_re(w_delay_out_re_L_stage[2]), 
		.o_delay_out_im(w_delay_out_im_L_stage[2])
);
commutator commutator_stage3(
		.i_commutator_UI_re(butterfly_UO_re_pipe_r[1]),
		.i_commutator_UI_im(butterfly_UO_im_pipe_r[1]),
		
		.i_commutator_LI_re(w_delay_out_re_L_stage[2]),
		.i_commutator_LI_im(w_delay_out_im_L_stage[2]),
		.i_commutator_mode(w_commutator_mode_stage[2]), 
		
		.o_commutator_UO_re(w_commutator_UO_re_stage[2]),
		.o_commutator_UO_im(w_commutator_UO_im_stage[2]),
		.o_commutator_LO_re(w_commutator_LO_re_stage[2]),
		.o_commutator_LO_im(w_commutator_LO_im_stage[2])
);
// pipeline register
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		commutator_UO_re_pipe_r[1] <= 0;
		commutator_UO_im_pipe_r[1] <= 0;
		commutator_LO_re_pipe_r[1] <= 0;
		commutator_LO_im_pipe_r[1] <= 0;
	end
	else begin
		commutator_UO_re_pipe_r[1] <= w_commutator_UO_re_stage[2];
		commutator_UO_im_pipe_r[1] <= w_commutator_UO_im_stage[2];
		commutator_LO_re_pipe_r[1] <= w_commutator_LO_re_stage[2];
		commutator_LO_im_pipe_r[1] <= w_commutator_LO_im_stage[2];
	end
end

delay_element #(4) delay_element_U_stage3(
		.clk(clk),
		.i_rst(i_rst),
		.i_delay_in_re(commutator_UO_re_pipe_r[1]), 
		.i_delay_in_im(commutator_UO_im_pipe_r[1]),
		
		.o_delay_out_re(w_delay_out_re_U_stage[2]), 
		.o_delay_out_im(w_delay_out_im_U_stage[2])
);
butterfly_unit butterfly_unit_stage3(
		.i_butterfly_UI_re(w_delay_out_re_U_stage[2]),
		.i_butterfly_UI_im(w_delay_out_im_U_stage[2]),
		.i_butterfly_LI_re(commutator_LO_re_pipe_r[1]),
		.i_butterfly_LI_im(commutator_LO_im_pipe_r[1]),
		
		.o_butterfly_UO_re(w_butterfly_UO_re_stage[2]),
		.o_butterfly_UO_im(w_butterfly_UO_im_stage[2]),
		.o_butterfly_LO_re(w_butterfly_LO_re_stage[2]),
		.o_butterfly_LO_im(w_butterfly_LO_im_stage[2])
);

// pipeline register
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		butterfly_UO_re_pipe_r[2] <= 0;
		butterfly_UO_im_pipe_r[2] <= 0;
		butterfly_LO_re_pipe_r[2] <= 0;
		butterfly_LO_im_pipe_r[2] <= 0;
	end
	else begin
		butterfly_UO_re_pipe_r[2] <= w_butterfly_UO_re_stage[2];
		butterfly_UO_im_pipe_r[2] <= w_butterfly_UO_im_stage[2];
		butterfly_LO_re_pipe_r[2] <= w_butterfly_LO_re_stage[2];
		butterfly_LO_im_pipe_r[2] <= w_butterfly_LO_im_stage[2];
	end
end

ROM8 ROM8_stage3(
		.i_addr(w_addr_stage[2]), // 0 ~ 3
		
		.o_ROM_out_re(w_ROM_out_re_stage[2]),
		.o_ROM_out_im(w_ROM_out_im_stage[2])
);
// pipeline register
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		ROM_re_pipe_r[2] <= 0;
		ROM_im_pipe_r[2] <= 0;
	end
	else begin
		ROM_re_pipe_r[2] <= w_ROM_out_re_stage[2];
		ROM_im_pipe_r[2] <= w_ROM_out_im_stage[2];
	end
end
twiddle_mul twiddle_mul_stage3(
		.i_twiddle_factor_re(ROM_re_pipe_r[2]),
		.i_twiddle_factor_im(ROM_im_pipe_r[2]),
		.i_butterfly_LO_re(butterfly_LO_re_pipe_r[2]),
		.i_butterfly_LO_im(butterfly_LO_im_pipe_r[2]),
		
		.o_twiddle_mul_result_re(w_twiddle_mul_result_re_stage[2]),
		.o_twiddle_mul_result_im(w_twiddle_mul_result_im_stage[2])
);
// stage 4
delay_element #(2) delay_element_L_stage4(
		.clk(clk),
		.i_rst(i_rst),
		.i_delay_in_re(w_twiddle_mul_result_re_stage[2]), 
		.i_delay_in_im(w_twiddle_mul_result_im_stage[2]),
		
		.o_delay_out_re(w_delay_out_re_L_stage[3]), 
		.o_delay_out_im(w_delay_out_im_L_stage[3])
);
commutator commutator_stage4(
		.i_commutator_UI_re(butterfly_UO_re_pipe_r[2]),
		.i_commutator_UI_im(butterfly_UO_im_pipe_r[2]),
		
		.i_commutator_LI_re(w_delay_out_re_L_stage[3]),
		.i_commutator_LI_im(w_delay_out_im_L_stage[3]),
		.i_commutator_mode(w_commutator_mode_stage[3]), 
		
		.o_commutator_UO_re(w_commutator_UO_re_stage[3]),
		.o_commutator_UO_im(w_commutator_UO_im_stage[3]),
		.o_commutator_LO_re(w_commutator_LO_re_stage[3]),
		.o_commutator_LO_im(w_commutator_LO_im_stage[3])
);

// pipeline register
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		commutator_UO_re_pipe_r[2] <= 0;
		commutator_UO_im_pipe_r[2] <= 0;
		commutator_LO_re_pipe_r[2] <= 0;
		commutator_LO_im_pipe_r[2] <= 0;
	end
	else begin
		commutator_UO_re_pipe_r[2] <= w_commutator_UO_re_stage[3];
		commutator_UO_im_pipe_r[2] <= w_commutator_UO_im_stage[3];
		commutator_LO_re_pipe_r[2] <= w_commutator_LO_re_stage[3];
		commutator_LO_im_pipe_r[2] <= w_commutator_LO_im_stage[3];
	end
end


delay_element #(2) delay_element_U_stage4(
		.clk(clk),
		.i_rst(i_rst),
		.i_delay_in_re(commutator_UO_re_pipe_r[2]), 
		.i_delay_in_im(commutator_UO_im_pipe_r[2]),
		
		.o_delay_out_re(w_delay_out_re_U_stage[3]), 
		.o_delay_out_im(w_delay_out_im_U_stage[3])
);
butterfly_unit butterfly_unit_stage4(
		.i_butterfly_UI_re(w_delay_out_re_U_stage[3]),
		.i_butterfly_UI_im(w_delay_out_im_U_stage[3]),
		.i_butterfly_LI_re(commutator_LO_re_pipe_r[2]),
		.i_butterfly_LI_im(commutator_LO_im_pipe_r[2]),
		
		.o_butterfly_UO_re(w_butterfly_UO_re_stage[3]),
		.o_butterfly_UO_im(w_butterfly_UO_im_stage[3]),
		.o_butterfly_LO_re(w_butterfly_LO_re_stage[3]),
		.o_butterfly_LO_im(w_butterfly_LO_im_stage[3])
);

// pipeline register
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		butterfly_UO_re_pipe_r[3] <= 0;
		butterfly_UO_im_pipe_r[3] <= 0;
		butterfly_LO_re_pipe_r[3] <= 0;
		butterfly_LO_im_pipe_r[3] <= 0;
	end
	else begin
		butterfly_UO_re_pipe_r[3] <= w_butterfly_UO_re_stage[3];
		butterfly_UO_im_pipe_r[3] <= w_butterfly_UO_im_stage[3];
		butterfly_LO_re_pipe_r[3] <= w_butterfly_LO_re_stage[3];
		butterfly_LO_im_pipe_r[3] <= w_butterfly_LO_im_stage[3];
	end
end

ROM4 ROM4_stage4(
		.i_addr(w_addr_stage[3]), // 0 ~ 1
		
		.o_ROM_out_re(w_ROM_out_re_stage[3]),
		.o_ROM_out_im(w_ROM_out_im_stage[3])
);
// pipeline register
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		ROM_re_pipe_r[3] <= 0;
		ROM_im_pipe_r[3] <= 0;
	end
	else begin
		ROM_re_pipe_r[3] <= w_ROM_out_re_stage[3];
		ROM_im_pipe_r[3] <= w_ROM_out_im_stage[3];
	end
end
twiddle_mul twiddle_mul_stage4(
		.i_twiddle_factor_re(ROM_re_pipe_r[3]),
		.i_twiddle_factor_im(ROM_im_pipe_r[3]),
		.i_butterfly_LO_re(butterfly_LO_re_pipe_r[3]),
		.i_butterfly_LO_im(butterfly_LO_im_pipe_r[3]),
		
		.o_twiddle_mul_result_re(w_twiddle_mul_result_re_stage[3]),
		.o_twiddle_mul_result_im(w_twiddle_mul_result_im_stage[3])
);
// stage 5
delay_element #(1) delay_element_L_stage5(
		.clk(clk),
		.i_rst(i_rst),
		.i_delay_in_re(w_twiddle_mul_result_re_stage[3]), 
		.i_delay_in_im(w_twiddle_mul_result_im_stage[3]),
		
		.o_delay_out_re(w_delay_out_re_L_stage[4]), 
		.o_delay_out_im(w_delay_out_im_L_stage[4])
);
commutator commutator_stage5(
		.i_commutator_UI_re(butterfly_UO_re_pipe_r[3]),
		.i_commutator_UI_im(butterfly_UO_im_pipe_r[3]),
		
		.i_commutator_LI_re(w_delay_out_re_L_stage[4]),
		.i_commutator_LI_im(w_delay_out_im_L_stage[4]),
		.i_commutator_mode(w_commutator_mode_stage[4]), 
		
		.o_commutator_UO_re(w_commutator_UO_re_stage[4]),
		.o_commutator_UO_im(w_commutator_UO_im_stage[4]),
		.o_commutator_LO_re(w_commutator_LO_re_stage[4]),
		.o_commutator_LO_im(w_commutator_LO_im_stage[4])
);

// pipeline register
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		commutator_UO_re_pipe_r[3] <= 0;
		commutator_UO_im_pipe_r[3] <= 0;
		commutator_LO_re_pipe_r[3] <= 0;
		commutator_LO_im_pipe_r[3] <= 0;
	end
	else begin
		commutator_UO_re_pipe_r[3] <= w_commutator_UO_re_stage[4];
		commutator_UO_im_pipe_r[3] <= w_commutator_UO_im_stage[4];
		commutator_LO_re_pipe_r[3] <= w_commutator_LO_re_stage[4];
		commutator_LO_im_pipe_r[3] <= w_commutator_LO_im_stage[4];
	end
end


delay_element #(1) delay_element_U_stage5(
		.clk(clk),
		.i_rst(i_rst),
		.i_delay_in_re(commutator_UO_re_pipe_r[3]), 
		.i_delay_in_im(commutator_UO_im_pipe_r[3]),
		
		.o_delay_out_re(w_delay_out_re_U_stage[4]), 
		.o_delay_out_im(w_delay_out_im_U_stage[4])
);
butterfly_unit butterfly_unit_stage5(
		.i_butterfly_UI_re(w_delay_out_re_U_stage[4]),
		.i_butterfly_UI_im(w_delay_out_im_U_stage[4]),
		.i_butterfly_LI_re(commutator_LO_re_pipe_r[3]),
		.i_butterfly_LI_im(commutator_LO_im_pipe_r[3]),
		
		.o_butterfly_UO_re(w_butterfly_UO_re_stage[4]),
		.o_butterfly_UO_im(w_butterfly_UO_im_stage[4]),
		.o_butterfly_LO_re(w_butterfly_LO_re_stage[4]),
		.o_butterfly_LO_im(w_butterfly_LO_im_stage[4])
);
// pin-pon buffer
pin_pon_buffer pin_pon_buffer_u0(
		.clk(clk),
		.i_rst(i_rst),
		.MemInUp({MDCOutUpRe_FF_r, MDCOutUpIm_FF_r}), // {MemInUp_re, MemInUp_im}
		.MemInDown({MDCOutDownRe_FF_r, MDCOutDownIm_FF_r}), // {MemInDown_re, MemInDown_im}
		.in_valid(MDC_out_valid_FF_r),
		
		.MemOut(w_MemOut), // {MemOut_re, MemOut_im}
		.out_valid(w_out_valid)
);

// counter
always@(*)begin
	cnt_w = cnt_r;
	if(flag_start_cal_r) cnt_w = cnt_r + 1;
end
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		cnt_r <= 0;
	end
	else begin
		cnt_r <= cnt_w;
	end
end
// flag 
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		flag_start_cal_r <= 0;
	end
	else if(in_valid)begin
		flag_start_cal_r <= 1;
	end
end
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		flag_start_out_r <= 0;
	end
	else if(cnt_r==31)begin
		flag_start_out_r <= in_valid_FF_r;
	end
end
// input FF
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		FFTInRe_FF_r <= 0;
		FFTInIm_FF_r <= 0;
		in_valid_FF_r <= 0;
	end
	else begin
		FFTInRe_FF_r <= FFTInRe;
		FFTInIm_FF_r <= FFTInIm;
		in_valid_FF_r <= in_valid;
	end
end

// output FF
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		MDCOutUpRe_FF_r <= 0;
		MDCOutUpIm_FF_r <= 0;
		MDCOutDownRe_FF_r <= 0;
		MDCOutDownIm_FF_r <= 0;
		MDC_out_valid_FF_r <= 0;
		FFTOutRe_FF_r <= 0;
		FFTOutIm_FF_r <= 0;
		FFT_out_valid_FF_r <= 0;
	end
	else begin
		MDCOutUpRe_FF_r <= w_butterfly_UO_re_stage[4];
		MDCOutUpIm_FF_r <= w_butterfly_UO_im_stage[4];
		MDCOutDownRe_FF_r <= w_butterfly_LO_re_stage[4];
		MDCOutDownIm_FF_r <= w_butterfly_LO_im_stage[4];
		MDC_out_valid_FF_r <= (flag_start_out_r && (cnt_r >= 7 && cnt_r <= 22));
		FFTOutRe_FF_r <= w_MemOut[`WORD_LEN*2-1:`WORD_LEN];
		FFTOutIm_FF_r <= w_MemOut[`WORD_LEN-1:0];
		FFT_out_valid_FF_r <= w_out_valid;
	end
end


endmodule




