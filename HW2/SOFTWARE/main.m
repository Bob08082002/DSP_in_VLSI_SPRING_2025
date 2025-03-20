% SRRC FIR FILTER PARAMETERS
alpha = 0.5;   
T = 1;          
Ts = 0.25;         
n_fir = -8:8;       % FIR's n from -8 to 8
n_input = 0:128;    % input's n from 0 to 128

% Quantize setting
input_bitwidth = [[4 5]; [4 6]; [4 7]; [4 8]; [4 9]; [4 10]];  % [a b] means fixed point in format a.b
coeff_bitwidth = [[4 5]; [4 6]; [4 7]; [4 8]; [4 9]; [4 10]];  % [a b] means fixed point in format a.b
after_mul_bitwidth = [[4 5]; [4 6]; [4 7]; [4 8]; [4 9]; [4 10]];  % [a b] means fixed point in format a.b
after_add_bitwidth = [[4 5]; [4 6]; [4 7]; [4 8]; [4 9]; [4 10]];  % [a b] means fixed point in format a.b

%mode = "draw_report_p1"; % Plot the impulse response and frequency response
%mode = "draw_report_p2"; % Plot the time domain input and output signal
mode = "input_bitwidth_vs_error";
%mode = "";

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


elseif mode == "input_bitwidth_vs_error"

    rmse_array = zeros(1, size(input_bitwidth, 1)); 
    for i = 1:length(rmse_array)
        y_fix = Transposed_FIR(h, x, [1 0 0 0], [input_bitwidth(i,:) coeff_bitwidth(i,:) after_mul_bitwidth(i,:) after_add_bitwidth(i,:)]); % [1 0 0 0]: quant input only
        rmse_array(i) = sqrt(mean((y_fix - y_float).^2));
    end
    figure;
    semilogy(1:length(rmse_array), rmse_array,'b'); 
    xlabel('bitwidth');
    ylabel('RMSE');
    title('Output error v.s. Input word-length');
    grid on;
else

    fp_num = fi(10000,1,4,2,'RoundingMethod','Nearest');
    disp('fp_num');
    disp(fp_num);
    disp(bin(fp_num));

    num = (99.999 * double(fp_num));

    disp(size(input_setting, 1));
    disp(size(input_setting, 2));
end