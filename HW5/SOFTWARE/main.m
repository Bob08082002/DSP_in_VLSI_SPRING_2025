clear;
mode = "report_2";
mode = "report_3";
mode = "";


% Load input from TA (32-sample)
load('./FFTInput32.mat');  % variable `input` is 32x1 complex double
x_time = FFTIn32;

% generate my input (96-sample)
S = [1+1j, 1-1j, -1+1j, -1-1j];
rng(29);  % Fixed seed for reproducibility
A_my_freq = S(randi(4, 96, 1))';  % 96 * 1
x_my_time = [ifft(A_my_freq(1:32)); ifft(A_my_freq(33:64)); ifft(A_my_freq(65:96))]; % 3 symbol



% -------------- 1. apply fft to 'x_time' using 'fft32_mdc_complex' -> X_freq_reorder --------------
X_freq = fft32_mdc_complex(x_time);  % X_freq = [UO5  LO5]'; % 2 x 16

% Step 1: Original indices
even_indices = 0:2:30;  % Row 1
odd_indices  = 1:2:31;  % Row 2

% Step 2: Bit-reverse function
bit_reverse = @(x) bin2dec(fliplr(dec2bin(x,5)));  % 5-bit reverse

% Step 3: Apply bit-reversal
even_bitrev = arrayfun(bit_reverse, even_indices);  % Row 3
odd_bitrev  = arrayfun(bit_reverse, odd_indices);   % Row 4

% Step 4: Combine into 4×16 array
MDC_output_with_freq_indice = [X_freq
                               even_bitrev;
                               odd_bitrev];
% Reorder into 32x1 output based on bit-reversed indices
X_freq_reorder = zeros(32, 1);  % Preallocate
for i = 1:16
    X_freq_reorder(even_bitrev(i) + 1) = X_freq(1, i);  % Even (UO5)
    X_freq_reorder(odd_bitrev(i) + 1)  = X_freq(2, i);  % Odd  (LO5)
end

% -------------- 2. apply fft to 'x_time' using 'built-in fft' -> A_freq --------------
A_freq = fft(x_time);

% -------------- 3. apply fft to 'x_my_time' using 'fft32_mdc_complex' -> X_my_freq_reorder --------------
X_my_freq_reorder = zeros(96, 1);  % Preallocate 3 x 32 = 96 (3 symbol)
for symbol = 0:2
    X_temp = fft32_mdc_complex(x_my_time(1 + symbol * 32 : 32 + symbol * 32));
    % Step 1: Original indices
    even_indices = 0:2:30;  % Row 1
    odd_indices  = 1:2:31;  % Row 2
    % Step 2: Bit-reverse function
    bit_reverse = @(x) bin2dec(fliplr(dec2bin(x,5)));  % 5-bit reverse
    % Step 3: Apply bit-reversal
    even_bitrev = arrayfun(bit_reverse, even_indices);  % Row 3
    odd_bitrev  = arrayfun(bit_reverse, odd_indices);   % Row 4
    % Reorder into 32x1 output based on bit-reversed indices
    X_freq_reorder_temp = zeros(32, 1);  % Preallocate
    for i = 1:16
        X_freq_reorder_temp(even_bitrev(i) + 1) = X_temp(1, i);  % Even (UO5)
        X_freq_reorder_temp(odd_bitrev(i) + 1)  = X_temp(2, i);  % Odd  (LO5)
    end
    X_my_freq_reorder(1 + symbol * 32 : 32 + symbol * 32) = X_freq_reorder_temp;
end


if mode == "report_2"
    % Plot real part
    figure;
    subplot(2,1,1);
    stem(0:31, real(X_freq_reorder), 'filled');
    title('Real Part of X\_freq');
    xlabel('Frequency Index');
    ylabel('Real Value');
    grid on;
    
    % Plot imaginary part
    subplot(2,1,2);
    stem(0:31, imag(X_freq_reorder), 'filled');
    title('Imaginary Part of X\_freq');
    xlabel('Frequency Index');
    ylabel('Imaginary Value');
    grid on;

    % Absolute error for each sample
    abs_error = abs(X_freq_reorder - A_freq);
    % Plot the absolute error
    figure;
    stem(0:31, abs_error, 'filled');
    title('Absolute Error per Sample: |X\_freq_n - A\_freq_n|');
    xlabel('Frequency Index (n)');
    ylabel('Absolute Error');
    grid on;
    
    % Calculate and display average error
    avg_error = mean(abs_error);
    disp(['Average Absolute Error: ', num2str(avg_error)]);
