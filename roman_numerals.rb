# INPUT
ROMAN_DICT = {
	1000 => "M",
	500 => "D",
	100 => "C",
	50 => "L",
	10 => "X",
	5 => "V",
	1 =>  "I"
}


def to_roman(num)
	roman_numeral = ""
	ROMAN_DICT.each do |arabiac_num, roman_num|
		roman_numeral += roman_num * (num / arabiac_num)
		num = num % arabiac_num
	end
	p roman_numeral
end


# def to_roman(num)
# 	roman_numeral = ""
# 	if num >= 10
# 		roman_numeral += "X"
# 		num -= 10
# 	end
# 	if num >= 5
# 		roman_numeral += "V"
# 		num -= 5
# 	end
# 	if num > 0
# 		roman_numeral += "I" * num
# 	end
# 	roman_numeral
# end


# p to_roman(1)
# p to_roman(4)
# p to_roman(5)
# p to_roman(8)
# p to_roman(10)
# p to_roman(16)
# p to_roman(16)
# p to_roman(146)
# p to_roman(1436)