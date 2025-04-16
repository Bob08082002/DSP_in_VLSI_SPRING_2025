///////////////////////////////////
//   Hardware sharing Version    //
///////////////////////////////////
//  piece-wise parabolic interpolator of Farrow structure after hardware reduction


module parabolic_interpolator(
input clk,
input i_rst,
input ValidIn,
input [18:0]IntpIn,
input [18:0]mu,
output ValidOut,
output [18:0]IntpOut
);

reg [18:0] input_x_FF;
reg [18:0] delay_element0, delay_element1, delay_element2;
reg [18:0] input_mu_FF;
reg [18:0] output_FF;
reg valid_in_FF1, valid_in_FF2;
reg [3:0] cnt_r, cnt_w;
reg [3:0] cnt_r_FF1, cnt_r_FF2;
wire [18:0] interconnet [17:0]; // interconnetion

// output
assign ValidOut = valid_in_FF2;
assign IntpOut = output_FF;

// same as matlab
    // temp1 = TF32_mul(x_m_plus2, double_to_tf32(alpha));
	TF32_div2 TF32_div2_u0(interconnet[0], input_x_FF);


    // temp2 = TF32_mul(x_m_plus1, double_to_tf32(alpha));
	TF32_div2 TF32_div2_u1(interconnet[1], delay_element0);
    // temp2_n = toggle_bit_18(temp2);
	TF32_reverse_sign TF32_reverse_sign_u0(interconnet[2], interconnet[1]); 
    
    // temp3 = TF32_mul(x_m, double_to_tf32(alpha));
	TF32_div2 TF32_div2_u2(interconnet[3], delay_element1);
    // temp3_n = toggle_bit_18(temp3);
	TF32_reverse_sign TF32_reverse_sign_u1(interconnet[4], interconnet[3]); 

    // temp4 = TF32_mul(x_m_minus1, double_to_tf32(alpha));
	TF32_div2 TF32_div2_u3(interconnet[5], delay_element2);
    // temp4_n = toggle_bit_18(temp4);
	TF32_reverse_sign TF32_reverse_sign_u2(interconnet[6], interconnet[5]); 



    // --------------- v2 ---------------
    // v2 = TF32_add(temp1, temp2_n);
	TF32_add TF32_add_u0(interconnet[7], interconnet[0], interconnet[2]); 
    // v1_start_n = v2;
	// pass
    // v2 = TF32_add(v2, temp3_n);
	TF32_add TF32_add_u1(interconnet[9], interconnet[7], interconnet[4]); 
    // v2 = TF32_add(v2, temp4);
	TF32_add TF32_add_u2(interconnet[10], interconnet[9], interconnet[5]); 
    
    

    // --------------- v1 ---------------
    // v1 = toggle_bit_18(v1_start_n);	
	TF32_reverse_sign TF32_reverse_sign_u3(interconnet[8], interconnet[7]); 
    // v1 = TF32_add(v1, x_m_plus1);
	TF32_add TF32_add_u3(interconnet[11], interconnet[8], delay_element0); 
    // v1 = TF32_add(v1, temp3_n);
	TF32_add TF32_add_u4(interconnet[12], interconnet[11], interconnet[4]); 
    // v1 = TF32_add(v1, temp4_n);
	TF32_add TF32_add_u5(interconnet[13], interconnet[12], interconnet[6]); 


    // --------------- v0 ---------------
    // v0 = x_m;
	// pass

    
    // --------------- result ---------------
    // x_m_plusu = TF32_mul(v2, u);
	TF32_mul TF32_mul_u0(interconnet[14], interconnet[10], input_mu_FF); 
    // x_m_plusu = TF32_add(x_m_plusu, v1);
	TF32_add TF32_add_u6(interconnet[15], interconnet[14], interconnet[13]); 
    // x_m_plusu = TF32_mul(x_m_plusu, u);
	TF32_mul TF32_mul_u1(interconnet[16], interconnet[15], input_mu_FF); 
    // x_m_plusu = TF32_add(x_m_plusu, v0);
	TF32_add TF32_add_u7(interconnet[17], interconnet[16], delay_element1); 
	
// counter of delay_element
always@(*)begin
	cnt_w = cnt_r;
	if (cnt_r == 8) cnt_w = 0;
	else cnt_w = cnt_r + 1;
end
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		cnt_r <= 0;
		cnt_r_FF1 <= 0;
		cnt_r_FF2 <= 0;
	end
	else begin
		cnt_r <= cnt_w;
		cnt_r_FF1 <= cnt_r;
		cnt_r_FF2 <= cnt_r_FF1;
	end
end

// input_FF and delay_element
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		input_x_FF <= 0;
		input_mu_FF <= 0;
		delay_element0 <= 0;
		delay_element1 <= 0;
		delay_element2 <= 0;
	end
	else begin
		input_x_FF <= IntpIn;
		input_mu_FF <= mu;
		delay_element0 <= (cnt_r_FF2 == 8)? input_x_FF:delay_element0;
		delay_element1 <= (cnt_r_FF2 == 8)? delay_element0:delay_element1;
		delay_element2 <= (cnt_r_FF2 == 8)? delay_element1:delay_element2;
	end
end

// output_FF
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		output_FF <= 0;
	end
	else begin
		output_FF <= interconnet[17];
	end
end


// ValidIn
always@(posedge clk or posedge i_rst)begin
	if(i_rst)begin
		valid_in_FF1 <= 0;
		valid_in_FF2 <= 0;
	end
	else begin
		valid_in_FF1 <= ValidIn;
		valid_in_FF2 <= valid_in_FF1;
	end
end


                                                       
endmodule
