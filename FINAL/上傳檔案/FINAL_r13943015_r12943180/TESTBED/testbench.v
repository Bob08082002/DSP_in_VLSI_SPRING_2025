`timescale 1ns/100ps
`define PERIOD    12.0
`define MAX_CYCLE 2500
`define RST_DELAY 2.0

// `define RAMDOM_100 // use our random 100 patterns, otherwise: use TA provided pattern (4 test sets) 

// PLS MODIFY TO YOUR ABSOLUTE PATH
`ifdef RAMDOM_100
	`define INPUT_LEN 100
	`define INPUT_PATH "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/TESTBED/pattern/RANDOM_DATA_I.dat"
	`define OUTPUT_PATH "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/TESTBED/pattern/RANDOM_DATA_O.dat"
`else
	`define INPUT_LEN 4
	`define INPUT_PATH "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/TESTBED/pattern/TA_DATA_I.dat"
	`define OUTPUT_PATH "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/FINAL/TESTBED/pattern/TA_DATA_O.dat"
`endif


module testbench #(
	parameter CORDIC_PIPE_STAGE = 8,
    parameter INPUT_DATA_W = 20,
	parameter OUTPUT_DATA_W = 20
) ();

    // Ports
    wire                     Clk;
	wire                     Reset;
	reg         signed[INPUT_DATA_W-1:0] file_data_1, file_data_2, file_data_3, file_data_4;
    reg         signed[INPUT_DATA_W-1:0] InData1, InData2, InData3, InData4;
	reg                     InValid; // if input is valid

    wire signed [OUTPUT_DATA_W-1:0] OutData1, OutData2, OutData3, OutData4; 
    wire                     OutValid; // if output is valid
	

	
	// SKEW element
	reg signed [INPUT_DATA_W-1:0] skew_col0_r [0:0];
	reg signed [INPUT_DATA_W-1:0] skew_col1_r [0:1];
	reg signed [INPUT_DATA_W-1:0] skew_col2_r [0:(3 + CORDIC_PIPE_STAGE) - 1];
	reg signed [INPUT_DATA_W-1:0] skew_col3_r [0:(4 + CORDIC_PIPE_STAGE*2) - 1];
	
    // TB variables

	reg  signed[INPUT_DATA_W-1:0] input_data [0:`INPUT_LEN*20-1];

	integer i, j, k;
    integer pattern_idx_in;
    integer pattern_idx_out;
	integer input_end;
	integer f;
	


    initial begin

			$readmemb(`INPUT_PATH, input_data);
    end
	
    clk_gen u_clk_gen (
        .Clk   (Clk  ) ,
        .Reset   ( Reset ) // rst_n
    );
	

	top #(.CORDIC_PIPE_STAGE(CORDIC_PIPE_STAGE))top_u0(
		Clk,
		Reset,
		
		InValid,
		InData1, 
		InData2, 
		InData3, 
		InData4, 
		
		OutValid,
		OutData1, 
		OutData2, 
		OutData3, 
		OutData4
	);



    // Input
    initial begin
		input_end = 0;
		
        // reset
        wait (Reset === 1'b0);
		InValid = 0;
        wait (Reset === 1'b1);

        // start
        @(posedge Clk);
		// loop
		pattern_idx_in = 0;
        while (pattern_idx_in < `INPUT_LEN) begin
		
			
			for (i = 0; i < 5; i = i + 1)begin
				@(negedge Clk);
				file_data_1 = input_data[pattern_idx_in * 20 + i * 4 + 0];
				file_data_2 = input_data[pattern_idx_in * 20 + i * 4 + 1];
				file_data_3 = input_data[pattern_idx_in * 20 + i * 4 + 2];
				file_data_4 = input_data[pattern_idx_in * 20 + i * 4 + 3];
				if (i != 4) InValid = 1;
				else if(i == 4) InValid = 0;
				
				
				@(posedge Clk);
			end
			
			

            pattern_idx_in = pattern_idx_in + 1;
        end

		@(negedge Clk);
		
		input_end = 1;
    end
	

    // Output
    initial begin
		f = $fopen(`OUTPUT_PATH,"w");
		pattern_idx_out = 0;

		
        // reset
        wait (Reset === 1'b0);
        wait (Reset === 1'b1);

        // start
        @(posedge Clk);
		
        // loop
		while (1) begin
				// $fwrite(f,"// test set %d\n",pattern_idx_out + 1);
				
				@(negedge Clk);
				if (OutValid) begin
					$fwrite(f,"%b\n",OutData1);
					$fwrite(f,"%b\n",OutData2);
					$fwrite(f,"%b\n",OutData3);
					$fwrite(f,"%b\n",OutData4);
					pattern_idx_out = pattern_idx_out + 1;
                end
				@(posedge Clk);		
			
		end
		$fclose(f); 
		
		
    end
	
	// end the SIMULATION
	initial begin
		// reset
        wait (Reset === 1'b0);
        wait (Reset === 1'b1);
		
		wait (pattern_idx_out === `INPUT_LEN);
		# 50;
		
		$display("---------- SIMULATION END ----------");
        $finish;
	
	end

	always@(negedge Clk or negedge Reset)begin
		if(!Reset)begin
			for (k = 0; k < 1; k = k + 1)
				skew_col0_r[k] <= 0;
			for (k = 0; k < 2; k = k + 1)
				skew_col1_r[k] <= 0;
			for (k = 0; k < (3 + CORDIC_PIPE_STAGE); k = k + 1)
				skew_col2_r[k] <= 0;
			for (k = 0; k < (4 + CORDIC_PIPE_STAGE*2); k = k + 1)
				skew_col3_r[k] <= 0;
		end
		else begin
			skew_col0_r[0] <= file_data_1;
			skew_col1_r[0] <= file_data_2;
			for (k = 1; k < 2; k = k + 1)
				skew_col1_r[k] <= skew_col1_r[k - 1];
				
			// including pipeline skew
			skew_col2_r[0] <= file_data_3;
			for (k = 1; k < (3 + CORDIC_PIPE_STAGE); k = k + 1)
				skew_col2_r[k] <= skew_col2_r[k - 1];
			skew_col3_r[0] <= file_data_4;
			for (k = 1; k < (4 + CORDIC_PIPE_STAGE*2); k = k + 1)
				skew_col3_r[k] <= skew_col3_r[k - 1];
		end	
	end
	always@(*)begin
		InData1 = skew_col0_r[0];
		InData2 = skew_col1_r[1];
		InData3 = skew_col2_r[(3 + CORDIC_PIPE_STAGE) - 1]; 
		InData4 = skew_col3_r[(4 + CORDIC_PIPE_STAGE*2) - 1];
	end
	
	
	
endmodule


module clk_gen (
    output reg Clk,
    output reg Reset // rst_n
);

    always #(`PERIOD / 2.0) Clk = ~Clk;

    initial begin
        Clk = 1'b0;
        Reset = 1'b1; 
		$display("---------- SIMULATION START ----------");
		// #(              0.25  * `PERIOD); Reset = 1'b1; 
		// #((`RST_DELAY - 0.25) * `PERIOD); Reset = 1'b0; 
		#(`PERIOD); Reset = 1'b0; 
		#(`PERIOD*20.0); Reset = 1'b1; 
		$display("---------- RESET END ----------");
		#(`MAX_CYCLE *`PERIOD);
		$display("Exceed max cycle.");
        $display("---------- SIMULATION END ----------");
        $finish;
    end

endmodule