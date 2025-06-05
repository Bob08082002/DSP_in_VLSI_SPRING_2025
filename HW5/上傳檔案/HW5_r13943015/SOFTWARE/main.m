clear;
mode = "report_2";
% mode = "report_3";
% mode = "report_6";
% mode = "generate_rtl_input_pattern_and_param";
% mode = "compare_output";

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


elseif mode == "report_6"
    N = 32;
    W = exp(-1j * 2 * pi * (0:N/2-1)' / N);  % Twiddle factors: W0 to W15
    
    for i = 0:15
        fprintf("W%d = %f%+fj \n",i, real(W(i+1)),imag(W(i+1)));
    end

elseif mode == "generate_rtl_input_pattern_and_param"
    % ------------------------ twiddle factor ------------------------
    N = 32;
    frac_bitwidth_twiddle = 10;
    W = exp(-1j * 2 * pi * (0:N/2-1)' / N);  % Twiddle factors: W0 to W15
    W_fix = fi(W, true,  1 + frac_bitwidth_twiddle, frac_bitwidth_twiddle);
    filename = '../TESTBED/pattern/twiddle_bin.dat';
    fid = fopen(filename, 'w');
    
    for i = 1:length(W_fix)
        % 分別取出實部與虛部
        real_bin = bin(real(W_fix(i)));
        imag_bin = bin(imag(W_fix(i)));
    
        % 確保都是 WL bits（這裡是11位）
        real_bin = pad(real_bin, frac_bitwidth_twiddle + 1, 'left', '0');
        imag_bin = pad(imag_bin, frac_bitwidth_twiddle + 1, 'left', '0');
    
        % 寫入檔案（附註註解）
        fprintf(fid, '%s %s // W%d\n', real_bin, imag_bin, i-1);
    end
    fclose(fid);
    disp("Twiddle binary file saved as twiddle_bin.dat");
    
    % ------------------------ FFT32: x_time ------------------------
    frac_bitwidth_stage1 = 10; 
    WL = 1 + frac_bitwidth_stage1;
    x_time_fix = fi(x_time, true,  1 + frac_bitwidth_stage1, frac_bitwidth_stage1);
    % 開兩個檔案分別寫入 real 和 imag binary
    fid_real = fopen('../TESTBED/pattern/FFTInput32_RE_I.dat', 'w');
    fid_imag = fopen('../TESTBED/pattern/FFTInput32_IM_I.dat', 'w');
    
    for i = 1:length(x_time_fix)
        real_bin = bin(real(x_time_fix(i)));
        imag_bin = bin(imag(x_time_fix(i)));
    
        % 確保是 WL 位元（補 0）
        real_bin = pad(real_bin, WL, 'left', '0');
        imag_bin = pad(imag_bin, WL, 'left', '0');
    
        fprintf(fid_real, '%s\n', real_bin);
        fprintf(fid_imag, '%s\n', imag_bin);
    end
    
    fclose(fid_real);
    fclose(fid_imag);
    
    disp("Real part saved in FFTInput32_RE_I.dat");
    disp("Imag part saved in FFTInput32_IM_I.dat");
    
    % ------------------------ MY FFT96: x_my_time ------------------------
    frac_bitwidth_stage1 = 10; 
    WL = 1 + frac_bitwidth_stage1;
    x_my_time_fix = fi(x_my_time, true,  1 + frac_bitwidth_stage1, frac_bitwidth_stage1);
    % 開兩個檔案分別寫入 real 和 imag binary
    fid_real = fopen('../TESTBED/pattern/FFTInput96_RE_I.dat', 'w');
    fid_imag = fopen('../TESTBED/pattern/FFTInput96_IM_I.dat', 'w');
    
    for i = 1:length(x_my_time_fix)
        real_bin = bin(real(x_my_time_fix(i)));
        imag_bin = bin(imag(x_my_time_fix(i)));
    
        % 確保是 WL 位元（補 0）
        real_bin = pad(real_bin, WL, 'left', '0');
        imag_bin = pad(imag_bin, WL, 'left', '0');
    
        fprintf(fid_real, '%s\n', real_bin);
        fprintf(fid_imag, '%s\n', imag_bin);
    end
    
    fclose(fid_real);
    fclose(fid_imag);
    
    disp("Real part saved in FFTInput96_RE_I.dat");
    disp("Imag part saved in FFTInput96_IM_I.dat");



elseif mode == "compare_output" % compare output from RTL with golden double data from matlab

    % --------------------------------------------- FFT32 ----------------------------------------------------
    % Read the file
    lines_1_re = readlines('../TESTBED/pattern/FFTOutput32_RE_O.dat');  % 會自動過濾掉空行
    lines_1_im = readlines('../TESTBED/pattern/FFTOutput32_IM_O.dat');  % 會自動過濾掉空行
    lines_1_re = lines_1_re(1:end-1);       % 去除空白行
    lines_1_im = lines_1_im(1:end-1);       % 去除空白行

    WL = 11;  % 1 sign + 10 fraction
    FL = 10;
    % 初始化誤差向量
    real_error = zeros(32, 1);
    imag_error = zeros(32, 1);
    % 逐點比對
    for i = 1:32
        % --- Real part ---
        re_bin_str = char(lines_1_re(i));  % 取出 binary 字串
        re_fix = string_to_fixpoint(re_bin_str, WL, FL);  % 自定轉換函數
        re_val = double(re_fix);
        real_error(i) = abs(real(X_freq_reorder(i)) - re_val);
        % --- Imag part ---
        im_bin_str = char(lines_1_im(i));
        im_fix = string_to_fixpoint(im_bin_str, WL, FL);
        im_val = double(im_fix);
        imag_error(i) = abs(imag(X_freq_reorder(i)) - im_val);
    end
    % --- 繪圖 ---
    n = 0:31;
    figure;
    subplot(2,1,1);
    plot(n, real_error, 'b-o', 'LineWidth', 1.5);
    grid on;
    xlabel('Index');
    ylabel('Real Part Error');
    title('Real Part Absolute Error (|golden - verilog|)');
    
    subplot(2,1,2);
    plot(n, imag_error, 'r-o', 'LineWidth', 1.5);
    grid on;
    xlabel('Index');
    ylabel('Imag Part Error');
    title('Imaginary Part Absolute Error (|golden - verilog|)');
    % --- 顯示平均誤差 ---
    avg_real_error = mean(real_error);
    avg_imag_error = mean(imag_error);
    fprintf("FFT32 Average real error  = %.6f\n", avg_real_error);
    fprintf("FFT32 Average imag error  = %.6f\n", avg_imag_error);


    % --------------------------------------------- FFT96 ----------------------------------------------------
    % Read the file
    lines_1_re = readlines('../TESTBED/pattern/FFTOutput96_RE_O.dat');  % 會自動過濾掉空行
    lines_1_im = readlines('../TESTBED/pattern/FFTOutput96_IM_O.dat');  % 會自動過濾掉空行
    lines_1_re = lines_1_re(1:end-1);       % 去除空白行
    lines_1_im = lines_1_im(1:end-1);       % 去除空白行

    WL = 11;  % 1 sign + 10 fraction
    FL = 10;
    % 初始化誤差與重建後的 complex 向量
    real_error = zeros(96, 1);
    imag_error = zeros(96, 1);
    X_my_freq_reorder_verilog = complex(zeros(96, 1));
    
    for i = 1:96
        % --- Real part ---
        re_bin_str = char(lines_1_re(i));
        re_fix = string_to_fixpoint(re_bin_str, WL, FL);
        re_val = double(re_fix);
    
        % --- Imag part ---
        im_bin_str = char(lines_1_im(i));
        im_fix = string_to_fixpoint(im_bin_str, WL, FL);
        im_val = double(im_fix);
    
        % --- 誤差計算 ---
        real_error(i) = abs(real(X_my_freq_reorder(i)) - re_val);
        imag_error(i) = abs(imag(X_my_freq_reorder(i)) - im_val);
    
        % --- 重建 quantized output ---
        X_my_freq_reorder_verilog(i) = complex(re_val, im_val);
    end
    
    % --- 繪圖 ---
    n = 0:95;
    figure;
    subplot(2,1,1);
    plot(n, real_error, 'b-o', 'LineWidth', 1.5);
    grid on;
    xlabel('Index');
    ylabel('Real Part Error');
    title('Real Part Absolute Error (|golden - verilog|)');
    
    subplot(2,1,2);
    plot(n, imag_error, 'r-o', 'LineWidth', 1.5);
    grid on;
    xlabel('Index');
    ylabel('Imag Part Error');
    title('Imaginary Part Absolute Error (|golden - verilog|)');
    
    % --- 顯示平均誤差 ---
    avg_real_error = mean(real_error);
    avg_imag_error = mean(imag_error);
    fprintf("FFT96 Average real error  = %.6f\n", avg_real_error);
    fprintf("FFT96 Average imag error  = %.6f\n", avg_imag_error);
    % --- SQNR 計算 ---
    signal_power = mean(abs(X_my_freq_reorder).^2);
    noise_power = mean(abs(X_my_freq_reorder_verilog - X_my_freq_reorder).^2);
    sqnr = 10 * log10(signal_power / noise_power);
    fprintf("FFT96 SQNR = %.2f dB\n", sqnr);


else
 
end
