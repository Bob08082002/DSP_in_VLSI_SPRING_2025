`define WORD_LEN 11

module commutator (
		input signed [`WORD_LEN-1:0] i_commutator_UI,
		input signed [`WORD_LEN-1:0] i_commutator_LI,
		input i_commutator_mode, //(0: switch, 1: bypass operation)
		
		output signed [`WORD_LEN-1:0] o_commutator_UO,
		output signed [`WORD_LEN-1:0] o_commutator_LO
);


assign o_commutator_UO = (i_commutator_mode==0)? i_commutator_LI:i_commutator_UI;
assign o_commutator_LO = (i_commutator_mode==0)? i_commutator_UI:i_commutator_LI;

endmodule




