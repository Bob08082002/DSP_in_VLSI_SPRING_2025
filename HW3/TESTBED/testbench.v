`timescale 1ns/10ps
`define PERIOD    18.0
`define MAX_CYCLE 1000
`define RST_DELAY 2.0

//`define parallel



`define INPUT_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW2/TESTBED/pattern/INPUT.dat"
`define OUTPUT_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW2/TESTBED/pattern/OUTPUT.dat"
`define INPUT_LEN 129



module testbench #(
    parameter INPUT_DATA_W = 14,
	parameter OUTPUT_DATA_W = 16
) ();

    // Ports
    wire                     clk;
	wire                     rst;
    reg                      ValidIn;
    reg  signed [INPUT_DATA_W-1:0] FilterIn; 
	reg  signed [INPUT_DATA_W-1:0] FilterIn1, FilterIn2;  // if define parallel


    wire signed [OUTPUT_DATA_W-1:0] FilterOut; 
    wire signed [OUTPUT_DATA_W-1:0] FilterOut1, FilterOut2; // if define parallel
    wire                     ValidOut; // if output is valid

    // TB variables

	reg  signed [INPUT_DATA_W-1:0] input_data [0:`INPUT_LEN-1];

    integer pattern_idx_in, pattern_idx_out;
	integer input_end;
	integer f;

    initial begin
        $readmemb(`INPUT_PATH, input_data);
    end

    clk_gen u_clk_gen (
        .clk   (clk  ) ,
        .rst   (rst  )/*,
        .rst_n (rst_n)*/
    );
	`ifdef parallel
		FIR FIR_u0(
			.clk       (clk     ),
			.i_rst     (rst     ),
			.ValidIn   (ValidIn  ),
			.FilterIn1  (FilterIn1 ), // x[2k]
			.FilterIn2  (FilterIn2 ), // x[2k+1]
			.ValidOut  (ValidOut ),
			.FilterOut1 (FilterOut1), // y[2k]
			.FilterOut2 (FilterOut2)  // y[2k+1]
		);
	`else
		FIR FIR_u0 (
			.clk       (clk     ),
			.i_rst     (rst     ),
			.ValidIn   (ValidIn  ),
			.FilterIn  (FilterIn ),
			.ValidOut  (ValidOut ),
			.FilterOut (FilterOut)
		);
	`endif
	


    // initial begin
    //    $fsdbDumpfile("FIR.fsdb");
    //    $fsdbDumpvars(0, testbench, "+mda");
    // end

    // Input
    initial begin
		input_end = 0;
		
        // reset
        wait (rst === 1'b1);
		FilterIn = 0;
		FilterIn1 = 0;
		FilterIn2 = 0;
		ValidIn = 0;
        wait (rst === 1'b0);

        // start
        @(posedge clk);
		`ifdef parallel
			// loop
			pattern_idx_in = 0; 
			while (pattern_idx_in < `INPUT_LEN) begin
	
					@(negedge clk);
					ValidIn = 1;
					FilterIn1 = input_data[pattern_idx_in];
					
					if (pattern_idx_in + 1 >= `INPUT_LEN)
						FilterIn2 = 0;
					else
						FilterIn2 = input_data[pattern_idx_in + 1];
						
					@(posedge clk);
	
				pattern_idx_in = pattern_idx_in + 2;
			end
		`else
			// loop
			pattern_idx_in = 0; 
			while (pattern_idx_in < `INPUT_LEN) begin
	
					@(negedge clk);
					ValidIn = 1;
					FilterIn = input_data[pattern_idx_in];
					@(posedge clk);
	
				pattern_idx_in = pattern_idx_in + 1;
			end
		`endif
		
		@(negedge clk);
		ValidIn = 0;
		
		input_end = 1;
    end
	

    // Output
    initial begin
		f = $fopen(`OUTPUT_PATH,"w");
        // reset
        wait (rst === 1'b1);
		pattern_idx_out = 0;
        wait (rst === 1'b0);

        // start
        @(posedge clk);
		
        // loop
		`ifdef parallel
			while (1) begin
				@(negedge clk);
				
				if (ValidOut) begin
					$fwrite(f,"%b\n",FilterOut1);
					
					if (pattern_idx_out + 1 < `INPUT_LEN)
						$fwrite(f,"%b\n",FilterOut2);
					
					pattern_idx_out = pattern_idx_out + 2;
                end
				
				@(posedge clk);			
			end
		`else
			while (1) begin
				@(negedge clk);
				
				if (ValidOut) begin
					$fwrite(f,"%b\n",FilterOut);
                end

				@(posedge clk);			
			end
		`endif
        
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
		#(`PERIOD*3.0); rst = 1'b0; 
		#(`MAX_CYCLE *`PERIOD);
        $display("SIMULATION END");
        $finish;
    end

endmodule