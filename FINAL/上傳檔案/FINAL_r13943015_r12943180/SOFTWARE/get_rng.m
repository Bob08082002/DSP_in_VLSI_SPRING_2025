%[A_my,Q_my,R_my,x_my,y_my] = get_input(); 
%[A,Q,R,x,y] = get_input('input_patterns.mat'); % TA input


% Design Spaces
CORDIC_IWL = 5; % REMEMBER TO DECLARE SUFFICIENT BIT
CORDIC_FWLs = 15;
CORDIC_STAGES = 15;
BACKSUB_IWL = 5; % REMEMBER TO DECLARE SUFFICIENT BIT
BACKSUB_FWLs = 15;

analyze_IWL = false;
pbar = 0;pbar_max = 100;

for seed = 42007:42007
    [A,Q,R,x,y] = get_input_secret(seed);
    num_patterns = length(A);

    stages = CORDIC_STAGES;
    c_fwl = CORDIC_FWLs;
    b_fwl = BACKSUB_FWLs;

    rmse_vals = zeros(num_patterns, 1);
    indiv_fail = 0;
    all_cordicIWL = -ones(num_patterns,1); all_backsubIWL = -ones(num_patterns,1);

    for p = 1:num_patterns
        try
            [~, ~, x_sol_fi, suggested_cordicIWL, suggested_backsubIWL] = QR_fi(stages, CORDIC_IWL, c_fwl, BACKSUB_IWL, b_fwl, A{p}, y{p});
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
    
    rmse_indiv_fail = indiv_fail;
    rmse_total_val = rmse_vals;
    rmse_total_fail = mean(rmse_vals) > 1e-3;
    if rmse_indiv_fail < 6 
        fprintf('Seed %d can pass with %d fail',seed, rmse_indiv_fail);
    else
        fprintf('Seed %d cannot pass with %d fail',seed, rmse_indiv_fail);
    end
 
    pbar = pbar+1;
    tqdm(pbar,pbar_max)
end
    

function  tqdm (pbar,pbar_max)
    fprintf('Progress: %d/%d\r',pbar,pbar_max);
end



function [A_cell, Q_cell, R_cell, x_cell, y_cell] = get_input_secret(para)
    % GET_INPUT generate or read data from source
    % [A, Q, R, x, y] = get_input()             % generate 100 different data
    % [A, Q, R, x, y] = get_input('data.mat')   % Read .mat from file name
    
     if ischar(para) || isstring(para)
        % read from .mat file
        data = load(para);
        %A_matrices, Q_matrices, R_matrices, x_solutions, y_vectors
        A_cell = data.A_matrices;
        Q_cell = data.Q_matrices;
        R_cell = data.R_matrices;
        x_cell = data.x_solutions;
        y_cell = data.y_vectors;
    elseif isnumeric(para)
        rng(para); % fix random seed for reproductivity

        A_cell = {};
        Q_cell = {};
        R_cell = {};
        x_cell = {};
        y_cell = {};

        max_sets = 100;
        count = 0;

        while count < max_sets
            % Generate A & x from randon
            x = randn(4,1); 
            A = randn(4,4);
            y = A * x;

            % QR decomposition
            [Q, R] = qr(A);

            % Filter unstable solution
            if abs(R(4,4)) < 0.05
         
                continue;
            end

            % Sabe to cell delay
            count = count + 1;
            A_cell{count} = A;
            Q_cell{count} = Q;
            R_cell{count} = R;
            x_cell{count} = x;
            y_cell{count} = y;
        end
    else
        error('Invalid input: para must be a string (filename) or a numeric seed.');
    end
end