elseif mode == "report_3"
    % ---------------------- stage 1 ----------------------------
    quant_list = [1 0 0 0 0 0 ];
    frac_bitwidths = 7:15;
    sqnr_list = zeros(length(frac_bitwidths), 1);
    idx = 1;
    for frac_bitwidth = frac_bitwidths
        X_my_freq_reorder_quant = zeros(96, 1);
        for symbol = 0:2
            X_my_freq_reorder_quant(1 + symbol * 32 : 32 + symbol * 32) = fft32_mdc_complex_quant(x_my_time(1 + symbol * 32 : 32 + symbol * 32), quant_list, frac_bitwidth, 0,0,0,0,0);
        end
        signal_power = mean(abs(X_my_freq_reorder).^2);
        noise_power = mean(abs(X_my_freq_reorder_quant - X_my_freq_reorder).^2);
        sqnr_list(idx) = 10 * log10(signal_power / noise_power);
        idx = idx + 1;
    end
    figure;
    plot(frac_bitwidths, sqnr_list, '-o', 'LineWidth', 2);
    hold on;
    yline(30, '--r', 'Required SQNR = 30 dB', 'LineWidth', 1.5);
    xlabel('Fractional Bitwidth');
    ylabel('SQNR (dB)');
    title('SQNR vs. Fractional Bitwidth of STAGE 1');
    grid on;
    legend('Measured SQNR', 'Target SQNR = 30 dB', 'Location', 'southeast');
    % choose 10 bit frac for stage 1
    frac_bitwidth_stage1 = 10; 
    % ---------------------- stage 2 ----------------------------
    quant_list = [1 1 0 0 0 0];
    sqnr_list = zeros(length(frac_bitwidths), 1);
    idx = 1;
    for frac_bitwidth = frac_bitwidths
        X_my_freq_reorder_quant = zeros(96, 1);
        for symbol = 0:2
            X_my_freq_reorder_quant(1 + symbol * 32 : 32 + symbol * 32) = fft32_mdc_complex_quant(x_my_time(1 + symbol * 32 : 32 + symbol * 32), quant_list, frac_bitwidth_stage1, frac_bitwidth, 0, 0, 0, 0);
        end
        signal_power = mean(abs(X_my_freq_reorder).^2);
        noise_power = mean(abs(X_my_freq_reorder_quant - X_my_freq_reorder).^2);
        sqnr_list(idx) = 10 * log10(signal_power / noise_power);
        idx = idx + 1;
    end
    figure;
    plot(frac_bitwidths, sqnr_list, '-o', 'LineWidth', 2);
    hold on;
    yline(30, '--r', 'Required SQNR = 30 dB', 'LineWidth', 1.5);
    xlabel('Fractional Bitwidth');
    ylabel('SQNR (dB)');
    title('SQNR vs. Fractional Bitwidth of STAGE 2');
    grid on;
    legend('Measured SQNR', 'Target SQNR = 30 dB', 'Location', 'southeast');
    % choose 10 bit frac for stage 2
    frac_bitwidth_stage2 = 10; 
    % ---------------------- stage3 ----------------------------
    quant_list = [1 1 1 0 0 0];
    sqnr_list = zeros(length(frac_bitwidths), 1);
    idx = 1;
    for frac_bitwidth = frac_bitwidths
        X_my_freq_reorder_quant = zeros(96, 1);
        for symbol = 0:2
            X_my_freq_reorder_quant(1 + symbol * 32 : 32 + symbol * 32) = fft32_mdc_complex_quant(x_my_time(1 + symbol * 32 : 32 + symbol * 32), quant_list, frac_bitwidth_stage1, frac_bitwidth_stage2, frac_bitwidth, 0, 0, 0);
        end
        signal_power = mean(abs(X_my_freq_reorder).^2);
        noise_power = mean(abs(X_my_freq_reorder_quant - X_my_freq_reorder).^2);
        sqnr_list(idx) = 10 * log10(signal_power / noise_power);
        idx = idx + 1;
    end
    figure;
    plot(frac_bitwidths, sqnr_list, '-o', 'LineWidth', 2);
    hold on;
    yline(30, '--r', 'Required SQNR = 30 dB', 'LineWidth', 1.5);
    xlabel('Fractional Bitwidth');
    ylabel('SQNR (dB)');
    title('SQNR vs. Fractional Bitwidth of STAGE 3');
    grid on;
    legend('Measured SQNR', 'Target SQNR = 30 dB', 'Location', 'southeast');
    % choose 10 bit frac for stage 3
    frac_bitwidth_stage3 = 10; 
    % ---------------------- stage4 ----------------------------
    quant_list = [1 1 1 1 0 0];
    sqnr_list = zeros(length(frac_bitwidths), 1);
    idx = 1;
    for frac_bitwidth = frac_bitwidths
        X_my_freq_reorder_quant = zeros(96, 1);
        for symbol = 0:2
            X_my_freq_reorder_quant(1 + symbol * 32 : 32 + symbol * 32) = fft32_mdc_complex_quant(x_my_time(1 + symbol * 32 : 32 + symbol * 32), quant_list, frac_bitwidth_stage1, frac_bitwidth_stage2, frac_bitwidth_stage3, frac_bitwidth, 0, 0);
        end
        signal_power = mean(abs(X_my_freq_reorder).^2);
        noise_power = mean(abs(X_my_freq_reorder_quant - X_my_freq_reorder).^2);
        sqnr_list(idx) = 10 * log10(signal_power / noise_power);
        idx = idx + 1;
    end
    figure;
    plot(frac_bitwidths, sqnr_list, '-o', 'LineWidth', 2);
    hold on;
    yline(30, '--r', 'Required SQNR = 30 dB', 'LineWidth', 1.5);
    xlabel('Fractional Bitwidth');
    ylabel('SQNR (dB)');
    title('SQNR vs. Fractional Bitwidth of STAGE 4');
    grid on;
    legend('Measured SQNR', 'Target SQNR = 30 dB', 'Location', 'southeast');
    % choose 10 bit frac for stage 4
    frac_bitwidth_stage4 = 10; 
    % ---------------------- stage5 ----------------------------
    quant_list = [1 1 1 1 1 0];
    sqnr_list = zeros(length(frac_bitwidths), 1);
    idx = 1;
    for frac_bitwidth = frac_bitwidths
        X_my_freq_reorder_quant = zeros(96, 1);
        for symbol = 0:2
            X_my_freq_reorder_quant(1 + symbol * 32 : 32 + symbol * 32) = fft32_mdc_complex_quant(x_my_time(1 + symbol * 32 : 32 + symbol * 32), quant_list, frac_bitwidth_stage1, frac_bitwidth_stage2, frac_bitwidth_stage3, frac_bitwidth_stage4, frac_bitwidth, 0);
        end
        signal_power = mean(abs(X_my_freq_reorder).^2);
        noise_power = mean(abs(X_my_freq_reorder_quant - X_my_freq_reorder).^2);
        sqnr_list(idx) = 10 * log10(signal_power / noise_power);
        idx = idx + 1;
    end
    figure;
    plot(frac_bitwidths, sqnr_list, '-o', 'LineWidth', 2);
    hold on;
    yline(30, '--r', 'Required SQNR = 30 dB', 'LineWidth', 1.5);
    xlabel('Fractional Bitwidth');
    ylabel('SQNR (dB)');
    title('SQNR vs. Fractional Bitwidth of STAGE 5');
    grid on;
    legend('Measured SQNR', 'Target SQNR = 30 dB', 'Location', 'southeast');
    % choose 10 bit frac for stage 5
    frac_bitwidth_stage5 = 10; 
    % ---------------------- twiddle factor ----------------------------
    quant_list = [1 1 1 1 1 1];
    sqnr_list = zeros(length(frac_bitwidths), 1);
    idx = 1;
    for frac_bitwidth = frac_bitwidths
        X_my_freq_reorder_quant = zeros(96, 1);
        for symbol = 0:2
            X_my_freq_reorder_quant(1 + symbol * 32 : 32 + symbol * 32) = fft32_mdc_complex_quant(x_my_time(1 + symbol * 32 : 32 + symbol * 32), quant_list, frac_bitwidth_stage1, frac_bitwidth_stage2, frac_bitwidth_stage3, frac_bitwidth_stage4, frac_bitwidth_stage5, frac_bitwidth);
        end
        signal_power = mean(abs(X_my_freq_reorder).^2);
        noise_power = mean(abs(X_my_freq_reorder_quant - X_my_freq_reorder).^2);
        sqnr_list(idx) = 10 * log10(signal_power / noise_power);
        idx = idx + 1;
    end
    figure;
    plot(frac_bitwidths, sqnr_list, '-o', 'LineWidth', 2);
    hold on;
    yline(30, '--r', 'Required SQNR = 30 dB', 'LineWidth', 1.5);
    xlabel('Fractional Bitwidth');
    ylabel('SQNR (dB)');
    title('SQNR vs. Fractional Bitwidth of Twiddle Factor');
    grid on;
    legend('Measured SQNR', 'Target SQNR = 30 dB', 'Location', 'southeast');
    % choose 10 bit frac for Twiddle Factor
    frac_bitwidth_twiddle = 10; 

else
 

        % 
        % X_my_freq_reorder_quant = zeros(96, 1);
        % for symbol = 0:2
        %     X_my_freq_reorder_quant(1 + symbol * 32 : 32 + symbol * 32) = fft32_mdc_complex_quant_full(x_my_time(1 + symbol * 32 : 32 + symbol * 32));
        % end
        % signal_power = mean(abs(X_my_freq_reorder).^2);
        % noise_power = mean(abs(X_my_freq_reorder_quant - X_my_freq_reorder).^2);
        % sqnr = 10 * log10(signal_power / noise_power);
        % disp(sqnr)
end
