# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
	# Split string input into individual items
  	# set default quantity to 1 for each item
  	# Create a hash using the input string (split) as keys, and default qty as 1 for each
  # print the list to the console [can you use one of your other methods here?]
# output: [Hash will be the output]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Add the item name to existing hash as key, and add optional qty as corresponding value (if not nil)
# output: updated list (in hash form)

# Method to remove an item from the list
# input: list, item to be removed
# steps: remove this key value pair from hash
# output: updated list

# Method to update the quantity of an item
# input: list, item, updated qty
# steps: added item and updated qty to hash
# output: updated list

# Method to print a list and make it look pretty
# input: list
# steps: make a loop, and print each key value pair on new line
# output: (nothing returned, just manipulating how its displayed)

def create_list(str)
	input_array = str.split(", ")
	list_hash = {}

	input_array.each do |item|
		list_hash[item] = 1
	end
	list_hash
end

p example_list = create_list("Apples, Orange Juice")

def add_item(list_hash, item, num=1)
	list_hash[item] = num 
	list_hash
end

p add_item(example_list, "Lemonade", 2)
p add_item(example_list, "Tomatoes", 3)
p add_item(example_list, "Onions", 1)
p add_item(example_list, "Ice Cream", 4)

def remove_item(list_hash, item)
	list_hash.delete(item)
	list_hash
end

p remove_item(example_list, "Lemonade")

def update_qty(list_hash, item, num)
	list_hash[item] = num 
	list_hash
end

p update_qty(example_list, "Ice Cream", 1)

def print_list(list_hash)
	i = 1
	puts "-->>Grocery List<<--".upcase
	list_hash.each do |item, qty| 
		puts "#{i}. #{item}: --> qty: #{qty}"
		i += 1
	end
end

print_list(example_list)

# --->REFLECTION SECTION<---
# 1. What did you learn about pseudocode from working on this challenge?
	# I learned that spending too much time on wording my pseudocode in a specific, or particular
	# way, is not a good way to spend my time. I learned that how I word things (such as input,
	# steps, output) should be as consice as possible, while making sure all of the key words are
	# included. 

# 2. What are the tradeoffs of using arrays and hashes for this challenge?
	# Using a hash for this challange gives you the ability to have you list full of items as keys, 
	# and quantities as their corresponding values. Even if a specific qty isn't on the list, you 
	# have the ability to use a default value for the qty. Using an array may be easier to parse the 
	# input and add it to an array, but you have zero flexibility when it comes to adding a quantity 
	# greater than 1.  

# 3. What does a method return?
	# An object of data type

# 4. What kind of things can you pass into methods as arguments?
	# Name, Age, Date, Gender, anything really...
	# If the question is asking what kind of data types, you can pass any data type into a method as an argument

# 5. How can you pass information between methods?
	# You assign the output of a method to a variable, store it, and use it as an argument in another method.

# 6. What concepts were solidified in this challenge, and what concepts are still confusing?

	# Solidified -->Approaching defining methods, simplifying my pseudocode, adding key value pairs into a hash.
	# Still a little hazy --> In what order I should use the methods. Does it matter? Am i overriding my variables by passing
	# them thru multiple methods?

