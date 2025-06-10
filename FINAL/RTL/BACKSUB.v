module BACK_SUBSTITUTION #(
        parameter C_IWL = 5,
        parameter C_FWL = 15,
        parameter B_IWL = 5,
        parameter B_FWL = 15
    ) (
        input clk,
        input rst_n,
        input in_valid, 
        input signed  [ C_IWL + C_FWL - 1 : 0]  c3_x, 
        input signed  [ C_IWL + C_FWL - 1 : 0]  c5_x,
        input signed  [ C_IWL + C_FWL - 1 : 0]  c6_x,
        input signed  [ C_IWL + C_FWL - 1 : 0]  c6_y,
        output                                  out_valid,
        output signed [ B_IWL + B_FWL - 1 : 0]  OutData1,
        output signed [ B_IWL + B_FWL - 1 : 0]  OutData2,
        output signed [ B_IWL + B_FWL - 1 : 0]  OutData3,
        output signed [ B_IWL + B_FWL - 1 : 0]  OutData4,
        // Debugging ports
        output signed [ B_IWL + B_FWL - 1 : 0]  reciprocal
    );
    
    // 1. Assume the the input are directly from registers, so we dont need to catch them with registers first
    // 2. in_valid represents the coming of r11
    // Input Order
    // r11, r12, r13, r14,  z1, R11, R12, R13, R14,  Z1  
    //        0, r22, r23, r24,  z2,   0, R22, R23, R24,  Z2
    //             0,   0, r33, r34,  z3,   0,   0, R33, R34,  Z3
    //                  0,   0,   0, r44,  z4,   0,   0,   0, R44,  Z4
    // Phase
    //   0,   1,   1,   1,   1,   1,   0,   0,   0,   0,  0,
    // cnt1
    //   0,   1,   2,   3,   4,   5,   6,   7,   0,   0,  0, ...
    // cnt2
    //   0,   0,   0,   0,   0,   0,   1,   2,   3,   4,  5, ...
    // The input that requires reciprocal
    // r11       r22       r33  R11, r44  R22      R33....
    
    // bankid would switch wheneven an in_valid signal come
    // reciprocal_cnt would reset as 0, then count beteween 1 to 5

    // Extra 
    wire signed [ B_IWL + B_FWL - 1 : 0] c3_x_adjust_6 = fixed_resize(c3_x);
    wire signed [ B_IWL + B_FWL - 1 : 0] c5_x_adjust_6 = fixed_resize(c5_x);
    wire signed [ B_IWL + B_FWL - 1 : 0] c6_x_adjust_6 = fixed_resize(c6_x);
    wire signed [ B_IWL + B_FWL - 1 : 0] c6_y_adjust_6 = fixed_resize(c6_y);
    reg signed [ B_IWL + B_FWL - 1 : 0] c3_x_adjust_5, c5_x_adjust_5, c6_x_adjust_5, c6_y_adjust_5;
    reg signed [ B_IWL + B_FWL - 1 : 0] c3_x_adjust_4, c5_x_adjust_4, c6_x_adjust_4, c6_y_adjust_4;
    reg signed [ B_IWL + B_FWL - 1 : 0] c3_x_adjust_3, c5_x_adjust_3, c6_x_adjust_3, c6_y_adjust_3;
    reg signed [ B_IWL + B_FWL - 1 : 0] c3_x_adjust_2, c5_x_adjust_2, c6_x_adjust_2, c6_y_adjust_2;
    reg signed [ B_IWL + B_FWL - 1 : 0] c3_x_adjust_1, c5_x_adjust_1, c6_x_adjust_1, c6_y_adjust_1;
    reg signed [ B_IWL + B_FWL - 1 : 0] c3_x_adjust, c5_x_adjust, c6_x_adjust, c6_y_adjust;
    
    always @(posedge clk , negedge rst_n) begin
        if(!rst_n)begin
            {c3_x_adjust , c3_x_adjust_1, c3_x_adjust_2, c3_x_adjust_3, c3_x_adjust_4, c3_x_adjust_5} <= 0;
            {c5_x_adjust , c5_x_adjust_1, c5_x_adjust_2, c5_x_adjust_3, c5_x_adjust_4, c5_x_adjust_5} <= 0;
            {c6_x_adjust , c6_x_adjust_1, c6_x_adjust_2, c6_x_adjust_3, c6_x_adjust_4, c6_x_adjust_5} <= 0;
            {c6_y_adjust , c6_y_adjust_1, c6_y_adjust_2, c6_y_adjust_3, c6_y_adjust_4, c6_y_adjust_5} <= 0;
        end
        else begin 
            {c3_x_adjust , c3_x_adjust_1, c3_x_adjust_2, c3_x_adjust_3, c3_x_adjust_4, c3_x_adjust_5} <= {c3_x_adjust_1, c3_x_adjust_2, c3_x_adjust_3, c3_x_adjust_4, c3_x_adjust_5, c3_x_adjust_6};
            {c5_x_adjust , c5_x_adjust_1, c5_x_adjust_2, c5_x_adjust_3, c5_x_adjust_4, c5_x_adjust_5} <= {c5_x_adjust_1, c5_x_adjust_2, c5_x_adjust_3, c5_x_adjust_4, c5_x_adjust_5, c5_x_adjust_6};
            {c6_x_adjust , c6_x_adjust_1, c6_x_adjust_2, c6_x_adjust_3, c6_x_adjust_4, c6_x_adjust_5} <= {c6_x_adjust_1, c6_x_adjust_2, c6_x_adjust_3, c6_x_adjust_4, c6_x_adjust_5, c6_x_adjust_6};
            {c6_y_adjust , c6_y_adjust_1, c6_y_adjust_2, c6_y_adjust_3, c6_y_adjust_4, c6_y_adjust_5} <= {c6_y_adjust_1, c6_y_adjust_2, c6_y_adjust_3, c6_y_adjust_4, c6_y_adjust_5, c6_y_adjust_6};
        end
    end

    // Extra controll signal for pipelining reciprocal
    reg       in_valid1,in_valid2,in_valid3,in_valid4,in_valid5,in_valid6;
    reg       bankid_6, bankid_5, bankid_4, bankid_3, bankid_2, bankid_1;
    reg [2:0] in_cnt_bank1_6, in_cnt_bank1_5, in_cnt_bank1_4, in_cnt_bank1_3, in_cnt_bank1_2, in_cnt_bank1_1;
    reg [2:0] in_cnt_bank2_6, in_cnt_bank2_5, in_cnt_bank2_4, in_cnt_bank2_3, in_cnt_bank2_2, in_cnt_bank2_1;

    reg signed [ B_IWL + B_FWL - 1 : 0] recip_in;
    wire signed [ B_IWL + B_FWL - 1 : 0] recip_out;
    reg       bankid;
    reg [2:0] in_cnt_bank1,in_cnt_bank2;

    // For bank 1
    reg signed [ B_IWL + B_FWL - 1 : 0] R11_recip_bank1, R22_recip_bank1, R33_recip_bank1, R44_recip_bank1;
    reg signed [ B_IWL + B_FWL - 1 : 0] R12_bank1, R13_bank1, R14_bank1, R23_bank1, R24_bank1, R34_bank1;
    reg signed [ B_IWL + B_FWL - 1 : 0] z1_bank1, z2_bank1, z3_bank1, z4_bank1;
    //reg signed [ B_IWL + B_FWL - 1 : 0] x1_bank1, x2_bank1, x3_bank1, x4_bank1;

    // For bank 2
    reg signed [ B_IWL + B_FWL - 1 : 0] R11_recip_bank2, R22_recip_bank2, R33_recip_bank2, R44_recip_bank2;
    reg signed [ B_IWL + B_FWL - 1 : 0] R12_bank2, R13_bank2, R14_bank2, R23_bank2, R24_bank2, R34_bank2;
    reg signed [ B_IWL + B_FWL - 1 : 0] z1_bank2, z2_bank2, z3_bank2, z4_bank2;
    //reg signed [ B_IWL + B_FWL - 1 : 0] x1_bank2, x2_bank2, x3_bank2, x4_bank2;

    // Controll signals
    always @(posedge clk , negedge rst_n) begin
        if( !rst_n )begin
            {bankid_6, bankid_5, bankid_4, bankid_3, bankid_2, bankid_1} <= 0;
            bankid <= 0;

            {in_valid1,in_valid2,in_valid3,in_valid4,in_valid5,in_valid6} <= 0;

            {in_cnt_bank1_6, in_cnt_bank1_5, in_cnt_bank1_4, in_cnt_bank1_3, in_cnt_bank1_2, in_cnt_bank1_1} <= 0;
            in_cnt_bank1 <= 0;

            {in_cnt_bank2_6, in_cnt_bank2_5, in_cnt_bank2_4, in_cnt_bank2_3, in_cnt_bank2_2, in_cnt_bank2_1} <= 0;
            in_cnt_bank2   <= 0;

        end
        else begin
            if(in_valid)begin
                bankid_6 <= ~bankid_6;
                if(bankid_6 == 0)begin
                    in_cnt_bank1_6 <= 1;
                    if(in_cnt_bank2_6 != 0)begin
                        in_cnt_bank2_6 <= in_cnt_bank2_6+1;
                    end

                end
                else begin
                    in_cnt_bank2_6 <= 1;
                    if(in_cnt_bank1_6 != 0)begin
                        in_cnt_bank1_6 <= in_cnt_bank1_6+1;
                    end
                end                
            end
            else begin
                bankid_6 <= bankid_6;
                if (in_cnt_bank1_6 > 0 )begin
                    in_cnt_bank1_6 <= in_cnt_bank1_6 + 1;
                end 
                else begin
                    in_cnt_bank1_6 <= 0;
                end
                if (in_cnt_bank2_6 > 0 )begin
                    in_cnt_bank2_6 <= in_cnt_bank2_6 + 1;
                end 
                else begin
                    in_cnt_bank2_6 <= 0;
                end
            end 
            {bankid_5, bankid_4, bankid_3, bankid_2, bankid_1, bankid} <= {bankid_6, bankid_5, bankid_4, bankid_3, bankid_2, bankid_1};
            {in_cnt_bank1_5, in_cnt_bank1_4, in_cnt_bank1_3, in_cnt_bank1_2, in_cnt_bank1_1, in_cnt_bank1}  <= {in_cnt_bank1_6, in_cnt_bank1_5, in_cnt_bank1_4, in_cnt_bank1_3, in_cnt_bank1_2, in_cnt_bank1_1}; 
            {in_cnt_bank2_5, in_cnt_bank2_4, in_cnt_bank2_3, in_cnt_bank2_2, in_cnt_bank2_1, in_cnt_bank2}  <= {in_cnt_bank2_6, in_cnt_bank2_5, in_cnt_bank2_4, in_cnt_bank2_3, in_cnt_bank2_2, in_cnt_bank2_1} ;
            {in_valid1,in_valid2,in_valid3,in_valid4,in_valid5,in_valid6} <= {in_valid, in_valid1,in_valid2,in_valid3,in_valid4,in_valid5} ;
        end
    end
    
    // Reciprocal & R & z registers
    reciprocal #(.IWL(B_IWL), .FWL(B_FWL)) u_recip (.clk(clk), .rst_n(rst_n), .in(recip_in), .out(recip_out));
    always @(*) begin
        recip_in = 0;
        if(in_valid)begin
            recip_in = c3_x_adjust_6;
        end
        else begin
            if (in_cnt_bank1_6 == 2 || in_cnt_bank2_6 == 2) begin
                recip_in = c5_x_adjust_6;
            end
            else if (in_cnt_bank1_6 == 4 || in_cnt_bank2_6 == 4) begin
                recip_in = c6_x_adjust_6;
            end
            else if(in_cnt_bank1_6 == 6 || in_cnt_bank2_6 == 6) begin
                recip_in = c6_y_adjust_6;
            end
        end
    end
    always @(posedge clk , negedge rst_n) begin
        if(!rst_n) begin
            R11_recip_bank1 <= 0; R22_recip_bank1 <= 0; R33_recip_bank1 <= 0; R44_recip_bank1 <= 0;
            R12_bank1 <= 0; R13_bank1 <= 0; R14_bank1 <= 0; R23_bank1 <= 0; R24_bank1 <= 0;R34_bank1 <= 0;
            z1_bank1 <= 0; z2_bank1 <= 0; z3_bank1 <= 0; z4_bank1 <= 0;
            //x1_bank1 <= 0; x2_bank1 <= 0; x3_bank1 <= 0; x4_bank1 <= 0;

            R11_recip_bank2 <= 0;R22_recip_bank2 <= 0; R33_recip_bank2 <= 0;  R44_recip_bank2 <= 0;
            R12_bank2 <= 0; R13_bank2 <= 0; R14_bank2 <= 0; R23_bank2 <= 0;  R24_bank2 <= 0; R34_bank2 <= 0;
            z1_bank2 <= 0; z2_bank2 <= 0; z3_bank2 <= 0; z4_bank2 <= 0;
            //x1_bank2 <= 0; x2_bank2 <= 0; x3_bank2 <= 0; x4_bank2 <= 0;
        end
        else begin
            R11_recip_bank1 <= R11_recip_bank1;R22_recip_bank1 <= R22_recip_bank1;
            R33_recip_bank1 <= R33_recip_bank1;R44_recip_bank1 <= R44_recip_bank1;

            R12_bank1 <= R12_bank1;R13_bank1 <= R13_bank1;
            R14_bank1 <= R14_bank1;R23_bank1 <= R23_bank1;
            R24_bank1 <= R24_bank1;R34_bank1 <= R34_bank1;

            z1_bank1 <= z1_bank1;z2_bank1 <= z2_bank1;z3_bank1 <= z3_bank1;z4_bank1 <= z4_bank1;
            //x1_bank1 <= x1_bank1;x2_bank1 <= x2_bank1;x3_bank1 <= x3_bank1;x4_bank1 <= x4_bank1;

            R11_recip_bank2 <= R11_recip_bank2;R22_recip_bank2 <= R22_recip_bank2;
            R33_recip_bank2 <= R33_recip_bank2;R44_recip_bank2 <= R44_recip_bank2;

            R12_bank2 <= R12_bank2;R13_bank2 <= R13_bank2;
            R14_bank2 <= R14_bank2;R23_bank2 <= R23_bank2;
            R24_bank2 <= R24_bank2;R34_bank2 <= R34_bank2;

            z1_bank2 <= z1_bank2;z2_bank2 <= z2_bank2;z3_bank2 <= z3_bank2;z4_bank2 <= z4_bank2;
            //x1_bank2 <= x1_bank2;x2_bank2 <= x2_bank2;x3_bank2 <= x3_bank2;x4_bank2 <= x4_bank2;

            case (in_cnt_bank1)
                0:begin
                    if(in_valid6 && bankid == 0)begin
                        R11_recip_bank1 <= recip_out;
                    end
                end
                1:begin
                    R12_bank1 <= c3_x_adjust;
                end
                2:begin
                    R13_bank1 <= c3_x_adjust;
                    R22_recip_bank1 <= recip_out;
                end
                3:begin
                    R14_bank1 <= c3_x_adjust;
                    R23_bank1 <= c5_x_adjust;
                end
                4:begin
                    z1_bank1 <= c3_x_adjust;
                    R24_bank1 <= c5_x_adjust;
                    R33_recip_bank1 <= recip_out;
                end
                5:begin
                    z2_bank1 <= c5_x_adjust;
                    R34_bank1 <= c6_x_adjust;
                end
                6:begin
                    z3_bank1 <= c6_x_adjust;
                    R44_recip_bank1 <= recip_out;
                end
                7:begin
                    z4_bank1 <= c6_y_adjust;
                end
            endcase

            case (in_cnt_bank2)
                0:begin
                    if(in_valid6 && bankid == 1)begin
                        R11_recip_bank2 <= recip_out;
                    end
                end
                1:begin
                    R12_bank2 <= c3_x_adjust;
                end
                2:begin
                    R13_bank2 <= c3_x_adjust;
                    R22_recip_bank2 <= recip_out;
                end
                3:begin
                    R14_bank2 <= c3_x_adjust;
                    R23_bank2 <= c5_x_adjust;
                end
                4:begin
                    z1_bank2 <= c3_x_adjust;
                    R24_bank2 <= c5_x_adjust;
                    R33_recip_bank2 <= recip_out;
                end
                5:begin
                    z2_bank2 <= c5_x_adjust;
                    R34_bank2 <= c6_x_adjust;
                end
                6:begin
                    z3_bank2 <= c6_x_adjust;
                    R44_recip_bank2 <= recip_out;
                end
                7:begin
                    z4_bank2 <= c6_y_adjust;
                end
            endcase
        end
    end

    // Pipelined back substitution 
    reg signed [ B_IWL + B_FWL - 1 : 0] R11_recip, R22_recip, R33_recip, R44_recip; 
    reg signed [ B_IWL + B_FWL - 1 : 0] R12, R13, R14, R23, R24, R34;
    reg signed [ B_IWL + B_FWL - 1 : 0] z1_, z2_, z3_, z4_;
    reg back_sub_invalid;
    always @(*) begin
        back_sub_invalid = 0;
        {R11_recip, R22_recip, R33_recip, R44_recip} = 0;
        {R12, R13, R14, R23, R24, R34} = 0;
        {z1_, z2_, z3_, z4_} = 0;
        if(in_cnt_bank1 == 7)begin
            back_sub_invalid = 1;
            R11_recip = R11_recip_bank1; R22_recip = R22_recip_bank1;
            R33_recip = R33_recip_bank1; R44_recip = R44_recip_bank1;
            R12 = R12_bank1; R13 = R13_bank1; R14 = R14_bank1; 
            R23 = R23_bank1; R24 = R24_bank1; R34 = R34_bank1;
            z1_ = z1_bank1; z2_ = z2_bank1; z3_ = z3_bank1; 
            // ***************************
            z4_ = c6_y_adjust;  //FIX BUG!!
            // ***************************
        end
        else if(in_cnt_bank2 == 7)begin
            back_sub_invalid = 1;
            R11_recip = R11_recip_bank2; R22_recip = R22_recip_bank2;
            R33_recip = R33_recip_bank2; R44_recip = R44_recip_bank2;
            R12 = R12_bank2; R13 = R13_bank2; R14 = R14_bank2; 
            R23 = R23_bank2; R24 = R24_bank2; R34 = R34_bank2;
            z1_ = z1_bank2; z2_ = z2_bank2; z3_ = z3_bank2;
            // ***************************
            z4_ = c6_y_adjust;  //FIX BUG!!
            // ***************************
        end
    end

    back_sub_main #(.IWL(B_IWL), .FWL(B_FWL)) u_back_sub_main(
        .R11_recip(R11_recip), .R22_recip(R22_recip), 
        .R33_recip(R33_recip), .R44_recip(R44_recip),
        .R12(R12), .R13(R13), .R14(R14), .R23(R23), .R24(R24), .R34(R34),
        .z1_(z1_), .z2_(z2_), .z3_(z3_), .z4_(z4_),
        .in_valid(back_sub_invalid),
        .out_valid(out_valid),
        .clk(clk),
        .rst_n(rst_n),
        .x1_(OutData1),
        .x2_(OutData2),
        .x3_(OutData3),
        .x4_(OutData4)
    );


    //c6_y_adjust = fixed_resize(c6_y);
    function signed [B_IWL + B_FWL - 1 : 0] fixed_resize;
        input signed [C_IWL + C_FWL - 1 : 0] in;
        // Parameters (must be defined via `define or localparam)

        reg signed [B_IWL + B_FWL - 1 : 0] result;
        begin


            if (C_FWL - B_FWL > 0)
                result = in >>> (C_FWL - B_FWL);  // round down (can improve with rounding)
            else
                result = in <<< (B_FWL - C_FWL);  // more fractional bits, shift left

            fixed_resize = result;
        end
    endfunction

