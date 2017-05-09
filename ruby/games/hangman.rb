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
	attr_reader :secret_word, :guesses, :progress, :tries
	attr_writer :guesses, :progress, :tries

	def initialize(secret_word)
		secret_word.to_s
		@secret_word = secret_word.split(//)
		@guesses = secret_word.length
		@tries = 0
		@progress = ["_" * secret_word.length]
	end

	def secret_word
		@secret_word
	end

	def guess_count
		@guesses
	end

	def progress
		["_" * secret_word.length]
	end

	def check_print(letters, guessed)
		won = true

		letters.each do |n|
			if guessed.include? n
				print n
			else
				print '_'
				won = false
			end
		end
	   return won
	end


end

def check_print(letters, guessed)
		won = true

		letters.each do |n|
			if guessed.include? n
				print n
			else
				print '_'
				won = false
			end
		end
	   return won
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
# instance = gets.chomp.to_s
word = Hangman.new(gets.chomp.to_s)
progress = word.progress
guess_count = word.guess_count
secret_word = word.secret_word
tries = 0
guessed = []

puts "Player # 1, you're work is done, please have player # 2 get onto the computer to start guessing!!"
puts ". "
puts ". "
puts "Player # 2..... Welcome!!"
puts "You are going to have: "
puts "#{word.guess_count} chances to figure out what word belongs below: "
puts ""
puts ". "
puts ". "
puts "      #{word.progress}"
puts ". "
puts "It's time to start guessing!!"
puts "Please only enter 1 letter per guess, #{word.guess_count} guesses remaining: "

while tries < word.guess_count
	letter = gets.chomp
	if secret_word.include? letter
		ind = secret_word.index(letter)
		progress.insert(ind, letter)
		progress.delete("_")
		secret_word.delete(letter)
		puts "You guessed one letter!"
		guessed << letter
		won = check_print(secret_word, guessed)

		if won
			puts "You won!! "
			break
		end

	else
		puts "Nope, sorryt. "
		tries += 1
		puts "You have " + (guess_count - tries).to_s + " left"
	end
end








