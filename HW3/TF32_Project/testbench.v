`timescale 1ns/10ps





module testbench();
	reg [18:0]operand_A;
	reg [18:0]operand_B;
	wire [18:0]result;
    
	TF32_add TF32_add_u0(result, operand_A, operand_B); 
	
	initial begin
		#5; 
		operand_A = 'b1_1000_0011_0000_0001_11;
		operand_B = 'b0_1000_0011_0000_0001_01;
		// result should be 1, 0111_1010, 0...
		// 1011110100000000000
		#5;
		$display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);
		
		#5; 
		operand_A = 'b1_1000_0011_0000_0001_11;
		operand_B = 'b1_1001_0011_0000_0001_01;
		// result should be operand_B
		// 'b1_1001_0011_0000_0001_01
		// 1100100110000000101
		#5;
		$display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);
		
		#5; 
		// operand_A ='b0111111101111011111; operand_B ='b0000000000000110001; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b0_11111101_0011010111; operand_B ='b0_11111101_0001000110; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		//operand_A ='b1_00000000_0000000000; operand_B ='b1_00000000_0000000000; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		//operand_A ='b0_00000000_0100101000; operand_B ='b1_00000000_0000000000; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		//operand_A ='b0_11000110_0100100111; operand_B ='b1_00000000_0000000000; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b1_11111110_0111000001; operand_B ='b1_01100000_1011100000; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		//operand_A ='b1_10111110_0010100111; operand_B ='b1_00000000_0000000000; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		//operand_A ='b1_00000000_0110101011; operand_B ='b0_00000000_0000000001; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b0_11100111_0010000100; operand_B ='b1_11111110_1110101011; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		//operand_A ='b1_00000000_1011001001; operand_B ='b0_00000000_0000000000; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		//operand_A ='b1_00000000_0000000110; operand_B ='b0_01011010_0100000011; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		//operand_A ='b1_00000000_1010000000; operand_B ='b1_11111110_1100101010; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		//operand_A ='b1_00000000_0000000000; operand_B ='b1_11111100_0000101101; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		//operand_A ='b1_00000000_0000000000; operand_B ='b0_00000000_0000000001; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		//operand_A ='b0_00000000_1000110011; operand_B ='b1_00000000_0011101011; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		//operand_A ='b1_00000000_0000000000; operand_B ='b0_00110110_1110110001; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		//operand_A ='b1_00000000_1100000010; operand_B ='b1_00000000_1011101101; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		//operand_A ='b1_00000000_0000010111; operand_B ='b0_00000000_0000000000; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b0_11111000_0000011000; operand_B ='b0_11111110_0011000010; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		//operand_A ='b1_11111100_1100111101; operand_B ='b0_00000000_0000011101; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    

		
		#5;
		$finish;
	
	
	end
endmodule

// ans
// 0111111101111011111  // 0111111101111011111 //
// 0111111100010001110  // 0111111100010001110
// 1000000000000000000  // 0000000000000000000 //
// 0000000000100100111  // 0000000010000000000 //
// 0110001100100100111  // 0110001100100100111//
// 1111111100111000001  // 1111111100111000001
// 1101111100010100111  // 1101111100010100111//
// 1000000000110101010  // 0000000000000000000//
// 1111111101110101011  // 1111111101110101011
// 1000000001011001001  // 1000000010000000000//
// 0010110100100000011  // 0010110100100000011//
// 1111111101100101010  // 1111111101100101010//
// 1111111000000101101  // 1111111000000101101//
// 0000000000000000001  // 0000000010000000000//
// 0000000000101001000  // 0000000000000000000//
// 0001101101110110001  // 0001101101110110001//
// 1000000010111101111  // 1000000011011111000//
// 1000000000000010111  // 1000000010000000000//
// 0111111100011010010  // 0111111100011010010
// 1111111001100111101  // 1111111001100111101//



// 1011110100000000000
// 1100100110000000101
// 0111111100010001110
// 1111111100111000001
// 1111111101110101011
// 0111111100011010010


