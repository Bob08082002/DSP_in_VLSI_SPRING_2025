module comparator_tree(
input signed[7:0]i_0,
input signed[7:0]i_1,
input signed[7:0]i_2,
input signed[7:0]i_3,
input signed[7:0]i_4,
input signed[7:0]i_5,
input signed[7:0]i_6,
input signed[7:0]i_7,
input i_valid_0,
input i_valid_1,
input i_valid_2,
input i_valid_3,
input i_valid_4,
input i_valid_5,
input i_valid_6,
input i_valid_7,
output signed[7:0]o_Max,
output [2:0]o_Max_idx // which input is the max
);

// interconnection
wire signed [7:0] max0, max1, max2, max3, max4, max5;
wire [2:0] max_idx0, max_idx1, max_idx2, max_idx3, max_idx4, max_idx5;
wire  max_valid0, max_valid1, max_valid2, max_valid3, max_valid4, max_valid5;

find_max find_max_u0(.i_0(i_0), .i_1(i_1), .i_max_idx0(3'd0), .i_max_idx1(3'd1), .i_valid0(i_valid_0),   .i_valid1(i_valid_1),   .o_Max(max0), .o_Max_idx(max_idx0), .o_valid(max_valid0));
find_max find_max_u1(.i_0(i_2), .i_1(i_3), .i_max_idx0(3'd2), .i_max_idx1(3'd3), .i_valid0(i_valid_2),   .i_valid1(i_valid_3),   .o_Max(max1), .o_Max_idx(max_idx1), .o_valid(max_valid1));
find_max find_max_u2(.i_0(i_4), .i_1(i_5), .i_max_idx0(3'd4), .i_max_idx1(3'd5), .i_valid0(i_valid_4),   .i_valid1(i_valid_5),   .o_Max(max2), .o_Max_idx(max_idx2), .o_valid(max_valid2));
find_max find_max_u3(.i_0(i_6), .i_1(i_7), .i_max_idx0(3'd6), .i_max_idx1(3'd7), .i_valid0(i_valid_6),   .i_valid1(i_valid_7),   .o_Max(max3), .o_Max_idx(max_idx3), .o_valid(max_valid3));

find_max find_max_u4(.i_0(max0), .i_1(max1), .i_max_idx0(max_idx0), .i_max_idx1(max_idx1), .i_valid0(max_valid0),   .i_valid1(max_valid1),   .o_Max(max4), .o_Max_idx(max_idx4), .o_valid(max_valid4));
find_max find_max_u5(.i_0(max2), .i_1(max3), .i_max_idx0(max_idx2), .i_max_idx1(max_idx3), .i_valid0(max_valid2),   .i_valid1(max_valid3),   .o_Max(max5), .o_Max_idx(max_idx5), .o_valid(max_valid5));

find_max find_max_u6(.i_0(max4), .i_1(max5), .i_max_idx0(max_idx4), .i_max_idx1(max_idx5), .i_valid0(max_valid4),   .i_valid1(max_valid5),   .o_Max(o_Max), .o_Max_idx(o_Max_idx), .o_valid());



endmodule


module find_max(
input signed[7:0]i_0,
input signed[7:0]i_1,
input [2:0]i_max_idx0,
input [2:0]i_max_idx1,
input i_valid0,  // if i_0 is valid
input i_valid1,  // if i_1 is valid
output reg signed[7:0]o_Max,
output reg [2:0]o_Max_idx, // which input is the max
output reg o_valid  // if output is valid
);

always@(*)begin
	if(i_valid0 && i_valid1)begin // both inputs are valid
		{o_Max, o_Max_idx} = (i_0 > i_1)? {i_0, i_max_idx0}:{i_1, i_max_idx1};
		o_valid = 1;
	end
	else if(i_valid0 && !i_valid1)begin // only input0 is valid
		{o_Max, o_Max_idx} = {i_0, i_max_idx0};
		o_valid = 1;
	end
	else if(!i_valid0 && i_valid1)begin // only input1 is valid
		{o_Max, o_Max_idx} = {i_1, i_max_idx1};
		o_valid = 1;
	end
	else begin // both inputs are invalid
		{o_Max, o_Max_idx} = 0; // dontcare
		o_valid = 0;
	end
end

endmodule