
`define WORD_LEN 11


module ROM32 (
		input [3:0] i_addr, // 0 ~ 15
		
		output signed[`WORD_LEN-1:0] o_ROM_out_re,
		output signed[`WORD_LEN-1:0] o_ROM_out_im
);

wire signed [`WORD_LEN-1:0] W_re [0:8];
wire signed [`WORD_LEN-1:0] W_im [0:8];

assign W_re[0] = 'b01111111111;  assign W_im[0] = 'b00000000000;  // W0
assign W_re[1] = 'b01111101100;  assign W_im[1] = 'b11100111000;  // W1
assign W_re[2] = 'b01110110010;  assign W_im[2] = 'b11001111000;  // W2
assign W_re[3] = 'b01101010011;  assign W_im[3] = 'b10111000111;  // W3
assign W_re[4] = 'b01011010100;  assign W_im[4] = 'b10100101100;  // W4
assign W_re[5] = 'b01000111001;  assign W_im[5] = 'b10010101101;  // W5
assign W_re[6] = 'b00110001000;  assign W_im[6] = 'b10001001110;  // W6
assign W_re[7] = 'b00011001000;  assign W_im[7] = 'b10000010100;  // W7
assign W_re[8] = 'b00000000000;  assign W_im[8] = 'b10000000000;  // W8



wire [3:0] mux_sel = (i_addr > 4'd8)? 16 - i_addr:i_addr;

wire signed [`WORD_LEN-1:0] mux_out_re = W_re[mux_sel];
wire signed [`WORD_LEN-1:0] mux_out_im = W_im[mux_sel];


assign o_ROM_out_re = (i_addr > 4'd8)? (~mux_out_re) + 1'b1:mux_out_re;
assign o_ROM_out_im = mux_out_im;

endmodule




