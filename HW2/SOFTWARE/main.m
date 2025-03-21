% SRRC FIR FILTER PARAMETERS
alpha = 0.5;   
T = 1;          
Ts = 0.25;         
n_fir = -8:8;       % FIR's n from -8 to 8
n_input = 0:128;    % input's n from 0 to 128

% Quantize setting
input_bitwidth = [ [4 7]; [4 8]; [4 9]; [4 10]; [4 11]; [4 12]];  % [a b] means fixed point in format a.b
coeff_bitwidth = [ [4 7]; [4 8]; [4 9]; [4 10]; [4 11]; [4 12]];  % [a b] means fixed point in format a.b
after_mul_bitwidth = [[4 7]; [4 8]; [4 9]; [4 10]; [4 11]; [4 12]];  % [a b] means fixed point in format a.b
after_add_bitwidth = [[4 7]; [4 8]; [4 9]; [4 10]; [4 11]; [4 12]];  % [a b] means fixed point in format a.b

%mode = "draw_report_p1"; % Plot the impulse response and frequency response
%mode = "draw_report_p2"; % Plot the time domain input and output signal
%mode = "bitwidth_vs_error_datatype_seperated"; % For report P3
datatype = 4; % only effect when mode is bitwidth_vs_error_datatype_seperated: 1-> input, 2-> coeff, 3-> after_mul, 4-> after_add
mode = "bitwidth_vs_error_datatype_combined"; % For report P3 & P4
quantize_bitwidth_setting = [[4 10]; [4 10]; [4 12]; [4 12]];  % final bitwidth setting
% mode = "";

% ------------- obtain FIR coeff (float) -------------
h = zeros(size(n_fir)); % filter coeff
for i = 1:length(n_fir)
    t = n_fir(i) * Ts; 
    h(i) = (1 - alpha) * sinc((1 - alpha) * t) + alpha * (sinc(alpha * t + 0.25) * cos(pi * t + 0.25 * pi) + sinc(alpha * t - 0.25) * cos(pi * t - 0.25 * pi));
end


% ------------- obtain input signal (float) -------------
x = zeros(size(n_input)); 
for i = 1:length(n_input)
    n = n_input(i);  % n = 0 ~ 128
    x(i) =  cos(-2 * pi * n / 64) + sin(2 * pi * n / 3);
end


% ------------- obtain output signal (float) -------------
y_float = Transposed_FIR(h, x, [0 0 0 0], []); % [0 0 0 0]: no quantize, all floating points


if mode == "draw_report_p1"

    % Plot the impulse response
    figure;
    stem(0:span*sps, h, 'filled');
    xlabel('n');
    ylabel('h[n]');
    title('17-Tap SRRC FIR Filter Impulse Response');
    grid on;
    
    % Compute frequency response
    [H, w] = freqz(h, 1, 1024);  % Frequency response
    % Plot magnitude response in dB
    figure;
    subplot(2,1,1);
    plot(w/pi, 20*log10(abs(H))); % Convert magnitude to dB
    xlabel('Normalized Frequency (\times\pi rad/sample)');
    ylabel('Magnitude (dB)');
    title('Magnitude Response of SRRC FIR Filter');
    grid on;
    
    % Plot phase response in radians
    subplot(2,1,2);
    plot(w/pi, angle(H)); % Phase response in radians
    xlabel('Normalized Frequency (\times\pi rad/sample)');
    ylabel('Phase (radians)');
    title('Phase Response of SRRC FIR Filter');
    grid on;

elseif mode == "draw_report_p2"

    figure;
    subplot(2,1,1);
    stem(0:(length(x) - 1), x, 'filled','b'); 
    xlabel('n');
    ylabel('x[n]');
    title('Time-Domain Input Signal');
    grid on;
    
    subplot(2,1,2);
    stem(0:(length(y_float) - 1), y_float, 'filled', 'r'); 
    xlabel('n');
    ylabel('y[n]');
    title('Time-Domain Output Signal (Filtered)');
    grid on;


elseif mode == "bitwidth_vs_error_datatype_seperated" % only 'one' data type can be quantized

    switch datatype
        case 1 % input 
            datatype_bitwidth = input_bitwidth;
            quantize_datatype = [1 0 0 0]; % quant input only
            title_datatype_string = 'Input'; % for plot only
        case 2 % filter coeff
            datatype_bitwidth = coeff_bitwidth;
            quantize_datatype = [0 1 0 0]; % quant coeff only
            title_datatype_string = 'Coefficient'; % for plot only
        case 3 % after_mul
            datatype_bitwidth = after_mul_bitwidth;
            quantize_datatype = [0 0 1 0]; % quant after_mul only
            title_datatype_string = 'After multiplication'; % for plot only
        case 4 % after_add
            datatype_bitwidth = after_add_bitwidth;
            quantize_datatype = [0 0 0 1]; % quant after_add only
            title_datatype_string = 'After addition'; % for plot only
        otherwise
            disp('Invalid Data Type!')
    end
    % eval RMSE of different bitwidth setting
    rmse_array = zeros(1, size(datatype_bitwidth, 1));
    for i = 1:length(rmse_array)
        if quantize_datatype(1)
            input_bitwidth_valid = input_bitwidth(i,:);
        elseif quantize_datatype(2)
            coeff_bitwidth_valid = coeff_bitwidth(i,:);
        elseif quantize_datatype(3)
            after_mul_bitwidth_valid = after_mul_bitwidth(i,:);
        elseif quantize_datatype(4)
            after_add_bitwidth_valid = after_add_bitwidth(i,:);
        else
            after_add_bitwidth_valid = [0 0];
        end
        quantize_bitwidth = [input_bitwidth_valid; coeff_bitwidth_valid; after_mul_bitwidth_valid; after_add_bitwidth_valid;];

        y_fix = Transposed_FIR(h, x, quantize_datatype, quantize_bitwidth); % Apply quantized setting to transposed FIR, and get output y_fix
        rmse_array(i) = sqrt(mean((y_fix - y_float).^2));
    end

    % obtain x axis string array (for plotting)
    x_axis_strings = strings(1, size(datatype_bitwidth,1)); 
    for i = 1:size(datatype_bitwidth,1)
        x_axis_strings(i) = sprintf('S%d.%d', datatype_bitwidth(i,1), datatype_bitwidth(i,2));
    end
    x_labels = categorical(x_axis_strings);% Convert to categorical for proper x-axis labeling
    x_labels = reordercats(x_labels, x_axis_strings); % Keep the correct order
    
    % Plot RMSE with log scale on y-axis
    figure;
    semilogy(x_labels, rmse_array, 'bo-', 'LineWidth', 1.5, 'MarkerSize', 8); 
    hold on;
    y_ref = 2^(-10); % error must less than 2^-10
    yline(y_ref, 'r--', 'LineWidth', 1.5); % Dashed red line
    xlabel('Bitwidth');
    ylabel('RMSE');
    title(sprintf('Output Error vs. %s Word-Length', title_datatype_string));
    grid on;
    hold off;

