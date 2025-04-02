///////////////////////////////////
//      Original Version         //
///////////////////////////////////
module FIR(
input clk,
input i_rst,
input ValidIn,
input signed[13:0]FilterIn,
output ValidOut,
output signed[15:0]FilterOut
);

reg signed [13:0] input_FF;
reg valid_in_FF1, valid_in_FF2;
wire signed [15:0] interconnet [15:0]; // interconnetion between FIR_subblocks

// output
assign ValidOut = valid_in_FF2;

// Original FIR 
FIR_subblock tap_00(clk, i_rst, input_FF, 'b00000000101011,               0, interconnet[ 0]);
FIR_subblock tap_01(clk, i_rst, input_FF, 'b00000000010000, interconnet[ 0], interconnet[ 1]);
FIR_subblock tap_02(clk, i_rst, input_FF, 'b11111110110011, interconnet[ 1], interconnet[ 2]);
FIR_subblock tap_03(clk, i_rst, input_FF, 'b11111101011111, interconnet[ 2], interconnet[ 3]);
FIR_subblock tap_04(clk, i_rst, input_FF, 'b11111110010011, interconnet[ 3], interconnet[ 4]);
FIR_subblock tap_05(clk, i_rst, input_FF, 'b00000010100001, interconnet[ 4], interconnet[ 5]);
FIR_subblock tap_06(clk, i_rst, input_FF, 'b00001001010001, interconnet[ 5], interconnet[ 6]);
FIR_subblock tap_07(clk, i_rst, input_FF, 'b00001111100110, interconnet[ 6], interconnet[ 7]);
FIR_subblock tap_08(clk, i_rst, input_FF, 'b00010010001100, interconnet[ 7], interconnet[ 8]);
FIR_subblock tap_09(clk, i_rst, input_FF, 'b00001111100110, interconnet[ 8], interconnet[ 9]);
FIR_subblock tap_10(clk, i_rst, input_FF, 'b00001001010001, interconnet[ 9], interconnet[10]);
FIR_subblock tap_11(clk, i_rst, input_FF, 'b00000010100001, interconnet[10], interconnet[11]);
FIR_subblock tap_12(clk, i_rst, input_FF, 'b11111110010011, interconnet[11], interconnet[12]);
FIR_subblock tap_13(clk, i_rst, input_FF, 'b11111101011111, interconnet[12], interconnet[13]);
FIR_subblock tap_14(clk, i_rst, input_FF, 'b11111110110011, interconnet[13], interconnet[14]);
FIR_subblock tap_15(clk, i_rst, input_FF, 'b00000000010000, interconnet[14], interconnet[15]);
FIR_subblock tap_16(clk, i_rst, input_FF, 'b00000000101011, interconnet[15], FilterOut); // last tape also has a flip flop, function as output flip flop

// input_FF
always@(posedge clk)begin
	if(i_rst)begin
		input_FF <= 0;
	end
	else begin
		input_FF <= FilterIn;
	end
end

// ValidIn
always@(posedge clk)begin
	if(i_rst)begin
		valid_in_FF1 <= 0;
		valid_in_FF2 <= 0;
	end
	else begin
		valid_in_FF1 <= ValidIn;
		valid_in_FF2 <= valid_in_FF1;
	end
end


                                                       
endmodule

module FIR_subblock(
input clk,
input i_rst,
input signed[13:0]input_signal,
input signed[13:0]filter_coeff,
input signed[15:0]prev_node,
output signed[15:0]output_signal
);

reg signed [15:0] delay_element; // delay_element is S4.12, same as data type after add

// multiplication
wire signed [27:0]prod = input_signal * filter_coeff; // prod is S8.20
wire signed [19:0]prod_rounded = prod[27:8] + prod[7]; // prod_rounded is S8.12
wire signed [15:0]prod_rounded_clamped = (prod_rounded > 32767)? 32767: (prod_rounded <  -32768)?  -32768:prod_rounded[15:0]; // prod_rounded_clamped is S4.12

// addition
wire signed [16:0]add = prod_rounded_clamped + prev_node; // add is S5.12
wire signed [15:0]add_clamped = (add > 32767)? 32767: (add <  -32768)?  -32768:add[15:0]; // add_clamped is S4.12

// delay element
always@(posedge clk)begin
	if(i_rst)begin
		delay_element <= 0;
	end
	else begin
		delay_element <= add_clamped;
	end
end

//output to next subblock
assign output_signal = delay_element;


endmodule