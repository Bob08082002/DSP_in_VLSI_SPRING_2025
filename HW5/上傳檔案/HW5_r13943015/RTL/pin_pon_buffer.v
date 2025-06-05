//                      pin_pon_buffer                   //
// Use to streaming out in reverse-bit order             //
`define WORD_LEN 11


module pin_pon_buffer (
		input clk,
		input i_rst,
		input [`WORD_LEN*2-1:0] MemInUp, // {MemInUp_re, MemInUp_im}
		input [`WORD_LEN*2-1:0] MemInDown, // {MemInDown_re, MemInDown_im}
		input in_valid,
		
		output [`WORD_LEN*2-1:0] MemOut, // {MemOut_re, MemOut_im}
		output out_valid
);
integer i;
// state
localparam IDLE = 0, OUTPUT_STATE = 1;
reg st, nst;
// counter
reg [3:0] sub_cnt_r, sub_cnt_w; // 0 ~ 15 // input counter
reg  in_bank_id_r, in_bank_id_w; // 0: bank A, 1: bank B 
reg  out_bank_id_r, out_bank_id_w; // 0: bank A, 1: bank B 
reg [4:0] main_cnt_r, main_cnt_w; // 0 ~ 31 // output counter
// regfile
reg [`WORD_LEN*2-1:0] bank_A_regfile_r [0:31];
reg [`WORD_LEN*2-1:0] bank_A_regfile_w [0:31];
reg [`WORD_LEN*2-1:0] bank_B_regfile_r [0:31];
reg [`WORD_LEN*2-1:0] bank_B_regfile_w [0:31];



// -------------------------- output --------------------------
assign out_valid = (st == OUTPUT_STATE);
assign MemOut = (out_bank_id_r==0)? bank_A_regfile_r[main_cnt_r]:bank_B_regfile_r[main_cnt_r];
// -------------------------- state --------------------------
always@(*)begin
	case(st)
		IDLE: nst = (sub_cnt_r==15)? OUTPUT_STATE:IDLE;
		OUTPUT_STATE: begin
			if(main_cnt_r==31 && sub_cnt_r!=15) nst = IDLE;
			else nst = OUTPUT_STATE;
		end
	endcase
end
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		st <= IDLE;
	end
	else begin
		st <= nst;
	end
end
// -------------------------- input counter: 0 ~ 15 --------------------------
always@(*)begin
	sub_cnt_w = sub_cnt_r;
	if(in_valid)begin
		sub_cnt_w = sub_cnt_r + 1;
	end
end
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		sub_cnt_r <= 0;
	end
	else begin
		sub_cnt_r <= sub_cnt_w;
	end
end

// -------------------------- output counter: 0 ~ 31 --------------------------
always@(*)begin
	main_cnt_w = main_cnt_r;
	if(st == IDLE)begin
		main_cnt_w = 0;
	end
	else if(st == OUTPUT_STATE)begin
		main_cnt_w = main_cnt_r + 1;
	end
end
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		main_cnt_r <= 0;
	end
	else begin
		main_cnt_r <= main_cnt_w;
	end
end

// -------------------------- bank id: 0: bank A, 1: bank B --------------------------
always@(*)begin
	in_bank_id_w = in_bank_id_r;
	out_bank_id_w = out_bank_id_r;
	if(sub_cnt_r == 15)begin // input counter
		in_bank_id_w = ~in_bank_id_r;
	end
	if(main_cnt_r == 31)begin // output counter
		out_bank_id_w = ~out_bank_id_r;
	end
end
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		in_bank_id_r <= 0;
		out_bank_id_r <= 0;
	end
	else begin
		in_bank_id_r <= in_bank_id_w;
		out_bank_id_r <= out_bank_id_w;
	end
end


// -------------------------- regfile --------------------------
wire [4:0]sub_cnt_x2 = {sub_cnt_r, 1'b0};
wire [4:0]sub_cnt_x2_plus1 = {sub_cnt_r, 1'b1};
wire [4:0]sub_cnt_x2_reverse = {sub_cnt_x2[0], sub_cnt_x2[1],sub_cnt_x2[2],sub_cnt_x2[3],sub_cnt_x2[4]};
wire [4:0]sub_cnt_x2_plus1_reverse = {sub_cnt_x2_plus1[0], sub_cnt_x2_plus1[1],sub_cnt_x2_plus1[2],sub_cnt_x2_plus1[3],sub_cnt_x2_plus1[4]};
always@(*)begin
	for (i = 0; i < 32; i = i + 1)begin
		bank_A_regfile_w[i] = bank_A_regfile_r[i];
		bank_B_regfile_w[i] = bank_B_regfile_r[i];
	end
	if(in_valid)begin
		if (in_bank_id_r==0)begin // bank A
			bank_A_regfile_w[sub_cnt_x2_reverse] = MemInUp;
			bank_A_regfile_w[sub_cnt_x2_plus1_reverse] = MemInDown;
		end
		else begin // bank B
			bank_B_regfile_w[sub_cnt_x2_reverse] = MemInUp;
			bank_B_regfile_w[sub_cnt_x2_plus1_reverse] = MemInDown;
		end	
	end
end
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		for (i = 0; i < 32; i = i + 1)begin
			bank_A_regfile_r[i] <= 0;
			bank_B_regfile_r[i] <= 0;
		end
	end
	else begin
		for (i = 0; i < 32; i = i + 1)begin
			bank_A_regfile_r[i] <= bank_A_regfile_w[i];
			bank_B_regfile_r[i] <= bank_B_regfile_w[i];
		end
	end
end
endmodule




