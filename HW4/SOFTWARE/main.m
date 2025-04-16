clear;
% ----------------- parameters -----------------
mode = "report_2"; 
mode = "report_3"; 
mode = "report_4"; 
mode = "report_5"; 
N_report1 = 24; 
N_final = 11; % determine by report 3-1

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
atan_table_final = atan(2.^-(0:N_final-1));



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
    angle_errors = zeros(size(frac_range));
    idx = 1;
    for w = frac_range
        total_mag_error = 0;
        total_angle_error = 0;
        for i = 1:length(n)
                [R_cordic, angle_cordic] = cordic(S, X_float(i), Y_float(i), N_final, atan_table_final, 3, 11, 3, 11, true, w);
                mag_error = abs(mag_float(i) - R_cordic);
                total_mag_error = total_mag_error + mag_error;
                angle_error = abs(ang_rad_float(i) - angle_cordic);
                total_angle_error = total_angle_error + angle_error;
                % fprintf('i = %d R_cordic = %f, angle_cordic = %f\n', i, R_cordic, angle_cordic);
        end
        mag_errors(idx) = total_mag_error / length(n);
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
    title('Average Angle Error vs  scaling factor CSD Fractional Wordlength');
    legend('show', 'Location', 'northeast');
    grid on;

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
end



