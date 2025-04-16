function x_m_plusu = parabolic_interpolation_tf32_original(u, x_m_plus2, x_m_plus1, x_m, x_m_minus1)
    % input and output both are tf32 format
    % --------- input ---------
    % u: mu, fractional delay
    % x_m_plus2: x(m + 2)
    % x_m_plus1: x(m + 1)
    % x_m: x(m)
    % x_m_minus1: x(m - 1)
    % --------- output ---------
    % x_m_plusu: x(m + μ) 


    alpha = 0.5;
    % 計算內插係數


    % v2
    temp1 = TF32_mul(x_m_plus2, double_to_tf32(alpha));
    temp2 = TF32_mul(x_m_plus1, double_to_tf32(alpha));
    temp2 = toggle_bit_18(temp2);
    temp3 = TF32_mul(x_m, double_to_tf32(alpha));
    temp3 = toggle_bit_18(temp3);
    temp4 = TF32_mul(x_m_minus1, double_to_tf32(alpha));


    v2 = TF32_add(temp1, temp2);
    v2 = TF32_add(v2, temp3);
    v2 = TF32_add(v2, temp4);

    

    % v1
    temp1 = TF32_mul(x_m_plus2, double_to_tf32(alpha));
    temp1 = toggle_bit_18(temp1);
    temp2 = TF32_mul(x_m_plus1, double_to_tf32(alpha));
    temp3 = TF32_mul(x_m, double_to_tf32(alpha));
    temp3 = toggle_bit_18(temp3);
    temp4 = TF32_mul(x_m_minus1, double_to_tf32(alpha));
    temp4 = toggle_bit_18(temp4);

    v1 = TF32_add(temp1, temp2);
    v1 = TF32_add(v1, x_m_plus1);
    v1 = TF32_add(v1, temp3);
    v1 = TF32_add(v1, temp4);


    % v0
    v0 = x_m;

    
    % result
    x_m_plusu = TF32_mul(v2, u);
    x_m_plusu = TF32_add(x_m_plusu, v1);
    x_m_plusu = TF32_mul(x_m_plusu, u);
    x_m_plusu = TF32_add(x_m_plusu, v0);

end