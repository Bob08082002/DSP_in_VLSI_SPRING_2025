`timescale 1ns/10ps
`define PERIOD    13.2
`define MAX_CYCLE 500
`define RST_DELAY 2.0



//`define pipeline
`define FFT32 // use FFTInput32.mat as the inputs
//`define FFT96 // use your own inputs of 96 samples

`ifdef FFT32
	`define INPUT_RE_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/TESTBED/pattern/FFTInput32_RE_I.dat"
	`define INPUT_IM_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/TESTBED/pattern/FFTInput32_IM_I.dat"
	`define OUTPUT_RE_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/TESTBED/pattern/FFTOutput32_RE_O.dat"
	`define OUTPUT_IM_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/TESTBED/pattern/FFTOutput32_IM_O.dat"
	
	`define INPUT_LEN 32
`else
	`define INPUT_RE_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/TESTBED/pattern/FFTInput96_RE_I.dat"
	`define INPUT_IM_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/TESTBED/pattern/FFTInput96_IM_I.dat"
	`define OUTPUT_RE_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/TESTBED/pattern/FFTOutput96_RE_O.dat"
	`define OUTPUT_IM_PATH  "C:/Users/zhanggenqi/Desktop/DSP_in_VLSI/HW5/TESTBED/pattern/FFTOutput96_IM_O.dat"
	
	`define INPUT_LEN 96
`endif



module testbench #(
    parameter INPUT_DATA_W = 11,
	parameter OUTPUT_DATA_W = 11
) ();

    // Ports
    wire                     clk;
	wire                     rst;
    reg    signed[INPUT_DATA_W-1:0] FFTInRe, FFTInIm;
	reg                     in_valid; // if input is valid

    wire signed [OUTPUT_DATA_W-1:0] MDCOutUpRe, MDCOutUpIm, MDCOutDownRe, MDCOutDownIm, FFTOutRe, FFTOutIm; 
    wire                     MDC_out_valid, FFT_out_valid; // if output is valid

    // TB variables

	reg  signed[INPUT_DATA_W-1:0] input_re_data [0:`INPUT_LEN-1];
	reg  signed[INPUT_DATA_W-1:0] input_im_data [0:`INPUT_LEN-1];

	integer i;
    integer pattern_idx_in;
	integer input_end;
	integer f_re, f_im;

    initial begin

			$readmemb(`INPUT_RE_PATH, input_re_data);
			$readmemb(`INPUT_IM_PATH, input_im_data);

    end

    clk_gen u_clk_gen (
        .clk   (clk  ) ,
        .rst   (rst  )/*,
        .rst_n (rst_n)*/
    );
	`ifdef pipeline
		FFT32_pipeline FFT32_u0(
			.clk(clk),
			.i_rst(rst),
			.FFTInRe(FFTInRe), 
			.FFTInIm(FFTInIm), 
			.in_valid(in_valid),
			
			.MDCOutUpRe(MDCOutUpRe), 
			.MDCOutUpIm(MDCOutUpIm), 
			.MDCOutDownRe(MDCOutDownRe), 
			.MDCOutDownIm(MDCOutDownIm), 
			.MDC_out_valid(MDC_out_valid),
			
			.FFTOutRe(FFTOutRe), 
			.FFTOutIm(FFTOutIm), 
			.FFT_out_valid(FFT_out_valid)
		);
	`else
		FFT32_original FFT32_u0(
			.clk(clk),
			.i_rst(rst),
			.FFTInRe(FFTInRe), 
			.FFTInIm(FFTInIm), 
			.in_valid(in_valid),
			
			.MDCOutUpRe(MDCOutUpRe), 
			.MDCOutUpIm(MDCOutUpIm), 
			.MDCOutDownRe(MDCOutDownRe), 
			.MDCOutDownIm(MDCOutDownIm), 
			.MDC_out_valid(MDC_out_valid),
			
			.FFTOutRe(FFTOutRe), 
			.FFTOutIm(FFTOutIm), 
			.FFT_out_valid(FFT_out_valid)
		);

	`endif
	

    // Input
    initial begin
		input_end = 0;
		
        // reset
        wait (rst === 1'b1);
		FFTInRe = 0;
		FFTInIm = 0;
		in_valid = 0;
        wait (rst === 1'b0);

        // start
        @(posedge clk);
		// loop
		pattern_idx_in = 0;
        while (pattern_idx_in < `INPUT_LEN) begin
		
			@(negedge clk);
			FFTInRe = input_re_data[pattern_idx_in];
			FFTInIm = input_im_data[pattern_idx_in];
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
		f_re = $fopen(`OUTPUT_RE_PATH,"w");
		f_im = $fopen(`OUTPUT_IM_PATH,"w");


		
        // reset
        wait (rst === 1'b1);
        wait (rst === 1'b0);

        // start
        @(posedge clk);
		
        // loop
		while (1) begin
				@(negedge clk);
				
				if (FFT_out_valid) begin
					$fwrite(f_re,"%b\n",FFTOutRe);
					$fwrite(f_im,"%b\n",FFTOutIm);
                end
				@(posedge clk);			
			end
        
		$fclose(f_re); 
		$fclose(f_im); 
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