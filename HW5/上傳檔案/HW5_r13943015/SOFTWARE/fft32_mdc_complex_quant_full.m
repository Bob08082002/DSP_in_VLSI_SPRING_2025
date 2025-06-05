function X = fft32_mdc_complex_quant_full(x)
    
    quant_bitwidth = 10;

    % 32-point FFT using MDC architecture (complex input supported)
    if length(x) ~= 32
        error('Input must be an 32-point vector');
    end
    x = x(:);  % ensure column vector

    N = 32;
    W = exp(-1j * 2 * pi * (0:N/2-1)' / N);  % Twiddle factors: W0 to W15

    W_fix = fi(W, true,  1 + quant_bitwidth, quant_bitwidth);


    %% === Stage 1 ===
    % Commutator: split input
    
        % quant:
        UI1_fix = fi(x(1:N/2), true,  1 + quant_bitwidth, quant_bitwidth);
        LI1_fix = fi(x(N/2+1:N), true,  1 + quant_bitwidth, quant_bitwidth);
        % Butterfly
        UO1_fix = fi(UI1_fix + LI1_fix, true,  1 + quant_bitwidth, quant_bitwidth);
        LO1_fix = fi(UI1_fix - LI1_fix, true,  1 + quant_bitwidth, quant_bitwidth);


    % 先分別轉成 real/imag fi，再組成 complex fi 陣列
        % U_fix_temp = UO1_fix;
        % L_fix_temp = UO1_fix;
        % WL = 1 + quant_bitwidth;
        % U_fix_print = fi(zeros(16,1), true, WL, quant_bitwidth);  % allocate
        % for i = 1:16
        %     re = fi(real(U_fix_temp(i)), true, WL, quant_bitwidth);
        %     im = fi(imag(U_fix_temp(i)), true, WL, quant_bitwidth);
        %     U_fix_print(i) = complex(re, im);
        % end
        % 
        % % 印出結果
        % for i = 1:16
        %     re_fix = real(U_fix_print(i));
        %     im_fix = imag(U_fix_print(i));
        %     fprintf('U_RE[%2d] = %+1.6f (%s), U_IM[%2d] = %+1.6f (%s)\n', ...
        %         i-1, double(re_fix), bin(re_fix), ...
        %         i-1, double(im_fix), bin(im_fix));
        % end
        % % 先分別轉成 real/imag fi，再組成 complex fi 陣列
        % WL = 1 + quant_bitwidth;
        % L_fix_print = fi(zeros(16,1), true, WL, quant_bitwidth);  % allocate
        % for i = 1:16
        %     re = fi(real(L_fix_temp(i)), true, WL, quant_bitwidth);
        %     im = fi(imag(L_fix_temp(i)), true, WL, quant_bitwidth);
        %     L_fix_print(i) = complex(re, im);
        % end
        % 
        % % 印出結果
        % for i = 1:16
        %     re_fix = real(L_fix_print(i));
        %     im_fix = imag(L_fix_print(i));
        %     fprintf('L_RE[%2d] = %+1.6f (%s), L_IM[%2d] = %+1.6f (%s)\n', ...
        %         i-1, double(re_fix), bin(re_fix), ...
        %         i-1, double(im_fix), bin(im_fix));
        % end


    % Twiddle multiplication
        % W_fix_temp = W_fix;
        % WL = 1 + quant_bitwidth;
        % U_fix_print = fi(zeros(16,1), true, WL, quant_bitwidth);  % allocate
        % for i = 1:16
        %     re = fi(real(W_fix_temp(i)), true, WL, quant_bitwidth);
        %     im = fi(imag(W_fix_temp(i)), true, WL, quant_bitwidth);
        %     U_fix_print(i) = complex(re, im);
        % end
        % 
        % % 印出結果
        % for i = 1:16
        %     re_fix = real(U_fix_print(i));
        %     im_fix = imag(U_fix_print(i));
        %     fprintf('W_RE[%2d] = %+1.6f (%s), W_IM[%2d] = %+1.6f (%s)\n', ...
        %         i-1, double(re_fix), bin(re_fix), ...
        %         i-1, double(im_fix), bin(im_fix));
        % end

        LO1_fix = fi(LO1_fix, true,  1 + quant_bitwidth, quant_bitwidth);   
        LO1_fix = fi(LO1_fix .* W_fix, true,  1 + quant_bitwidth, quant_bitwidth);   





    % % 先分別轉成 real/imag fi，再組成 complex fi 陣列
    %     U_fix_temp = UO1_fix;
    %     L_fix_temp = LO1_fix;
    %     WL = 1 + quant_bitwidth;
    %     U_fix_print = fi(zeros(16,1), true, WL, quant_bitwidth);  % allocate
    %     for i = 1:16
    %         re = fi(real(U_fix_temp(i)), true, WL, quant_bitwidth);
    %         im = fi(imag(U_fix_temp(i)), true, WL, quant_bitwidth);
    %         U_fix_print(i) = complex(re, im);
    %     end
    % 
    %     % 印出結果
    %     for i = 1:16
    %         re_fix = real(U_fix_print(i));
    %         im_fix = imag(U_fix_print(i));
    %         fprintf('U_RE[%2d] = %+1.6f (%s), U_IM[%2d] = %+1.6f (%s)\n', ...
    %             i-1, double(re_fix), bin(re_fix), ...
    %             i-1, double(im_fix), bin(im_fix));
    %     end
    %     % 先分別轉成 real/imag fi，再組成 complex fi 陣列
    %     WL = 1 + quant_bitwidth;
    %     L_fix_print = fi(zeros(16,1), true, WL, quant_bitwidth);  % allocate
    %     for i = 1:16
    %         re = fi(real(L_fix_temp(i)), true, WL, quant_bitwidth);
    %         im = fi(imag(L_fix_temp(i)), true, WL, quant_bitwidth);
    %         L_fix_print(i) = complex(re, im);
    %     end
    % 
    %     % 印出結果
    %     for i = 1:16
    %         re_fix = real(L_fix_print(i));
    %         im_fix = imag(L_fix_print(i));
    %         fprintf('L_RE[%2d] = %+1.6f (%s), L_IM[%2d] = %+1.6f (%s)\n', ...
    %             i-1, double(re_fix), bin(re_fix), ...
    %             i-1, double(im_fix), bin(im_fix));
    %     end

        
    %% === Stage 2 ===
    % Commutator reordering
    UI2 = [UO1_fix(1:8); LO1_fix(1:8)];
    LI2 = [UO1_fix(9:16); LO1_fix(9:16)];

    % Butterfly

        % quant:
        UI2_fix = fi(UI2, true,  1 + quant_bitwidth, quant_bitwidth);
        LI2_fix = fi(LI2, true,  1 + quant_bitwidth, quant_bitwidth);
        % Butterfly
        UO2_fix = fi(UI2_fix + LI2_fix, true,  1 + quant_bitwidth, quant_bitwidth);
        LO2_fix = fi(UI2_fix - LI2_fix, true,  1 + quant_bitwidth, quant_bitwidth);



    % Twiddle multiplication

        LO2_fix = fi(LO2_fix, true,  1 + quant_bitwidth, quant_bitwidth);   
        LO2_fix([1,  9]) = fi(LO2_fix([1,  9]) * W_fix(1) , true,  1 + quant_bitwidth, quant_bitwidth);   
        LO2_fix([2, 10]) = fi(LO2_fix([2, 10]) * W_fix(3) , true,  1 + quant_bitwidth, quant_bitwidth);   
        LO2_fix([3, 11]) = fi(LO2_fix([3, 11]) * W_fix(5) , true,  1 + quant_bitwidth, quant_bitwidth);   
        LO2_fix([4, 12]) = fi(LO2_fix([4, 12]) * W_fix(7) , true,  1 + quant_bitwidth, quant_bitwidth);   
        LO2_fix([5, 13]) = fi(LO2_fix([5, 13]) * W_fix(9) , true,  1 + quant_bitwidth, quant_bitwidth);   
        LO2_fix([6, 14]) = fi(LO2_fix([6, 14]) * W_fix(11), true,  1 + quant_bitwidth, quant_bitwidth);   
        LO2_fix([7, 15]) = fi(LO2_fix([7, 15]) * W_fix(13), true,  1 + quant_bitwidth, quant_bitwidth);   
        LO2_fix([8, 16]) = fi(LO2_fix([8, 16]) * W_fix(15), true,  1 + quant_bitwidth, quant_bitwidth);   
  
    

    %% === Stage 3 ===
    % Commutator reordering
    UI3 = [UO2_fix(1:4); LO2_fix(1:4); UO2_fix(9:12); LO2_fix(9:12)];
    LI3 = [UO2_fix(5:8); LO2_fix(5:8); UO2_fix(13:16); LO2_fix(13:16)];

    % Final butterfly

        % quant:
        UI3_fix = fi(UI3, true,  1 + quant_bitwidth, quant_bitwidth);
        LI3_fix = fi(LI3, true,  1 + quant_bitwidth, quant_bitwidth);
        % Butterfly
        UO3_fix = fi(UI3_fix + LI3_fix, true,  1 + quant_bitwidth, quant_bitwidth);
        LO3_fix = fi(UI3_fix - LI3_fix, true,  1 + quant_bitwidth, quant_bitwidth);

    
    % Twiddle multiplication

        LO3_fix = fi(LO3_fix, true,  1 + quant_bitwidth, quant_bitwidth);   
        LO3_fix([1,  5, 9,13]) = fi(LO3_fix([1,  5, 9,13]) * W_fix(1) , true,  1 + quant_bitwidth, quant_bitwidth);   

        LO3_fix([2,6, 10,14]) = fi(LO3_fix([2,6, 10,14]) * W_fix(5) , true,  1 + quant_bitwidth, quant_bitwidth);   

        LO3_fix([3, 7, 11, 15]) = fi(LO3_fix([3, 7, 11, 15]) * W_fix(9) , true,  1 + quant_bitwidth, quant_bitwidth);   
     
        LO3_fix([4, 8, 12, 16]) = fi(LO3_fix([4, 8, 12, 16]) * W_fix(13), true,  1 + quant_bitwidth, quant_bitwidth);   

 


    %% === Stage 4 ===
    % Commutator reordering
    UI4 = [UO3_fix(1:2); LO3_fix(1:2); UO3_fix(5:6); LO3_fix(5:6); UO3_fix(9:10); LO3_fix(9:10); UO3_fix(13:14); LO3_fix(13:14)];
    LI4 = [UO3_fix(3:4); LO3_fix(3:4); UO3_fix(7:8); LO3_fix(7:8); UO3_fix(11:12); LO3_fix(11:12); UO3_fix(15:16); LO3_fix(15:16)];
    
    % Butterfly

        % quant:
        UI4_fix = fi(UI4, true,  1 + quant_bitwidth, quant_bitwidth);
        LI4_fix = fi(LI4, true,  1 + quant_bitwidth, quant_bitwidth);
        % Butterfly
        UO4_fix = fi(UI4_fix + LI4_fix, true,  1 + quant_bitwidth, quant_bitwidth);
        LO4_fix = fi(UI4_fix - LI4_fix, true,  1 + quant_bitwidth, quant_bitwidth);


    
    % Twiddle multiplication

        LO4_fix = fi(LO4_fix, true,  1 + quant_bitwidth, quant_bitwidth);   
        LO4_fix([1, 3, 5, 7, 9, 11, 13, 15]) = fi(LO4_fix([1, 3, 5, 7, 9, 11, 13, 15]) * W_fix(1) , true,  1 + quant_bitwidth, quant_bitwidth);   

        LO4_fix([2, 4, 6, 8, 10,12,  14, 16]) = fi(LO4_fix([2, 4, 6, 8, 10,12,  14, 16]) * W_fix(9) , true,  1 + quant_bitwidth, quant_bitwidth);   

    
    % % 先分別轉成 real/imag fi，再組成 complex fi 陣列
    %     U_fix_temp = UO4_fix;
    %     L_fix_temp = LO4_fix;
    %     WL = 1 + quant_bitwidth;
    %     U_fix_print = fi(zeros(16,1), true, WL, quant_bitwidth);  % allocate
    %     for i = 1:16
    %         re = fi(real(U_fix_temp(i)), true, WL, quant_bitwidth);
    %         im = fi(imag(U_fix_temp(i)), true, WL, quant_bitwidth);
    %         U_fix_print(i) = complex(re, im);
    %     end
    % 
    %     % 印出結果
    %     for i = 1:16
    %         re_fix = real(U_fix_print(i));
    %         im_fix = imag(U_fix_print(i));
    %         fprintf('U_RE[%2d] = %+1.6f (%s), U_IM[%2d] = %+1.6f (%s)\n', ...
    %             i-1, double(re_fix), bin(re_fix), ...
    %             i-1, double(im_fix), bin(im_fix));
    %     end
    %     % 先分別轉成 real/imag fi，再組成 complex fi 陣列
    %     WL = 1 + quant_bitwidth;
    %     L_fix_print = fi(zeros(16,1), true, WL, quant_bitwidth);  % allocate
    %     for i = 1:16
    %         re = fi(real(L_fix_temp(i)), true, WL, quant_bitwidth);
    %         im = fi(imag(L_fix_temp(i)), true, WL, quant_bitwidth);
    %         L_fix_print(i) = complex(re, im);
    %     end
    % 
    %     % 印出結果
    %     for i = 1:16
    %         re_fix = real(L_fix_print(i));
    %         im_fix = imag(L_fix_print(i));
    %         fprintf('L_RE[%2d] = %+1.6f (%s), L_IM[%2d] = %+1.6f (%s)\n', ...
    %             i-1, double(re_fix), bin(re_fix), ...
    %             i-1, double(im_fix), bin(im_fix));
    %     end

    %% === Stage 5 ===
    % Final commutator reordering (pairwise)
    UI5 = [UO4_fix(1); LO4_fix(1); UO4_fix(3); LO4_fix(3); UO4_fix(5); LO4_fix(5); UO4_fix(7); LO4_fix(7); UO4_fix(9); LO4_fix(9); UO4_fix(11); LO4_fix(11); UO4_fix(13); LO4_fix(13); UO4_fix(15); LO4_fix(15)];
    LI5 = [UO4_fix(2); LO4_fix(2); UO4_fix(4); LO4_fix(4); UO4_fix(6); LO4_fix(6); UO4_fix(8); LO4_fix(8); UO4_fix(10); LO4_fix(10); UO4_fix(12); LO4_fix(12); UO4_fix(14); LO4_fix(14); UO4_fix(16); LO4_fix(16)];
    
    % Butterfly
    % Butterfly

        % quant:
        UI5_fix = fi(UI5, true,  1 + quant_bitwidth, quant_bitwidth);
        LI5_fix = fi(LI5, true,  1 + quant_bitwidth, quant_bitwidth);
        % Butterfly
        UO5_fix = fi(UI5_fix + LI5_fix, true,  1 + quant_bitwidth, quant_bitwidth);
        LO5_fix = fi(UI5_fix - LI5_fix, true,  1 + quant_bitwidth, quant_bitwidth);
    
        % % 先分別轉成 real/imag fi，再組成 complex fi 陣列
        % WL = 1 + quant_bitwidth;
        % UO5_fix_print = fi(zeros(16,1), true, WL, quant_bitwidth);  % allocate
        % for i = 1:16
        %     re = fi(real(UO5_fix(i)), true, WL, quant_bitwidth);
        %     im = fi(imag(UO5_fix(i)), true, WL, quant_bitwidth);
        %     UO5_fix_print(i) = complex(re, im);
        % end
        % 
        % % 印出結果
        % for i = 1:16
        %     re_fix = real(UO5_fix_print(i));
        %     im_fix = imag(UO5_fix_print(i));
        %     fprintf('UO5_RE[%2d] = %+1.6f (%s), UO5_IM[%2d] = %+1.6f (%s)\n', ...
        %         i-1, double(re_fix), bin(re_fix), ...
        %         i-1, double(im_fix), bin(im_fix));
        % end
        % % 先分別轉成 real/imag fi，再組成 complex fi 陣列
        % WL = 1 + quant_bitwidth;
        % LO5_fix_print = fi(zeros(16,1), true, WL, quant_bitwidth);  % allocate
        % for i = 1:16
        %     re = fi(real(LO5_fix(i)), true, WL, quant_bitwidth);
        %     im = fi(imag(LO5_fix(i)), true, WL, quant_bitwidth);
        %     LO5_fix_print(i) = complex(re, im);
        % end
        % 
        % % 印出結果
        % for i = 1:16
        %     re_fix = real(LO5_fix_print(i));
        %     im_fix = imag(LO5_fix_print(i));
        %     fprintf('LO5_RE[%2d] = %+1.6f (%s), LO5_IM[%2d] = %+1.6f (%s)\n', ...
        %         i-1, double(re_fix), bin(re_fix), ...
        %         i-1, double(im_fix), bin(im_fix));
        % end

    UO5 = double(UO5_fix);
    LO5 = double(LO5_fix);
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
