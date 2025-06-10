function [R_fi,z_fi,x_sol_fi,suggested_cordicIWL,suggested_backsubIWL] = QR_fi( stages, cordicIWL,cordicFWL, ...
                                            backsubIWL,backsubFWL, ...
                                            Amatrix, yvector )
    % stages: CORDIC stages
    % cordicFWL, cordicIWL: fi parameters of 
    % backsubIWL,backsubFWL: fi parameters of back substution
    % A_matrix, y_vector: float vector 4x4 and 4x1
    assert(isa(Amatrix, 'double'), 'Amatrix should be double');
    assert(isequal(size(Amatrix), [4, 4]), 'Amatrix should be 4x4');
    assert(isa(yvector, 'double'), 'yvector should double');
    assert(isequal(size(yvector), [4, 1]), 'yvector 4x1');
    %% Collect all the variable for IWL analysis
    all_cordic_results  = [];
    all_backsub_results = [];
    %% Step1. Following the 6 CORDIC flow to get R matrix and z
    
    A_fi = fi(Amatrix,true,cordicFWL+cordicIWL,cordicFWL);
    y_fi = fi(yvector,true,cordicFWL+cordicIWL,cordicFWL);
    all_cordic_results = [all_cordic_results;double(A_fi(:));double(y_fi(:))];

    R_fi = A_fi;
    z_fi = y_fi;

    verify = false;
    R_v = Amatrix;
    z_v = yvector;
    fi_div_debug = false;
    % CORDIC1 
    % a11 a12 a13 a14 z1 => a11(1) a12(1) a13(1) a14(1) z1(1)
    % a21 a22 a23 a24 z2 => 0      a22(1) a23(1) a24(1) z2(1)
    row1 = [R_fi(1, :) z_fi(1)];
    row2 = [R_fi(2, :) z_fi(2)];
    [x_outs, y_outs] = CORDIC(stages, cordicIWL, cordicFWL, row1, row2);
    all_cordic_results = [all_cordic_results;double(x_outs(:));double(y_outs(:))];

    R_fi(1, :) = x_outs(1:end-1);
    R_fi(2, :) = y_outs(1:end-1);
    z_fi(1)    = x_outs(end);
    z_fi(2)    = y_outs(end);

    % verify
    if verify
        c = R_v(1,1) / sqrt(R_v(1,1)^2+R_v(2,1)^2 );
        s = R_v(2,1) / sqrt(R_v(1,1)^2+R_v(2,1)^2 );
        Rotation = [c s 0 0 ;
                    -s c 0 0 ; 
                    0 0 1 0 ; 
                    0 0 0 1;];
        
        R_v = Rotation * R_v;
        disp("Stage 1 CORDIC")
        
        disp(R_fi)
        disp("Stage 1 rotation")
        disp(R_v)
    end

    % CORDIC 2
    % a11(1) a12(1) a13(1) a14(1) z1(1) => a11(2) a12(2) a13(2) a14(2) z1(2)
    % a31    a32    a33    a34    z3    => 0      a32(1) a33(1) a34(1) z3(1)
    row1 = [R_fi(1, :) z_fi(1)];
    row2 = [R_fi(3, :) z_fi(3)];
    [x_outs, y_outs] = CORDIC(stages, cordicIWL, cordicFWL, row1, row2);
    all_cordic_results = [all_cordic_results;double(x_outs(:));double(y_outs(:))];
    R_fi(1, :) = x_outs(1:end-1);
    R_fi(3, :) = y_outs(1:end-1);
    z_fi(1)    = x_outs(end);
    z_fi(3)    = y_outs(end);

    if verify
        c = R_v(1,1) / sqrt(R_v(1,1)^2+R_v(3,1)^2 );
        s = R_v(3,1) / sqrt(R_v(1,1)^2+R_v(3,1)^2 );
        Rotation = [c 0 s 0 ;
                    0 1 0 0 ; 
                    -s 0 c 0 ; 
                    0 0 0 1;];
        R_v = Rotation * R_v;
        disp("Stage 2 CORDIC")
        disp(R_fi)
        disp("Stage 2 rotation")
        disp(R_v)
    end

    % CORDIC 3
    % a11(2) a12(2) a13(2) a14(2) z1(2) => a11(3) a12(3) a13(3) a14(3) z1(3)
    % a41    a42    a43    a44    z4    => 0      a42(1) a43(1) a44(1) z4(1)
    row1 = [R_fi(1, :) z_fi(1)];
    row2 = [R_fi(4, :) z_fi(4)];
    [x_outs, y_outs] = CORDIC(stages, cordicIWL, cordicFWL, row1, row2);
    all_cordic_results = [all_cordic_results;double(x_outs(:));double(y_outs(:))];

    R_fi(1, :) = x_outs(1:end-1);
    R_fi(4, :) = y_outs(1:end-1);
    z_fi(1)    = x_outs(end);
    z_fi(4)    = y_outs(end);

    if verify

        c = R_v(1,1) / sqrt(R_v(1,1)^2+R_v(4,1)^2 );
        s = R_v(4,1) / sqrt(R_v(1,1)^2+R_v(4,1)^2 );
        Rotation = [c 0 0 s;
                    0 1 0 0 ; 
                    0 0 1 0 ; 
                    -s 0 0 c;];
        R_v = Rotation * R_v;

        disp("Stage 3 CORDIC");
        disp(R_fi)
        disp("Stage 3 rotation");
        disp(R_v)
    end

    % CORDIC 4
    % 0 a22(1) a23(1) a24(1) z2(1) => 0 a22(2) a23(2) a24(2) z2(2)
    % 0 a32(1) a33(1) a34(1) z3(1) => 0 0      a33(2) a34(2) z3(2)
    row1 = [R_fi(2, 2:end) z_fi(2)];
    row2 = [R_fi(3, 2:end) z_fi(3)];
    [x_outs, y_outs] = CORDIC(stages, cordicIWL, cordicFWL, row1, row2);
    all_cordic_results = [all_cordic_results;double(x_outs(:));double(y_outs(:))];
    R_fi(2, 2:end) = x_outs(1:end-1);
    R_fi(3, 2:end) = y_outs(1:end-1);
    z_fi(2)    = x_outs(end);
    z_fi(3)    = y_outs(end);
    if verify

        c = R_v(2,2) / sqrt(R_v(2,2)^2+R_v(3,2)^2 );
        s = R_v(3,2) / sqrt(R_v(2,2)^2+R_v(3,2)^2 );
        Rotation = [1 0 0 0;
                    0 c s 0 ; 
                    0 -s c 0 ; 
                    0 0 0 1;];
        R_v = Rotation * R_v;

        disp("Stage 4 CORDIC");
        disp(R_fi)
        disp("Stage 4 rotation");
        disp(R_v)
    end

    % CORDIC 5
    % 0 a22(2) a23(2) a24(2) z2(2) => 0 a22(3) a23(3) a24(3) z2(3)
    % 0 a42(1) a43(1) a44(1) z4(1) => 0 0      a43(2) a44(2) z4(2)
    row1 = [R_fi(2, 2:end) z_fi(2)];
    row2 = [R_fi(4, 2:end) z_fi(4)];
    [x_outs, y_outs] = CORDIC(stages, cordicIWL, cordicFWL, row1, row2);
    all_cordic_results = [all_cordic_results;double(x_outs(:));double(y_outs(:))];

    R_fi(2, 2:end) = x_outs(1:end-1);
    R_fi(4, 2:end) = y_outs(1:end-1);
    z_fi(2)    = x_outs(end);
    z_fi(4)    = y_outs(end);

    if verify

        c = R_v(2,2) / sqrt(R_v(2,2)^2+R_v(4,2)^2 );
        s = R_v(4,2) / sqrt(R_v(2,2)^2+R_v(4,2)^2 );
        Rotation = [1 0 0 0;
                    0 c 0 s; 
                    0 0 1 0 ; 
                    0 -s 0 c;];
        R_v = Rotation * R_v;

        disp("Stage 5 CORDIC");
        disp(R_fi)
        disp("Stage 5 rotation");
        disp(R_v)
    end

    % CORDIC 6
    % 0 0 a33(2) a34(2) z3(2) => 0 0 a33(3) a34(3) z3(3)
    % 0 0 a43(2) a44(2) z4(2) => 0 0 0      a44(3) z4(3)
    row1 = [R_fi(3, 3:end) z_fi(3)];
    row2 = [R_fi(4, 3:end) z_fi(4)];
    [x_outs, y_outs] = CORDIC(stages, cordicIWL, cordicFWL, row1, row2);
    all_cordic_results = [all_cordic_results;double(x_outs(:));double(y_outs(:))];

    R_fi(3, 3:end) = x_outs(1:end-1);
    R_fi(4, 3:end) = y_outs(1:end-1);
    z_fi(3)    = x_outs(end);
    z_fi(4)    = y_outs(end);    
    
    if verify

        c = R_v(3,3) / sqrt(R_v(3,3)^2+R_v(4,3)^2 );
        s = R_v(4,3) / sqrt(R_v(3,3)^2+R_v(4,3)^2 );
        Rotation = [1 0 0 0;
                    0 1 0 0; 
                    0 0 c s ; 
                    0 0 -s c;];
        R_v = Rotation * R_v;

        disp("Stage 6 CORDIC");
        disp(R_fi)
        disp("Stage 6 rotation");
        disp(R_v);
    end

    %% Step2. Back subsitution z to R to get x
    
    frac_bits = backsubFWL;
    total_bits = backsubIWL+backsubFWL;
    if fi_div_debug
        x_sol_fi = zeros(4,1);
        z_backsub = double(z_fi);
        R_backsub = double(R_fi);
    else    
        x_sol_fi = fi(zeros(4, 1), true, total_bits,frac_bits);
        z_backsub = fi(z_fi,true,total_bits,frac_bits);
        R_backsub = fi(R_fi,true,total_bits,frac_bits);
    end
    
    T =  numerictype('Signed', true,...
    'WordLength', total_bits,...
    'FractionLength', frac_bits);
    all_backsub_results = [all_backsub_results;double(z_backsub(:));double(R_backsub(:))];

    % x4 = z4 / r44;
    x_sol_fi(4) = divide(T,z_backsub(4),R_backsub(4,4));

    % x3 = (z3 - x4 * r34) / r33;
    tmp_ = z_backsub(3) - x_sol_fi(4) * R_backsub(3,4);
    x_sol_fi(3) = divide(T,tmp_,R_backsub(3,3));
    all_backsub_results = [all_backsub_results;double(x_sol_fi(4) * R_backsub(3,4)); double(tmp_) ];

    % x2 = (z2 - x3*r23 - x4*r24) / r22;
    tmp_ = (z_backsub(2) - x_sol_fi(3) * R_backsub(2,3) - x_sol_fi(4) * R_backsub(2,4));
    x_sol_fi(2) = divide(T,tmp_,R_backsub(2,2));
    all_backsub_results = [all_backsub_results; double(x_sol_fi(4) * R_backsub(2,4)); double(x_sol_fi(3) * R_backsub(2,3)); 
                           double( z_backsub(2) - x_sol_fi(3) * R_backsub(2,3)); double(tmp_); ];

    % x1 = (z1 - x2*r12 - x3*r13 - x4*r14) / r11;
    tmp_ = (z_backsub(1) - x_sol_fi(2) * R_backsub(1,2) - x_sol_fi(3) * R_backsub(1,3) - x_sol_fi(4) * R_backsub(1,4));
    x_sol_fi(1) = divide(T,tmp_,R_backsub(1,1));
    all_backsub_results = [all_backsub_results; double(x_sol_fi(2) * R_backsub(1,2)); double(x_sol_fi(3) * R_backsub(1,3)); double(x_sol_fi(4) * R_backsub(1,4)); 
                            double(z_backsub(1) - x_sol_fi(2) * R_backsub(1,2)); double(z_backsub(1) - x_sol_fi(2) * R_backsub(1,2) - x_sol_fi(3) * R_backsub(1,3));
                            double(tmp_); double(x_sol_fi(:))];

    %% Analyze the maximum value of all_cordic_results and all_backsub_results
    max_val = max(abs(all_cordic_results));
    suggested_cordicIWL = ceil(log2(max(max_val,1)))+1;

    max_val = max(abs(all_backsub_results));
    suggested_backsubIWL = ceil(log2(max(max_val,1)))+1;

