function [X_stage, Y_stage, Z_stage] = cordic_N_stage(X_fix, Y_fix, N, atan_table_fix, in_int_bitwidth, in_frac_bitwidth, e_angle_int_bitwidth, e_angle_frac_bitwidth)

    X_stage =  fi(zeros(1, N+1), true, in_int_bitwidth + in_frac_bitwidth, in_frac_bitwidth); % (n.w)
    Y_stage =  fi(zeros(1, N+1), true, in_int_bitwidth + in_frac_bitwidth, in_frac_bitwidth);
    Z_stage =  fi(zeros(1, N+1), true, e_angle_int_bitwidth + e_angle_frac_bitwidth, e_angle_frac_bitwidth);

    X_stage(1) = X_fix; % (n.w) <- (2.w)
    Y_stage(1) = Y_fix;
    Z_stage(1) = 0;


    for i = 1:N
        if(Y_stage(i) >= 0) % 根據 Y 來決定方向
            ui = -1;
        else 
            ui = 1;
        end
        % ui = -sign(Y_stage(i));  
        x_shift = fi(X_stage(i) * 2^-(i-1), true, in_int_bitwidth + in_frac_bitwidth , in_frac_bitwidth );% matlab i start from 1
        y_shift = fi(Y_stage(i) * 2^-(i-1), true, in_int_bitwidth + in_frac_bitwidth , in_frac_bitwidth );% matlab i start from 1

        X_stage(i+1) = fi(X_stage(i) - ui * y_shift, true, in_int_bitwidth + in_frac_bitwidth, in_frac_bitwidth);
        Y_stage(i+1) = fi(Y_stage(i) + ui * x_shift, true, in_int_bitwidth + in_frac_bitwidth, in_frac_bitwidth);
        Z_stage(i+1) = fi(Z_stage(i) - ui * atan_table_fix(i), true, e_angle_int_bitwidth + e_angle_frac_bitwidth, e_angle_frac_bitwidth);% 累積旋轉角
         
    end
end