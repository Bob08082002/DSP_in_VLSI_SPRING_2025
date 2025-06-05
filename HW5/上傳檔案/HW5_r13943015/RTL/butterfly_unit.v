`define WORD_LEN 11

module butterfly_unit (
		input signed [`WORD_LEN-1:0] i_butterfly_UI_re,
		input signed [`WORD_LEN-1:0] i_butterfly_UI_im,
		input signed [`WORD_LEN-1:0] i_butterfly_LI_re,
		input signed [`WORD_LEN-1:0] i_butterfly_LI_im,
		
		output signed [`WORD_LEN-1:0] o_butterfly_UO_re,
		output signed [`WORD_LEN-1:0] o_butterfly_UO_im,
		output signed [`WORD_LEN-1:0] o_butterfly_LO_re,
		output signed [`WORD_LEN-1:0] o_butterfly_LO_im
);

wire signed[`WORD_LEN:0] sum_re = i_butterfly_UI_re + i_butterfly_LI_re; // 2.10
wire signed[`WORD_LEN:0] sum_im = i_butterfly_UI_im + i_butterfly_LI_im; // 2.10
wire signed[`WORD_LEN:0] sub_re = i_butterfly_UI_re - i_butterfly_LI_re; // 2.10
wire signed[`WORD_LEN:0] sub_im = i_butterfly_UI_im - i_butterfly_LI_im; // 2.10

// always@(*)begin
// 	if(sum_re < -1024 || sum_re>1023)begin
// 		$display($time, " OVERFLOW: sum_re = %b", sum_re);
// 	end
// 	if(sum_im < -1024 || sum_im>1023)begin
// 		$display($time, " OVERFLOW: sum_im = %b", sum_im);
// 	end
// 	if(sub_re < -1024 || sub_re>1023)begin
// 		$display($time, " OVERFLOW: sub_re = %b", sub_re);
// 	end
// 	if(sub_im < -1024 || sub_im>1023)begin
// 		$display($time, " OVERFLOW: sub_im = %b", sub_im);
// 	end
// end


// apply saturation: same as matlab
assign o_butterfly_UO_re = (sum_re > 1023)? 1023: (sum_re < -1024)? -1024: sum_re[`WORD_LEN-1:0];
assign o_butterfly_UO_im = (sum_im > 1023)? 1023: (sum_im < -1024)? -1024: sum_im[`WORD_LEN-1:0];
assign o_butterfly_LO_re = (sub_re > 1023)? 1023: (sub_re < -1024)? -1024: sub_re[`WORD_LEN-1:0];
assign o_butterfly_LO_im = (sub_im > 1023)? 1023: (sub_im < -1024)? -1024: sub_im[`WORD_LEN-1:0];


endmodule




