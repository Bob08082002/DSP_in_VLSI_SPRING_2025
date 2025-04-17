`timescale 1ns/100ps
`define PERIOD    13.0
`define MAX_CYCLE 100
`define RST_DELAY 2.0



`define pipeline

`define INPUT_X_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW4/TESTBED/pattern/X_DATA_I.dat"
`define INPUT_Y_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW4/TESTBED/pattern/Y_DATA_I.dat"
//`define OUTPUT_X_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW4/TESTBED/pattern/X_DATA_O.dat" // X(N)
//`define OUTPUT_Y_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW4/TESTBED/pattern/Y_DATA_O.dat" // Y(N)
`define OUTPUT_THEDA_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW4/TESTBED/pattern/THEDA_DATA_O.dat" // theda(N)
`define OUTPUT_MAG_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW4/TESTBED/pattern/MAG_DATA_O.dat" // magnitude(N)
`define INPUT_LEN 11



module testbench #(
    parameter INPUT_DATA_W = 13,
	parameter OUTPUT_DATA_W = 14
) ();

    // Ports
    wire                     clk;
	wire                     rst;
    reg         signed[INPUT_DATA_W-1:0] InX, InY;
	reg                     ValidIn; // if input is valid

    wire signed [OUTPUT_DATA_W-1:0] OutX, OutY, OutTheda, Magnitude; 
    wire                     ValidOut_Theda, ValidOut_Magnitude; // if output is valid

    // TB variables

	reg  signed[INPUT_DATA_W-1:0] input_X_data [0:`INPUT_LEN-1];
	reg  signed[INPUT_DATA_W-1:0] input_Y_data [0:`INPUT_LEN-1];

	integer i;
    integer pattern_idx_in;
	integer input_end;
	integer f_theda, f_magnitude;

    initial begin

			$readmemb(`INPUT_X_PATH, input_X_data);
			$readmemb(`INPUT_Y_PATH, input_Y_data);

    end

    clk_gen u_clk_gen (
        .clk   (clk  ) ,
        .rst   (rst  )/*,
        .rst_n (rst_n)*/
    );
	`ifdef pipeline
		CORDIC_pipeline CORDIC_pipeline_u0(
			.clk       (clk     ),
			.i_rst     (rst     ),
			.ValidIn   (ValidIn  ),
			.InX  (InX ), 
			.InY  (InY ), 
			.ValidOut_Theda  (ValidOut_Theda ),
			.ValidOut_Magnitude  (ValidOut_Magnitude ),
			.OutX (OutX),
			.OutY (OutY),
			.OutTheda (OutTheda),
			.Magnitude (Magnitude)
		);
	`else
		CORDIC_original CORDIC_original_u0(
			.clk       (clk     ),
			.i_rst     (rst     ),
			.ValidIn   (ValidIn  ),
			.InX  (InX ), 
			.InY  (InY ), 
			.ValidOut_Theda  (ValidOut_Theda ),
			.ValidOut_Magnitude  (ValidOut_Magnitude ),
			.OutX (OutX),
			.OutY (OutY),
			.OutTheda (OutTheda),
			.Magnitude (Magnitude)
		);
	`endif
	

    // Input
    initial begin
		input_end = 0;
		
        // reset
        wait (rst === 1'b1);
		InX = 0;
		InY = 0;
		ValidIn = 0;
        wait (rst === 1'b0);

        // start
        @(posedge clk);
		// loop
		pattern_idx_in = 0;
        while (pattern_idx_in < `INPUT_LEN) begin
		
			@(negedge clk);
			InX = input_X_data[pattern_idx_in];
			InY = input_Y_data[pattern_idx_in];
			ValidIn = 1;
			@(posedge clk);

            pattern_idx_in = pattern_idx_in + 1;
        end

		@(negedge clk);
		ValidIn = 0;
		
		input_end = 1;
    end
	

    // Output
    initial begin
		f_theda = $fopen(`OUTPUT_THEDA_PATH,"w");
		f_magnitude = $fopen(`OUTPUT_MAG_PATH,"w");

		
        // reset
        wait (rst === 1'b1);
        wait (rst === 1'b0);

        // start
        @(posedge clk);
		
        // loop
		while (1) begin
				@(negedge clk);
				
				if (ValidOut_Theda) begin
					$fwrite(f_theda,"%b\n",OutTheda);
                end
				if (ValidOut_Magnitude) begin
					$fwrite(f_magnitude,"%b\n",Magnitude);
                end
				@(posedge clk);			
			end
        
		$fclose(f_theda); 
		$fclose(f_magnitude); 
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