`timescale 1ns/100ps
`define PERIOD    50.0
`define MAX_CYCLE 100
`define RST_DELAY 2.0



`define INPUT_UP_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/TESTBED/pattern_pin_pon_buffer/INPUT_UP_I.dat"
`define INPUT_DOWN_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/TESTBED/pattern_pin_pon_buffer/INPUT_DOWN_I.dat"
`define OUTPUT_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/TESTBED/pattern_pin_pon_buffer/OUTPUT_O.dat"

`define INPUT_LEN 16 // 16 * 2



module testbench_pin_pon_buffer #(
    parameter INPUT_DATA_W = 22,
	parameter OUTPUT_DATA_W = 22
) ();

    // Ports
    wire                     clk;
	wire                     rst;
    reg  [INPUT_DATA_W-1:0] MemInUp, MemInDown;
	reg                     in_valid; // if input is valid

    wire  [OUTPUT_DATA_W-1:0] MemOut; 
    wire                     out_valid; // if output is valid

    // TB variables

	reg  [INPUT_DATA_W-1:0] input_UP_data [0:`INPUT_LEN-1];
	reg  [INPUT_DATA_W-1:0] input_DOWN_data [0:`INPUT_LEN-1];

	integer i;
    integer pattern_idx_in;
	integer input_end;
	integer f;

    initial begin

			$readmemb(`INPUT_UP_PATH, input_UP_data);
			$readmemb(`INPUT_DOWN_PATH, input_DOWN_data);

    end

    clk_gen u_clk_gen (
        .clk   (clk  ) ,
        .rst   (rst  )/*,
        .rst_n (rst_n)*/
    );
	
	pin_pon_buffer pin_pon_buffer_u0	(
		.clk(clk),
		.i_rst(rst),
		.MemInUp(MemInUp),
		.MemInDown(MemInDown),
		.in_valid(in_valid),
		
		.MemOut(MemOut),
		.out_valid(out_valid)
	);

    // Input
    initial begin
		input_end = 0;
		
        // reset
        wait (rst === 1'b1);
		MemInUp = 0;
		MemInDown = 0;
		in_valid = 0;
        wait (rst === 1'b0);

        // start
        @(posedge clk);
		// loop
		pattern_idx_in = 0;
        while (pattern_idx_in < `INPUT_LEN) begin // 2 data in per cycle
		
			@(negedge clk);
			MemInUp = input_UP_data[pattern_idx_in];
			MemInDown = input_DOWN_data[pattern_idx_in];
			in_valid = 1;
			@(posedge clk);

            pattern_idx_in = pattern_idx_in + 1;
        end

		@(negedge clk);
		in_valid = 0;
		
		input_end = 1;
    end
	

    // Output
    initial begin
		f = $fopen(`OUTPUT_PATH,"w");

		
        // reset
        wait (rst === 1'b1);
        wait (rst === 1'b0);

        // start
        @(posedge clk);
		
        // loop
		while (1) begin
				@(negedge clk);
				
				if (out_valid) begin
					$fwrite(f,"%b\n",MemOut);
                end
				@(posedge clk);			
			end
        
		$fclose(f); 
    end



endmodule


module clk_gen (
    output reg clk,
    output reg rst
);

    always #(`PERIOD / 2.0) clk = ~clk;

    initial begin
        clk = 1'b0;
        rst = 1'b0; 
		$display("---------- SIMULATION START ----------");
		// #(              0.25  * `PERIOD); rst = 1'b1; 
		// #((`RST_DELAY - 0.25) * `PERIOD); rst = 1'b0; 
		#(`PERIOD); rst = 1'b1; 
		#(`PERIOD*20.0); rst = 1'b0; 
		$display("---------- RESET END ----------");
		#(`MAX_CYCLE *`PERIOD);
        $display("---------- SIMULATION END ----------");
        $finish;
    end

endmodule