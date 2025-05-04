function X = fft32_mdc_complex(x)
    % 32-point FFT using MDC architecture (complex input supported)
    if length(x) ~= 32
        error('Input must be an 32-point vector');
    end
    x = x(:);  % ensure column vector

    N = 32;
    W = exp(-1j * 2 * pi * (0:N/2-1)' / N);  % Twiddle factors: W0 to W15

    %% === Stage 1 ===
    % Commutator: split input
    UI1 = x(1:N/2);
    LI1 = x(N/2+1:N);
    
    % Butterfly
    UO1 = UI1 + LI1;
    LO1 = (UI1 - LI1);
    % Twiddle multiplication
    LO1 = LO1.* W;


    %% === Stage 2 ===
    % Commutator reordering
    UI2 = [UO1(1:8); LO1(1:8)];
    LI2 = [UO1(9:16); LO1(9:16)];

    % Butterfly
    UO2 = UI2 + LI2;
    LO2 = UI2 - LI2;
    % Twiddle multiplication
    LO2([1,  9]) = LO2([1,  9]) * W(1);   % W1
    LO2([2, 10]) = LO2([2, 10]) * W(3);   % W3
    LO2([3, 11]) = LO2([3, 11]) * W(5);   % W5
    LO2([4, 12]) = LO2([4, 12]) * W(7);   % W7
    LO2([5, 13]) = LO2([5, 13]) * W(9);   % W9
    LO2([6, 14]) = LO2([6, 14]) * W(11);  % W11
    LO2([7, 15]) = LO2([7, 15]) * W(13);  % W13
    LO2([8, 16]) = LO2([8, 16]) * W(15);  % W15

    %% === Stage 3 ===
    % Commutator reordering
    UI3 = [UO2(1:4); LO2(1:4); UO2(9:12); LO2(9:12)];
    LI3 = [UO2(5:8); LO2(5:8); UO2(13:16); LO2(13:16)];

    % Final butterfly
    UO3 = UI3 + LI3;
    LO3 = UI3 - LI3;
    
    % Twiddle multiplication
    LO3([1,  5, 9,13]) = LO3([1,  5, 9,13]) * W(1);   % W1
    LO3([2,6, 10,14]) = LO3([2,6, 10,14]) * W(5);   % W5
    LO3([3, 7, 11, 15]) = LO3([3, 7, 11, 15]) * W(9);   % W9
    LO3([4, 8, 12, 16]) = LO3([4, 8, 12, 16]) * W(13);   % W13

    %% === Stage 4 ===
    % Commutator reordering
    UI4 = [UO3(1:2); LO3(1:2); UO3(5:6); LO3(5:6); UO3(9:10); LO3(9:10); UO3(13:14); LO3(13:14)];
    LI4 = [UO3(3:4); LO3(3:4); UO3(7:8); LO3(7:8); UO3(11:12); LO3(11:12); UO3(15:16); LO3(15:16)];
    
    % Butterfly
    UO4 = UI4 + LI4;
    LO4 = UI4 - LI4;
    
    % Twiddle multiplication
    LO4([1, 3, 5, 7, 9, 11, 13, 15]) = LO4([1, 3, 5, 7, 9, 11, 13, 15]) .* W(1);   % W1
    LO4([2, 4, 6, 8, 10,12,  14, 16]) = LO4([2, 4, 6, 8, 10,12,  14, 16]) .* W(9);  % W9
    %% === Stage 5 ===
    % Final commutator reordering (pairwise)
    UI5 = [UO4(1); LO4(1); UO4(3); LO4(3); UO4(5); LO4(5); UO4(7); LO4(7); UO4(9); LO4(9); UO4(11); LO4(11); UO4(13); LO4(13); UO4(15); LO4(15)];
    LI5 = [UO4(2); LO4(2); UO4(4); LO4(4); UO4(6); LO4(6); UO4(8); LO4(8); UO4(10); LO4(10); UO4(12); LO4(12); UO4(14); LO4(14); UO4(16); LO4(16)];
    
    % Butterfly
    UO5 = UI5 + LI5;
    LO5 = UI5 - LI5;
    
    X = [UO5  LO5]; % 16 x 2
    X = X.'; %  2 x 16
    % % No twiddle multiplication needed in final stage
    % % Final output: bit-reverse
    % X = zeros(32, 1);
    % X(1)  = UO5(1);   % 00000 -> 00000
    % X(17) = LO5(1);   % 10000
    % 
    % X(9)  = UO5(2);   % 00001 -> 01000
    % X(25) = LO5(2);   % 11000
    % 
    % X(5)  = UO5(3);   % 00010 -> 00100
    % X(21) = LO5(3);   % 10100
    % 
    % X(13) = UO5(4);   % 00011 -> 01100
    % X(29) = LO5(4);   % 11100
    % 
    % X(3)  = UO5(5);   % 00100 -> 00011
    % X(19) = LO5(5);   % 10011
    % 
    % X(11) = UO5(6);   % 00101 -> 01011
    % X(27) = LO5(6);   % 11011
    % 
    % X(7)  = UO5(7);   % 00110 -> 00111
    % X(23) = LO5(7);   % 10111
    % 
    % X(15) = UO5(8);   % 00111 -> 01111
    % X(31) = LO5(8);   % 11111
    % 
    % X(2)  = UO5(9);   % 01000 -> 00001
    % X(18) = LO5(9);   % 10001
    % 
    % X(10) = UO5(10);  % 01001 -> 01001
    % X(26) = LO5(10);  % 11001
    % 
    % X(6)  = UO5(11);  % 01010 -> 00101
    % X(22) = LO5(11);  % 10101
    % 
    % X(14) = UO5(12);  % 01011 -> 01101
    % X(30) = LO5(12);  % 11101
    % 
    % X(4)  = UO5(13);  % 01100 -> 00011
    % X(20) = LO5(13);  % 10011
    % 
    % X(12) = UO5(14);  % 01101 -> 01011
    % X(28) = LO5(14);  % 11011
    % 
    % X(8)  = UO5(15);  % 01110 -> 00111
    % X(24) = LO5(15);  % 10111
    % 
    % X(16) = UO5(16);  % 01111 -> 01111
    % X(32) = LO5(16);  % 11111
end
