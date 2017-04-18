puts "What is the hamsters name? "
name = gets.chomp.to_s

puts "What is the volume level of the hamster?(1-10) "
volume = gets.chomp.to_i

puts "What color is the hamsters fur? "
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption?(yes/no)  "
adoption = gets.chomp.downcase

puts "What is the estimated age of hamster?  "
age = nil
age = gets.chomp.to_f


case adoption
when "yes", "ya", "y", "yup"
    adoption = true
else
    adoption = false
end


puts "The name of the hamster is: #{name}"
puts "The loudness of the hamster is: #{volume}"
puts "The hamsters color is: #{fur_color}"
puts "Is #{name} Adoptable? #{adoption}"
puts "The estimated age of #{name} is: #{age}"




