# 5.5 Solo Challenge: Manipulating Strings with Iteration
# 
# ----->RELEASE # 0 - Attempt a Tricky Algorithm<------
# ---> Pseudocode<--
# Define a method that takes in one parameter as an argument
		# The data type of this paramter will be a string, and it will be used for entering a spy's 
		# real full name (first and last)
	# The first task this method needs to complete is swapping the first and last name (entered as the argument)


# def spy_name(str)

# 	split_name = str.split(' ')
# 	reverse_name = split_name.reverse
# 	spy_name = reverse_name.join(' ')
	
# 	p spy_name
# end

# spy_name("Adam Weil")


def next_vowel(str)
vowels = ["a", "e", "i", "o", "u"]
letters = str.split('')
i = 0

			letters.map! { |letter| letter.next }
			new_string = letters.join('')
		
		

	p new_string
end

next_vowel("weil")


# Write in code that provides the next vowel for every instance of a vowel

# --->RELEASE # 1<----
# -->Provide a user interface<---
# Provide a user interface that lets a user ebter a name and get a fake name back. Let the user do this
# 	repeatedly until they decide to quit by typing 'quit'. (They might just hit Enter to continue)



# ----->RELEASE # 2<------
# --->Store the Aliases<---