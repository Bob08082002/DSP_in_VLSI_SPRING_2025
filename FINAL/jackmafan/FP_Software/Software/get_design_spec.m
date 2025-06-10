%[A_my,Q_my,R_my,x_my,y_my] = get_input(); 
%[A,Q,R,x,y] = get_input('input_patterns.mat'); % TA input
[A,Q,R,x,y] = get_input(); % our input

% Design Spaces
CORDIC_IWL = 10; % REMEMBER TO DECLARE SUFFICIENT BIT
CORDIC_FWLs = 12:20;
CORDIC_STAGES = 12:20;

BACKSUB_IWL = 10; % REMEMBER TO DECLARE SUFFICIENT BIT
BACKSUB_FWLs = 12:20;

% Preallocate results
rmse_total_fail = zeros(length(CORDIC_STAGES), length(CORDIC_FWLs), length(BACKSUB_FWLs));
rmse_indiv_fail = zeros(length(CORDIC_STAGES), length(CORDIC_FWLs), length(BACKSUB_FWLs));
rmse_total_val  = zeros(length(CORDIC_STAGES), length(CORDIC_FWLs), length(BACKSUB_FWLs));

analyze_IWL = true;
num_patterns = length(A);
pbar_max = length(CORDIC_FWLs) * length(CORDIC_STAGES) *  length(BACKSUB_FWLs);
pbar = 0;

for s_idx = 1:length(CORDIC_STAGES)
    stages = CORDIC_STAGES(s_idx);
    for c_idx = 1:length(CORDIC_FWLs)
        c_fwl = CORDIC_FWLs(c_idx);
        for b_idx = 1:length(BACKSUB_FWLs)
            b_fwl = BACKSUB_FWLs(b_idx);

            rmse_vals = zeros(num_patterns, 1);
            indiv_fail = 0;
            all_cordicIWL = -ones(num_patterns,1); all_backsubIWL = -ones(num_patterns,1);

            for p = 1:num_patterns
                try
                    [~, ~, x_sol_fi, suggested_cordicIWL, suggested_backsubIWL] = QR_fi(stages, CORDIC_IWL, c_fwl, BACKSUB_IWL, b_fwl, A{p}, y{p});
                    all_cordicIWL(p) = suggested_cordicIWL; all_backsubIWL(p) = suggested_backsubIWL;

                    err = double(x_sol_fi) - x{p};
                    rmse_vals(p) = sqrt(mean(err.^2));
                    if rmse_vals(p) > 1e-3
                        indiv_fail = indiv_fail + 1;
                    end
                catch ME
                    % Treat errors as failed pattern
                    fprintf('Pattern %d failed with error: %s\n', p, ME.message);
                    rmse_vals(p) = Inf;
                    indiv_fail = indiv_fail + 1;
                end
            end
            

            rmse_indiv_fail(s_idx, c_idx, b_idx) = indiv_fail;
            rmse_total_val(s_idx, c_idx, b_idx) = mean(rmse_vals);
            rmse_total_fail(s_idx, c_idx, b_idx) = mean(rmse_vals) > 1e-3;
            if analyze_IWL
                disp('IWL of CORDIC');
                disp(all_cordicIWL);
                disp('IWL of Backsub');
                disp(all_backsubIWL);
                disp(' ')
                analyze_IWL = false;
            end
            pbar = pbar+1;
            tqdm(pbar,pbar_max)
        end
    end
end

% Visualize: 3D surface plots for fixed stages
output_dir = 'analyze';


for s_idx = 1:length(CORDIC_STAGES)
    stage = CORDIC_STAGES(s_idx);

    % Plot 1: Individual Fail Count
    fig1 = figure('Visible', 'off');
    surf(CORDIC_FWLs, BACKSUB_FWLs, squeeze(rmse_indiv_fail(s_idx, :, :))');
    xlabel('CORDIC FWL'); ylabel('Backsub FWL'); zlabel('# Violations');
    title(sprintf('Individual Fail Count (stage = %d)', stage));
    saveas(fig1, fullfile(output_dir, sprintf('failcount_stage%d.png', stage)));
    close(fig1);

    % Plot 2: Mean RMSE
    fig2 = figure('Visible', 'off');
    surf(CORDIC_FWLs, BACKSUB_FWLs, squeeze(rmse_total_val(s_idx, :, :))');
    xlabel('CORDIC FWL'); ylabel('Backsub FWL'); zlabel('RMSE');
    title(sprintf('Mean RMSE (stage = %d)', stage));
    saveas(fig2, fullfile(output_dir, sprintf('rmse_stage%d.png', stage)));
    close(fig2);

    % Plot 3: Overall Fail Flag
    fig3 = figure('Visible', 'off');
    surf(CORDIC_FWLs, BACKSUB_FWLs, squeeze(rmse_total_fail(s_idx, :, :))');
    xlabel('CORDIC FWL'); ylabel('Backsub FWL'); zlabel('Total Fail Flag (>1e-3)');
    title(sprintf('Overall Fail Flag (stage = %d)', stage));
    saveas(fig3, fullfile(output_dir, sprintf('failflag_stage%d.png', stage)));
    close(fig3);

    % === Save CSV for this stage ===
    [CORDIC_grid, BACKSUB_grid] = meshgrid(CORDIC_FWLs, BACKSUB_FWLs);
    CORDIC_col = CORDIC_grid(:);
    BACKSUB_col = BACKSUB_grid(:);
    indiv_fail_col = squeeze(rmse_indiv_fail(s_idx, :, :))';
    total_val_col  = squeeze(rmse_total_val(s_idx, :, :))';
    total_fail_col = squeeze(rmse_total_fail(s_idx, :, :))';

    T = table(CORDIC_col, BACKSUB_col, ...
              indiv_fail_col(:), total_val_col(:), total_fail_col(:), ...
              'VariableNames', {'CORDIC_FWL', 'BACKSUB_FWL', ...
                                'RMSE_Indiv_Fail', 'RMSE_Total_Val', 'RMSE_Total_FailFlag'});
    writetable(T, fullfile(output_dir, sprintf('analysis_stage%d.csv', stage)));
end


function  tqdm (pbar,pbar_max)
    fprintf('Progress: %d/%d\r',pbar,pbar_max);
end