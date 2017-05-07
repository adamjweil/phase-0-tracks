class Santa

	def initialize(gender, ethnicity)

		@gender = gender
		@ethnicity = ethnicity
		# @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		
		output = "Initializing Santa instance...."
	end


	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end


	def eat_milk_and_cookies(cookie_type)
		cookie_type.to_s
		p "That was a good #{cookie_type} cookie!"

	end

	def about
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Reindeer Ranking: #{@reindeer_ranking}"
		puts "Age: #{@age}"
	end
end

arr_santa = []
gender = ["Male", "Fema]e", "Bi-gender", "Gender-Nonconformist"]
gender_rand = gender[rand(4)]
# p gender_rand
ethnicity = ["Caucasian", "Asian", "Hispnic", "Indian", "African American"]
ethnicity_rand = ethnicity[rand(5)]
# p ethnicity_rand
3.times do Santa.new(gender_rand, ethnicity_rand)
	arr_santa << Santa.new(gender_rand, ethnicity_rand)
	puts "Creatig new #{gender_rand} #{ethnicity_rand} Santa.."
	puts "We now have #{arr_santa.length} Santas!"
end


# santa_array = Array.new([])

# gender.length.times do |i|
#   arr_santa << Santa.new(gender[i], ethnicity[i])
#   p arr_santa
# end
# p arr_santa
# end

# arr_santa = []
# gender = ["Male", "Fema]e", "Bi-gender", "Gender-Nonconformist"]
# ethnicity = ["Caucasian", "Asian", "Hispnic", "Indian", "African American"]
# santa_array = Array.new([])

# gender.length.times do |i|
#   arr_santa << Santa.new(gender[i], ethnicity[i])
# end

# p arr_santa


# ex_genders.length.times do |i|
# 	santas.push(Santa.new(gender[rand(4)], ethnicity[rand(5)]) 
# 	p santas


# while i < 10
# 	random_gender = ex_genders[rand(ex_genders.length)].to_s
# 	random_ethnicity = ex_ethnicities[rand(ex_ethnicities.length)].to_s
# 	santas << Santa.new(random_gender, random_ethnicity)

# 	i += 1
# end
# p santas[]
# end



# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# santas

# holiday_hero = Santa.new("Male", "Caucasian")
# # prints out "Initializing Santa instance..."

# holiday_hero.speak
# # prints out "Ho, ho, ho! Haappy holidays!"

# holiday_hero.eat_milk_and_cookies("Snickerdoodle")
# # prints out "That was a good Chocolate Chip cookie!"

# holiday_hero.about

