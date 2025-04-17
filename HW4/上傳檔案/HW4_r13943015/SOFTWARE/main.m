clear;
% ----------------- parameters -----------------
mode = "report_2"; 
%mode = "report_3"; 
%mode = "report_4"; 
%mode = "report_5"; 
% mode = "report_6_gen_input"; 
%mode = "compare_output"; 
N_report1 = 24; 
N_final_angle = 11; % determine by report 3-1
N_final_mag = 6; % determine by report 4
% ---------- final quantized setting ----------
final_in_frac_bitwidth = 11; % X, Y
final_in_int_bitwidth = 3; % X, Y
final_e_angle_frac_bitwidth = 11;  % elementary angle
final_e_angle_int_bitwidth = 3; % elementary angle


% ---------------- obtain scaling factor S ----------------
S = 1;
for i = 0:N_report1-1
    S = S * (1 / sqrt(1 + 2^(-2*i)));
end
fprintf('Scaling factor for N = %d is %.10f\n', N_report1, S);

% ---------------- obtain inputs (X(i), Y(i)) ----------------
n = 0:10;
X_float = zeros(size(n)); 
Y_float = zeros(size(n)); 
for i = 1:length(n)
    n_val = n(i);
    X_float(i) =  cos((4 * n_val + 3) * pi / 23);
    Y_float(i) =  sin((4 * n_val + 3) * pi / 23);
end
% ---------------- obtain golden magnitude and angle of (X(i), Y(i)) in double ----------------
Z = X_float + 1j * Y_float;
% Magnitude
mag_float = abs(Z);
% Angle
ang_rad_float = angle(Z);

% ---------------- obtain arctan table(elementary angles) ----------------
% final atan_table, N is determined by report 3-1
atan_table_final = atan(2.^-(0:N_final_angle-1));


% ------------------------------------------------------------------------%
% report 2, 3 are determine X, Y, Theda word-length and                   %
% number of Stage(N) depends on avg ANGLE error                           %
% ------------------------------------------------------------------------%
if mode == "report_2" % input fractional word-length
    % ----- obtain arctan table(elementary angles) -----
    atan_table_report1 = atan(2.^-(0:N_report1-1));

    frac_range = 8:13; 
    angle_errors = zeros(size(frac_range));

    idx = 1;
    for w = frac_range
        total_angle_error = 0;
        for i = 1:length(n)
            [R_cordic, angle_cordic] = cordic(S, X_float(i), Y_float(i), N_report1, atan_table_report1, 3, w, 200, 200, false, 0);
            angle_error = abs(ang_rad_float(i) - angle_cordic);
            total_angle_error = total_angle_error + angle_error;
        end
        % 平均誤差
        angle_errors(idx) = total_angle_error / length(n);
        idx = idx + 1;
    end

    figure;
    plot(frac_range, angle_errors, '-s', 'LineWidth', 2, 'DisplayName', 'Angle Error');
    hold on;
    % add required angle error line
    required_angle_error = 2^(-11);  % in radians % 計算允許最大角度誤差
    yline(required_angle_error, '--r', 'LineWidth', 2, 'DisplayName', 'Required Error (2^{-11})');
    xlabel('Fractional Wordlength (w)');
    ylabel('Average Angle Error (rad)');
    title('Average Angle Error vs X, Y Fractional Wordlength');
    legend('show', 'Location', 'northeast');
    grid on;

elseif mode == "report_3"
    % ----- obtain arctan table(elementary angles) -----
    atan_table_report1 = atan(2.^-(0:N_report1-1));

    % --------------- 3-1 ---------------
    N_report3 = 8:13; 
    angle_errors = zeros(size(N_report3));
    idx = 1;
    for N = N_report3
        total_angle_error = 0;
        for i = 1:length(n)
            [R_cordic, angle_cordic] = cordic(S, X_float(i), Y_float(i), N, atan_table_report1, 3, 11, 200, 200, false, 0);
            angle_error = abs(ang_rad_float(i) - angle_cordic);
            total_angle_error = total_angle_error + angle_error;
        end
        % 平均誤差
        angle_errors(idx) = total_angle_error / length(n);
        idx = idx + 1;
    end
    figure;
    plot(N_report3, angle_errors, '-s', 'LineWidth', 2, 'DisplayName', 'Angle Error');
    hold on;
    % add required angle error line
    required_angle_error = 2^(-11);  % in radians % 計算允許最大角度誤差
    yline(required_angle_error, '--r', 'LineWidth', 2, 'DisplayName', 'Required Error (2^{-11})');
    xlabel('N');
    ylabel('Average Angle Error (rad)');
    title('Average Angle Error vs Number of stage (N)');
    legend('show', 'Location', 'northeast');
    grid on;

    % --------------- 3-2 ---------------
    frac_range = 8:13; 
    N_report_3_1 = 11; % determine from report 3-1
    angle_errors = zeros(size(frac_range));
    idx = 1;
    for w = frac_range
        total_angle_error = 0;
        for i = 1:length(n)
            [R_cordic, angle_cordic] = cordic(S, X_float(i), Y_float(i), N_report_3_1, atan_table_report1, 3, 11, 3, w, false, 0);
            angle_error = abs(ang_rad_float(i) - angle_cordic);
            total_angle_error = total_angle_error + angle_error;
        end
        % 平均誤差
        angle_errors(idx) = total_angle_error / length(n);
        idx = idx + 1;
    end
    figure;
    plot(frac_range, angle_errors, '-s', 'LineWidth', 2, 'DisplayName', 'Angle Error');
    hold on;
    % add required angle error line
    required_angle_error = 2^(-11);  % in radians % 計算允許最大角度誤差
    yline(required_angle_error, '--r', 'LineWidth', 2, 'DisplayName', 'Required Error (2^{-11})');
    xlabel('Fractional Wordlength (w)');
    ylabel('Average Angle Error (rad)');
    title('Average Angle Error vs elementary angle Fractional Wordlength');
    legend('show', 'Location', 'northeast');
    grid on;
    % --------------- 3-3 ---------------
    atan_table_final = atan_table_final;
    atan_table_final_fix =  fi(atan_table_final, true, 3 + 11, 11);

    for i = 1:length(atan_table_final)
        fprintf('atan_table_final[%d] = %f\n', i, atan_table_final(i));
    end
    for i = 1:length(atan_table_final_fix)
        fprintf('atan_table_final_fix[%d] = %s\n', i, bin(atan_table_final_fix(i)));
    end


