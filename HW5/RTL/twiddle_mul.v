`define WORD_LEN 11

module twiddle_mul (
		input signed [`WORD_LEN-1:0] i_twiddle_factor,
		input signed [`WORD_LEN-1:0] i_butterfly_LO,
		
		output signed [`WORD_LEN-1:0] o_prod
);

wire signed[`WORD_LEN*2 - 1:0] prod = i_twiddle_factor * i_butterfly_LO;

assign o_prod = prod[`WORD_LEN*2 - 2:`WORD_LEN-1];


endmodule




