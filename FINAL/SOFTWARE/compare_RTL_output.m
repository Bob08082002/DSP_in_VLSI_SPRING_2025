% compare_RTL_output(x_solutions,  backsubIWL, backsubFWL, '../TESTBED/pattern/TA_DATA_O.dat');

% function [] = compare_RTL_output(x_sol, backsubIWL, backsubFWL, filename)
%     % number of test sets
%     test_set_num = length(x_sol);
% 
%     % Read the file
%     lines = readlines(filename);  % 會自動過濾掉空行
%     lines = lines(1:end-1);       % 去除空白行
% 
%     % Initialize error vector (RMSE per test set)
%     rmse_per_set = zeros(test_set_num, 1);
% 
%     % Loop over test sets
%     for i = 1:test_set_num
%         rtl_vals = zeros(4, 1);  % store 4 values from RTL for this set
% 
%         % Parse RTL values for this set
%         for j = 1:4
%             rtl_bin_str = char(lines((i - 1) * 4 + j));  % correct index
%             rtl_fi = string_to_fixpoint(rtl_bin_str, backsubIWL + backsubFWL, backsubFWL);
%             rtl_vals(j) = double(rtl_fi);  % convert to double
%         end
% 
%         % Get the reference values
%         ref_vals = double(x_sol{i});  % expected values (1x4 vector)
% 
%         % Compute RMSE for this set
%         diff = rtl_vals - ref_vals;
%         rmse_per_set(i) = sqrt(mean(diff.^2));
%     end
% 
%     % Print RMSE results
%     for i = 1:test_set_num
%         fprintf('Set %d RMSE: %.6f\n', i, rmse_per_set(i));
%     end
% 
% end

function [] = compare_RTL_output(x_sol, x_fi, backsubIWL, backsubFWL, filename, mode)
    % Number of test sets
    test_set_num = length(x_sol);

    % Read the file and remove last blank line
    lines = readlines(filename);
    lines = lines(1:end-1);  % assumes last line is blank

    % Initialize RMSE error vector
    rmse_per_set = zeros(test_set_num, 1);

    % Loop through each test set
    for i = 1:test_set_num
        rtl_vals = zeros(4, 1);  % RTL output values

        for j = 1:4
            rtl_bin_str = char(lines((i - 1) * 4 + j));
            rtl_fi = string_to_fixpoint(rtl_bin_str, backsubIWL + backsubFWL, backsubFWL);
            rtl_vals(j) = double(rtl_fi);  % Convert to double for comparison
        end

        % Select reference values depending on mode
        switch mode
            case "double"
                ref_vals = double(x_sol{i});
            case "fi"
                ref_vals = double(x_fi{i});
            otherwise
                error("Unknown mode. Use 'double' or 'fi'.");
        end

        % Compute RMSE
        diff = rtl_vals - ref_vals;
        rmse_per_set(i) = sqrt(mean(diff.^2));
    end

    % Display RMSE per test set
    for i = 1:test_set_num
        fprintf('Set %d RMSE: %.6f\n', i, rmse_per_set(i));
    end

    % Plot RMSE
    figure;
    plot(1:test_set_num, rmse_per_set, '-o', 'LineWidth', 1.5);
    grid on;
    xlabel('Test Set Index');
    ylabel('RMSE');
    title(sprintf('RMSE per Test Set (Mode: %s)', mode));
end



