function [R, angle] = cordic(S, X, Y, N, atan_table, in_int_bitwidth, in_frac_bitwidth, e_angle_int_bitwidth, e_angle_frac_bitwidth, is_use_CSD, S_frac_bitwidth)
    % S is scaling factor
    % calculate R = approx. of sqrt(X^2 + Y^2) using cordic
    % angle = approx. of arctan(Y/X) using cordic
    
    % Quant input To (2.w) fixed point
    X_fix = fi(X, true, 2 + in_frac_bitwidth, in_frac_bitwidth);
    Y_fix = fi(Y, true, 2 + in_frac_bitwidth, in_frac_bitwidth);
    S_fix = fi(S, true, in_int_bitwidth + in_frac_bitwidth, in_frac_bitwidth);
    atan_table_fix = fi(atan_table, true, e_angle_int_bitwidth + e_angle_frac_bitwidth, e_angle_frac_bitwidth);

    % 預處理：將向量轉到第 1 或第 4 象限
    % 因為cordic只支援將 +-99度的(X+jY) rotate回X軸
    if Y_fix >= 0 && X_fix < 0  % 第 2 象限
        X_fix = -X_fix;
        Y_fix = -Y_fix;
        angle_offset = fi(pi, true, e_angle_int_bitwidth + e_angle_frac_bitwidth, e_angle_frac_bitwidth);  % 180°
    elseif Y_fix <= 0 && X_fix < 0  % 第 3 象限
        X_fix = -X_fix;
        Y_fix = -Y_fix;
        angle_offset = fi(-pi, true, e_angle_int_bitwidth + e_angle_frac_bitwidth, e_angle_frac_bitwidth);  % -180°
    else
        angle_offset = 0;
    end
    % 執行 Vectoring Mode
    [X_stage, Y_stage, Z_stage] = cordic_N_stage(X_fix, Y_fix, N, atan_table_fix, in_int_bitwidth, in_frac_bitwidth, e_angle_int_bitwidth, e_angle_frac_bitwidth);

    % 縮放補償
    if is_use_CSD == false
        R = double(fi(X_stage(end) * S_fix, true, in_int_bitwidth + in_frac_bitwidth, in_frac_bitwidth));
    else % USE CSD
        accumulator = fi(0, true, in_int_bitwidth + in_frac_bitwidth, in_frac_bitwidth);
        S_CSD = csdigit(S, 0, S_frac_bitwidth);
        for i = 2:length(S_CSD) % first char is .
            if S_CSD(i) == '+'
                shifted_X = bitsra(X_stage(end), i - 1);
                accumulator = fi(accumulator + shifted_X, true, in_int_bitwidth + in_frac_bitwidth, in_frac_bitwidth);
            elseif S_CSD(i) == '-'
                shifted_X = bitsra(X_stage(end), i - 1);
                accumulator = fi(accumulator - shifted_X, true, in_int_bitwidth + in_frac_bitwidth, in_frac_bitwidth);
            elseif S_CSD(i) == '0'

            else
                disp('CSD SHIFT AND ADD ERROR !')
            end
        end
        % accumulator1 = fi(bitsra(X_stage(end), 1) + bitsra(X_stage(end), 3), true, in_int_bitwidth + in_frac_bitwidth, in_frac_bitwidth);
        % accumulator2 = fi(bitsra(X_stage(end), 9) + bitsra(X_stage(end), 11), true, in_int_bitwidth + in_frac_bitwidth, in_frac_bitwidth);
        % accumulator2 = fi(accumulator2 + bitsra(X_stage(end), 6), true, in_int_bitwidth + in_frac_bitwidth, in_frac_bitwidth);
        % accumulator = fi(accumulator1 - accumulator2, true, in_int_bitwidth + in_frac_bitwidth, in_frac_bitwidth);
        R = double(accumulator);
    end
    % angle = summation of micro-rotation
    angle = double(fi(Z_stage(end) + angle_offset, true, e_angle_int_bitwidth + e_angle_frac_bitwidth, e_angle_frac_bitwidth));

   
end