elseif mode == "bitwidth_vs_error_datatype_combined"
    quantize_bitwidth = quantize_bitwidth_setting;
    % eval RMSE of different bitwidth setting
    y_fix = Transposed_FIR(h, x, [1 1 1 1], quantize_bitwidth); % all data type are quantized
    rmse = sqrt(mean((y_fix - y_float).^2));
    
    required_RMSE = 2 ^ -10;
    disp("required RMSE: ");
    disp(required_RMSE);
    disp("quantized RMSE: ");
    disp(rmse);
    disp("quantized RMSE < required RMSE: ");
    disp(rmse < required_RMSE);
    
    % show fixed-point time domain signal
    figure;
    stem(0:(length(y_fix) - 1), y_fix, 'filled', 'r'); 
    xlabel('n');
    ylabel('y[n]');
    title('Time-Domain Output Signal (fixed point)');
    grid on;

    % Plot Error
    error = abs(y_fix - y_float); % L1 norm
    subplot(2,1,2);
    plot(0:(length(error) - 1), error, 'k');
    xlabel('n');
    ylabel('Error |y\_fix - y\_float|');
    title('Error between y\_fix and y\_float');
    grid on;
    

    % Compute frequency response of fixed point filter
    fraction_bitwidth = quantize_bitwidth_setting(2, 2);
    total_bitwidth = quantize_bitwidth_setting(2, 1) + quantize_bitwidth_setting(2, 2);
    h_fix = double(fi(h, 1, total_bitwidth, fraction_bitwidth, 'RoundingMethod', 'Nearest'));
    [H_fix, w] = freqz(h_fix, 1, 1024);
    % Compute frequency response of floating point filter
    [H_float, w] = freqz(h, 1, 1024);


    % Plot frequency responses of fixed point filter
    figure;
    subplot(2,1,1); % Plot magnitude response in dB
    plot(w/pi, 20*log10(abs(H))); % Convert magnitude to dB
    xlabel('Normalized Frequency (\times\pi rad/sample)');
    ylabel('Magnitude (dB)');
    title('Magnitude Response of SRRC FIR Filter (fixed point)');
    grid on;
    subplot(2,1,2); % Plot phase response in radians
    plot(w/pi, angle(H)); % Phase response in radians
    xlabel('Normalized Frequency (\times\pi rad/sample)');
    ylabel('Phase (radians)');
    title('Phase Response of SRRC FIR Filter (fixed point)');
    grid on;

    
    % Convert to Magnitude (in dB)
    H_fix_mag_dB = 20 * log10(abs(H_fix));
    H_float_mag_dB = 20 * log10(abs(H_float));
    % Compute Magnitude Error (in dB)
    error_mag_dB = H_fix_mag_dB - H_float_mag_dB;
    % Identify the passband (within 3dB bandwidth)
    H_float_peak = max(H_float_mag_dB); % Peak value of floating-point response
    passband_idx = find(H_float_mag_dB >= H_float_peak - 3); % Indices within 3dB bandwidth

    
    % Plot Magnitude Response Comparison
    figure;
    subplot(2,1,1);
    plot(w/pi, H_fix_mag_dB, 'b', 'LineWidth', 1.5); hold on;
    plot(w/pi, H_float_mag_dB, 'r--', 'LineWidth', 1.5);
    xlabel('Normalized Frequency (\times\pi rad/sample)');
    ylabel('Magnitude (dB)');
    title('Magnitude Response Comparison');
    legend('Fixed-Point', 'Floating-Point');
    grid on;
    % Plot Magnitude Error in Passband
    subplot(2,1,2);
    plot(w(passband_idx)/pi, error_mag_dB(passband_idx), 'k', 'LineWidth', 1.5);
    xlabel('Normalized Frequency (\times\pi rad/sample)');
    ylabel('Magnitude Error (dB)');
    title('Magnitude Error in Passband (within 3dB Bandwidth)');
    grid on;

else

    fp_num = fi(10000,1,4,2,'RoundingMethod','Nearest');
    fp_num2 = fi(10000,1,4,2,'RoundingMethod','Nearest');
    a = fi(fp_num + fp_num2,1,4,2,'RoundingMethod','Nearest');
    disp(a);
    disp(bin(a));
    b = fp_num + fp_num2;
    disp(b);
    disp(bin(b));
    disp('fp_num');
    disp(fp_num);
    disp(bin(fp_num));
    num = [0 2];
    num(1) = (99.999 * double(fp_num));
    disp(num(1));

end