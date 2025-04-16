// TF32 multiply -1
// input: normal, signed zero
// output: normal, signed zero
// Do not consider cases which input, output is INF or Nan or subnormal number.
// Round to nearest even


module TF32_reverse_sign(result, operand_A); 

input [18:0]operand_A;
output reg [18:0]result;


// Check if operand is zero(pos zero or neg zero)
wire Is_A_Zero_pos, Is_A_Zero_neg;
assign {Is_A_Zero_pos, Is_A_Zero_neg} = {(operand_A[18:0] == 19'b0), (operand_A[18:0] == {1'b1, 18'b0})};


always@(*)begin
	if(Is_A_Zero_pos || Is_A_Zero_neg)begin // zero * -1 = zero
		result = 19'b0;
	end
	else begin // * -1
		result = {(!operand_A[18]), operand_A[17:0]};
	end
end



endmodule

