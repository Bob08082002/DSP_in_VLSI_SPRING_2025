module Sort4(
input signed[7:0]i_A,
input signed[7:0]i_B,
input signed[7:0]i_C,
input signed[7:0]i_D,
output signed[7:0]o_A, // max
output signed[7:0]o_B, // 2nd max
output signed[7:0]o_C, // 3rd max
output signed[7:0]o_D  // min
);
wire signed [7:0] connect_w0, connect_w1, connect_w2, connect_w3, connect_w4, connect_w5;


Comparator Comparator_u0(.i_0(i_A), .i_1(i_B), .o_Max(connect_w0), .o_Min(connect_w1));
Comparator Comparator_u1(.i_0(i_C), .i_1(i_D), .o_Max(connect_w2), .o_Min(connect_w3));

Comparator Comparator_u2(.i_0(connect_w0), .i_1(connect_w2), .o_Max(o_A), .o_Min(connect_w4));
Comparator Comparator_u3(.i_0(connect_w1), .i_1(connect_w3), .o_Max(connect_w5), .o_Min(o_D));
											   
Comparator Comparator_u4(.i_0(connect_w4), .i_1(connect_w5), .o_Max(o_B), .o_Min(o_C));


endmodule

module Comparator(
input signed[7:0]i_0,
input signed[7:0]i_1,
output signed[7:0]o_Max,
output signed[7:0]o_Min
);

assign {o_Max, o_Min} = (i_0 > i_1)? {i_0, i_1} : {i_1, i_0};

endmodule
