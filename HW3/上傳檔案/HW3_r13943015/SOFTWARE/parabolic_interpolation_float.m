function x_m_plusu = parabolic_interpolation_float(u, x_m_plus2, x_m_plus1, x_m, x_m_minus1)
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
    C1 = -1 * alpha * u + alpha * u^2;  %  C(1)
    C0 = 1 + (alpha - 1) * u - alpha * u^2;  %  C(0)
    C_1 = (alpha + 1) * u - alpha * u^2; %  C(-1)
    C_2 = -1 * alpha * u + alpha * u^2; %  C(-2)

    % 計算 x(m + μ)
    x_m_plusu = C1 * x_m_minus1 + C0 * x_m + C_1 * x_m_plus1 + C_2 * x_m_plus2;
end