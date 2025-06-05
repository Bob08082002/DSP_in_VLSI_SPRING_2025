`define WORD_LEN 11

module twiddle_mul (
		input signed [`WORD_LEN-1:0] i_twiddle_factor_re,
		input signed [`WORD_LEN-1:0] i_twiddle_factor_im,
		input signed [`WORD_LEN-1:0] i_butterfly_LO_re,
		input signed [`WORD_LEN-1:0] i_butterfly_LO_im,
		
		output signed [`WORD_LEN-1:0] o_twiddle_mul_result_re,
		output signed [`WORD_LEN-1:0] o_twiddle_mul_result_im
);
// complex number multiplication
// a * b = (ar + i*ai) * (br + i*bi) = (arbr - aibi) + i*(arbi + aibr)
wire signed[`WORD_LEN*2 - 1:0] prod_arbr = i_twiddle_factor_re * i_butterfly_LO_re;  // 2.20
wire signed[`WORD_LEN*2 - 1:0] prod_aibi = i_twiddle_factor_im * i_butterfly_LO_im;  // 2.20
wire signed[`WORD_LEN*2 - 1:0] prod_arbi = i_twiddle_factor_re * i_butterfly_LO_im;  // 2.20
wire signed[`WORD_LEN*2 - 1:0] prod_aibr = i_twiddle_factor_im * i_butterfly_LO_re;  // 2.20

wire signed[`WORD_LEN*2:0] result_re = prod_arbr - prod_aibi; // 3.20
wire signed[`WORD_LEN*2:0] result_im = prod_arbi + prod_aibr; // 3.20

// apply rounding: same as matlab
wire signed[`WORD_LEN*2 - 10:0] result_re_round = result_re[`WORD_LEN*2:10] + result_re[9]; // 3.10
wire signed[`WORD_LEN*2 - 10:0] result_im_round = result_im[`WORD_LEN*2:10] + result_im[9]; // 3.10

// always@(*)begin
// 	if(result_re_round < -1024 || result_re_round>1023)begin
// 		$display($time, " OVERFLOW: result_re_round = %b", result_re_round);
// 	end
// 	if(result_im_round < -1024 || result_im_round>1023)begin
// 		$display($time, " OVERFLOW: result_im_round = %b", result_im_round);
// 	end
// end

// apply saturation: same as matlab
assign o_twiddle_mul_result_re = (result_re_round > 1023)? 1023: (result_re_round < -1024)? -1024: result_re_round[`WORD_LEN - 1:0]; // 1.10
assign o_twiddle_mul_result_im = (result_im_round > 1023)? 1023: (result_im_round < -1024)? -1024: result_im_round[`WORD_LEN - 1:0]; // 1.10


endmodule