end

function sn = SN(stages)
    N = stages;
    sn = 1;
    for i = 0:N-1
        sn = sn * sqrt(1 + 2^(-2*i));
    end
    sn = 1/sn;
end

function [x_outs,y_outs] = CORDIC(stages, cordicIWL, cordicFWL, x_ins, y_ins)
    % Rotate the x_ins,and y_ins to x_outs, y_outs such that x_out(1) = 1, y_out(1) = 0

    N = stages; 
    total_bits =  cordicIWL+cordicFWL ; 
    frac_bits =  cordicFWL;
    scale_N_fi = fi(SN(stages),true,total_bits,frac_bits);
    scale_N_csd = fi2csd(scale_N_fi);

    % TODO change too csd representation form
    
    % Decide 
    % atan_table_fi = fi(atan(2.^-(0:N-1)), signed, total_bits, frac_bits); % 1 x N vector

    % Initial stage
    if x_ins(1) < 0
        x_ins = -x_ins;
        y_ins = -y_ins;
    end 
    % CORDIC Loop
    for i = 0:N-1
        %disp(i)
        mu_i = -sign(y_ins(1));
        %disp(mu_i)
        x_new = x_ins - mu_i * bitshift(y_ins, -i);
        y_new = y_ins + mu_i * bitshift(x_ins, -i);

        x_ins = x_new;
        y_ins = y_new;
    end
    
    x_outs = arrayfun(@(xi) csd_multiply(xi, scale_N_csd, cordicIWL,cordicFWL), x_ins); %x_ins * scale_N_fi;
    y_outs = arrayfun(@(yi) csd_multiply(yi, scale_N_csd, cordicIWL,cordicFWL), y_ins);
    y_outs = [0 y_outs(2:end)];
    
