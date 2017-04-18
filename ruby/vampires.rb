puts "How many employees will be processed? "
employee_count = gets.chomp.to_i

until employee_count <= 0 do

puts "What is your name? "
name = gets.chomp.to_s

puts "How old are you? "
age = gets.chomp.to_i

puts "What year were you born? "
year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?(yes/no) "
garlic = gets.chomp.downcase

puts "Would you like to enroll in the company’s health insurance? "
insurance = gets.chomp

# puts "Can you please list your allergies"
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

case actual_year
when actual_year == year
    actual_year = true
else
    actual_year = false
end


if actual_year == year && (garlic == true || insurance == true)
  vampire_status = "Probably not a vampire"
  else
  vampire_status = "Results inconclusive."
end

if !(actual_year == year) && (garlic == false || insurance == false)
  vampire_status = "Probably a vampire"
  else
  vampire_status = "Results inconclusive."
end

if !(actual_year == year) && garlic == false && insurance == false
  vampire_status = "Almost certainly a vampire"
  else
  vampire_status = "Results inconclusive."
end

if (name == "Drake Cula" || name == "Tu Fang")
  vampire_status = "Definitely a vampire"
else
  vampire_status = "Results inconclusive."
end


puts "#{vampire_status}"

employee_count -=1;
end
# puts "Name: #{name}"
# puts "Age: #{age}"
# puts "Born in: #{year}"
# puts "Garlic bread?: #{garlic}"
# puts "Enroll in health insurance?: #{insurance}"