% ------------------------------------------------------------------------%
% report 4, 5 are determine scaling facror(S) CSD word-length and         %
% number of Stage(N) depends on avg MAGNITUDE error                       %
% ------------------------------------------------------------------------%
elseif mode == "report_4"
    N_report4 = 1:11;
    for N = N_report4
        if 0.001 > (1 - 1/(sqrt(1 + 2^(-2*(N - 1)))))
            meet = 1;
        else 
            meet = 0;
        end
        fprintf('N = %d, meet = %d\n', N , meet);
    end
    % draw the figure to verify
    N_report4 = 1:11;
    mag_errors = zeros(size(N_report4));
    idx = 1;
    for N = N_report4
        total_mag_error = 0;
        for i = 1:length(n)
            [R_cordic, angle_cordic] = cordic(S, X_float(i), Y_float(i), N, atan_table_final, 3, 11, 3, 11, false, 0);
            mag_error = abs(mag_float(i) - R_cordic);
            total_mag_error = total_mag_error + mag_error;
        end
        % 平均誤差
        mag_errors(idx) = total_mag_error / length(n);
        idx = idx + 1;
    end
    figure;
    plot(N_report4, mag_errors, '-s', 'LineWidth', 2, 'DisplayName', 'magnitude Error');
    hold on;
    % add required mag error line
    required_mag_error = 0.001; 
    yline(required_mag_error, '--r', 'LineWidth', 2, 'DisplayName', 'Required Error (0.001)');
    xlabel('N');
    ylabel('Average magnitude Error');
    title('Average magnitude Error vs Number of stage (N)');
    legend('show', 'Location', 'northeast');
    grid on;

elseif mode == "report_5"
    frac_range = 8:13;
    mag_errors = zeros(size(frac_range));
    idx = 1;
    for w = frac_range
        total_mag_error = 0;
        for i = 1:length(n)
                [R_cordic, angle_cordic] = cordic(S, X_float(i), Y_float(i), N_final_mag, atan_table_final, 3, 11, 3, 11, true, w);
                mag_error = abs(mag_float(i) - R_cordic);
                total_mag_error = total_mag_error + mag_error;
                % fprintf('i = %d R_cordic = %f, angle_cordic = %f\n', i, R_cordic, angle_cordic);
        end
        mag_errors(idx) = total_mag_error / length(n);
        idx = idx + 1;
    end

    figure;
    plot(frac_range, mag_errors, '-s', 'LineWidth', 2, 'DisplayName', 'magnitude Error');
    hold on;
    % add required mag error line
    required_mag_error = 0.001; 
    yline(required_mag_error, '--r', 'LineWidth', 2, 'DisplayName', 'Required Error (0.001)');
    xlabel('Fractional Wordlength (w)');
    ylabel('Average magnitude Error');
    title('Average magnitude Error vs scaling factor CSD Fractional Wordlength');
    legend('show', 'Location', 'northeast');
    grid on;

    S_CSD = csdigit(S, 0, 11);
    disp(S_CSD);

