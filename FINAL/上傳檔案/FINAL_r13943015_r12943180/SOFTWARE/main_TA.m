
%% save TA input pattern
load('input_patterns.mat');
cordic_stage_num = 15;
cordicIWL = 5;
cordicFWL = 15;
backsubIWL = 5;
backsubFWL = 15;



% save input pattern
A_in_fi_1 = fi(A_matrices{1},true,cordicFWL+cordicIWL,cordicFWL);
y_in_fi_1 = fi( y_vectors{1},true,cordicFWL+cordicIWL,cordicFWL);
A_in_fi_2 = fi(A_matrices{2},true,cordicFWL+cordicIWL,cordicFWL);
y_in_fi_2 = fi( y_vectors{2},true,cordicFWL+cordicIWL,cordicFWL);
A_in_fi_3 = fi(A_matrices{3},true,cordicFWL+cordicIWL,cordicFWL);
y_in_fi_3 = fi( y_vectors{3},true,cordicFWL+cordicIWL,cordicFWL);
A_in_fi_4 = fi(A_matrices{4},true,cordicFWL+cordicIWL,cordicFWL);
y_in_fi_4 = fi( y_vectors{4},true,cordicFWL+cordicIWL,cordicFWL);

A_in_fi = {A_in_fi_1 A_in_fi_2 A_in_fi_3 A_in_fi_4};
y_in_fi = {y_in_fi_1 y_in_fi_2 y_in_fi_3 y_in_fi_4};
save_pattern(A_in_fi, y_in_fi, '../TESTBED/pattern/TA_DATA_I.dat');


%  (debug)
x_sol_fi = cell(1, length(A_matrices));  % 預先定義為 cell array

for test_set = 1:4
    fprintf("test set %d: \n", test_set);
    [R_fi, z_fi, x_sol_fi_tmp, suggested_cordicIWL, suggested_backsubIWL] = ...
        QR_fi(cordic_stage_num, cordicIWL, cordicFWL, backsubIWL, backsubFWL, ...
              A_matrices{test_set}, y_vectors{test_set});

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

% compare rtl result with double golden
disp("------------- compare rtl result with double golden -------------")
compare_RTL_output(x_solutions, x_sol_fi, backsubIWL, backsubFWL, '../TESTBED/pattern/TA_DATA_O.dat', "double") % compare with double golden (must < 10^-3)
disp("------------- compare rtl result with software bitture model -------------")
compare_RTL_output(x_solutions, x_sol_fi, backsubIWL, backsubFWL, '../TESTBED/pattern/TA_DATA_O.dat', "fi") % compare with software bitture model

