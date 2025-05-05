`define WORD_LEN 11

module butterfly_unit (
		input signed [`WORD_LEN-1:0] i_butterfly_UI,
		input signed [`WORD_LEN-1:0] i_butterfly_LI,
		
		output signed [`WORD_LEN-1:0] o_butterfly_UO,
		output signed [`WORD_LEN-1:0] o_butterfly_LO
);

wire signed[`WORD_LEN:0] sum = i_butterfly_UI + i_butterfly_LI;
wire signed[`WORD_LEN:0] sub = i_butterfly_UI - i_butterfly_LI;

assign o_butterfly_UO = sum[`WORD_LEN-1:0];
assign o_butterfly_LO = sub[`WORD_LEN-1:0];

endmodule