elseif mode == "report_6_gen_input" % generate input pattern and coeff that RTL design needed.
    
    X_fix = fi(X_float, true, 2 + final_in_frac_bitwidth, final_in_frac_bitwidth);
    Y_fix = fi(Y_float, true, 2 + final_in_frac_bitwidth, final_in_frac_bitwidth);
    atan_table_fix = fi(atan_table_final, true, final_e_angle_int_bitwidth + final_e_angle_frac_bitwidth, final_e_angle_frac_bitwidth);

    % write input and u in tf32 into files
    fid_X = fopen('../TESTBED/pattern/X_DATA_I.dat', 'w');  % 開啟寫入檔案
    fid_Y = fopen('../TESTBED/pattern/Y_DATA_I.dat', 'w');  % 開啟寫入檔案
    fid_atan_table = fopen('../TESTBED/pattern/ATAN_TABLE.dat', 'w');  % 開啟寫入檔案

    for i = 1:length(X_fix)
        bin_str = bin(X_fix(i));         % 取得 binary string，例如 '0000000000000000001'
        fprintf(fid_X, '%s\n', bin_str);  % 寫入一行
    end
    for i = 1:length(Y_fix)
        bin_str = bin(Y_fix(i));         % 取得 binary string，例如 '0000000000000000001'
        fprintf(fid_Y, '%s\n', bin_str);  % 寫入一行
    end
    for i = 1:length(atan_table_fix)
        bin_str = bin(atan_table_fix(i));         % 取得 binary string，例如 '0000000000000000001'
        fprintf(fid_atan_table, '%s\n', bin_str);  % 寫入一行
    end
    fclose(fid_X);  % 關閉檔案
    fclose(fid_Y);  % 關閉檔案
    fclose(fid_atan_table);  % 關閉檔案

elseif mode == "compare_output" % compare theda output from RTL with goldben double data from matlab

    % --------------------------------------------- ANGLE ----------------------------------------------------
    % Read the file
    lines_1 = readlines('../TESTBED/pattern/THEDA_DATA_O.dat');  % 會自動過濾掉空行
    lines_1 = lines_1(1:end-1);       % 去除空白行

    % 比對
    total_angle_error = 0;
    for i = 1:length(ang_rad_float)
        file_bin = lines_1(i);            % 檔案中的一行 binary 字串
        file_fix_fi = string_to_fixpoint(char(file_bin) ,3 + 11, 11);
        file_double = double(file_fix_fi);
        error_1(i) = abs(ang_rad_float(i) - file_double);
        total_angle_error = total_angle_error + error_1(i);
    end
    avg_angle_errors = total_angle_error / length(ang_rad_float);

    % 畫出誤差值（error_1）隨 index 的變化
    figure;
    plot(n, error_1, 'LineWidth', 1.5);
    grid on;
    xlabel('n');
    ylabel('Angle Error abs(MATLAB - Verilog) (rad)');
    title("Angle Error between MATLAB golden and Verilog");

    fprintf("average angle error = %f, average angle error < 2^-11 = %d\n", avg_angle_errors, (avg_angle_errors < 2^-11));

    % --------------------------------------------- MAGNITUDE ----------------------------------------------------
    % Read the file
    lines_2 = readlines('../TESTBED/pattern/MAG_DATA_O.dat');  % 會自動過濾掉空行
    lines_2 = lines_2(1:end-1);       % 去除空白行

    % 比對
    total_mag_error = 0;
    for i = 1:length(mag_float)
        file_bin = lines_2(i);            % 檔案中的一行 binary 字串
        file_fix_fi = string_to_fixpoint(char(file_bin) ,3 + 11, 11);
        file_double = double(file_fix_fi);
        error_2(i) = abs(mag_float(i) - file_double);
        total_mag_error = total_mag_error + error_2(i);
    end
    avg_mag_errors = total_mag_error / length(mag_float);

    % 畫出誤差值（error_2）隨 index 的變化
    figure;
    plot(n, error_2, 'LineWidth', 1.5);
    grid on;
    xlabel('n');
    ylabel('Magnitude Error abs(MATLAB - Verilog)');
    title("Magnitude Error between MATLAB golden and Verilog");

    fprintf("average magnitude error = %f, average magnitude error < 0.001 = %d\n", avg_mag_errors, (avg_mag_errors < 0.001));

else
        total_angle_error = 0;
     for i = 1:length(n)
                [R_cordic, angle_cordic] = cordic(S, X_float(i), Y_float(i), N_final_angle, atan_table_final, 3, 11, 3, 11, true, 11);
                angle_error = abs(ang_rad_float(i) - angle_cordic);
                total_angle_error = total_angle_error + angle_error;
                fprintf('i = %d R_cordic = %f, angle_cordic = %f (angle_cordic*2^11=%f) \n', i, R_cordic, angle_cordic, angle_cordic*2^11);
     end

     angle_errors = total_angle_error / length(n);


        fprintf("angle_errors = %f, angle_errors < 2^-11 = %d\n", angle_errors, (angle_errors < 2^-11));


        disp(bin(fi(-pi, true, final_e_angle_int_bitwidth + final_e_angle_frac_bitwidth, final_e_angle_frac_bitwidth)))
        disp(bin(fi(pi, true, final_e_angle_int_bitwidth + final_e_angle_frac_bitwidth, final_e_angle_frac_bitwidth)))
end



