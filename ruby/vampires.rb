#METHOD DECLATIONS
#
# This goal of this program is to determine whether incoming students are vampires of not.... or is it??? hmmmmmm
#
#
#
# Determines how many incoming students there are
puts "How many employees will be processed? "
employee_count = gets.chomp.to_i

i = 0;

# Starts loop for each incoming student
until i == employee_count do

puts "What is your name? "
name = gets.chomp.downcase.to_s

puts "How old are you? "
age = gets.chomp.to_i

puts "What year were you born? "
year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no) "
garlic = gets.chomp.downcase

puts "Would you like to enroll in the companies health insurance? (yes/no) "
insurance = gets.chomp.downcase


year_truth = true
actual_year = 2017 - age

case garlic
when "yes", "ya", "y", "yup"
    garlic = true
else
    garlic = false
end

case insurance
when "yes", "ya", "y", "yup"
    insurance = true
else
    insurance = false
end

case year_truth
when actual_year == year
    year_truth = true
else
    year_truth = false
end


if (name == "Drake Cula" || name == "Tu Fang" || name == "tu fang" || name == "drake cula")
  vampire_status = "Definitely a vampire"

elsif (year_truth == false) && (garlic == false && insurance == false)
  vampire_status = "Almost certainly a vampire"

elsif !(year_truth == true) && (garlic == false || insurance == false)
  vampire_status = "Probably a vampire"

elsif year_truth == true && (garlic == true || insurance == true)
  vampire_status = "Probably not a vampire"

else
  vampire_status = "Results inconclusive."
end


i += 1;
puts "--->EMPLOYEE # #{i} RESULTS: #{vampire_status}"
end

# p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

abort("Actually, never mind! What do these questions have to do with anything? Let's all be friends.")


  # This is an alternative method to run the conditional           statements, as opposed to the 'IF Statement' section that is run above..

# case
# when year_truth == true && (garlic == true || insurance == true)
#   vampire_status = "Probably not a vampire"
# when !(year_truth == true) && (garlic == false && insurance == false)
#     vampire_status = "Almost certainly a vampire"
# when !(year_truth == true) && (garlic == false || insurance == false)
#   vampire_status = "Probably a vampire"
# when (name == "Drake Cula" || name == "Tu Fang")
#   vampire_status = "Definitely a vampire"
# else
#   vampire_status = "Results inconclusive"
# end