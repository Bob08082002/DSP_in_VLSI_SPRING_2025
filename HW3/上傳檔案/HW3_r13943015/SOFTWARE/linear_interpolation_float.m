function x_m_plusu = linear_interpolation_float(u, x_m_plus1, x_m)
    % --------- input ---------
    % u: mu, fractional delay
    % x_m_plus1: x(m + 1)
    % x_m: x(m)
    % --------- output ---------
    % x_m_plusu: x(m + μ) 
    x_m_plusu = u * x_m_plus1 + (1 - u) * x_m;
end