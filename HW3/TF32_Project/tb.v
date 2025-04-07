`timescale 1ns/10ps
`define PERIOD 10.0    // Cycle time
`define MAX_CYCLE 100000
`define TEST_NUM 2000

//pre-sim
`include "./TF32_add.v"
`include "./TF32_mul.v"

//`define ADD
`define MUL

`define A_data_path "./genpattern/MY_pattern/A.dat"
`define B_data_path "./genpattern/MY_pattern/B.dat"

`ifdef ADD
	`define OUT_data_path "./genpattern/MY_pattern/ADD/OUT.dat"
	`define INST 1'b0
`else // MUL
	`define OUT_data_path "./genpattern/MY_pattern/MUL/OUT.dat"
	`define INST 1'b1
`endif


module test(); 


reg	clk;

reg [18:0]testing_input_A, testing_input_B;

wire [18:0]result_add_wire, result_mul_wire;
wire less_than_flag_wire;

// TB variables
reg [18:0]A_data[0:`TEST_NUM-1];
reg [18:0]B_data[0:`TEST_NUM-1];
reg [18:0]OUT_data[0:`TEST_NUM-1];



integer i, j;
integer error, correct;
integer output_finish_flag;


TF32_add TF32_add_u0(result_add_wire, testing_input_A, testing_input_B); 
TF32_mul TF32_mul_u0(result_mul_wire, testing_input_A, testing_input_B); 
	
//clock generator
initial begin
	clk = 0;
end
always #(`PERIOD/2) clk = ~clk;


// read testing data & golden data
initial begin
	$readmemb(`A_data_path, A_data);
	$readmemb(`B_data_path, B_data);
	$readmemb(`OUT_data_path, OUT_data);
end


// input loop
initial begin
	#(`PERIOD * 0.25);
	i = 0;
	
	while(i < `TEST_NUM)begin
		@(negedge clk);
		testing_input_A = A_data[i];
		testing_input_B = B_data[i];
		
		@(posedge clk);
		i = i + 1;
	end
end
// output loop 
initial begin
	@(posedge clk);
	#(`PERIOD * 0.25);
	j = 0;
	error = 0;
	correct = 0;
	output_finish_flag = 0;
	
	`ifdef ADD
		while(j < `TEST_NUM)begin
			@(posedge clk);
			if(result_add_wire === OUT_data[j])begin
				correct = correct + 1;
			end
			else if(OUT_data[j] === {1'b1, 18'b0} && result_add_wire === 19'b0)begin //result should be neg zero, but in this homework, all opertion with zeros result in (+0)
				$display(
				"Warning! Result should be neg zero, but get pos zero! \n A[%d] = %b(%h), B[%d] = %b(%h), INST = %b, \n Golden = %b(%h). Yours = %b(%h)", 
				j, A_data[j], A_data[j], j, B_data[j], B_data[j], `INST,
				OUT_data[j], OUT_data[j], result_add_wire, result_add_wire
				);
				correct = correct + 1;
			end
			else begin
				$display(
				"Error! A[%d] = %b(%h), B[%d] = %b(%h), INST = %b, \n Golden = %b(%h). Yours = %b(%h)", 
				j, A_data[j], A_data[j], j, B_data[j], B_data[j], `INST,
				OUT_data[j], OUT_data[j], result_add_wire, result_add_wire
				);
				error = error + 1;
			end
			
			@(negedge clk);
			j = j + 1;
		end
	`else
		while(j < `TEST_NUM)begin
			@(posedge clk);
			if(result_mul_wire === OUT_data[j])begin
				correct = correct + 1;
			end
			else if(OUT_data[j] === {1'b1, 18'b0} && result_mul_wire === 19'b0)begin //result should be neg zero, but in this homework, all opertion with zeros result in (+0)
				$display(
				"Warning! Result should be neg zero, but get pos zero! \n A[%d] = %b(%h), B[%d] = %b(%h), INST = %b, \n Golden = %b(%h). Yours = %b(%h)", 
				j, A_data[j], A_data[j], j, B_data[j], B_data[j], `INST,
				OUT_data[j], OUT_data[j], result_mul_wire, result_mul_wire
				);
				correct = correct + 1;
			end
			else begin
				$display(
				"Error! A[%d] = %b(%h), B[%d] = %b(%h), INST = %b, \n Golden = %b(%h). Yours = %b(%h)", 
				j, A_data[j], A_data[j], j, B_data[j], B_data[j], `INST,
				OUT_data[j], OUT_data[j], result_mul_wire, result_mul_wire
				);
				error = error + 1;
			end
			
			@(negedge clk);
			j = j + 1;
		end
	`endif
	
	output_finish_flag = 1;
end

// Show reult
initial begin
	wait(output_finish_flag);
	
	if(error == 0 && correct == `TEST_NUM)begin
		$display("----------------------------------------------");
        $display("-                  ALL PASS!                 -");
        $display("----------------------------------------------");
	end
	else begin
		$display("----------------------------------------------");
        $display("  Wrong! Total  Error: %d                     ", error);
        $display("----------------------------------------------");
	end
	
	#(`PERIOD);
	$finish;
end



// force to finish if exceed MAX_CYCLE
initial begin
	#(`MAX_CYCLE * `PERIOD);
	#(`PERIOD);
	$display("Error! Execution time exceed limitation! ");
	$finish;
end
endmodule

