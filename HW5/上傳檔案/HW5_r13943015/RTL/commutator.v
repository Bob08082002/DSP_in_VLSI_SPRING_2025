`define WORD_LEN 11 

module commutator (
		input signed [`WORD_LEN-1:0] i_commutator_UI_re,
		input signed [`WORD_LEN-1:0] i_commutator_UI_im,
		
		input signed [`WORD_LEN-1:0] i_commutator_LI_re,
		input signed [`WORD_LEN-1:0] i_commutator_LI_im,
		input i_commutator_mode, //(0: switch, 1: bypass operation)
		
		output signed [`WORD_LEN-1:0] o_commutator_UO_re,
		output signed [`WORD_LEN-1:0] o_commutator_UO_im,
		output signed [`WORD_LEN-1:0] o_commutator_LO_re,
		output signed [`WORD_LEN-1:0] o_commutator_LO_im
);


assign {o_commutator_UO_re, o_commutator_UO_im}  = (i_commutator_mode==0)? {i_commutator_LI_re, i_commutator_LI_im}:{i_commutator_UI_re, i_commutator_UI_im};
assign {o_commutator_LO_re, o_commutator_LO_im}  = (i_commutator_mode==0)? {i_commutator_UI_re, i_commutator_UI_im}:{i_commutator_LI_re, i_commutator_LI_im};

endmodule




