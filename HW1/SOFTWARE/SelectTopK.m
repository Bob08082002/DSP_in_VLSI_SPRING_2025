input_filename = '../TESTBED/pattern/P0_DATA_I.dat';
output_filename = '../SOFTWARE/result/P0_SOFTWARE_RESULT_O.dat';

data_file = fopen(input_filename, 'r');
output_file = fopen(output_filename, 'w');

while ~feof(data_file)
    line = fgetl(data_file);
    if contains(line, 'Pattern')
        fprintf(output_file, '%s\n', line);
        sequence = zeros(1, 32);
        
        % Read 32 values
        for i = 1:32
            line = fgetl(data_file);
            parts = strsplit(line, '  // ');
            sequence(i) = str2double(parts{2});
        end
        
        % Sorting in chunks of 4
        group_reg_r = zeros(8, 4);
        for i = 1:8
            group_reg_r(i,:) = sort(sequence((i-1)*4+1:i*4), 'descend');
        end

        % Finding top 7 values iteratively
        group_idx_r = ones(1, 8);
        group_idx_valid = ones(1, 8);


        
        for i = 1:7
            % Extract values from group_reg_r using group_idx_r
            candidates = arrayfun(@(i) group_reg_r(i, group_idx_r(i)), 1:8);
            % Apply validity mask: if group i is invalid, then group i
            % should not in comparison. (set group i -inf)
            valid_candidates = candidates .* group_idx_valid;  % Set invalid entries to zero (or use -inf)
            valid_candidates(group_idx_valid == 0) = -inf; % Set invalid values to -inf for max comparison

            % Find the maximum value and its index
            [SortOut, Max_idx] = max(valid_candidates);

            % Write top 7 values in binary format
            bin_str = dec2bin(typecast(int8(SortOut), 'uint8'), 8);
            fprintf(output_file, '%s  // %d\n', bin_str, SortOut);
            
            % Update group_idx_r and group_idx_valid
            if group_idx_r(Max_idx) == 4 % already last one
                group_idx_valid(Max_idx) = 0;
            else 
                group_idx_r(Max_idx) = group_idx_r(Max_idx) + 1;
            end
        end

        fprintf(output_file, '\n');

    end
end

fclose(data_file);
fclose(output_file);