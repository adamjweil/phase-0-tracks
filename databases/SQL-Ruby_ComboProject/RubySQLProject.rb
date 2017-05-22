# Challange 8.5: Combining SQL and Ruby
# Have created an online Roladex of sorts. People can run the program and see if they are already in my Roladex, and if they
# arent, they can add their info. 

require 'sqlite3'

db = SQLite3::Database.open "RubySQL.db"	

def validate_num
    db = SQLite3::Database.open "RubySQL.db"	

    print ": >> Enter Phone Number: "
    num = gets.chomp.to_i

    name = db.execute("SELECT name FROM customers WHERE phone_number = #{num}")
    street_address = db.execute("SELECT street_address FROM customers WHERE phone_number = #{num}")
    email = db.execute("SELECT email FROM customers WHERE phone_number = #{num}")
	
	if name.length > 0 && street_address != 'nil'
		p "."
		p "Roladex Info:"
		p ": >> Name: #{name} "
		p ": >> Email Address: #{email} "
		p ": >> Street Address: #{street_address} "
			
	else
		p "Can't locate your phone number!!!"
	end
end


def roladex_add
    db = SQLite3::Database.open "RubySQL.db" 

	print ": >> Full Name (First and Last): "
	title = gets.chomp
	
	print ": >> Phone Number (no spaces): "
	num = gets.chomp.to_i
	
	print ": >> Email address: "
	email = gets.chomp.to_s

	print ": >> Please enter your address: "
	address = gets.chomp.to_s
	
	db.execute("INSERT INTO customers (name, phone_number, email, street_address) VALUES (?, ?, ?, ?)" , [title, num, email, address] )
end


# ---------------------------------DRIVER CODE-------------------------
# -------
db = SQLite3::Database.open("RubySQL.db") 

puts "------->Welcome to Adam's Roladex!!!!"
puts "Database Roladex....that is........"
puts ''
puts ""

puts "Are you in my Roladex? (yes/no) "
answer = gets.chomp.to_s

	if answer == "yes"

		puts "Let's make sure..."
		validate_num

	elsif answer == "no"
		puts "Do you want to be in my Roladex? "
		intent = gets.chomp.to_s
			if intent == "yes"
				roladex_add
				puts "Thanks for entering your info!! "
				puts "."
				puts "Let's check to make sure your info is stored: "
				validate_num
			elsif intent == "no"
				puts "Okay, no problem!"
			end
			
	else
		p "Incorrect input!!  "

end