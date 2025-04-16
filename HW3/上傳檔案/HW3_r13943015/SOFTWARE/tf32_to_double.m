function x = tf32_to_double(tf32_str)
    % tf32 string to double
    if length(tf32_str) ~= 19
        error('TF32 字串必須為 19 位元');
    end

    % 拆解 TF32 字串
    sign_bit = tf32_str(1);
    exponent_bits = tf32_str(2:9);
    mantissa_bits = tf32_str(10:19);

    % 將 mantissa 補成 23 bits（後面補0）
    mantissa_full = [mantissa_bits, repmat('0', 1, 13)];

    % 組回 IEEE 754 binary string (32-bit)
    ieee754_str = [sign_bit, exponent_bits, mantissa_full];

    % 轉成 decimal 再 cast 成 single → double
    ieee754_uint = uint32(bin2dec(ieee754_str));
    x = double(typecast(ieee754_uint, 'single'));
end