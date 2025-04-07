
% ------------- parameters -------------
m1 = 16:32;  % case 1: over-sampled cases
m2 = 5:10; % case 2: typical cases
u_list = [0 1/9 2/9 3/9 4/9 5/9 6/9 7/9 8/9]; % fractional delay

m_all = 1:40; % get input (range need to cover m1, m2) 

cases = "2"; % @ over-sampled cases or typical cases
mode = "draw_report_p1_2"; % 3 method of interpolator @ over-sampled cases or typical cases
%mode = "generate_TF32_add_mul_bittrue_result"; % for debugging usage
% mode = "";
% ------------- obtain input signal @ case 1 (float) -------------
% over-sampled cases
x1_in_float = zeros(size(m_all)); 
for i = 1:length(m_all)
    x1_in_float(i) =  cos(2 * pi * (i / 8));
end

% ------------- obtain input signal @ case 2 (float) -------------
% typical cases with small amplitude
x2_in_float = zeros(size(m_all)); 
for i = 1:length(m_all)
    x2_in_float(i) =  (2^-15) * cos(2 * pi * (2 * i / 5 + 1));
end






% ------------- obtain interpolation result and error @ case 1 (float) -------------
% over-sampled cases
m1_values = zeros(1, length(m1) * length(u_list)); % 對應的 m+μ 值
% Linear
x1_linear_float = zeros(1, length(m1)*length(u_list));
err1_linear_float = zeros(1, length(m1)*length(u_list)); % error between linear interpolator and real value
% Second order
x1_second_order_float = zeros(1, length(m1)*length(u_list));
err1_second_order_float = zeros(1, length(m1)*length(u_list)); % error between second order interpolator and real value
% Parabolic
x1_parabolic_float = zeros(1, length(m1)*length(u_list));
err1_parabolic_float = zeros(1, length(m1)*length(u_list)); % error between parabolic interpolator and real value

index = 1;
for m = m1
    for u = u_list
        real_value =  cos(2 * pi * ((m + u) / 8)); % Real (continuous) waveform
        m1_values(index) = m + u; % 記錄對應的 m+μ

        % Linear interpolation
        x1_linear_float(index) = linear_interpolation_float(u, x1_in_float(m + 1), x1_in_float(m));
        err1_linear_float(index) = real_value - x1_linear_float(index); % cal error
        % Second order interpolation
        x1_second_order_float(index) = second_order_interpolation_float(u, x1_in_float(m + 2), x1_in_float(m + 1), x1_in_float(m));
        err1_second_order_float(index) = real_value - x1_second_order_float(index); % cal error
        % Parabolic interpolation
        x1_parabolic_float(index) = parabolic_interpolation_float(u, x1_in_float(m + 2), x1_in_float(m + 1), x1_in_float(m), x1_in_float(m - 1));
        % x1_parabolic_float(index) = parabolic_interpolation_tf32(u, x1_in_float(m + 2), x1_in_float(m + 1), x1_in_float(m), x1_in_float(m - 1));
        err1_parabolic_float(index) = real_value - x1_parabolic_float(index); % cal error

        index = index + 1;
    end
end

% ------------- obtain interpolation result and error @ case 2 (float) -------------
% typical cases
m2_values = zeros(1, length(m2) * length(u_list)); % 對應的 m+μ 值
% Linear
x2_linear_float = zeros(1, length(m2)*length(u_list));
err2_linear_float = zeros(1, length(m2)*length(u_list)); % error between linear interpolator and real value
% Second order
x2_second_order_float = zeros(1, length(m2)*length(u_list));
err2_second_order_float = zeros(1, length(m2)*length(u_list)); % error between second order interpolator and real value
% Parabolic
x2_parabolic_float = zeros(1, length(m2)*length(u_list));
err2_parabolic_float = zeros(1, length(m2)*length(u_list)); % error between parabolic interpolator and real value

index = 1;
for m = m2
    for u = u_list
        real_value =  (2^-15) * cos(2 * pi * (2 * (m + u) / 5 + 1)); % Real (continuous) waveform of case 2
        m2_values(index) = m + u; % 記錄對應的 m+μ

        % Linear interpolation
        x2_linear_float(index) = linear_interpolation_float(u, x2_in_float(m + 1), x2_in_float(m));
        err2_linear_float(index) = real_value - x2_linear_float(index); % cal error
        % Second order interpolation
        x2_second_order_float(index) = second_order_interpolation_float(u, x2_in_float(m + 2), x2_in_float(m + 1), x2_in_float(m));
        err2_second_order_float(index) = real_value - x2_second_order_float(index); % cal error
        % Parabolic interpolation
        %x2_parabolic_float(index) = parabolic_interpolation_float(u, x2_in_float(m + 2), x2_in_float(m + 1), x2_in_float(m), x2_in_float(m - 1));
        x2_parabolic_float(index) = parabolic_interpolation_tf32(u, x2_in_float(m + 2), x2_in_float(m + 1), x2_in_float(m), x2_in_float(m - 1));
        err2_parabolic_float(index) = real_value - x2_parabolic_float(index); % cal error

        index = index + 1;
    end
