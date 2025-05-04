function X = fft8_mdc_complex(x)
    % 8-point FFT using MDC architecture (complex input supported)
    if length(x) ~= 8
        error('Input must be an 8-point vector');
    end
    x = x(:);  % ensure column vector

    N = 8;
    W = exp(-1j * 2 * pi * (0:N/2-1)' / N);  % Twiddle factors: W0 to W3

    %% === Stage 1 ===
    % Commutator: split input
    UI1 = x(1:N/2);
    LI1 = x(N/2+1:N);

    % Butterfly
    UO1 = UI1 + LI1;
    LO1 = (UI1 - LI1) .* W;

    %% === Stage 2 ===
    % Commutator reordering
    UI2 = [UO1(1:2); LO1(1:2)];
    LI2 = [UO1(3:4); LO1(3:4)];

    % Butterfly
    UO2 = UI2 + LI2;
    LO2 = UI2 - LI2;

    % Twiddle multiplication
    LO2([1,3]) = LO2([1,3]) * W(1);  % W1
    LO2([2,4]) = LO2([2,4]) * W(3);  % W3

    %% === Stage 3 ===
    % Commutator reordering
    UI3 = [UO2(1); LO2(1); UO2(3); LO2(3)];
    LI3 = [UO2(2); LO2(2); UO2(4); LO2(4)];

    % Final butterfly
    UO3 = UI3 + LI3;
    LO3 = UI3 - LI3;

    %% === Output reorder ===
    X = zeros(N,1);
    X(1) = UO3(1);
    X(5) = LO3(1);
    X(3) = UO3(2);
    X(7) = LO3(2);
    X(2) = UO3(3);
    X(6) = LO3(3);
    X(4) = UO3(4);
    X(8) = LO3(4);
end
