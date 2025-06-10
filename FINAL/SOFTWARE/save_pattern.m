% save_pattern(A_fi, y_fi, '../TESTBED/pattern/TA_DATA_I.dat');

function [] = save_pattern(A_fi, y_fi, filename)
    % A_fi, y_fi are 1x4 cell % 4 input set
    fid = fopen(filename, 'w');  % 開啟寫入檔案

    for input_set = 1:length(A_fi)
        input_matrix = [A_fi{input_set} y_fi{input_set}];
        fprintf(fid, '// --------------------------------- Input set %d ---------------------------------// \n', input_set);  % 寫入一行
        for i = 1:5
            for j = 1:4
                if i == 5    
                    idxstr = sprintf('y(%d)', j);
                else
                    idxstr = sprintf('A(%d, %d)', j, i);
                end
                bin_str = bin(input_matrix(j, i));
                fprintf(fid, '%s   // %s: %d\n', bin_str, idxstr, double(input_matrix(j, i)));  % 寫入一行
            end
        end
    end
    fprintf(" Input pattern already be saved in %s \n", filename);
    fclose(fid);  % 關閉檔案
end




