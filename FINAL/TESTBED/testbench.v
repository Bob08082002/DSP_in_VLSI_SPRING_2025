`timescale 1ns/100ps
`define PERIOD    10.0
`define MAX_CYCLE 100
`define RST_DELAY 2.0





`define INPUT_LEN 4



module testbench #(
    parameter INPUT_DATA_W = 20,
	parameter OUTPUT_DATA_W = 20
) ();

    // Ports
    wire                     Clk;
	wire                     Reset;
    reg         signed[INPUT_DATA_W-1:0] i_X, i_Y;
	reg                     i_in_valid; // if input is valid
	reg                     i_vectoring_mode;

    wire signed [OUTPUT_DATA_W-1:0] o_X, o_Y; 
    wire                     o_out_valid; // if output is valid

    // TB variables

	reg  signed[INPUT_DATA_W-1:0] input_X_data [0:`INPUT_LEN-1];
	reg  signed[INPUT_DATA_W-1:0] input_Y_data [0:`INPUT_LEN-1];

	integer i;
    integer pattern_idx_in;
	integer input_end;
	integer f_theda, f_magnitude;

    initial begin

			//$readmemb(`INPUT_X_PATH, input_X_data);
			//$readmemb(`INPUT_Y_PATH, input_Y_data);

    end

    clk_gen u_clk_gen (
        .Clk   (Clk  ) ,
        .Reset   (Reset  )/*,
        .rst_n (rst_n)*/
    );
	
	
	initial begin

        // reset
        wait (Reset === 1'b1);
        wait (Reset === 1'b0);

        // start
        @(posedge Clk);
		// loop
		i_in_valid = 1;
		i_vectoring_mode = 1;
		i_X = 'b00000010001011101111;
		i_Y = 'b00000110111110100001;
    end
	
	
	CORDIC CORDIC_u0(
		.Clk(Clk),
		.Reset(Reset),
		
		.i_vectoring_mode(i_vectoring_mode),
		
		.i_in_valid(i_in_valid),
		.i_X(i_X), 
		.i_Y(i_Y), 
		
		.o_out_valid(o_out_valid),
		.o_X(o_X),
		.o_Y(o_Y)
	);

/*	

    // Input
    initial begin
		input_end = 0;
		
        // reset
        wait (Reset === 1'b1);
		InX = 0;
		InY = 0;
		ValidIn = 0;
        wait (Reset === 1'b0);

        // start
        @(posedge Clk);
		// loop
		pattern_idx_in = 0;
        while (pattern_idx_in < `INPUT_LEN) begin
		
			@(negedge Clk);
			InX = input_X_data[pattern_idx_in];
			InY = input_Y_data[pattern_idx_in];
			ValidIn = 1;
			@(posedge Clk);

            pattern_idx_in = pattern_idx_in + 1;
        end

		@(negedge Clk);
		ValidIn = 0;
		
		input_end = 1;
    end
	

    // Output
    initial begin
		f_theda = $fopen(`OUTPUT_THEDA_PATH,"w");
		f_magnitude = $fopen(`OUTPUT_MAG_PATH,"w");

		
        // reset
        wait (Reset === 1'b1);
        wait (Reset === 1'b0);

        // start
        @(posedge Clk);
		
        // loop
		while (1) begin
				@(negedge Clk);
				
				if (ValidOut_Theda) begin
					$fwrite(f_theda,"%b\n",OutTheda);
                end
				if (ValidOut_Magnitude) begin
					$fwrite(f_magnitude,"%b\n",Magnitude);
                end
				@(posedge Clk);			
			end
        
		$fclose(f_theda); 
		$fclose(f_magnitude); 
    end
*/


endmodule


module clk_gen (
    output reg Clk,
    output reg Reset
);

    always #(`PERIOD / 2.0) Clk = ~Clk;

    initial begin
        Clk = 1'b0;
        Reset = 1'b0; 
		$display("---------- SIMULATION START ----------");
		// #(              0.25  * `PERIOD); Reset = 1'b1; 
		// #((`RST_DELAY - 0.25) * `PERIOD); Reset = 1'b0; 
		#(`PERIOD); Reset = 1'b1; 
		#(`PERIOD*20.0); Reset = 1'b0; 
		$display("---------- RESET END ----------");
		#(`MAX_CYCLE *`PERIOD);
        $display("---------- SIMULATION END ----------");
        $finish;
    end

endmodule