endmodule

module reciprocal #(
        parameter IWL = 5, 
        parameter FWL = 15
    ) 
    (
        input signed[IWL+FWL-1:0] in,
        input clk,
        input rst_n,
        output reg signed[IWL+FWL-1:0] out
    );
    localparam [IWL+FWL-1:0] IN_MIN    = 1 << (FWL-IWL+1);
    localparam WL = IWL+FWL;

    wire sign_s1 ;
    reg  sign_s2, sign_s3, sign_s4, sign_s5, sign_s6, sign_s7;

    wire saturate_s1;
    reg saturate_s2, saturate_s3,saturate_s4, saturate_s5, saturate_s6, saturate_s7;

    wire [WL-1:0] divisor_s1 ; // absolute value of input
    reg  [WL-1:0] divisor_s2, divisor_s3, divisor_s4, divisor_s5, divisor_s6, divisor_s7;

    reg [WL-1:0] dividend_s1, dividend_s1_r, dividend_s2, dividend_s2_r, dividend_s3, dividend_s3_r, dividend_s4, dividend_s4_r, dividend_s5, dividend_s5_r, dividend_s6, dividend_s6_r, dividend_s7;
    reg [WL-2:0] quotient_s1, quotient_s1_r, quotient_s2, quotient_s2_r, quotient_s3, quotient_s3_r, quotient_s4, quotient_s4_r, quotient_s5, quotient_s5_r, quotient_s6, quotient_s6_r, quotient_s7;// IWL-1 bit for integer, FWL bit for fraction
    
    assign saturate_s1 = (divisor_s1 <= IN_MIN );
    assign sign_s1 = (in < 0);
    assign divisor_s1 = (in >= 0)? in : -in ;
    integer i;

    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            {sign_s2, sign_s3, sign_s4, sign_s5, sign_s6, sign_s7} <= 0;
            {saturate_s2, saturate_s3,saturate_s4, saturate_s5, saturate_s6, saturate_s7} <= 0;
            {divisor_s2, divisor_s3, divisor_s4, divisor_s5, divisor_s6, divisor_s7} <=0;
            {dividend_s1_r, dividend_s2_r, dividend_s3_r ,dividend_s4_r, dividend_s5_r, dividend_s6_r} <= 0;
            {quotient_s1_r, quotient_s2_r, quotient_s3_r, quotient_s4_r, quotient_s5_r, quotient_s6_r} <= 0;
        end
        else begin
            {sign_s2, sign_s3, sign_s4, sign_s5, sign_s6, sign_s7} <= {sign_s1, sign_s2, sign_s3, sign_s4, sign_s5, sign_s6}; 
            {saturate_s2, saturate_s3,saturate_s4, saturate_s5, saturate_s6, saturate_s7} <= {saturate_s1 ,saturate_s2, saturate_s3,saturate_s4, saturate_s5, saturate_s6};
            {divisor_s2, divisor_s3, divisor_s4, divisor_s5, divisor_s6, divisor_s7} <= {divisor_s1, divisor_s2, divisor_s3, divisor_s4, divisor_s5, divisor_s6};
            dividend_s1_r <= dividend_s1; dividend_s2_r <= dividend_s2; dividend_s3_r <= dividend_s3; 
            dividend_s4_r <= dividend_s4; dividend_s5_r <= dividend_s5; dividend_s6_r <= dividend_s6; 
            quotient_s1_r <= quotient_s1; quotient_s2_r <= quotient_s2; quotient_s3_r <= quotient_s3; 
            quotient_s4_r <= quotient_s4; quotient_s5_r <= quotient_s5; quotient_s6_r <= quotient_s6; 
        end
    end
    
    // Stage 1
    always @(*) begin
        dividend_s1 = 1 << (FWL-IWL+2);
        quotient_s1 = 0;
        //division
        for (i = WL-2; i >= 17; i = i-1)begin
            if (dividend_s1 >= divisor_s1)begin
                dividend_s1 = dividend_s1 - divisor_s1;
                quotient_s1[i] = 1;
            end
            dividend_s1 = dividend_s1<<1;
        end
    end
    // Stage 2
    always @(*) begin
        dividend_s2 = dividend_s1_r;
        quotient_s2 = quotient_s1_r;
        //division
        for (i = 16; i >= 14; i = i-1)begin
            if (dividend_s2 >= divisor_s2)begin
                dividend_s2 = dividend_s2 - divisor_s2;
                quotient_s2[i] = 1;
            end
            dividend_s2 = dividend_s2<<1;
        end
    end
    // Stage 3
    always @(*) begin
        dividend_s3 = dividend_s2_r;
        quotient_s3 = quotient_s2_r;
        //division
        for (i = 13; i >= 11; i = i-1)begin
            if (dividend_s3 >= divisor_s3)begin
                dividend_s3 = dividend_s3 - divisor_s3;
                quotient_s3[i] = 1;
            end
            dividend_s3 = dividend_s3<<1;
        end
    end
    // Stage 4
    always @(*) begin
        dividend_s4 = dividend_s3_r;
        quotient_s4 = quotient_s3_r;
        //division
        for (i = 10; i >= 8; i = i-1)begin
            if (dividend_s4 >= divisor_s4)begin
                dividend_s4 = dividend_s4 - divisor_s4;
                quotient_s4[i] = 1;
            end
            dividend_s4 = dividend_s4<<1;
        end
    end
    // Stage 5
    always @(*) begin
        dividend_s5 = dividend_s4_r;
        quotient_s5 = quotient_s4_r;
        //division
        for (i = 7; i >= 5; i = i-1)begin
            if (dividend_s5 >= divisor_s5)begin
                dividend_s5 = dividend_s5 - divisor_s5;
                quotient_s5[i] = 1;
            end
            dividend_s5 = dividend_s5<<1;
        end
    end
    // Stage 6
    always @(*) begin
        dividend_s6 = dividend_s5_r;
        quotient_s6 = quotient_s5_r;
        //division
        for (i = 4; i >= 2; i = i-1)begin
            if (dividend_s6 >= divisor_s6)begin
                dividend_s6 = dividend_s6 - divisor_s6;
                quotient_s6[i] = 1;
            end
            dividend_s6 = dividend_s6<<1;
        end
    end
    // Stage 7
    always @(*) begin
        dividend_s7 = dividend_s6_r;
        quotient_s7 = quotient_s6_r;
        //division
        for (i =1 ; i >= 0; i = i-1)begin
            if (dividend_s7 >= divisor_s7)begin
                dividend_s7 = dividend_s7 - divisor_s7;
                quotient_s7[i] = 1;
            end
            dividend_s7 = dividend_s7<<1;
        end
            
        //process sign
        case({saturate_s7,sign_s7})
            2'b00:out = quotient_s7;
            2'b01:out = -quotient_s7;
            2'b10:out = {1'b0, {(FWL+IWL-1){1'b1}}};
            2'b11:out = 1<<(FWL+IWL-1);
        endcase
    end
endmodule

module back_sub_main #(
        parameter IWL = 5,
        parameter FWL = 15
    )(
        input  wire                         clk,
        input  wire                         rst_n,

        // Reciprocals of diagonal R
        input  wire signed [IWL+FWL-1:0]    R11_recip,
        input  wire signed [IWL+FWL-1:0]    R22_recip,
        input  wire signed [IWL+FWL-1:0]    R33_recip,
        input  wire signed [IWL+FWL-1:0]    R44_recip,

        // Upper‑triangular off‑diagonal R elements
        input  wire signed [IWL+FWL-1:0]    R12,
        input  wire signed [IWL+FWL-1:0]    R13,
        input  wire signed [IWL+FWL-1:0]    R14,
        input  wire signed [IWL+FWL-1:0]    R23,
        input  wire signed [IWL+FWL-1:0]    R24,
        input  wire signed [IWL+FWL-1:0]    R34,

        // z vector
        input  wire signed [IWL+FWL-1:0]    z1_,
        input  wire signed [IWL+FWL-1:0]    z2_,
        input  wire signed [IWL+FWL-1:0]    z3_,
        input  wire signed [IWL+FWL-1:0]    z4_,

        input  wire                         in_valid,

        output                              out_valid,
        output reg  signed [IWL+FWL-1:0]    x1_,
        output reg  signed [IWL+FWL-1:0]    x2_,
        output reg  signed [IWL+FWL-1:0]    x3_,
        output reg  signed [IWL+FWL-1:0]    x4_
    );

    localparam WL = IWL + FWL;


    // R11_recip,   R11 R11       R11    R11       R11    R11               
    // R22_recip,   R22 R22       R22    R22        
    // R33_recip,   R33 R33       
    // R44_recip
    // R12          R12 R12       R12    R12       R12
    // R13          R13 R13       R13    x3R13     x3R13                     
    // R14          R14 x4R14     x4R14  x4R14     x4R14  x4R14
    // R23          R23 R23       R23    
    // R24          R24 x4R24     x4R24  x4R24
    // R34          R34 
    // z1_          z1_ z1_       z1_    z1_        z1_   z1_-x3R13-x2*R12  
    // z2_          z2_ z2_       z2_    z2-x3R23
    // z3_          z3_ z3-x4r34
    //              x4, x4        x4     x4         x4    x4                  x4
    //                 
    //                            x3     x3         x3    x3                  x3
    //                                              x2    x2                  x2
    //                                                                        x1
                                                                            
    reg [7:1]in_v; 
    always @(posedge clk , negedge rst_n) begin
        if(!rst_n)begin
            in_v <= 0;
        end
        else begin
            in_v <= {in_v[6:1], in_valid};
        end
    end
    assign out_valid = in_v[7];
    // ------------------------------------------------------------------
    // Stage‑0 : uses current inputs (z4_, R44_recip)
    // ------------------------------------------------------------------

    // pipelined registers
    reg signed [WL-1:0] R11_s0,R22_s0,R33_s0, R12_s0, R13_s0, R14_s0, R23_s0, R24_s0, R34_s0, z1_s0, z2_s0, z3_s0,x4_s0;
    wire signed [WL-1:0] prod_R44z4;
    fi_mul #(.IWL(IWL), .FWL(FWL)) mul_R44z4 ( .in1(R44_recip), .in2(z4_), .out(prod_R44z4) );
    always @(posedge clk, negedge rst_n ) begin
        if(!rst_n)begin
            {R11_s0,R22_s0,R33_s0, R12_s0, R13_s0, R14_s0, R23_s0, R24_s0, R34_s0, z1_s0, z2_s0, z3_s0,x4_s0} <= 0;
        end 
        else begin
            R11_s0 <= R11_recip;
            R22_s0 <= R22_recip;
            R33_s0 <= R33_recip;
            R12_s0 <= R12;
            R13_s0 <= R13;
            R14_s0 <= R14;
            R23_s0 <= R23;
            R24_s0 <= R24;
            R34_s0 <= R34;
            z1_s0 <= z1_;
            z2_s0 <= z2_;
            z3_s0 <= z3_;
            x4_s0 <= prod_R44z4;
        end
    end
    
    // ------------------------------------------------------------------
    // Stage‑1 : uses s0 registers (z3_s0, R34_s0, R14_s0, R24_s0)
    // ------------------------------------------------------------------
    reg signed [WL-1:0]  R11_s1,R22_s1,R33_s1, R12_s1, R13_s1, x4R14_s1, R23_s1, x4R24_s1,  z1_s1, z2_s1, z3_diff_x4R34_s1, x4_s1;
    wire signed [WL-1:0] prod_x4R14, prod_x4R24, prod_x4R34;
    fi_mul #(.IWL(IWL), .FWL(FWL)) mul_x4R14 ( .in1(x4_s0), .in2(R14_s0), .out(prod_x4R14) );
    fi_mul #(.IWL(IWL), .FWL(FWL)) mul_x4R24 ( .in1(x4_s0), .in2(R24_s0), .out(prod_x4R24) );
    fi_mul #(.IWL(IWL), .FWL(FWL)) mul_x4R34 ( .in1(x4_s0), .in2(R34_s0), .out(prod_x4R34) );

    always @(posedge clk, negedge rst_n ) begin
        if(!rst_n)begin
            {R11_s1, R22_s1, R33_s1, R12_s1, R13_s1, x4R14_s1, R23_s1, x4R24_s1,  z1_s1, z2_s1, z3_diff_x4R34_s1, x4_s1} <= 0;
        end 
        else begin
            R11_s1 <= R11_s0;
            R22_s1 <= R22_s0;
            R33_s1 <= R33_s0;
            R12_s1 <= R12_s0;
            R13_s1 <= R13_s0;
            x4R14_s1 <= prod_x4R14;
            R23_s1 <= R23_s0;
            x4R24_s1 <= prod_x4R24;
            z1_s1 <= z1_s0;
            z2_s1 <= z2_s0;
            z3_diff_x4R34_s1 <= z3_s0 - prod_x4R34;
            x4_s1 <= x4_s0;
        end
    end
    // ------------------------------------------------------------------
    // Stage‑2 : uses s1 registers (R33_s1, z3_diff_x4R34_s1)
    // ------------------------------------------------------------------
    reg signed [WL-1:0]  R11_s2, R22_s2, R12_s2, R13_s2, x4R14_s2, R23_s2, x4R24_s2,  z1_s2, z2_s2, x4_s2, x3_s2;
    wire signed[WL-1:0] prod_x3;
    fi_mul #(.IWL(IWL), .FWL(FWL)) mul_x3 ( .in1(R33_s1), .in2(z3_diff_x4R34_s1), .out(prod_x3) );
    always @(posedge clk, negedge rst_n ) begin
        if(!rst_n)begin
            {R11_s2, R22_s2, R12_s2, R13_s2, x4R14_s2, R23_s2, x4R24_s2,  z1_s2, z2_s2, x4_s2, x3_s2} <= 0; 
        end 
        else begin
            R11_s2 <= R11_s1;
            R22_s2 <= R22_s1;
            R12_s2 <= R12_s1;
            R13_s2 <= R13_s1;
            x4R14_s2 <= x4R14_s1;
            R23_s2 <= R23_s1;
            x4R24_s2 <= x4R24_s1;
            z1_s2 <= z1_s1;
            z2_s2 <= z2_s1;
            x4_s2 <= x4_s1;
            x3_s2 <= prod_x3;
        end
    end

    // ------------------------------------------------------------------
    // Stage‑3 : uses s2 registers (x3_s2, z2_s2, R23_s2, R13_s2)
    // ------------------------------------------------------------------
    
    reg signed [WL-1:0] R11_s3, R22_s3, R12_s3, x3R13_s3, x4R14_s3, x4R24_s3, z1_s3, z2_diff_x3R23_s3, x4_s3, x3_s3;
    wire signed [WL-1:0] prod_x3R23, prod_x3R13;

    fi_mul #(.IWL(IWL), .FWL(FWL)) mul_x3R13 (.in1(x3_s2), .in2(R13_s2), .out(prod_x3R13));
    fi_mul #(.IWL(IWL), .FWL(FWL)) mul_x3R23 (.in1(x3_s2), .in2(R23_s2), .out(prod_x3R23));

    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            {R11_s3, R22_s3, R12_s3, x3R13_s3, x4R14_s3, x4R24_s3, z1_s3, z2_diff_x3R23_s3, x4_s3, x3_s3} <= 0;
        end else begin
            R11_s3 <= R11_s2;
            R22_s3 <= R22_s2;
            R12_s3<= R12_s2;
            x3R13_s3 <= prod_x3R13;
            x4R14_s3 <= x4R14_s2;
            x4R24_s3 <= x4R24_s2;
            
            z1_s3 <= z1_s2;
            z2_diff_x3R23_s3 <= z2_s2 - prod_x3R23;
            x4_s3 <= x4_s2;
            x3_s3 <= x3_s2;
        end
    end

    
    // ------------------------------------------------------------------
    // Stage‑4 : uses s3 registers (z2_diff_x3R23_s3, R22_s3)
    // ------------------------------------------------------------------
    reg  signed [WL-1:0] R11_s4, R12_s4, x3R13_s4, x4R14_s4,  z1_s4,  x4_s4, x3_s4, x2_s4;
    wire signed [WL-1:0] prod_x2, x2_diff_tmp;
    assign x2_diff_tmp = z2_diff_x3R23_s3 - x4R24_s3;
    fi_mul #(.IWL(IWL), .FWL(FWL)) mul_x2 (.in1(R22_s3), .in2(x2_diff_tmp), .out(prod_x2));
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            {R11_s4, R12_s4, x3R13_s4, x4R14_s4,  z1_s4,  x4_s4, x3_s4, x2_s4} <= 0;
        end else begin
            R11_s4 <= R11_s3;
            R12_s4 <= R12_s3;
            x3R13_s4 <= x3R13_s3;
            x4R14_s4 <= x4R14_s3;
            z1_s4 <= z1_s3;
            x4_s4 <= x4_s3;
            x3_s4 <= x3_s3;
            x2_s4 <= prod_x2;
        end
    end

    // ------------------------------------------------------------------
    // Stage‑5 : uses s4 registers (R12_s4, x3R13_s4, z1_s4)
    // ------------------------------------------------------------------
    reg  signed [WL-1:0] R11_s5,  x4R14_s5,  z1_diff_x3R13_x2R12_s5,  x4_s5, x3_s5, x2_s5;
    wire signed [WL-1:0] prod_x2R12;
    fi_mul #(.IWL(IWL), .FWL(FWL)) mul_x2R12 (.in1(x2_s4), .in2(R12_s4), .out(prod_x2R12));

    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            {R11_s5,  x4R14_s5,  z1_diff_x3R13_x2R12_s5,  x4_s5, x3_s5, x2_s5} <= 0;
        end else begin
            R11_s5 <= R11_s4;
            x4R14_s5 <= x4R14_s4;
            z1_diff_x3R13_x2R12_s5 <= z1_s4 - x3R13_s4 - prod_x2R12;
            x4_s5 <= x4_s4;
            x3_s5 <= x3_s4;
            x2_s5 <= x2_s4;
        end
    end

    // ------------------------------------------------------------------
    // Stage‑6 : uses s5 registers (z1_diff_x3R13_x2R12_s5, x4R14_s5, R11_s5)
    // ------------------------------------------------------------------
    reg  signed [WL-1:0] x4_s6, x3_s6, x2_s6, x1_s6;
    wire signed [WL-1:0] x1_diff_tmp, prod_x1;
    assign x1_diff_tmp = z1_diff_x3R13_x2R12_s5 - x4R14_s5;
    fi_mul #(.IWL(IWL), .FWL(FWL)) mul_x1 (.in1(x1_diff_tmp), .in2(R11_s5), .out(prod_x1));

    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            {x4_s6, x3_s6, x2_s6, x1_s6} <= 0;
        end else begin
            x4_s6 <= x4_s5;
            x3_s6 <= x3_s5;
            x2_s6 <= x2_s5;
            x1_s6 <= prod_x1;
        end
    end

    always @(*) begin
        x1_ = x1_s6;
        x2_ = x2_s6;
        x3_ = x3_s6;
        x4_ = x4_s6;
    end
endmodule

module fi_mul #(
        parameter IWL = 5,
        parameter FWL = 15
    )(
        input  wire signed [IWL+FWL-1:0] in1,
        input  wire signed [IWL+FWL-1:0] in2,
        output wire signed [IWL+FWL-1:0] out
    );
    localparam WIDTH = IWL + FWL;
    wire signed [2*WIDTH-1:0] prod_tmp = in1 * in2;
    assign out = prod_tmp[WIDTH+FWL-1 : FWL];
endmodule


