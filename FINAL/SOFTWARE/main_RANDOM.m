% ------------------------------------------------------------
% Pls run "get_rng.m" first to generate 100 random pattern
%
% -------------------------------------------------------------
%% save random input pattern

cordic_stage_num = 15;
cordicIWL = 5;
cordicFWL = 15;
backsubIWL = 5;
backsubFWL = 15;



% save input pattern
A_in_fi = cell(1, 100);
y_in_fi = cell(1, 100);

for i = 1:100
    A_in_fi{i} = fi(A{i}, true, cordicFWL + cordicIWL, cordicFWL);
    y_in_fi{i} = fi(y{i}, true, cordicFWL + cordicIWL, cordicFWL);
end

save_pattern(A_in_fi, y_in_fi, '../TESTBED/pattern/RANDOM_DATA_I.dat');


%  compare rtl result
x_sol_fi = cell(1, length(A));  % 預先定義為 cell array

for test_set = 1:length(A)
    fprintf("test set %d: \n", test_set);
    [R_fi, z_fi, x_sol_fi_tmp, suggested_cordicIWL, suggested_backsubIWL] = ...
        QR_fi(cordic_stage_num, cordicIWL, cordicFWL, backsubIWL, backsubFWL, ...
              A{test_set}, y{test_set});

    x_sol_fi{test_set} = x_sol_fi_tmp;

    for i = 1:4
        for j = 1:4
            fprintf("R(%d, %d) = %s\n", i, j, bin(R_fi(i, j)));
        end
    end
    disp("-------------------");
    for i = 1:4
        fprintf("z(%d) = %s\n", i, bin(z_fi(i)));
    end
    disp("-------------------");
    for i = 1:4
        fprintf("x(%d) = %s\n", i, bin(x_sol_fi{test_set}(i)));
    end
end
%

% compare rtl result
% compare_RTL_output(x, x_sol_fi, backsubIWL, backsubFWL, '../TESTBED/pattern/RANDOM_DATA_O.dat', "double") % compare with double golden (must < 10^-3)
% compare_RTL_output(x, x_sol_fi, backsubIWL, backsubFWL, '../TESTBED/pattern/RANDOM_DATA_O.dat', "fi") % compare with software bitture model

