function output_signal = Transposed_FIR(filter_coeff_in, input_signal_in, quantize_datatype, quantize_bitwidth)
    % This function implement a quantized transposed form FIR filter given filter
    % coeff. Number of output points is same as number of output points.

    % --------- parameters ---------
    % filter_coeff: filter's coefficient
    % input_signal: input fed into filter
    % quantize_datatype: array of boolean [input coeff mul add] that indicates what type of datatpe should be quantized. Ex: [1 0 1 0] means inputs and datas after multiplication should be quantized.
    % quantize_bitwidth: quantize setting of different data type, ex: [[4 5]; [9 10]; [2 1]; [7 7]]  means input are quantized to 4bit integer + 5 bit fraction...

    % --------- output ---------
    % output_signal: array of same length as input 
    
    % inputs
    if quantize_datatype(1) % input is quanted
        fraction_bitwidth = quantize_bitwidth(1, 2);
        total_bitwidth = quantize_bitwidth(1, 1) + quantize_bitwidth(1, 2);
        input_signal = double(fi(input_signal_in, 1, total_bitwidth, fraction_bitwidth, 'RoundingMethod', 'Nearest'));
    else  % input is not quanted (use floating point)
        input_signal = input_signal_in;
    end
    % filter_coeff
    if quantize_datatype(2) % filter_coeff is quanted
        fraction_bitwidth = quantize_bitwidth(2, 2);
        total_bitwidth = quantize_bitwidth(2, 1) + quantize_bitwidth(2, 2);
        filter_coeff = double(fi(filter_coeff_in, 1, total_bitwidth, fraction_bitwidth, 'RoundingMethod', 'Nearest'));
    else  % filter_coeff is not quanted (use floating point)
        filter_coeff = filter_coeff_in;
    end


    FF = zeros(1, length(filter_coeff) - 1);  % Flip Flops (delay element)
    output_signal = zeros(size(input_signal)); % same size output
    
    for i = 1:length(input_signal)
        % --------- output ---------
        % datas after multiplication
        if quantize_datatype(3) % datas after multiplication is quanted
            fraction_bitwidth = quantize_bitwidth(3, 2);
            total_bitwidth = quantize_bitwidth(3, 1) + quantize_bitwidth(3, 2);
            prod = double(fi(input_signal(i) * filter_coeff(1), 1, total_bitwidth, fraction_bitwidth, 'RoundingMethod', 'Nearest'));
        else  % datas after multiplication is not quanted (use floating point)
            prod = input_signal(i) * filter_coeff(1);
        end

        % datas after addition
        if quantize_datatype(4) % datas after addition is quanted
            fraction_bitwidth = quantize_bitwidth(4, 2);
            total_bitwidth = quantize_bitwidth(4, 1) + quantize_bitwidth(4, 2);
            add = double(fi(prod + FF(1), 1, total_bitwidth, fraction_bitwidth, 'RoundingMethod', 'Nearest'));
        else  % datas after addition is not quanted (use floating point)
            add = prod + FF(1);
        end

        output_signal(i) = add;   
        % --------- middle FF ---------
        for j = 2:(length(filter_coeff) - 1)  % 2 ~ 16
            % datas after multiplication
            if quantize_datatype(3) % datas after multiplication is quanted
                fraction_bitwidth = quantize_bitwidth(3, 2);
                total_bitwidth = quantize_bitwidth(3, 1) + quantize_bitwidth(3, 2);
                prod = double(fi(input_signal(i) * filter_coeff(j), 1, total_bitwidth, fraction_bitwidth, 'RoundingMethod', 'Nearest'));
            else  % datas after multiplication is not quanted (use floating point)
                prod = input_signal(i) * filter_coeff(j);
            end

            % datas after addition
            if quantize_datatype(4) % datas after addition is quanted
                fraction_bitwidth = quantize_bitwidth(4, 2);
                total_bitwidth = quantize_bitwidth(4, 1) + quantize_bitwidth(4, 2);
                add = double(fi(prod + FF(j), 1, total_bitwidth, fraction_bitwidth, 'RoundingMethod', 'Nearest'));
            else  % datas after addition is not quanted (use floating point)
                add = prod + FF(j);
            end
            FF(j - 1) = add;  
        end
        % --------- first FF ---------
        % datas after multiplication
        if quantize_datatype(3) % datas after multiplication is quanted
            fraction_bitwidth = quantize_bitwidth(3, 2);
            total_bitwidth = quantize_bitwidth(3, 1) + quantize_bitwidth(3, 2);
            prod = double(fi(input_signal(i) * filter_coeff(length(filter_coeff)), 1, total_bitwidth, fraction_bitwidth, 'RoundingMethod', 'Nearest'));
        else  % datas after multiplication is not quanted (use floating point)
            prod = input_signal(i) * filter_coeff(length(filter_coeff));
        end
        FF(length(filter_coeff) - 1) = prod;
    
    end

end