end

function csd = fi2csd(x_fi)
    % turn scaling factor into CSD representation.
    assert(x_fi >= 0);
    assert(isfi(x_fi));

    x_str_rev = reverse(bin(x_fi));
    csd_rev = repmat('0',1,length(x_str_rev));

    g_now = 0;
    for i = 1:length(x_str_rev)
        % s_i = b_i xor b_{i-1}
        if i == 1 
            b_last = 0;
        else    
            b_last = x_str_rev(i-1) == '1';
        end
        b_now = x_str_rev(i) == '1';
        s_i = xor(b_last,b_now);

        % g_i = not(g_i-1) and s_i
        g_now = and(not(g_now), s_i);

        % c_i = (1-2(b_i+1)) g_i
        if i == length(x_str_rev)
            b_next = 0;
        else
            b_next = x_str_rev(i+1) == '1';
        end
        c_i = (1-2*b_next)*g_now;

        % Turn value to str
        if c_i == 0 
            csd_rev(i) = '0';
        elseif c_i == 1
            csd_rev(i) = '1';
        elseif c_i == -1
            csd_rev(i) = 'n';
        else
            error('not 0 1 or -1')
        end
    end
    csd = reverse(csd_rev);

end

function result = csd_multiply(x_fi, csd_str, IWL, FWL)
    result = fi(0, true, FWL, FWL+IWL);
    word_len = length(csd_str);

    for i = 1:word_len
        right_shift_amt = i-IWL;
        if csd_str(i) == '1'
            result = result + bitshift(x_fi, -right_shift_amt);
        elseif csd_str(i) == 'n'
            result = result - bitshift(x_fi, -right_shift_amt);
        end
    end
end