function tf32_str = double_to_tf32(x)
    % double to tf32 fi
    % Step 1: 轉為 single precision
    x_single = single(x);

    % Step 2: typecast 成 uint32，取得 IEEE 754 bits
    bits = typecast(x_single, 'uint32');
    bin_str = dec2bin(bits, 32);  % e.g. '01000000010010001111010111000011'

    % Step 3: 解析 TF32 結構 (sign:1, exponent:8, mantissa:10)
    sign_bit = bin_str(1);
    exponent_bits = bin_str(2:9);
    mantissa_bits = bin_str(10:19);  % 截斷 mantissa，只取前10位

    % Step 4: 組合 TF32 格式的 binary string and convert it to fi
    tf32_str = string_to_fixpoint(char([sign_bit, exponent_bits, mantissa_bits]), 19,0);
    
end
