function x_m_plusu = parabolic_interpolation_tf32(u, x_m_plus2, x_m_plus1, x_m, x_m_minus1)
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
    % C1 = -1 * alpha * u + alpha * u^2;  %  C(1)
    temp1 = TF32_mul(double_to_tf32(alpha), double_to_tf32(u));
    temp2 = TF32_mul(temp1, double_to_tf32(-1));

    temp3 = TF32_mul(double_to_tf32(alpha), double_to_tf32(u));
    temp4 = TF32_mul(temp3, double_to_tf32(u));

    C1 = TF32_add(temp2, temp4);



    % C0 = 1 + (alpha - 1) * u - alpha * u^2;  %  C(0)
    temp1 = TF32_mul(double_to_tf32(-0.5), double_to_tf32(u));

    temp2 = TF32_mul(double_to_tf32(alpha), double_to_tf32(u));
    temp3 = TF32_mul(temp2, double_to_tf32(u));
    temp4 = TF32_mul(temp3, double_to_tf32(-1));


    C0 = TF32_add(double_to_tf32(1), temp1);
    C0 = TF32_add(C0, temp4);


    % C_1 = (alpha + 1) * u - alpha * u^2; %  C(-1)
    temp1 = TF32_mul(double_to_tf32(1.5), double_to_tf32(u));

    temp2 = TF32_mul(double_to_tf32(alpha), double_to_tf32(u));
    temp3 = TF32_mul(temp2, double_to_tf32(u));
    temp4 = TF32_mul(temp3, double_to_tf32(-1));
    
    C_1 = TF32_add(temp1, temp4);
       
    % C_2 = -1 * alpha * u + alpha * u^2; %  C(-2)
    C_2 = C1;

    % 計算 x(m + μ)
    % x_m_plusu = C1 * x_m_minus1 + C0 * x_m + C_1 * x_m_plus1 + C_2 * x_m_plus2;
    temp1 = TF32_mul(double_to_tf32(x_m_minus1), C1);
    temp2 = TF32_mul(double_to_tf32(x_m), C0);
    temp3 = TF32_mul(double_to_tf32(x_m_plus1), C_1);
    temp4 = TF32_mul(double_to_tf32(x_m_plus2), C_2);

    x_m_plusu = TF32_add(temp1, temp2);
    x_m_plusu = TF32_add(x_m_plusu, temp3);
    x_m_plusu = TF32_add(x_m_plusu, temp4);

    x_m_plusu = tf32_to_double(bin(x_m_plusu));
end