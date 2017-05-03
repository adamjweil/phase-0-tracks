class Puppy

	def initialize
		puts "Initializing new puppy instance"
	end

 	 def fetch(toy)
   	 puts "I brought back the #{toy}!"
    	toy
	end

  def speak(int)
  	i = 0
  	string = " "
  	out = String.new
  	until i == int
  		i += 1
  		out = out + "Woof! "
  	end
  	p out.chomp
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(num)
  	age = num * 7
  	age
  end

end




# ----->Driver Code<-----
# 
pup_name = Puppy.new
puts "What is the name of your new puppy? "
pup_name = gets.chomp
p "Hi #{pup_name}!! You're a cute puppy!"

pup_name = Puppy.new
p pup_name.roll_over

puts "What toy do you want me to fetch? "
toy = gets.chomp.to_s
p pup_name.fetch(toy)

puts "How many human years old is the pup? "
num = gets.chomp.to_i
p pup_name.dog_years(num)

puts "Enter a number: "
num = gets.chomp.to_i
pup_name.speak(num)



# barney = Puppy.new
# p barney.fetch('frog')
# p barney.speak(3)

adam