end





if mode == "draw_report_p1_2"
    if cases == "1"
        m_values = m1_values;
        x_linear_float = x1_linear_float;
        x_second_order_float = x1_second_order_float;
        x_parabolic_float = x1_parabolic_float;
        err_linear_float = err1_linear_float;
        err_second_order_float = err1_second_order_float;
        err_parabolic_float = err1_parabolic_float;
    elseif cases == "2"
        m_values = m2_values;
        x_linear_float = x2_linear_float;
        x_second_order_float = x2_second_order_float;
        x_parabolic_float = x2_parabolic_float;
        err_linear_float = err2_linear_float;
        err_second_order_float = err2_second_order_float;
        err_parabolic_float = err2_parabolic_float;
    end
    % Plot output waveform after interpolation
    % Linear interpolation
    figure;
    hold on;
    plot(m_values, x_linear_float, 'ro', 'DisplayName', 'Interpolated Values');
    xlabel('m');
    ylabel('x(m)');
    title('Output waveform after Linear Interpolation');
    legend;
    grid on;
    hold off;
    % Second order interpolation
    figure;
    hold on;
    plot(m_values, x_second_order_float, 'ro', 'DisplayName', 'Interpolated Values');
    xlabel('m');
    ylabel('x(m)');
    title('Output waveform after Second order Interpolation');
    legend;
    grid on;
    hold off;
    % Parabolic interpolation
    figure;
    hold on;
    plot(m_values, x_parabolic_float, 'ro', 'DisplayName', 'Interpolated Values');
    xlabel('m');
    ylabel('x(m)');
    title('Output waveform after Parabolic interpolation');
    legend;
    grid on;
    hold off;
    
    % draw the error
    % Linear interpolation
    figure;
    plot(m_values, err_linear_float, 'b-o', 'LineWidth', 1.5, 'MarkerSize', 5, 'DisplayName', 'Interpolation Error');
    xlabel('m');
    ylabel('Error');
    title('Interpolation Error of Linear Interpolation');
    legend;
    grid on;
    % Second order interpolation
    figure;
    plot(m_values, err_second_order_float, 'b-o', 'LineWidth', 1.5, 'MarkerSize', 5, 'DisplayName', 'Interpolation Error');
    xlabel('m');
    ylabel('Error');
    title('Interpolation Error of Second order Interpolation');
    legend;
    grid on;
    % Parabolic interpolation
    figure;
    plot(m_values, err_parabolic_float, 'b-o', 'LineWidth', 1.5, 'MarkerSize', 5, 'DisplayName', 'Interpolation Error');
    xlabel('m');
    ylabel('Error');
    title('Interpolation Error of Parabolic interpolation');
    legend;
    grid on;

elseif mode == "generate_TF32_add_mul_bittrue_result"
    % 讀取 A.dat 和 B.dat
    A_lines = readlines('../TF32_Project/genpattern/MY_pattern/A.dat');
    B_lines = readlines('../TF32_Project/genpattern/MY_pattern/B.dat');
    % 確保兩檔案行數一致
    assert(length(A_lines) == length(B_lines), 'A.dat 和 B.dat 行數不一致');

    % 開啟輸出檔案
    out_add_file = fopen('../TF32_Project/genpattern/MY_pattern/ADD/OUT.dat', 'w');
    out_mul_file = fopen('../TF32_Project/genpattern/MY_pattern/MUL/OUT.dat', 'w');

    % 處理每一行
    for i = 1:length(A_lines)

        bin_str_A = strtrim(A_lines(i));  % 去除空白
        bin_str_B = strtrim(B_lines(i));


        % 轉成 fixed point
        operand_A = string_to_fixpoint(char(bin_str_A), 19, 0);
        operand_B = string_to_fixpoint(char(bin_str_B), 19, 0);
        % 執行
        result_add = TF32_add(operand_A, operand_B);
        result_mul = TF32_mul(operand_A, operand_B);

        % 轉成 binary 並寫入檔案
        fprintf(out_add_file, '%s\n', bin(result_add));
        fprintf(out_mul_file, '%s\n', bin(result_mul));
    end

    % 關閉檔案
    fclose(out_add_file);
    fclose(out_mul_file);
else


end
