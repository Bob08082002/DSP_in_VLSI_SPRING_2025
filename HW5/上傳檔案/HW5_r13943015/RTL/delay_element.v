//                      delay_element                   //
// Z^-x                                                   //
`define WORD_LEN 11


module delay_element #(
	parameter DELAY = 16
)(
		input clk,
		input i_rst,
		input signed [`WORD_LEN-1:0] i_delay_in_re, 
		input signed [`WORD_LEN-1:0] i_delay_in_im,
		
		output signed[`WORD_LEN-1:0] o_delay_out_re, 
		output signed[`WORD_LEN-1:0] o_delay_out_im
);
integer i;

reg signed [`WORD_LEN-1:0] DFF_re_r [0:DELAY-1];
reg signed [`WORD_LEN-1:0] DFF_im_r [0:DELAY-1];

assign o_delay_out_re = DFF_re_r[DELAY-1];
assign o_delay_out_im = DFF_im_r[DELAY-1];


always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		for (i = 0; i < DELAY; i = i + 1)begin
			DFF_re_r[i] <= 0;
			DFF_im_r[i] <= 0;
		end
	end
	else begin
		DFF_re_r[0] <= i_delay_in_re;
		DFF_im_r[0] <= i_delay_in_im;
		for (i = 1; i < DELAY; i = i + 1)begin
			DFF_re_r[i] <= DFF_re_r[i - 1];
			DFF_im_r[i] <= DFF_im_r[i - 1];
		end
	end
end



endmodule




