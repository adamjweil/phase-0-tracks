#METHOD DECLATIONS
puts "How many employees will be processed? "
employee_count = gets.chomp.to_i
i = 0;

until i == employee_count do

puts "What is your name? "
name = gets.chomp.downcase.to_s

puts "How old are you? "
age = gets.chomp.to_i

puts "What year were you born? "
year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?(yes/no) "
garlic = gets.chomp.downcase

puts "Would you like to enroll in the company’s health insurance? "
insurance = gets.chomp

# puts "Can you please list your allergies"

# until gets.chomp == "done" || "sunshine"
#   input = gets.chomp
# end
# array = []
# input = ' '
# while input != 'done' || 'sunshine'
#   input = gets.chomp
#   array.push input
# end

# allergies = Array.new
# while yn != "done"

#   array << gets.chomp
#   yn = array.last
# end

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

if year_truth == true && (garlic == true || insurance == true)
  vampire_status = "Probably not a vampire"

elsif (year_truth == false) && (garlic == false && insurance == false)
  vampire_status = "Almost certainly a vampire"

 elsif !(year_truth == true) && (garlic == false || insurance == false)
  vampire_status = "Probably a vampire"

 elsif (name == "Drake Cula" || name == "Tu Fang")
  vampire_status = "Definitely a vampire"

else
  vampire_status = "Results inconclusive."
end


i += 1;
puts "Employee # #{i}: #{vampire_status}"


end
# puts "Name: #{name}"
# puts "Age: #{age}"
# puts "Born in: #{year}"
# puts "Garlic bread?: #{garlic}"
# puts "Enroll in health insurance?: #{insurance}"

