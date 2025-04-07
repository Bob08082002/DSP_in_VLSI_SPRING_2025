`timescale 1ns/10ps


`include "./TF32_add.v"
`include "./TF32_mul.v"


module testbench();
	reg [18:0]operand_A;
	reg [18:0]operand_B;
	wire [18:0]result_add, result_mul;
    
	TF32_add TF32_add_u0(result_add, operand_A, operand_B); 
	TF32_mul TF32_mul_u0(result_mul, operand_A, operand_B); 
	
	initial begin
		 #5; 
		 operand_A = 'b1_1000_0011_0000_0001_11;
		 operand_B = 'b0_1000_0011_0000_0001_01;
		 // result should be 1, 0111_1010, 0...
		 // 1011110100000000000
		 #5;
		 $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result_add);
		 
		 #5; 
		 operand_A = 'b1_1000_0011_0000_0001_11;
		 operand_B = 'b1_1001_0011_0000_0001_01;
		 // result should be operand_B
		 // 'b1_1001_0011_0000_0001_01
		 // 1100100110000000101
		 #5;
		 $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result_add);
		 
		 #5;                 
		 operand_A ='b0_11111101_0011010111; operand_B ='b0_11111101_0001000110; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result_add);                                      
		 operand_A ='b1_11111110_0111000001; operand_B ='b1_01100000_1011100000; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result_add);                                    
		 operand_A ='b0_11100111_0010000100; operand_B ='b1_11111110_1110101011; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result_add);                                  
		 operand_A ='b0_11111000_0000011000; operand_B ='b0_11111110_0011000010; #5; $display("A = %b, B = %b, A + B = %b", operand_A, operand_B, result_add);                                    

		# 5;
		operand_A = 'b1_00100011_1100000111; // -3.547902E-28
		operand_B = 'b0_10000011_1111000101; // 31.078125
		#5;
		$display("A = %b, B = %b, A * B = %b", operand_A, operand_B, result_mul);
		// result: 1 00101000 1011010011/0010110001100
		//         1 00101000 1011010011
		# 5;
		operand_A = 'b0_01100011_0011110111; 
		operand_B = 'b0_10000011_0011001111;
		#5;
		$display("A = %b, B = %b, A * B = %b", operand_A, operand_B, result_mul);
		// result: 0 01100111 0111110111/1110111001000
		//         0 01100111 0111111000 //進位
		
		#5;                 
		operand_A ='b0_00000000_0000000000; operand_B ='b0_00000000_0000000000; #5; $display("A = %b, B = %b, A * B = %b", operand_A, operand_B, result_mul);                                      
		operand_A ='b0_00000000_0000000000; operand_B ='b1_01100000_1011100000; #5; $display("A = %b, B = %b, A * B = %b", operand_A, operand_B, result_mul);     
		operand_A ='b0_11111110_0111000001; operand_B ='b0_00000000_0000000000; #5; $display("A = %b, B = %b, A * B = %b", operand_A, operand_B, result_mul);     
		operand_A ='b0_00000000_0000000000; operand_B ='b1_11111110_0111000001; #5; $display("A = %b, B = %b, A * B = %b", operand_A, operand_B, result_mul);     
		operand_A ='b0_00000001_0000000000; operand_B ='b0_00000001_0000000000; #5; $display("A = %b, B = %b, A * B = %b", operand_A, operand_B, result_mul);   
		operand_A ='b1_00000001_0000000000; operand_B ='b0_00000001_0000000000; #5; $display("A = %b, B = %b, A * B = %b", operand_A, operand_B, result_mul);   
		#5;
		$finish;
	
	
	end
endmodule

// ans add

// 1011110100000000000
// 1100100110000000101
// 0111111100010001110
// 1111111100111000001
// 1111111101110101011
// 0111111100011010010


