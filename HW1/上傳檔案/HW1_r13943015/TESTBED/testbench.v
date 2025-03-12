`timescale 1ns/10ps
`define PERIOD    100.0
`define MAX_CYCLE 100000
`define RST_DELAY 2.0
`define I1_GOLDEN

`ifdef I0_GOLDEN // VERIFY USING GLODEN DATA
    `define DATA_I_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW1/TESTBED/pattern/P0_DATA_I.dat"
    `define GOLDEN_O_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW1/TESTBED/pattern/P0_GOLDEN_O.dat"
    `define PAT_LEN 1000
`elsif I1_GOLDEN // VERIFY USING GLODEN DATA
	`define DATA_I_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW1/TESTBED/pattern/P1_DATA_I.dat"
    `define GOLDEN_O_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW1/TESTBED/pattern/P1_GOLDEN_O.dat"
    `define PAT_LEN 5
`elsif I0_SOFTWARE // VERIFY USING SOFTWARE ALGORITHM GENERATE DATA
    `define DATA_I_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW1/TESTBED/pattern/P0_DATA_I.dat"
    `define GOLDEN_O_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW1/SOFTWARE/result/P0_SOFTWARE_RESULT_O.dat"
    `define PAT_LEN 1000
`elsif I1_SOFTWARE // VERIFY USING SOFTWARE ALGORITHM GENERATE DATA
	`define DATA_I_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW1/TESTBED/pattern/P1_DATA_I.dat"
    `define GOLDEN_O_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW1/SOFTWARE/result/P1_SOFTWARE_RESULT_O.dat"
    `define PAT_LEN 5
`else
    `define DATA_I_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW1/TESTBED/pattern/P0_DATA_I.dat"
    `define GOLDEN_O_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW1/TESTBED/pattern/P0_GOLDEN_O.dat"
    `define PAT_LEN 1000
`endif


module testbench #(
    parameter DATA_W = 8
) ();

    // Ports
    wire                     clk;
	wire                     rst;
    reg                      BlkIn; // start streaming inputs
    reg  signed [DATA_W-1:0] In1, In2, In3, In4; // one group contains 4 inputs (1 cycle)


    wire signed [DATA_W-1:0] SortOut; // sorted top7 output (streaming out)
    wire                     OutValid; // if output is valid

    // TB variables
    reg  signed [DATA_W-1:0] input_data [0:`PAT_LEN-1][0:31];
    reg  signed [DATA_W-1:0] golden_data [0:`PAT_LEN-1][0:6]; // TOP 7

    integer pattern_idx_in, group_idx;
	integer pattern_idx_out, topk_idx;
    integer correct, error;
	integer input_end, output_end;

    initial begin
        $readmemb(`DATA_I_PATH, input_data);
        $readmemb(`GOLDEN_O_PATH, golden_data);
    end

    clk_gen u_clk_gen (
        .clk   (clk  ) ,
        .rst   (rst  )/*,
        .rst_n (rst_n)*/
    );

    SelectTopK SelectTopK_u0 (
        .clk       (clk     ),
		.i_rst       (rst     ),
        .BlkIn     (BlkIn   ),
        .In1       (In1     ),
		.In2       (In2     ),
		.In3       (In3     ),
		.In4       (In4     ),
        .SortOut   (SortOut ),
        .OutValid  (OutValid)
    );

    // initial begin
    //    $fsdbDumpfile("SelectTopK.fsdb");
    //    $fsdbDumpvars(0, testbench, "+mda");
    // end

    // Input
    initial begin
		input_end = 0;
		
        // reset
        wait (rst === 1'b1);
		In1 = 0;
		In2 = 0;
		In3 = 0;
		In4 = 0;
		BlkIn = 0;
        wait (rst === 1'b0);

        // start
        @(posedge clk);

        // loop
        pattern_idx_in = 0; group_idx = 0;
        while (pattern_idx_in < `PAT_LEN) begin
		
			for (group_idx = 0; group_idx < 8; group_idx = group_idx + 1)begin
				@(negedge clk);
				
				if (group_idx == 0)
					BlkIn = 1;
				else 
					BlkIn = 0;

				In1 = input_data[pattern_idx_in][0 + group_idx*4];
				In2 = input_data[pattern_idx_in][1 + group_idx*4];
				In3 = input_data[pattern_idx_in][2 + group_idx*4];
				In4 = input_data[pattern_idx_in][3 + group_idx*4];
				@(posedge clk);
			end
            
            
            pattern_idx_in = pattern_idx_in + 1;
        end
		
		
		input_end = 1;
    end

    // Output
    initial begin
		output_end = 0;
        correct = 0;
        error   = 0;

        // reset
        wait (rst === 1'b1);
        wait (rst === 1'b0);

        // start
        @(posedge clk);

        // loop
        pattern_idx_out = 0;
        while (pattern_idx_out < `PAT_LEN) begin
			topk_idx = 0;
			while(topk_idx < 7)begin
				@(negedge clk);
				
				if (OutValid) begin
					if (SortOut === golden_data[pattern_idx_out][topk_idx]) begin
						correct = correct + 1;
					end
					else begin
						error = error + 1;
						$display(
							"Pattern[%d] TOP%d: Error! Yours=%d (%b), Expected=%d (%b).",
							pattern_idx_out + 1,
							topk_idx + 1,
							SortOut,
							SortOut,
							golden_data[pattern_idx_out][topk_idx],
							golden_data[pattern_idx_out][topk_idx]
						);
					end
					topk_idx = topk_idx + 1;
                end
				
				@(posedge clk);		
				
			end
			
			pattern_idx_out = pattern_idx_out + 1;
        end
		
		output_end = 1;
    end

    // Result
    initial begin
        wait (input_end && output_end);

        if (error === 0 && correct === `PAT_LEN * 7 /*top 7*/) begin
            $display("----------------------------------------------");
            $display("-                 ALL PASS!                  -");
            $display("----------------------------------------------");
        end
        else begin
            $display("----------------------------------------------");
            $display("  Wrong! Total Error: %d                      ", error);
            $display("----------------------------------------------");
        end

        # (2 * `PERIOD);
        $finish;
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
		#(              0.25  * `PERIOD); rst = 1'b1; 
		#((`RST_DELAY - 0.25) * `PERIOD); rst = 1'b0; 
		
		#(`MAX_CYCLE *`PERIOD);
        $display("Error! Runtime exceeded!");
        $finish;
    end

endmodule