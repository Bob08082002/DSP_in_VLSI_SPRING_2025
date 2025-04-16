function x_new = TF32_div2(x)
        bin_str = bin(x); 
        slice_bits_sign = bin_str(1);
        slice_bits_mantissa = bin_str(end - (9) : end);
        slice_bits_exp = bin_str(end - (17) : end - (10));
        if char(bin_str) == '0000000000000000000' || char(bin_str) == '1000000000000000000'
            x_new = fi(0, 1, 19,0);
        else 
            sign_bit = '1';
        end
        
        
end