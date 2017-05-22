# Challange 8.5: Combining SQL and Ruby

# Releases 0-3: Build Something Awesome
# So far in this course, you've had to satisfy a rubric by reading for detail, asking questions to resolve ambiguity, 
# and building programs to spec. These are crucial skills for a developer.

# But learning and self-development skills are important, too:

#    --> What do you do with your free time?
#    --> How do you find ways to push yourself when there's no one around to tell you what to do?
#    --> How do you find new ideas to explore when we aren't providing them as bullets?

# Your answers to these questions will have a huge impact on your success, and today is your first official opportunity to practice.
require 'sqlite3'

db = SQLite3::Database.open "RubySQL.db"	

def check_num(number)
	db = SQLite3::Database.open "RubySQL.db"	
		number = number
		x = db.execute("SELECT * FROM customers WHERE phone_number = #{number}")
		len = x.length
			if len != 0
				nam = db.execute("SELECT name FROM customers WHERE phone_number = #{num}")
				address = db.execute("SELECT street_address FROM customers WHERE phone_number = #{num}")
		
				p "Welcome Back  #{nam}!! "
				p "Your address is listed as #{address} "
			else
				puts "Incorrect number"
				puts "."
				puts "."
				puts "."
				puts "Not found in our database...."
			end
		
end

def new_cust(str, num, email, address)
	db = SQLite3::Database.open "RubySQL.db" 

	db.execute("INSERT INTO customers (name, phone_number, email, street_address) VALUES (?, ?, ?, ?)" , [str, num, email, address] )
end


def add_customer

	db = SQLite3::Database.open "RubySQL.db" 

		puts "Please enter your name (First and Last)"
			title = gets.chomp
			# name = str.to_s
		
		puts "Please enter the best telephone number to reach you (no spaces): "
			num = gets.chomp.to_i
		
		puts " Please enter your eMail address: "
			email = gets.chomp.to_s

		puts " Please enter your delivery address: "
			address = gets.chomp.to_s

		# print ": >>  Would you like to be on our mailing list? (yes/no) : "
		# 	mail_list = gets.chomp
		
		db.execute("INSERT INTO customers (name, phone_number, email, street_address) VALUES (?, ?, ?, ?)" , [title, num, email, address] )


end


    # check_num(9085919920)


# -------
# ---------------------------------DRIVER CODE-------------------------
# db = SQLite3::Database.open("RubySQL.db") 
# db.execute(add_customer)
member = false

puts "------->Welcome to Adam's Bakery on Wheels!!!!"
puts "......Scooter Wheels, that is...."
puts ''

# puts " To place an order, your customer information needs to be in our database"
# puts " This is only to keep things running smoothly!!!! "
# puts " NOT STEALING DATA.......promise!!!"
# Checking whether they are in Database already
puts ""
puts "Are you a returning customer? If so, please enter your phone number (no spaces). If not, type \"new customer\""
print ":>> Number: "
num = gets.chomp

	if num != "new customer"
		check_num(num)
	else

	end


# print ">> Please enter your phone number (no spaces): "
# num = gets.chomp


# puts ""

# output = check_num(num)
# 	if output.length != 0
# 		member = true
# 		puts "Check your Name & Street Address below: "
# 		p output
		
# 	else
# 		puts "You have not been to our restaurant before!!"

# 		puts "Would you like to enter your personal information now?:  "
# 		answer = gets.chomp.to_s
		
# 		if answer == "yes"
# 			SQLite3::Database.open "RubySQL.db" 

# 			puts "Please enter your name (First and Last)"
# 			title = gets.chomp

# 			puts "Please enter the best telephone number to reach you (no spaces): "
# 			num = gets.chomp.

# 			puts " Please enter your eMail address: "
# 			email = gets.chomp

# 			puts " Please enter your delivery address: "
# 			address = gets.chomp

# 			db.execute("INSERT INTO customers (name, phone_number, street_address, email) VALUES (?, ?, ?, ?)" , [title, num, email, address] )
# 			# new_cust(title, num, email, address)

# 		else
# 			p "Ok, join another time!!"
# 		end
# 	end
# p member
# p output.length
# db.execute("SELECT * FROM customers WHERE phone_number = #{num}")


# # db.check_num(9085919920)