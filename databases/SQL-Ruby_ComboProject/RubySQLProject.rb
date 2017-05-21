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
require 'faker'


db = SQLite3::Database.new("RubySQL.db")

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS customers (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		phone_number INTEGER,
		email VARCHAR(255),
		address VARCHAR(255),
		mailing_list BOOLEAN
	)
SQL

db.execute(create_table_cmd)


# def check_num(number)
# 	num = number.chomp
# 	db.execute("SELECT * FROM customers WHERE phone_number = num")
# end



# -------
# ---------------------------------DRIVER CODE-------------------------

# puts "Please enter your phone number: "
# num = gets.chomp.to_i

# check_num(gets.chomp)
# db.execute("SELECT * FROM customers WHERE phone_number = #{num}")


