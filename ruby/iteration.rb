# RELEASE 0
# 
# def say_hello
# 	student1 = "Adam"
# 	student2 = "Connor"
# 	student3 = "Jen"
# 	student4 = "Lindsay"
# 	p "Status: before"
# 	puts "Hello students! I wanted to welcome all of my new students to class!"
# 	yield(student1, student2, student3, student4)
# 	p "Status: after"
# end
# say_hello { |student1, student2, student3, student4| puts "Great to see you, #{student1}, #{student2}, #{student3}, and #{student4}" } 

# RELEASE 1
# 
# --->Declared an array<-----
# ->Used .each to modify array data<--
raw_scores = [99, 96, 95, 95, 91, 85]
curved_scores = []

puts "Non Curved Scores( before using .each): "
p raw_scores

raw_scores.each do |score|
	curved_scores << score.next
end

puts "Curved Scores(after using .each): "
p curved_scores

# -->Used .map to modify array data<---
raw_scores = [99, 96, 95, 95, 91, 85]
puts "Original Scores (before using .map!): "
p raw_scores

raw_scores.map! do |score|
	puts score
	score.next
end

puts "After using .map call: "
p raw_scores

# --->Declared an hash<-----
# ->Used .each to modify hash data<--
state_capitals = {
	"missouri" => "Jefferson City",
	"louisiana" => "Baton Rouge",
	"massachusetts" => "Boston",
	"new_hampshire" => "Concord",
	"maine" => "Augusta",
	"florida" => "Tallahassee",
	"california" => "Sacramento"
}
puts "Original hash (before using .each):"
p state_capitals

puts "(After using .each method):"
state_capitals.each do |state, capital|
	puts "#{capital} is the capital of #{state}"
end






# numbers = {1 => 'ones', 2 => 'two', 3 => 'three'}

# numbers.each do |digit, word|
# 	puts "#{digit} is spelled out as #{word}"
# end



# numbers = ['1', '2', '3', '4']
# # modified_names = []

# puts "Original data:"
# p numbers


# modified_numbers = numbers.map do |number|	
# 	puts number
# 	number.next
# end

# puts "After .map call"
# p numbers
# p modified_numbers