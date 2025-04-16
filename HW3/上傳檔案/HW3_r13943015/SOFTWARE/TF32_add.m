
function result = TF32_add(operand_A , operand_B)

    operand_A = fi(operand_A, true, 19, 0);
    operand_B = fi(operand_B, true, 19, 0);

    % 檢查是否為正零或負零
    Is_A_Zero = (operand_A == string_to_fixpoint('0000000000000000000', 19, 0)) || (operand_A == string_to_fixpoint('1000000000000000000', 19, 0));
    Is_B_Zero = (operand_B == string_to_fixpoint('0000000000000000000', 19, 0)) || (operand_B == string_to_fixpoint('1000000000000000000', 19, 0));

    
    % 解析指數部分（第 17:10 位）
    exp_A = bitshift(bitand(operand_A, bin2dec('111111110000000000')), -10);
    exp_B = bitshift(bitand(operand_B, bin2dec('111111110000000000')), -10);
    % 判斷 A 的指數是否較大
    Is_A_Exp_L = (exp_A >= exp_B);
    % 計算指數差異
    if Is_A_Exp_L
        exp_diff = exp_A - exp_B;
    else
        exp_diff = exp_B - exp_A;
    end
    % 計算偏移量（bias 128）
    exp_A_bias255 = fi(exp_A + 128, false, 9, 0);
    exp_B_bias255 = fi(exp_B + 128, false, 9, 0);


    % % 提取尾數部分（第 9:0 位）
    a_m = bin(operand_A);
    b_m = bin(operand_B);
    % 加上隱含位 (leading one)
    if Is_A_Zero
        unsign_mantissa_A = string_to_fixpoint("00" + a_m(end-9:end), 12, 0); % {2'b00, mantissa_A} % 取出 operand_A[9:0]
    else
        unsign_mantissa_A = string_to_fixpoint("01" + a_m(end-9:end), 12, 0); % {2'b01, mantissa_A} % 取出 operand_A[9:0]
    end
    if Is_B_Zero
        unsign_mantissa_B = string_to_fixpoint("00" + b_m(end-9:end), 12, 0); % {2'b00, mantissa_B} % 取出 operand_B[9:0]
    else
        unsign_mantissa_B = string_to_fixpoint("01" + b_m(end-9:end), 12, 0);  % {2'b01, mantissa_B} % 取出 operand_B[9:0]
    end

    
    % 提取符號位
    sign_A = bitget(operand_A, 19); % operand_A[18]
    sign_B = bitget(operand_B, 19); % operand_B[18]
    % unsign_mantissa + sign 位元修正，轉換為有號數
    if sign_A
        sign_mantissa_A = fi(unsign_mantissa_A * -1, true, 12, 0);
    else
        sign_mantissa_A = fi(unsign_mantissa_A, true, 12, 0);
    end
    if sign_B
        sign_mantissa_B = fi(unsign_mantissa_B * -1, true, 12, 0);
    else
        sign_mantissa_B = fi(unsign_mantissa_B, true, 12, 0);
    end

    PRECISION_BIT_LEN = 25;
    % Add precision bits(to keep result's sticky bits)
    sign_mantissa_A_prec = string_to_fixpoint(strcat(bin(sign_mantissa_A), repmat('0', 1, PRECISION_BIT_LEN)) , 12+PRECISION_BIT_LEN, 0);
    sign_mantissa_B_prec = string_to_fixpoint(strcat(bin(sign_mantissa_B), repmat('0', 1, PRECISION_BIT_LEN)) , 12+PRECISION_BIT_LEN, 0);

    if Is_A_Exp_L
        Shifted_sign_mantissa_A_prec = sign_mantissa_A_prec;
        Shifted_sign_mantissa_B_prec = bitsra(sign_mantissa_B_prec, exp_diff); % Arithmetic Right Shift
    else
        Shifted_sign_mantissa_A_prec = bitsra(sign_mantissa_A_prec, exp_diff); % Arithmetic Right Shift
        Shifted_sign_mantissa_B_prec = sign_mantissa_B_prec;
    end
    
    sign_sum = fi(Shifted_sign_mantissa_A_prec + Shifted_sign_mantissa_B_prec, true, 13+PRECISION_BIT_LEN, 0);

    if sign_sum < 0
        sign_bit = fi (1, false, 1, 0);
    else 
        sign_bit = fi (0, false, 1, 0);
    end
    unsign_sum =  fi(abs(sign_sum), false, 13+PRECISION_BIT_LEN, 0);

    % Counting leading zeros
    bin_str = bin(unsign_sum);            % Get binary string representation
    
    leading_zero = find(bin_str ~= '0', 1) - 1;
    if isempty(leading_zero)
        leading_zero = 13+PRECISION_BIT_LEN;
    end

    % Normalize mantissa
    normalized_unsign_sum = bitshift(unsign_sum, leading_zero); % logical left shift
    
    bin_str = bin(normalized_unsign_sum); 
    Gaurd_bit = str2double(bin_str(end - (PRECISION_BIT_LEN + 2)));  % 第PRECISION_BIT_LEN + 2位 in Verilog
    Round_bit = str2double(bin_str(end - (PRECISION_BIT_LEN + 1)));  % 第PRECISION_BIT_LEN + 1位 in Verilog
    or_bits = bin_str(end-PRECISION_BIT_LEN:end);           % 取第0~PRECISION_BIT_LEN位的字串
    Sticky_bit = any(or_bits == '1');        % 若有任何 '1'，則為 1
    
    slice_bits = bin_str(end - (PRECISION_BIT_LEN+12) : end - (PRECISION_BIT_LEN+2));
    slice_bits_dec = bin2dec(slice_bits);
    if (Gaurd_bit&&Round_bit)||(Round_bit&&Sticky_bit)
        round_bit = 1;
    else 
        round_bit = 0;    
    end
    round_mantissa = fi(slice_bits_dec + round_bit, true, 12, 0);

    if Is_A_Exp_L
        result_exp_bias255 = fi(exp_A_bias255 - leading_zero + 2, false, 9, 0);
    else
        result_exp_bias255 = fi(exp_B_bias255 - leading_zero + 2, false, 9, 0);
    end

    % Rounding again 
    bin_round_mantissa = bin(round_mantissa);
    if bin_round_mantissa(1) == '1'
        bin_str = bin(round_mantissa); 
        slice_bits = bin_str(end - (11) : end - (1));
        final_round_mantissa = fi(bin2dec(slice_bits), false, 11, 0);
        final_result_exp_bias255 = result_exp_bias255 + 1;
    else
        bin_str = bin(round_mantissa); 
        slice_bits = bin_str(end - (10) : end - (0));
        final_round_mantissa = fi(bin2dec(slice_bits), false, 11, 0);
        final_result_exp_bias255 = result_exp_bias255;
    end

    if final_round_mantissa == 0
        result_m = fi(0, false, 10, 0);
        result_e = fi(0, false, 8, 0);
        result_s = fi(0, false, 1, 0);
    elseif final_result_exp_bias255 < 129

        result_m_subnormal = fi(bitsrl(final_round_mantissa, (129 - final_result_exp_bias255)), false, 10, 0);
        bin_result_m_subnormal = bin(result_m_subnormal);
        if (bin_result_m_subnormal(1) == '1')
             result_m = fi(0, false, 10, 0);
             result_e = fi(1, false, 8, 0);
             result_s = fi(sign_bit, false, 1, 0);
        else
            result_m = fi(0, false, 10, 0);
            result_e = fi(0, false, 8, 0);
            result_s = fi(0, false, 1, 0);
        end
    else 
            bin_str = bin(final_round_mantissa); 
            slice_bits = bin_str(end - (9) : end - (0));
            result_m = fi(bin2dec(slice_bits), false, 10, 0);
            result_e = fi(final_result_exp_bias255 - 128, false, 8, 0);
            result_s = fi(sign_bit, false, 1, 0);
    end


    bin_result = [bin(result_s) bin(result_e) bin(result_m)];

    

    % disp(bin(Shifted_sign_mantissa_A_prec))
    % disp(bin(Shifted_sign_mantissa_B_prec))
    % disp(sign_bit)
    % disp(bin(unsign_sum))
    % disp(leading_zero)
    % disp(bin(normalized_unsign_sum))
    % 
    % disp([Gaurd_bit Round_bit Sticky_bit])
    % disp(bin(round_mantissa));
    % disp(bin(result_exp_bias255))
    % disp(bin(final_round_mantissa))
    % disp(final_result_exp_bias255)
    % 
    % disp(bin(result_m))
    % disp(bin(result_e))
    % disp(bin(result_s))


    result = string_to_fixpoint(bin_result, 19, 0);


      
end

