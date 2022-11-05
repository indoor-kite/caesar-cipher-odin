def caesar_cipher(word, shift) 
    encoded_word=""
    word.each_char {|letter|
        original_pos=letter.ord
        if original_pos>=65 && original_pos<=90
            later_pos=shift+original_pos
            if later_pos>90
                later_pos=later_pos-90+65
            end
        elsif original_pos>=97 && original_pos<=122
            later_pos=shift+original_pos
            if later_pos>122
                later_pos=later_pos-122+97
            end
        else
            later_pos=original_pos
        end
        
        encoded_word+=later_pos.chr.to_s
    }
    return encoded_word
end

puts caesar_cipher("dCode Caesar!",7)