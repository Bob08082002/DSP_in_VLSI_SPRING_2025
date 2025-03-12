module SelectTopK(
input clk,
input i_rst,
input BlkIn,
input signed[7:0]In1,
input signed[7:0]In2,
input signed[7:0]In3,
input signed[7:0]In4,
output signed[7:0]SortOut,
output OutValid
);

localparam IDLE = 0, FIRST_IN = 1, OUTPUT_STATE = 2;
reg [2:0]cnt_r, cnt_w; // output counter
reg [1:0]st, nst; // state
reg [1:0]group_idx_r[7:0]; // group register index
reg [1:0]group_idx_w[7:0]; // group register index
reg group_valid_r[7:0]; // if group register valid (if all elements of that group register have been pop, that register is invalid.)
reg group_valid_w[7:0]; // if group register valid (if all elements of that group register have been pop, that register is invalid.)

reg signed [7:0]shift_group_reg_r[7:0][3:0]; // 8 groups. each group has 4 elements. // sort4 output
reg signed [7:0]shift_group_reg_w[7:0][3:0]; // 8 groups. each group has 4 elements. // sort4 output
reg signed [7:0]group_reg_r[7:0][3:0]; // 8 groups. each group has 4 elements. // comparator tree input
reg signed [7:0]group_reg_w[7:0][3:0]; // 8 groups. each group has 4 elements. // comparator tree input

integer i, j;

wire signed [7:0] Sort4_A, Sort4_B, Sort4_C, Sort4_D;
wire [2:0]Max_idx; // output of comparator tree


// output
assign OutValid = (st == OUTPUT_STATE && cnt_r <= 6); // top 7 

// ----------------- Sort4 ----------------- //
Sort4 Sort4_u0(
.i_A(In1),
.i_B(In2),
.i_C(In3),
.i_D(In4),
.o_A(Sort4_A), // max
.o_B(Sort4_B), // 2nd max
.o_C(Sort4_C), // 3rd max
.o_D(Sort4_D)  // min
);

// ----------------- comparator_tree ----------------- //
comparator_tree comparator_tree_u0(
.i_0(group_reg_r[0][group_idx_r[0]]),
.i_1(group_reg_r[1][group_idx_r[1]]),
.i_2(group_reg_r[2][group_idx_r[2]]),
.i_3(group_reg_r[3][group_idx_r[3]]),
.i_4(group_reg_r[4][group_idx_r[4]]),
.i_5(group_reg_r[5][group_idx_r[5]]),
.i_6(group_reg_r[6][group_idx_r[6]]),
.i_7(group_reg_r[7][group_idx_r[7]]),
.i_valid_0(group_valid_r[0]),
.i_valid_1(group_valid_r[1]),
.i_valid_2(group_valid_r[2]),
.i_valid_3(group_valid_r[3]),
.i_valid_4(group_valid_r[4]),
.i_valid_5(group_valid_r[5]),
.i_valid_6(group_valid_r[6]),
.i_valid_7(group_valid_r[7]),
.o_Max(SortOut),
.o_Max_idx(Max_idx) // which input is the max
);



// output counter
always@(*)begin
	if(BlkIn) cnt_w = 0; // reset to 0
	else cnt_w = cnt_r + 1;
end
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		cnt_r <= 0;
	end
	else begin
		cnt_r <= cnt_w;
	end
end

// state
always@(*)begin
	case(st)
		IDLE: nst = (BlkIn)? FIRST_IN : IDLE; 
		FIRST_IN: nst = (BlkIn)? OUTPUT_STATE : FIRST_IN; 
		OUTPUT_STATE:  nst = OUTPUT_STATE;
		default:  nst = IDLE;
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

// group register index & valid
always@(*)begin
	for (i = 0; i < 8; i=i+1)begin // given default value
		group_idx_w[i] = group_idx_r[i];
		group_valid_w[i] = group_valid_r[i];
	end
	
	if(cnt_r == 7)begin // reset
		for (i = 0; i < 8; i=i+1)begin
			group_idx_w[i] = 0;
			group_valid_w[i] = 1;
		end
	end
	else begin
		if (group_idx_w[Max_idx] == 3)begin // last element of register
			group_valid_w[Max_idx] = 0;
		end
		else begin
			group_idx_w[Max_idx] = group_idx_r[Max_idx] + 1;
		end
	end
end
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		for (i = 0; i < 8; i=i+1)begin 
			group_idx_r[i] <= 0;
			group_valid_r[i] <= 1;
		end
	end
	else begin
		for (i = 0; i < 8; i=i+1)begin 
			group_idx_r[i] <= group_idx_w[i];
			group_valid_r[i] <= group_valid_w[i];
		end
	end
end


// sort4 output: shift group register
always@(*)begin

	shift_group_reg_w[7][0] = Sort4_A; // max
	shift_group_reg_w[7][1] = Sort4_B; // 2nd max
	shift_group_reg_w[7][2] = Sort4_C; // 3rd max
	shift_group_reg_w[7][3] = Sort4_D; // min
	
	for (i = 0; i < 7; i=i+1)begin 
		for (j = 0; j < 4; j = j + 1)begin
			shift_group_reg_w[i][j] = shift_group_reg_r[i + 1][j];
		end
	end
	
end
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		for (i = 0; i < 8; i=i+1)begin 
			for (j = 0; j < 4; j = j + 1)begin
				shift_group_reg_r[i][j] = 0;
			end
		end
	end
	else begin
		for (i = 0; i < 8; i=i+1)begin 
			for (j = 0; j < 4; j = j + 1)begin
				shift_group_reg_r[i][j] = shift_group_reg_w[i][j];
			end
		end
	end
end


// comparator_tree input: group register
always@(*)begin

	for (i = 0; i < 8; i=i+1)begin  // given default value
		for (j = 0; j < 4; j = j + 1)begin
			group_reg_w[i][j] = group_reg_r[i][j];
		end
	end
	
	if(cnt_r == 7)begin
		for (i = 0; i < 8; i=i+1)begin 
			for (j = 0; j < 4; j = j + 1)begin
				group_reg_w[i][j] = shift_group_reg_r[i][j];
			end
		end
	end
	
end
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		for (i = 0; i < 8; i=i+1)begin 
			for (j = 0; j < 4; j = j + 1)begin
				group_reg_r[i][j] = 0;
			end
		end
	end
	else begin
		for (i = 0; i < 8; i=i+1)begin 
			for (j = 0; j < 4; j = j + 1)begin
				group_reg_r[i][j] = group_reg_w[i][j];
			end
		end
	end
end


endmodule