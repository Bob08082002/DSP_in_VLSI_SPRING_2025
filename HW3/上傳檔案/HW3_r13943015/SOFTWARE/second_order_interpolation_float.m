function x_m_plusu = second_order_interpolation_float(u, x_m_plus2, x_m_plus1, x_m)
    % --------- input ---------
    % u: mu, fractional delay
    % x_m_plus2: x(m + 2)
    % x_m_plus1: x(m + 1)
    % x_m: x(m)
    % --------- output ---------
    % x_m_plusu: x(m + μ) 

    C0 = (1 - u) * (2 - u) / 2; %  C(0)
    C_1 = u * (2 - u); %  C(-1)
    C_2 = -1 * u * (1 - u) / 2; %  C(-2)

    x_m_plusu = C0 * x_m + C_1 * x_m_plus1 + C_2 * x_m_plus2;
end