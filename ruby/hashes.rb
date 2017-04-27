# --->Psuedocode---<
# INTERIOR DESIGNER CLIENT FORM
# Define a hash
	# Define the various keys that the hash will contain

# Prompt user for the following information
	# client name
	# address
	# age
	# email address
	# phone number
	# favorite shade of blue
	# number of children
	# decor theme
# Convert this user input into the approptiate data type
# Make sure the input data is being assigned to a given key within the hash
# Print the hash back out to the screen after the designer has answered all of the questions
# Give the designer a change to update any given field
	# If the designer says 'none'
	# 	# Skip
	# If the designer types in:
	# 	client_name
	# 		Have the program ask for a new value and update the :client_name key
	# 	age
	# 		Have the program ask for a new value and update the :age key
	# 	number_of_children
	# 		Have the program ask for a new value and update the :number_of_children key
	# 	decor_theme
	# 		Have the program ask for a new value and update the :decor_theme key
# Print the latest version of the hash and exit the program
# -----> End of Psuedocode <-----

# Initializing/manipulating an array as well as accessing arrays with variables
# address = ['name', 'address', 'email', 'phone', 'fave_blue_shade', 'wallpaper_pref', 'ombre']
# p address
# p address.length
# p address.first
# p address.last
# p address[3]

# Initializing our hash with all of the variables on our form
form = {
	"name" => "default_string",
	"address" => "default_string",
	"age" => "default_integer",
	"email" => "default_string",
	"phone" => "default_integer",
	"fave_blue_shade" => "default_blue",
	"fave_tvshow" => "default_string"
}


puts "What's your full name?"
form["name"] = gets.chomp.to_s

# puts "What's your address?"
# form["address"] = gets.chomp.to_s

puts "Enter your address:"
puts "Street: "
street = gets.chomp
puts "City: "
city = gets.chomp
puts "State: "
state = gets.chomp
puts "Zip Code: "
zip = gets.chomp
form["address"] = street + ", " + city + ", " + state + ", " + zip

puts "What's your age?"
form["age"] = gets.chomp.to_i

puts "What's your email address?"
form["email"] = gets.chomp.to_s

puts "What's your phone number?"
form["phone"] = gets.chomp.to_i

puts "Favorite shade of blue: "
form["fave_blue_shade"] = gets.chomp.to_s

puts "What is your favorite TV show? "
form["fave_tvshow"] = gets.chomp.to_s

p
p form

puts "Is there any section of the form you would like to update? "
puts "If no, enter 'none', if yes, please enter the title of the field you would like to update. "
user_input = gets.chomp
	if user_input == 'none'
		puts "Final form submission: "
		p
		p form
	else
	
	if user_input == "name"
		puts "Updated name? "
		form["name"] = gets.chomp.to_s
	elsif user_input == "address"
		puts "Enter your address:"
		puts "Street: "
		street = gets.chomp
		puts "City: "
		city = gets.chomp
		puts "State: "
		state = gets.chomp
		puts "Zip Code: "
		zip = gets.chomp
		form["address"] = street + ", " + city + ", " + state + ", " + zip
	elsif user_input == "age"
		puts "Please re-enter age: ?"
		form["age"] = gets.chomp.to_i
	elsif user_input == "email"
		puts "Updated email address? ?"
		form["email"] = gets.chomp
	elsif user_input == "phone"
		puts "Updated phone number? "
		form["phone"] = gets.chomp.to_i
	elsif user_input == "fave_blue_shade"
		puts "Updated favorite shade of blue: "
		form["fave_blue_shade"] = gets.chomp.to_s
	elsif user_input == "fave_tvshow"
		puts "Favorie TV show? "
		form["fave_tvshow"] = gets.chomp.to_s
	else
		puts "Incorrect user input"
	end

	p
	puts "Latest form submission:"
	p
	p form

	end





