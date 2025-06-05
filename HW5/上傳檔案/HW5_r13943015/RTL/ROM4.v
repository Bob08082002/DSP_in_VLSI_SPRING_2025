
`define WORD_LEN 11


module ROM4 (
		input  i_addr, // 0, 8 ==> 0 ~ 1
		
		output signed[`WORD_LEN-1:0] o_ROM_out_re,
		output signed[`WORD_LEN-1:0] o_ROM_out_im
);

wire signed [`WORD_LEN-1:0] W_re [0:1];
wire signed [`WORD_LEN-1:0] W_im [0:1];

assign W_re[0] = 'b01111111111;  assign W_im[0] = 'b00000000000;  // W0
                                             
                                                                               
                                             
assign W_re[1] = 'b00000000000;  assign W_im[1] = 'b10000000000;  // W8




assign o_ROM_out_re = W_re[i_addr];
assign o_ROM_out_im = W_im[i_addr];

endmodule




