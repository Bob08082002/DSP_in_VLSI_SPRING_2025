function X = fft32_mdc_complex_quant(x, quant_list, frac_bitwidth_stage1, frac_bitwidth_stage2 , frac_bitwidth_stage3, frac_bitwidth_stage4, frac_bitwidth_stage5, frac_bitwidth_twiddle)
    % quant_list = [x1 x2 x3 x4 x5 x6]
    % x1: if stage 1 is quanted
    % x2 ...
    % x5: if stage 5 is quanted
    % x6: if twiddle factor is quanted
    % 32-point FFT using MDC architecture (complex input supported)
    if length(x) ~= 32
        error('Input must be an 32-point vector');
    end
    x = x(:);  % ensure column vector

    N = 32;
    W = exp(-1j * 2 * pi * (0:N/2-1)' / N);  % Twiddle factors: W0 to W15
    if quant_list(6) == 1
        W_fix = fi(W, true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);
    end

    %% === Stage 1 ===
    % Commutator: split input
    UI1 = x(1:N/2);
    LI1 = x(N/2+1:N);
    
    if quant_list(1) == 1
        % quant:
        UI1_fix = fi(UI1, true,  1 + frac_bitwidth_stage1, frac_bitwidth_stage1);
        LI1_fix = fi(LI1, true,  1 + frac_bitwidth_stage1, frac_bitwidth_stage1);
        % Butterfly
        UO1_fix = fi(UI1_fix + LI1_fix, true,  1 + frac_bitwidth_stage1, frac_bitwidth_stage1);
        LO1_fix = fi(UI1_fix - LI1_fix, true,  1 + frac_bitwidth_stage1, frac_bitwidth_stage1);
        % dequant:
        UO1 = double(UO1_fix);
        LO1 = double(LO1_fix);
    else
        UO1 = UI1 + LI1;
        LO1 = UI1 - LI1;
    end
    % Twiddle multiplication
    
    if quant_list(6) == 1
        LO1_fix = fi(LO1, true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   
        LO1_fix = fi(LO1_fix .* W_fix, true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   
        LO1 = double(LO1_fix);
    else
        LO1 = LO1.* W;
    end
    %% === Stage 2 ===
    % Commutator reordering
    UI2 = [UO1(1:8); LO1(1:8)];
    LI2 = [UO1(9:16); LO1(9:16)];

    % Butterfly
    if quant_list(2) == 1
        % quant:
        UI2_fix = fi(UI2, true,  1 + frac_bitwidth_stage2, frac_bitwidth_stage2);
        LI2_fix = fi(LI2, true,  1 + frac_bitwidth_stage2, frac_bitwidth_stage2);
        % Butterfly
        UO2_fix = fi(UI2_fix + LI2_fix, true,  1 + frac_bitwidth_stage2, frac_bitwidth_stage2);
        LO2_fix = fi(UI2_fix - LI2_fix, true,  1 + frac_bitwidth_stage2, frac_bitwidth_stage2);
        % dequant:
        UO2 = double(UO2_fix);
        LO2 = double(LO2_fix);
    else
        UO2 = UI2 + LI2;
        LO2 = UI2 - LI2;
    end

    % Twiddle multiplication
    if quant_list(6) == 1
        LO2_fix = fi(LO2, true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   
        LO2_fix([1,  9]) = fi(LO2_fix([1,  9]) * W_fix(1) , true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   
        LO2_fix([2, 10]) = fi(LO2_fix([2, 10]) * W_fix(3) , true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   
        LO2_fix([3, 11]) = fi(LO2_fix([3, 11]) * W_fix(5) , true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   
        LO2_fix([4, 12]) = fi(LO2_fix([4, 12]) * W_fix(7) , true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   
        LO2_fix([5, 13]) = fi(LO2_fix([5, 13]) * W_fix(9) , true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   
        LO2_fix([6, 14]) = fi(LO2_fix([6, 14]) * W_fix(11), true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   
        LO2_fix([7, 15]) = fi(LO2_fix([7, 15]) * W_fix(13), true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   
        LO2_fix([8, 16]) = fi(LO2_fix([8, 16]) * W_fix(15), true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   
        LO2 = double(LO2_fix);
    else
        LO2([1,  9]) = LO2([1,  9]) * W(1);   % W1
        LO2([2, 10]) = LO2([2, 10]) * W(3);   % W3
        LO2([3, 11]) = LO2([3, 11]) * W(5);   % W5
        LO2([4, 12]) = LO2([4, 12]) * W(7);   % W7
        LO2([5, 13]) = LO2([5, 13]) * W(9);   % W9
        LO2([6, 14]) = LO2([6, 14]) * W(11);  % W11
        LO2([7, 15]) = LO2([7, 15]) * W(13);  % W13
        LO2([8, 16]) = LO2([8, 16]) * W(15);  % W15
    end
    

    %% === Stage 3 ===
    % Commutator reordering
    UI3 = [UO2(1:4); LO2(1:4); UO2(9:12); LO2(9:12)];
    LI3 = [UO2(5:8); LO2(5:8); UO2(13:16); LO2(13:16)];

    % Final butterfly
    if quant_list(3) == 1
        % quant:
        UI3_fix = fi(UI3, true,  1 + frac_bitwidth_stage3, frac_bitwidth_stage3);
        LI3_fix = fi(LI3, true,  1 + frac_bitwidth_stage3, frac_bitwidth_stage3);
        % Butterfly
        UO3_fix = fi(UI3_fix + LI3_fix, true,  1 + frac_bitwidth_stage3, frac_bitwidth_stage3);
        LO3_fix = fi(UI3_fix - LI3_fix, true,  1 + frac_bitwidth_stage3, frac_bitwidth_stage3);
        % dequant:
        UO3 = double(UO3_fix);
        LO3 = double(LO3_fix);
    else
        UO3 = UI3 + LI3;
        LO3 = UI3 - LI3;
    end
    
    % Twiddle multiplication
    if quant_list(6) == 1
        LO3_fix = fi(LO3, true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   
        LO3_fix([1,  5, 9,13]) = fi(LO3_fix([1,  5, 9,13]) * W_fix(1) , true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   

        LO3_fix([2,6, 10,14]) = fi(LO3_fix([2,6, 10,14]) * W_fix(5) , true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   

        LO3_fix([3, 7, 11, 15]) = fi(LO3_fix([3, 7, 11, 15]) * W_fix(9) , true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   
     
        LO3_fix([4, 8, 12, 16]) = fi(LO3_fix([4, 8, 12, 16]) * W_fix(13), true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   

        LO3 = double(LO3_fix);
    else
        LO3([1,  5, 9,13]) = LO3([1,  5, 9,13]) * W(1);   % W1
        LO3([2,6, 10,14]) = LO3([2,6, 10,14]) * W(5);   % W5
        LO3([3, 7, 11, 15]) = LO3([3, 7, 11, 15]) * W(9);   % W9
        LO3([4, 8, 12, 16]) = LO3([4, 8, 12, 16]) * W(13);   % W13
    end


    %% === Stage 4 ===
    % Commutator reordering
    UI4 = [UO3(1:2); LO3(1:2); UO3(5:6); LO3(5:6); UO3(9:10); LO3(9:10); UO3(13:14); LO3(13:14)];
    LI4 = [UO3(3:4); LO3(3:4); UO3(7:8); LO3(7:8); UO3(11:12); LO3(11:12); UO3(15:16); LO3(15:16)];
    
    % Butterfly
    if quant_list(4) == 1
        % quant:
        UI4_fix = fi(UI4, true,  1 + frac_bitwidth_stage4, frac_bitwidth_stage4);
        LI4_fix = fi(LI4, true,  1 + frac_bitwidth_stage4, frac_bitwidth_stage4);
        % Butterfly
        UO4_fix = fi(UI4_fix + LI4_fix, true,  1 + frac_bitwidth_stage4, frac_bitwidth_stage4);
        LO4_fix = fi(UI4_fix - LI4_fix, true,  1 + frac_bitwidth_stage4, frac_bitwidth_stage4);
        % dequant:
        UO4 = double(UO4_fix);
        LO4 = double(LO4_fix);
    else
        UO4 = UI4 + LI4;
        LO4 = UI4 - LI4;
    end

    
    % Twiddle multiplication
    if quant_list(6) == 1
        LO4_fix = fi(LO4, true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   
        LO4_fix([1, 3, 5, 7, 9, 11, 13, 15]) = fi(LO4_fix([1, 3, 5, 7, 9, 11, 13, 15]) * W_fix(1) , true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   

        LO4_fix([2, 4, 6, 8, 10,12,  14, 16]) = fi(LO4_fix([2, 4, 6, 8, 10,12,  14, 16]) * W_fix(9) , true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);   

        LO4 = double(LO4_fix);
    else
        LO4([1, 3, 5, 7, 9, 11, 13, 15]) = LO4([1, 3, 5, 7, 9, 11, 13, 15]) .* W(1);   % W1
        LO4([2, 4, 6, 8, 10,12,  14, 16]) = LO4([2, 4, 6, 8, 10,12,  14, 16]) .* W(9);  % W9
    end

    %% === Stage 5 ===
    % Final commutator reordering (pairwise)
    UI5 = [UO4(1); LO4(1); UO4(3); LO4(3); UO4(5); LO4(5); UO4(7); LO4(7); UO4(9); LO4(9); UO4(11); LO4(11); UO4(13); LO4(13); UO4(15); LO4(15)];
    LI5 = [UO4(2); LO4(2); UO4(4); LO4(4); UO4(6); LO4(6); UO4(8); LO4(8); UO4(10); LO4(10); UO4(12); LO4(12); UO4(14); LO4(14); UO4(16); LO4(16)];
    
    % Butterfly
    % Butterfly
    if quant_list(5) == 1
        % quant:
        UI5_fix = fi(UI5, true,  1 + frac_bitwidth_stage5, frac_bitwidth_stage5);
        LI5_fix = fi(LI5, true,  1 + frac_bitwidth_stage5, frac_bitwidth_stage5);
        % Butterfly
        UO5_fix = fi(UI5_fix + LI5_fix, true,  1 + frac_bitwidth_stage5, frac_bitwidth_stage5);
        LO5_fix = fi(UI5_fix - LI5_fix, true,  1 + frac_bitwidth_stage5, frac_bitwidth_stage5);
        % dequant:
        UO5 = double(UO5_fix);
        LO5 = double(LO5_fix);
    else
        UO5 = UI5 + LI5;
        LO5 = UI5 - LI5;
    end
    
    %X = [UO5  LO5]; % 16 x 2
    %X = X.'; %  2 x 16
    % No twiddle multiplication needed in final stage
    % Final output: bit-reverse (no need to reorder outside the function)
    X = zeros(32, 1);
    X(1)  = UO5(1);   % 00000 -> 00000
    X(17) = LO5(1);   % 10000

    X(9)  = UO5(2);   % 00001 -> 01000
    X(25) = LO5(2);   % 11000

    X(5)  = UO5(3);   % 00010 -> 00100
    X(21) = LO5(3);   % 10100

    X(13) = UO5(4);   % 00011 -> 01100
    X(29) = LO5(4);   % 11100

    X(3)  = UO5(5);   % 00100 -> 00011
    X(19) = LO5(5);   % 10011

    X(11) = UO5(6);   % 00101 -> 01011
    X(27) = LO5(6);   % 11011

    X(7)  = UO5(7);   % 00110 -> 00111
    X(23) = LO5(7);   % 10111

    X(15) = UO5(8);   % 00111 -> 01111
    X(31) = LO5(8);   % 11111

    X(2)  = UO5(9);   % 01000 -> 00001
    X(18) = LO5(9);   % 10001

    X(10) = UO5(10);  % 01001 -> 01001
    X(26) = LO5(10);  % 11001

    X(6)  = UO5(11);  % 01010 -> 00101
    X(22) = LO5(11);  % 10101

    X(14) = UO5(12);  % 01011 -> 01101
    X(30) = LO5(12);  % 11101

    X(4)  = UO5(13);  % 01100 -> 00011
    X(20) = LO5(13);  % 10011

    X(12) = UO5(14);  % 01101 -> 01011
    X(28) = LO5(14);  % 11011

    X(8)  = UO5(15);  % 01110 -> 00111
    X(24) = LO5(15);  % 10111

    X(16) = UO5(16);  % 01111 -> 01111
    X(32) = LO5(16);  % 11111
end
