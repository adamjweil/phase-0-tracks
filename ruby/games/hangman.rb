# --->PSEUDOCODE<--
# Create a new class that accepts one string parameter upon ititialization, this will be secret word to be guessed by the other player
# 	Each instance of this class will have three attributes, secret_word, guesses, and guessed_word
# 		The argument passed upon itialization should be assigned to the secret_word attribute of that class instance
# 		The guesses attribute will be initialized as an integer equal to the length of the secret_word passed in as an argument
# 		The guessed_word attribute should be set to a string of "_" characters with the length of the secret word
# 	      Create a guess metod for the new user to enter a letter and have it check if secret_word contains that letter
# 		The method will take a string as a parameter
# 		It can only be 1 character long
# 		It should only be letters
# 		Each time the method is run with a unique argument, guesses should be reduced by 1
# 		The guess metod will return
# 	      Create a getter method that can access the guesses attribute
# 	      Create a setter method, that can reduce the guess attribute by 1
# 	      Create a getter method that will allow the guess method to have access to the secret_word attribute
# 	      Create a setter methodf that will loop thru each character and change the chage "_" to the letter that was inputted in the guess method that secret_word contains

class Hangman

	def initialize(secret_word)
		secret_word.to_s
		@secret_word = secret_word
		@guesses = secret_word.length
		@placeholder = "_"
		@guesses.times do 
			@placeholder = @placeholder + "_"
		end
	end

	def secret_word
		p @secret_word
	end

	def guess_count
		p @guesses
	end

	def get_placeholder
		@placeholder
	end

end

# x = HangMan.new("balls")
# p x.secret_word
# p x.guess_count
# p x.get_placeholder

# ----->DRIVER CODE<-----
puts "Ready to play some Hangman?????......Well you're playing either way!!"
puts ". "
puts ". "
puts ". "
puts ". "
puts ". "
puts "Okay, so player # 1, please enter the word that you would like your partner to try and guess:  "
instance = gets.chomp.to_s
x = Hangman.new(instance)

guess_num = x.guess_count
place_holder = x.get_placeholder

puts "Player # 1, you're work is done, please have player # 2 get onto the computer to start guessing!!"
puts ". "
puts ". "
puts "Player # 2..... Welcome!!"
puts "You are going to have: "
puts "#{guess_num} chances"
puts "To figure out what word belongs below: "
puts ". "
puts ". "
puts "#{place_holder}"

puts "It's time to start guessing!!"
puts "Please only enter 1 letter per guess"