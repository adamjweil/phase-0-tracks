# INPUT
def to_roman(num)
	roman_numeral = ""
	if num >= 5
		roman_numeral += "V"
		num -= 5
	end
	if num > 0
		roman_numeral += "I" * num
	end
	roman_numeral
end


p to_roman(1)
p to_roman(3)
p to_roman(5)
p to_roman(8)