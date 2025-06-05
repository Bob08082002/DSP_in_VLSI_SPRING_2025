
`define WORD_LEN 11


module ROM8 (
		input [1:0] i_addr, // 0, 4, 8, 12 ==> 0 ~ 3
		
		output signed[`WORD_LEN-1:0] o_ROM_out_re,
		output signed[`WORD_LEN-1:0] o_ROM_out_im
);

wire signed [`WORD_LEN-1:0] W_re [0:2];
wire signed [`WORD_LEN-1:0] W_im [0:2];

assign W_re[0] = 'b01111111111;  assign W_im[0] = 'b00000000000;  // W0
                                              
                                              
assign W_re[1] = 'b01011010100;  assign W_im[1] = 'b10100101100;  // W4
                                              
                                              
assign W_re[2] = 'b00000000000;  assign W_im[2] = 'b10000000000;  // W8



wire [1:0] mux_sel = (i_addr > 4'd2)? 4 - i_addr:i_addr;

wire signed [`WORD_LEN-1:0] mux_out_re = W_re[mux_sel];
wire signed [`WORD_LEN-1:0] mux_out_im = W_im[mux_sel];


assign o_ROM_out_re = (i_addr > 4'd2)? (~mux_out_re) + 1'b1:mux_out_re;
assign o_ROM_out_im = mux_out_im;

endmodule




