`timescale 1ns/100ps
`define PERIOD    200.0
`define MAX_CYCLE 1000
`define RST_DELAY 2.0



`define CASE1
//`define CASE2


`define INPUT0_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW3/TESTBED/pattern/P0_DATA_I.dat"
`define INPUT1_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW3/TESTBED/pattern/P1_DATA_I.dat"
`define U_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW3/TESTBED/pattern/U.dat"
`define OUTPUT0_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW3/TESTBED/pattern/P0_DATA_O.dat"
`define OUTPUT1_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW3/TESTBED/pattern/P1_DATA_O.dat"
`define INPUT_LEN 40



module testbench #(
    parameter INPUT_DATA_W = 19, // tf32
	parameter OUTPUT_DATA_W = 19
) ();

    // Ports
    wire                     clk;
	wire                     rst;
    reg         [INPUT_DATA_W-1:0] IntpIn;
	reg         [INPUT_DATA_W-1:0] mu;
	reg                     ValidIn; // if input is valid // for case 1: m = 16 ~ 32 // for case 2: m = 5 ~ 10

    wire [OUTPUT_DATA_W-1:0] IntpOut; 
    wire                     ValidOut; // if output is valid

    // TB variables

	reg  [INPUT_DATA_W-1:0] input_data [0:`INPUT_LEN-1];
	reg  [INPUT_DATA_W-1:0] mu_data [0:8];
	
	integer i;
    integer pattern_idx_in;
	integer input_end;
	integer f;

    initial begin
		`ifdef CASE1
			$readmemb(`INPUT0_PATH, input_data);
		`elsif CASE2
			$readmemb(`INPUT1_PATH, input_data);
		`endif
		$readmemb(`U_PATH, mu_data);
    end

    clk_gen u_clk_gen (
        .clk   (clk  ) ,
        .rst   (rst  )/*,
        .rst_n (rst_n)*/
    );
	parabolic_interpolator parabolic_interpolator_u0(
		.clk       (clk     ),
		.i_rst     (rst     ),
		.ValidIn   (ValidIn  ),
		.IntpIn  (IntpIn ), 
		.mu  (mu ), 
		.ValidOut  (ValidOut ),
		.IntpOut (IntpOut)
	);


    // Input
    initial begin
		input_end = 0;
		
        // reset
        wait (rst === 1'b1);
		IntpIn = 0;
		mu = 0;
		ValidIn = 0;
        wait (rst === 1'b0);

        // start
        @(posedge clk);
		// loop
		pattern_idx_in = 0;
        while (pattern_idx_in < `INPUT_LEN) begin
		
			for (i = 0; i < 9; i = i + 1)begin
				@(negedge clk);

				mu = mu_data[i];
				IntpIn = input_data[pattern_idx_in];
				
				`ifdef CASE1
					if(pattern_idx_in >= 17 && pattern_idx_in <= 33)
						ValidIn = 1;
					else
						ValidIn = 0;
				`elsif CASE2
					if(pattern_idx_in >= 6 && pattern_idx_in <= 11)
						ValidIn = 1;
					else
						ValidIn = 0;
				`endif
				@(posedge clk);
			end
            
            
            pattern_idx_in = pattern_idx_in + 1;
        end

		@(negedge clk);
		ValidIn = 0;
		
		input_end = 1;
    end
	

    // Output
    initial begin
		`ifdef CASE1
			f = $fopen(`OUTPUT0_PATH,"w");
		`elsif CASE2
			f = $fopen(`OUTPUT1_PATH,"w");
		`endif
		
        // reset
        wait (rst === 1'b1);

        wait (rst === 1'b0);

        // start
        @(posedge clk);
		
        // loop
		while (1) begin
				@(negedge clk);
				
				if (ValidOut) begin
					$fwrite(f,"%b\n",IntpOut);
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
		// #(              0.25  * `PERIOD); rst = 1'b1; 
		// #((`RST_DELAY - 0.25) * `PERIOD); rst = 1'b0; 
		#(`PERIOD); rst = 1'b1; 
		#(`PERIOD*20.0); rst = 1'b0; 
		#(`MAX_CYCLE *`PERIOD);
        $display("SIMULATION END");
        $finish;
    end

endmodule