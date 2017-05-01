# 5.5 Solo Challenge: Manipulating Strings with Iteration
# 
# ----->RELEASE # 0 - Attempt a Tricky Algorithm<------
# ---> Pseudocode<--
# Define a method that takes in one parameter as an argument
		# The data type of this paramter will be a string, and it will be used for entering a spy's 
		# real full name (first and last)
	# The first task this method needs to complete is swapping the first and last name (entered as the argument)


def spy_name_map(str)
# reverse first and last name
	# str = str.downcase
	split_name = str.split(' ')
	reverse_name = split_name.reverse
	spy_name = reverse_name.join(' ')
	stored_names = []

letters = spy_name.split('')
i = 0

	letters.map! { |letter| letter.next }
	spy_final = letters.join('')
# if spy_final.include? '!'
spy_final = spy_final.gsub!('!', ' ')
	stored_names << spy_final
	p spy_final
end

puts "Swapped first and last: ".upcase
spy_name_map("Adam Weil")
stored_names = []
#____
# --->RELEASE # 1 & RELEASE 2<----
# -->Provide a user interface and storing the values<---
# Provide a user interface that lets a user ebter a name and get a fake name back. Let the user do this
# 	repeatedly until they decide to quit by typing 'quit'. (They might just hit Enter to continue)
loop  do
puts "Please enter your full name ('First Last'): "
name = gets.chomp.to_s
if name == 'quit'
	swap = true
	p "ending program"
	
	break if swap
end
	
	x = spy_name_map(name)
	stored_names << x
end
puts "Array of stored names: ".upcase
p stored_names
