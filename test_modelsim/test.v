`timescale 1ns/10ps


module test;
reg [7:0] arr [31:0][3:0];
reg [4:0] a, a_o;
reg [9:0] b, b_o;
reg [14:0]c;

initial begin
	#5; $display("HELLO MODELSIM.");

	a = 'b10101;
	b = 'b1001001001;
	c = {a, b};
	{a_o, b_o} = {a, b};
	
	#10;
	$display("c = %b, a_o = %b, b_o = %b.", c, a_o, b_o);
	

	#10; $finish;
end

endmodule