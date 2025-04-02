// TF32 ADDER
// input: normal, signed zero
// output: normal, signed zero
// Do not consider cases which input, output is INF or Nan or subnormal number.
// Round to nearest even


`timescale 1ns/10ps

// Keep result's sticky bits, if require no shift loss, set 253
`define PRECISION_BIT_LEN 25

module TF32_add(result, operand_A, operand_B); 

input [18:0]operand_A;
input [18:0]operand_B;
output [18:0]result;


// Check if operand is zero(pos zero or neg zero)
wire Is_A_Zero, Is_B_Zero;
assign Is_A_Zero = (operand_A[18:0] == 19'b0) || (operand_A[18:0] == {1'b1, 18'b0});
assign Is_B_Zero = (operand_B[18:0] == 19'b0) || (operand_B[18:0] == {1'b1, 18'b0});



// Compare the exponent of two operands
wire [7:0] exp_A = operand_A[17:10];
wire [7:0] exp_B = operand_B[17:10];
wire Is_A_Exp_L = (exp_A >= exp_B); // Is A has larger exp
wire [7:0]exp_diff = (Is_A_Exp_L)? exp_A - exp_B : exp_B - exp_A; //large - small, result is 8 bits unsigned number // MAX exp_diff of normal number is 253

wire [8:0]exp_A_bias255 = exp_A + 128;
wire [8:0]exp_B_bias255 = exp_B + 128;



// Recover the original mantissa(add implicit one of normal number) // ADD one bit: prevent overflow from unsigned to signed
wire [11:0]unsign_mantissa_A = (Is_A_Zero)? {2'b00, operand_A[9:0]} : {2'b01,operand_A[9:0]};//2'b01: 1 is leading one
wire [11:0]unsign_mantissa_B = (Is_B_Zero)? {2'b00, operand_B[9:0]} : {2'b01,operand_B[9:0]};//2'b01: 1 is leading one
// Combine unsigned mantissa & sign bit, result into signed mantissa
wire sign_A = operand_A[18];
wire sign_B = operand_B[18];
wire [11:0]sign_mantissa_A = (unsign_mantissa_A ^ {12{sign_A}}) + sign_A;
wire [11:0]sign_mantissa_B = (unsign_mantissa_B ^ {12{sign_B}}) + sign_B;
// Add precision bits(to keep result's sticky bits)
wire signed[(11+`PRECISION_BIT_LEN):0]sign_mantissa_A_prec = {sign_mantissa_A, {(`PRECISION_BIT_LEN){1'b0}}};
wire signed[(11+`PRECISION_BIT_LEN):0]sign_mantissa_B_prec = {sign_mantissa_B, {(`PRECISION_BIT_LEN){1'b0}}};


// shift the smaller exp operand to the right until its exp match the larger exp
wire [(11+`PRECISION_BIT_LEN):0]Shifted_sign_mantissa_A_prec =  (Is_A_Exp_L)? sign_mantissa_A_prec : (sign_mantissa_A_prec >>> exp_diff);
wire [(11+`PRECISION_BIT_LEN):0]Shifted_sign_mantissa_B_prec = (!Is_A_Exp_L)? sign_mantissa_B_prec : (sign_mantissa_B_prec >>> exp_diff);													

// add mantissa (signed) // ADD one bit: x bit + x bit = (x+1) bit
wire [(12+`PRECISION_BIT_LEN):0]sign_sum = {Shifted_sign_mantissa_A_prec[11+`PRECISION_BIT_LEN], Shifted_sign_mantissa_A_prec} + 
										{Shifted_sign_mantissa_B_prec[11+`PRECISION_BIT_LEN], Shifted_sign_mantissa_B_prec};


// Convert signed mantissa into sign bit and unsigned mantissa.							 
// 1. determine sign bit											 
wire sign_bit = sign_sum[(12+`PRECISION_BIT_LEN)];
// 2. get unsigned mantissa
wire [(12+`PRECISION_BIT_LEN):0]unsign_sum =  (sign_sum ^ {(13+`PRECISION_BIT_LEN){sign_bit}}) + sign_bit; 


// Counting leading zeros
integer i;
reg [8:0] leading_zero;
reg flag;
always@(*)begin
	leading_zero = `PRECISION_BIT_LEN + 13;
	flag = 1'b0;
	for(i = `PRECISION_BIT_LEN + 12; i >= 0; i = i - 1)begin
		if(unsign_sum[i] && flag == 1'b0)begin
			leading_zero = `PRECISION_BIT_LEN + 12 - i;
			flag = 1'b1;
		end
	end
end

				 
// Normalize mantissa
wire [(12+`PRECISION_BIT_LEN):0]normalized_unsign_sum = (unsign_sum << (leading_zero));

wire Gaurd_bit = normalized_unsign_sum[`PRECISION_BIT_LEN + 2];
wire Round_bit = normalized_unsign_sum[`PRECISION_BIT_LEN + 1];
wire Sticky_bit =  |normalized_unsign_sum[(`PRECISION_BIT_LEN): 0];

// rounding using G, R, S bit // add 1: need one more bit ==> (2.10) 
wire [11:0]round_mantissa = {1'b0, normalized_unsign_sum[(`PRECISION_BIT_LEN+12):(`PRECISION_BIT_LEN+2)]} + 
						    ((Gaurd_bit&Round_bit)|(Round_bit&Sticky_bit));
// modify result exp by leading_zero				
wire [8:0]result_exp_bias255 = (Is_A_Exp_L)?  exp_A_bias255 - leading_zero + 2 : exp_B_bias255 - leading_zero + 2;


// Rounding again (overflow may occured due to round up(incr: 1.111...111 + 1 = 10.000...000))
wire [10:0]final_round_mantissa = (round_mantissa[11])? round_mantissa[11:1] : round_mantissa[10:0];
wire [8:0]final_result_exp_bias255 = (round_mantissa[11])?  result_exp_bias255 + 1 : result_exp_bias255;





reg result_s;
reg [9:0] result_m;
reg [9:0] result_m_subnormal; // for rounding
reg [7:0] result_e;
always@(*)begin
	if(final_round_mantissa == 0)begin // signed zero
		result_m = 10'b0;
		result_e = 8'd0;
		result_s = 1'b0; // in this homework, for simplify, all operations of signed zeros result to +0
	end
	else if(final_result_exp_bias255 < 9'd129)begin // subnormal number // no handle subnormal number in this hw
		result_m_subnormal = final_round_mantissa >> (129 - final_result_exp_bias255);
		
		if(result_m_subnormal[9]) begin // 進位 to min normal value
			result_m = 10'b0;
			result_e = 8'b1;
			result_s = sign_bit;
		end
		else begin // 捨去 to zero
			result_m = 10'b0;
			result_e = 8'd0;
			result_s = 1'b0; 
		end
		
	end
	else begin
		result_m = final_round_mantissa[9:0];
		result_e = final_result_exp_bias255 - 128; //bias 127
		result_s = sign_bit;
	end
end



assign result[18] = result_s;
assign result[17:10] = result_e;
assign result[9:0] = result_m;

endmodule

