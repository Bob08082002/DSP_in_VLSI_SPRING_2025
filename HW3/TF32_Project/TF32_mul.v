// TF32 MULTIPLIER
// input: normal, signed zero
// output: normal, signed zero
// Do not consider cases which input, output is INF or Nan or subnormal number.
// Round to nearest even


`timescale 1ns/10ps


module TF32_mul(result, operand_A, operand_B); 

input [18:0]operand_A;
input [18:0]operand_B;
output [18:0]result;


// Check if operand is zero(pos zero or neg zero)
wire Is_A_Zero, Is_B_Zero;
assign Is_A_Zero = (operand_A[18:0] == 19'b0) || (operand_A[18:0] == {1'b1, 18'b0});
assign Is_B_Zero = (operand_B[18:0] == 19'b0) || (operand_B[18:0] == {1'b1, 18'b0});




// Compare the exponent of two operands
wire [7:0] exp_A = operand_A[17:10]; // normal: 1 ~ 254
wire [7:0] exp_B = operand_B[17:10]; // normal: 1 ~ 254
wire [9:0] exp_sum_bias32 = exp_A + exp_B + 32; // normal: 2+32 ~ 508+32 // need - 127 - 32


// Recover the original mantissa(add implicit one of normal number)
wire [10:0]unsign_mantissa_A = (Is_A_Zero)? {1'b0, operand_A[9:0]} : {1'b1,operand_A[9:0]};//1'b1: 1 is leading one
wire [10:0]unsign_mantissa_B = (Is_B_Zero)? {1'b0, operand_B[9:0]} : {1'b1,operand_B[9:0]};//1'b1: 1 is leading one

// multiply
wire [21:0]unsign_mantissa_prod = unsign_mantissa_A * unsign_mantissa_B; // (2.20)

// Counting leading zeros
integer i;
reg [4:0] leading_zero;
reg flag;
always@(*)begin
	leading_zero = 22;
	flag = 1'b0;
	for(i = 21; i >= 0; i = i - 1)begin
		if(unsign_mantissa_prod[i] && flag == 1'b0)begin
			leading_zero = 21 - i;
			flag = 1'b1;
		end
	end
end

// Normalize mantissa
wire [21:0]normalized_unsign_mantissa_prod = (unsign_mantissa_prod << (leading_zero));

wire Gaurd_bit = normalized_unsign_mantissa_prod[11];
wire Round_bit = normalized_unsign_mantissa_prod[10];
wire Sticky_bit =  |normalized_unsign_mantissa_prod[9: 0];

// rounding using G, R, S bit // add 1: need one more bit ==> (2.10) 
wire [11:0]round_mantissa = {1'b0, normalized_unsign_mantissa_prod[21:11]} + ((Gaurd_bit&Round_bit)|(Round_bit&Sticky_bit));
// modify result exp by leading_zero				
wire [9:0]result_exp_sum_bias32 = exp_sum_bias32 - leading_zero + 2;


// Rounding again (overflow may occured due to round up(incr: 1.111...111 + 1 = 10.000...000))
wire [10:0]final_round_mantissa = (round_mantissa[11])? round_mantissa[11:1] : round_mantissa[10:0];
wire [9:0]final_result_exp_sum_bias32 = (round_mantissa[11])?  result_exp_sum_bias32 : result_exp_sum_bias32 - 1;


reg result_s;
reg [9:0] result_m;
reg [7:0] result_e;
always@(*)begin
	if(final_round_mantissa == 0)begin // signed zero
		result_m = 10'b0;
		result_e = 8'd0;
		//result_s = ((Is_A_Zero_neg && Is_B_Zero_neg && (!inst)) || (Is_A_Zero_neg && Is_B_Zero_pos && (inst)))? 1:0; //(-0) + (-0) = -0, (-0) - (+0) = -0, otherwise (+0)
		result_s = 1'b0; // in this homework, for simplify, all operations of signed zeros result to +0
	end
	else if(final_result_exp_sum_bias32 > 10'd413)begin // overflow // no handle infinity in this hw: saturate to max normal num 
		result_m = {10{1'b1}};
		result_e = 8'd254;
		result_s = operand_A[18] ^ operand_B[18];
	end
	else if(final_result_exp_sum_bias32 < 10'd160)begin // subnormal number // no handle subnormal number in this hw
		result_m = 10'b0;
		result_e = 8'd0;
		result_s = 1'b0; 
	end
	else begin
		result_m = final_round_mantissa[9:0];
		result_e = final_result_exp_sum_bias32 - 127 - 32; //bias 127
		result_s = operand_A[18] ^ operand_B[18];
	end
end



assign result[18] = result_s;
assign result[17:10] = result_e;
assign result[9:0] = result_m;

endmodule

