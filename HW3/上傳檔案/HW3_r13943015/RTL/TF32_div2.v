// TF32 divide 2
// input: normal, signed zero
// output: normal, signed zero
// Do not consider cases which input, output is INF or Nan or subnormal number.
// Round to nearest even

module TF32_div2(result, operand_A); 

input [18:0]operand_A;
output reg [18:0]result;


// Check if operand is zero(pos zero or neg zero)
wire Is_A_Zero_pos, Is_A_Zero_neg;
assign {Is_A_Zero_pos, Is_A_Zero_neg} = {(operand_A[18:0] == 19'b0), (operand_A[18:0] == {1'b1, 18'b0})};

wire [7:0] exp_A = operand_A[17:10];
wire [7:0] exp_A_minus1 = exp_A - 1;
always@(*)begin
	if(exp_A == 1)begin // div2 to subnormal -> no deal with subnormal in this hw 
		result = 19'b0;
	end
	else if(Is_A_Zero_pos || Is_A_Zero_neg)begin // zero / 2 = zero
		result = 19'b0;
	end
	else begin // div 2
		result = {operand_A[18], exp_A_minus1, operand_A[9:0]};
	end


end



endmodule

