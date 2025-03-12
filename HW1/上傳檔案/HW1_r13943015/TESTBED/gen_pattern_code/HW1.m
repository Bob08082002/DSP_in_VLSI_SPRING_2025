num_patterns = 5;  % Number of random sequences
num_elements = 32; % Number of elements per sequence

data_file = fopen('../pattern/P1_DATA_I.dat', 'w');
golden_file = fopen('../pattern/P1_GOLDEN_O.dat', 'w');

for p = 1:num_patterns
    fprintf(data_file, '// Pattern %d:\n', p-1);
    sequence = zeros(1, num_elements);
    for i = 1:num_elements
        num = randi([-128, 127]); % Generate a random 8-bit signed integer
        sequence(i) = num;
        bin_str = dec2bin(typecast(int8(num), 'uint8'), 8); % Convert to 8-bit binary
        fprintf(data_file, '%s  // %d\n', bin_str, num);
    end
    fprintf(data_file, '\n');
    
    % Extract top 7 golden data (highest values)
    golden_values = sort(sequence, 'descend');
    golden_values = golden_values(1:7);
    fprintf(golden_file, '// Pattern %d:\n', p-1);
    for j = 1:7
        bin_str = dec2bin(typecast(int8(golden_values(j)), 'uint8'), 8);
        fprintf(golden_file, '%s  // %d\n', bin_str, golden_values(j));
    end
    fprintf(golden_file, '\n');
end

fclose(data_file);
fclose(golden_file);