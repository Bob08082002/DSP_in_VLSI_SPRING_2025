function x_new = toggle_bit_18(x)
        bin_str = bin(x); 
        slice_bits = char(bin_str(1));
       
        slice_bits_remain = bin_str(end - (17) : end);
        if slice_bits == '1'
            sign_bit = '0';
        else 
            sign_bit = '1';
        end
        
        x_new = string_to_fixpoint(char([sign_bit, slice_bits_remain]), 19,0);
end