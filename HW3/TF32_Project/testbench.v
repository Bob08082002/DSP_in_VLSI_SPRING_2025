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
		#5;
		$display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);
		
		#5; 
		operand_A = 'b1_1000_0011_0000_0001_11;
		operand_B = 'b1_1001_0011_0000_0001_01;
		// result should be operand_B
		#5;
		$display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);
		
		#5; 
		operand_A ='b0111111101111011111; operand_B ='b0000000000000110001; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b0111111010011010111; operand_B ='b0111111010001000110; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b1000000000000000000; operand_B ='b1000000000000000000; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b0000000000100101000; operand_B ='b1000000000000000000; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b0110001100100100111; operand_B ='b1000000000000000000; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b1111111100111000001; operand_B ='b1011000001011100000; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b1101111100010100111; operand_B ='b1000000000000000000; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b1000000000110101011; operand_B ='b0000000000000000001; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b0111001110010000100; operand_B ='b1111111101110101011; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b1000000001011001001; operand_B ='b0000000000000000000; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b1000000000000000110; operand_B ='b0010110100100000011; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b1000000001010000000; operand_B ='b1111111101100101010; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b1000000000000000000; operand_B ='b1111111000000101101; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b1000000000000000000; operand_B ='b0000000000000000001; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b0000000001000110011; operand_B ='b1000000000011101011; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b1000000000000000000; operand_B ='b0001101101110110001; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b1000000001100000010; operand_B ='b1000000001011101101; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b1000000000000010111; operand_B ='b0000000000000000000; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b0111110000000011000; operand_B ='b0111111100011000010; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    
		operand_A ='b1111111001100111101; operand_B ='b0000000000000011101; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result);                    

		
		#5;
		$finish;
	
	
	end
endmodule

// ans
// 0111111101111011111  // 0111111101111011111
// 0111111100010001110  // 0111111100010001110
// 1000000000000000000  // 0000000000000000000
// 0000000000100100111  // 0000000010000000000
// 0110001100100100111  // 0110001100100100111
// 1111111100111000001  // 1111111100111000001
// 1101111100010100111  // 1101111100010100111
// 1000000000110101010  // 0000000000000000000
// 1111111101110101011  // 1111111101110101011
// 1000000001011001001  // 1000000010000000000
// 0010110100100000011  // 0010110100100000011
// 1111111101100101010  // 1111111101100101010
// 1111111000000101101  // 1111111000000101101
// 0000000000000000001  // 0000000010000000000
// 0000000000101001000  // 0000000000000000000
// 0001101101110110001  // 0001101101110110001
// 1000000010111101111  // 1000000011011111000
// 1000000000000010111  // 1000000010000000000
// 0111111100011010010  // 0111111100011010010
// 1111111001100111101  // 1111111001100111101
