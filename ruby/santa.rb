class Santa

	def initialize(gender, ethnicity, age=0)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		
		p "Initializing Santa instance...."
	end


	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end


	def eat_milk_and_cookies(str)
	
		str.to_s
		p "That was a good #{str} cookie!"
	end

	def about
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Reindeer Ranking: #{@reindeer_ranking}"
		puts "Age: #{@age}"
	end

end

holiday_hero = Santa.new("Male", "Caucasian")
# prints out "Initializing Santa instance..."

holiday_hero.speak
# prints out "Ho, ho, ho! Haappy holidays!"

holiday_hero.eat_milk_and_cookies("Chocolate Chop")
# prints out "That was a good Chocolate Chip cookie!"

holiday_hero.about

