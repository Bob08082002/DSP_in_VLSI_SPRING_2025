function [A_cell, Q_cell, R_cell, x_cell, y_cell] = get_input(filename)
    % GET_INPUT generate or read data from source
    % [A, Q, R, x, y] = get_input()             % generate 100 different data
    % [A, Q, R, x, y] = get_input('data.mat')   % Read .mat from file name
    
    if nargin == 1
        % read from .mat file
        data = load(filename);
        %A_matrices, Q_matrices, R_matrices, x_solutions, y_vectors
        A_cell = data.A_matrices;
        Q_cell = data.Q_matrices;
        R_cell = data.R_matrices;
        x_cell = data.x_solutions;
        y_cell = data.y_vectors;
    else
        rng(18); % fix random seed for reproductivity 18,20,44,62,67

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
                disp("OOPS")
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
        disp('Nice')
    end
end
