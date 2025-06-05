
`define WORD_LEN 11


module ROM16 (
		input [2:0] i_addr, // 0, 2, 4, 6, 8, 10, 12, 14 ==> 0 ~ 7
		
		output signed[`WORD_LEN-1:0] o_ROM_out_re,
		output signed[`WORD_LEN-1:0] o_ROM_out_im
);

wire signed [`WORD_LEN-1:0] W_re [0:4];
wire signed [`WORD_LEN-1:0] W_im [0:4];

assign W_re[0] = 'b01111111111;  assign W_im[0] = 'b00000000000;  // W0
                                             
assign W_re[1] = 'b01110110010;  assign W_im[1] = 'b11001111000;  // W2
                                             
assign W_re[2] = 'b01011010100;  assign W_im[2] = 'b10100101100;  // W4
                                             
assign W_re[3] = 'b00110001000;  assign W_im[3] = 'b10001001110;  // W6
                                             
assign W_re[4] = 'b00000000000;  assign W_im[4] = 'b10000000000;  // W8



wire [2:0] mux_sel = (i_addr > 4'd4)? 8 - i_addr:i_addr;

wire signed [`WORD_LEN-1:0] mux_out_re = W_re[mux_sel];
wire signed [`WORD_LEN-1:0] mux_out_im = W_im[mux_sel];


assign o_ROM_out_re = (i_addr > 4'd4)? (~mux_out_re) + 1'b1:mux_out_re;
assign o_ROM_out_im = mux_out_im;

endmodule




