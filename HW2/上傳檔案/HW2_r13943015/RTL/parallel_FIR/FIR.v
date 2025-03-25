///////////////////////////////////
//      Parallel Version         //
///////////////////////////////////
module FIR(
input clk,
input i_rst,
input ValidIn,
input signed[13:0]FilterIn1,  // x[2k]
input signed[13:0]FilterIn2,  // x[2k+1]
output ValidOut,
output signed[15:0]FilterOut1, // y[2k]
output signed[15:0]FilterOut2  // y[2k+1]
);

reg signed [13:0] input_FF1, input_FF2;
reg signed [15:0] output_FF1, output_FF2;
reg valid_in_FF1, valid_in_FF2;
wire signed [15:0] interconnet [17:0]; // interconnetion between FIR_subblocks

// output
assign ValidOut = valid_in_FF2;
assign FilterOut1 = output_FF1;
assign FilterOut2 = output_FF2;


// Parallel FIR 
FIR_subblock_init_last tap_2kplus1_00(            input_FF1,           'b00000000101011,                                0,  interconnet[ 0]);
FIR_subblock_parallel  tap_2kplus1_01(clk, i_rst, input_FF2, input_FF1,'b00000000010000, 'b11111110110011, interconnet[ 0], interconnet[ 1]);
FIR_subblock_parallel  tap_2kplus1_02(clk, i_rst, input_FF2, input_FF1,'b11111101011111, 'b11111110010011, interconnet[ 1], interconnet[ 2]);
FIR_subblock_parallel  tap_2kplus1_03(clk, i_rst, input_FF2, input_FF1,'b00000010100001, 'b00001001010001, interconnet[ 2], interconnet[ 3]);
FIR_subblock_parallel  tap_2kplus1_04(clk, i_rst, input_FF2, input_FF1,'b00001111100110, 'b00010010001100, interconnet[ 3], interconnet[ 4]);
FIR_subblock_parallel  tap_2kplus1_05(clk, i_rst, input_FF2, input_FF1,'b00001111100110, 'b00001001010001, interconnet[ 4], interconnet[ 5]);
FIR_subblock_parallel  tap_2kplus1_06(clk, i_rst, input_FF2, input_FF1,'b00000010100001, 'b11111110010011, interconnet[ 5], interconnet[ 6]);
FIR_subblock_parallel  tap_2kplus1_07(clk, i_rst, input_FF2, input_FF1,'b11111101011111, 'b11111110110011, interconnet[ 6], interconnet[ 7]);
FIR_subblock_parallel  tap_2kplus1_08(clk, i_rst, input_FF2, input_FF1,'b00000000010000, 'b00000000101011, interconnet[ 7], interconnet[ 8]);



FIR_subblock_parallel  tap_2k_00(clk, i_rst, input_FF2, input_FF1,'b00000000101011, 'b00000000010000,               0, interconnet[ 9]);
FIR_subblock_parallel  tap_2k_01(clk, i_rst, input_FF2, input_FF1,'b11111110110011, 'b11111101011111, interconnet[ 9], interconnet[10]);
FIR_subblock_parallel  tap_2k_02(clk, i_rst, input_FF2, input_FF1,'b11111110010011, 'b00000010100001, interconnet[10], interconnet[11]);
FIR_subblock_parallel  tap_2k_03(clk, i_rst, input_FF2, input_FF1,'b00001001010001, 'b00001111100110, interconnet[11], interconnet[12]);
FIR_subblock_parallel  tap_2k_04(clk, i_rst, input_FF2, input_FF1,'b00010010001100, 'b00001111100110, interconnet[12], interconnet[13]);
FIR_subblock_parallel  tap_2k_05(clk, i_rst, input_FF2, input_FF1,'b00001001010001, 'b00000010100001, interconnet[13], interconnet[14]);
FIR_subblock_parallel  tap_2k_06(clk, i_rst, input_FF2, input_FF1,'b11111110010011, 'b11111101011111, interconnet[14], interconnet[15]);
FIR_subblock_parallel  tap_2k_07(clk, i_rst, input_FF2, input_FF1,'b11111110110011, 'b00000000010000, interconnet[15], interconnet[16]);
FIR_subblock_init_last  tap_2k_08(            input_FF2,           'b00000000101011,                  interconnet[16], interconnet[17]);



// input_FF
always@(posedge clk)begin
	if(i_rst)begin
		input_FF1 <= 0;
		input_FF2 <= 0;
	end
	else begin
		input_FF1 <= FilterIn1;
		input_FF2 <= FilterIn2;
	end
end

// output_FF
always@(posedge clk)begin
	if(i_rst)begin
		output_FF1 <= 0;
		output_FF2 <= 0;
	end
	else begin
		output_FF1 <= interconnet[8];
		output_FF2 <= interconnet[17];
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

module FIR_subblock_parallel(
input clk,
input i_rst,
input signed[13:0]input_signal_1,
input signed[13:0]input_signal_0,
input signed[13:0]filter_coeff_1,
input signed[13:0]filter_coeff_0,
input signed[15:0]prev_node,
output signed[15:0]output_signal
);

reg signed [15:0] delay_element; // delay_element is S4.12, same as data type after add

// multiplication 1
wire signed [27:0]prod_1 = input_signal_1 * filter_coeff_1; // prod_1 is S8.20
wire signed [19:0]prod_rounded_1 = prod_1[27:8] + prod_1[7]; // prod_rounded_1 is S8.12
wire signed [15:0]prod_rounded_clamped_1 = (prod_rounded_1 > 32767)? 32767: (prod_rounded_1 <  -32768)?  -32768:prod_rounded_1[15:0]; // prod_rounded_clamped_1 is S4.12

// multiplication 0
wire signed [27:0]prod_0 = input_signal_0 * filter_coeff_0; // prod_0 is S8.20
wire signed [19:0]prod_rounded_0 = prod_0[27:8] + prod_0[7]; // prod_rounded_0 is S8.12
wire signed [15:0]prod_rounded_clamped_0 = (prod_rounded_0 > 32767)? 32767: (prod_rounded_0 <  -32768)?  -32768:prod_rounded_0[15:0]; // prod_rounded_clamped_0 is S4.12

// addition 1
wire signed [16:0]add_1 = prod_rounded_clamped_1 + prev_node; // add_1 is S5.12
wire signed [15:0]add_clamped_1 = (add_1 > 32767)? 32767: (add_1 <  -32768)?  -32768:add_1[15:0]; // add_clamped_1 is S4.12

// addition 0
wire signed [16:0]add_0 = prod_rounded_clamped_0 + delay_element; // add_0 is S5.12
wire signed [15:0]add_clamped_0 = (add_0 > 32767)? 32767: (add_0 <  -32768)?  -32768:add_1[15:0]; // add_clamped_0 is S4.12

// delay element
always@(posedge clk)begin
	if(i_rst)begin
		delay_element <= 0;
	end
	else begin
		delay_element <= add_1;
	end
end

//output to next subblock
assign output_signal = add_0;


endmodule


module FIR_subblock_init_last(
input signed[13:0]input_signal,
input signed[13:0]filter_coeff,
input signed[15:0]prev_node,
output signed[15:0]output_signal
);


// multiplication 
wire signed [27:0]prod = input_signal * filter_coeff; // prod is S8.20
wire signed [19:0]prod_rounded = prod[27:8] + prod[7]; // prod_rounded is S8.12
wire signed [15:0]prod_rounded_clamped = (prod_rounded > 32767)? 32767: (prod_rounded <  -32768)?  -32768:prod_rounded[15:0]; // prod_rounded_clamped is S4.12

// addition 
wire signed [16:0]add = prod_rounded_clamped + prev_node; // add is S5.12
wire signed [15:0]add_clamped = (add > 32767)? 32767: (add <  -32768)?  -32768:add[15:0]; // add_clamped is S4.12


//output to next subblock
assign output_signal = add_clamped;


endmodule