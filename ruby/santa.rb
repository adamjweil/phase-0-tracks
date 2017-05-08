class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity, age=0)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
			p "Initializing Santa instance...."
	end


	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end


	def eat_milk_and_cookies(cookie_type)
		cookie_type.to_s
		p "That was a good #{cookie_type} cookie!"
	end


	def about
		p "Gender: #{@gender}"
		p "Ethnicity: #{@ethnicity}"
		p "Reindeer Ranking: #{@reindeer_ranking}"
		p "Age: #{@age}"
	end


	def celebrate_birthday
		@age = @age + 1
	end


	def get_mad_at(reindeer_name)
	  reindeer_name.to_s

	  	if @reindeer_ranking.index(reindeer_name) != nil
			@reindeer_ranking.delete(reindeer_name)
			@reindeer_ranking.push(reindeer_name)
		end
			@reindeer_ranking
	end


end


# ---------->Driver Code<--------
# 
# adam = Santa.new("Male", "White")
# adam.about
# p "#{adam.gender}"
# p adam.ethnicity
# p "#{adam.age}"
# adam.get_mad_at("Rudolph")
# adam.get_mad_at("Dasher")
# adam.gender = "Female"
# adam.celebrate_birthday
# # adam.ethnicity = "Black"
# p "#{adam.gender}"
# p adam.ethnicity
# p "#{adam.age}"
# adam.celebrate_birthday
# adam.celebrate_birthday
# adam.get_mad_at("Dancer")
# p "#{adam.age}"
# adam.about

#__

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
i = 0
count = 1
# (rand(0..140))

100.times do
	puts "Santa # #{count}: "
	p Santa.new(example_genders.sample, example_ethnicities.sample, (rand(0..140)))
	count +=1
end

# xample_genders.length.times do |i|
#   santas << Santa.new(example_genders.sample, example_ethnicities.sample)
# end



