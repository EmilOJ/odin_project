def caesar_cipher(string, shift_factor)
	string.scan(/./).map! do |char|
		new_char_ord = (char.ord + shift_factor)
		case
		when char.match(/[a-z]/) && new_char_ord > 122
			(new_char_ord.modulo(123) + 97).chr
		when char.match(/[A-Z]/) && new_char_ord > 90
			(new_char_ord.modulo(91) + 65).chr
		when char.match(/[A-Za-z]/)
			new_char_ord.chr
		else
			char
		end
	end.join
end



caesar_cipher("What a string!", 5)