
function result = TF32_mul(operand_A , operand_B)

    operand_A = fi(operand_A, true, 19, 0);
    operand_B = fi(operand_B, true, 19, 0);
    % 檢查是否為正零或負零
    Is_A_Zero = (operand_A == string_to_fixpoint('0000000000000000000', 19, 0)) || (operand_A == string_to_fixpoint('1000000000000000000', 19, 0));
    Is_B_Zero = (operand_B == string_to_fixpoint('0000000000000000000', 19, 0)) || (operand_B == string_to_fixpoint('1000000000000000000', 19, 0));

    
    % 解析指數部分（第 17:10 位）
    bin_str = bin(operand_A); 
    slice_bits_str = bin_str(end - 17 : end - 10);
    exp_A = fi(bin2dec(slice_bits_str), false, 8, 0);
    sign_bits_str = bin_str(1);
    sign_A = fi(bin2dec(sign_bits_str), false, 1, 0);

    bin_str = bin(operand_B); 
    slice_bits_str = bin_str(end - 17 : end - 10);
    exp_B = fi(bin2dec(slice_bits_str), false, 8, 0);
    sign_bits_str = bin_str(1);
    sign_B = fi(bin2dec(sign_bits_str), false, 1, 0);
    
    exp_sum_bias32 = fi(exp_A + exp_B + 32, false, 10, 0);


    % % 提取尾數部分（第 9:0 位）
    a_m = bin(operand_A);
    b_m = bin(operand_B);
    % 加上隱含位 (leading one)
    if Is_A_Zero
        unsign_mantissa_A = string_to_fixpoint("00" + a_m(end-9:end), 12, 0); % {1'b0, mantissa_A} % 取出 operand_A[9:0]
    else
        unsign_mantissa_A = string_to_fixpoint("01" + a_m(end-9:end), 12, 0); % {1'b1, mantissa_A} % 取出 operand_A[9:0]
    end
    if Is_B_Zero
        unsign_mantissa_B = string_to_fixpoint("00" + b_m(end-9:end), 12, 0); % {1'b0, mantissa_B} % 取出 operand_B[9:0]
    else
        unsign_mantissa_B = string_to_fixpoint("01" + b_m(end-9:end), 12, 0); % {1'b1, mantissa_B} % 取出 operand_B[9:0]
    end

    %  multiply
    unsign_mantissa_prod = fi(unsign_mantissa_A * unsign_mantissa_B, false, 22, 0);
    
    % Counting leading zeros
    bin_str = bin(unsign_mantissa_prod);            % Get binary string representation
    leading_zero = find(bin_str ~= '0', 1) - 1;
    if isempty(leading_zero)
        leading_zero = 22;
    end

    % Normalize mantissa
    normalized_unsign_mantissa_prod = bitshift(unsign_mantissa_prod, leading_zero); % logical left shift
    
    bin_str = bin(normalized_unsign_mantissa_prod); 
    Gaurd_bit = str2double(bin_str(end - (11)));  % 第11位 in Verilog
    Round_bit = str2double(bin_str(end - (10)));  % 第10位 in Verilog
    or_bits = bin_str(end-9:end);           % 取第0~9位的字串
    Sticky_bit = any(or_bits == '1');        % 若有任何 '1'，則為 1

    % rounding using G, R, S bit
    slice_bits = bin_str(end - (21) : end - (11));
    slice_bits_dec = bin2dec(slice_bits);
    if (Gaurd_bit&&Round_bit)||(Round_bit&&Sticky_bit)
        round_bit = 1;
    else 
        round_bit = 0;    
    end
    round_mantissa = fi(slice_bits_dec + round_bit, true, 12, 0);
    % modify result exp by leading_zero	
    result_exp_sum_bias32 = fi(exp_sum_bias32 - leading_zero + 2, false, 10, 0);
    
    % Rounding again 
    bin_round_mantissa = bin(round_mantissa);
    if bin_round_mantissa(1) == '1'
        bin_str = bin(round_mantissa); 
        slice_bits = bin_str(end - (11) : end - (1));
        final_round_mantissa = fi(bin2dec(slice_bits), false, 11, 0);
        final_result_exp_sum_bias32 = result_exp_sum_bias32;
    else
        bin_str = bin(round_mantissa); 
        slice_bits = bin_str(end - (10) : end - (0));
        final_round_mantissa = fi(bin2dec(slice_bits), false, 11, 0);
        final_result_exp_sum_bias32 = result_exp_sum_bias32 - 1;
    end


    if final_round_mantissa == 0
        result_m = fi(0, false, 10, 0);
        result_e = fi(0, false, 8, 0);
        result_s = fi(0, false, 1, 0);
    elseif final_result_exp_sum_bias32 > 413
        result_m = fi(1023, false, 10, 0);
        result_e = fi(254, false, 8, 0);
        if sign_A ~= sign_B % XOR
           result_s = fi(1, false, 1, 0);
        else 
           result_s = fi(0, false, 1, 0);
        end
    elseif final_result_exp_sum_bias32 < 160
        result_m = fi(0, false, 10, 0);
        result_e = fi(0, false, 8, 0);
        result_s = fi(0, false, 1, 0);
    else 
       bin_str = bin(final_round_mantissa); 
       slice_bits = bin_str(end - (9) : end - (0));
       result_m = fi(bin2dec(slice_bits), false, 10, 0);
       result_e = fi(final_result_exp_sum_bias32 - 127 - 32, false, 8, 0);
       if sign_A ~= sign_B % XOR
           result_s = fi(1, false, 1, 0);
       else 
           result_s = fi(0, false, 1, 0);
       end
    end

    bin_result = [bin(result_s) bin(result_e) bin(result_m)];
    result = string_to_fixpoint(bin_result, 19, 0);

    
    
      
end

