# RELEASE 0
# 
# def iteration
# 	block1 = "Block 1"
# 	block2 = "Block 2"
# 	status_before = "Status: The block hasn't been run"
# 	puts status_before
# 	yield(block1, block2)
# 	status_end = "Status: The block has been run"
# 	puts status_end
# end

# iteration { |block1, block2| puts "This method is running #{block1} and #{block2}!"}

# RELEASE 1
# 
numbers = ['1', '2', '3', '4']
# modified_names = []

puts "Original data:"
p numbers


modified_numbers = numbers.map do |number|	
	puts number
	number.next
end

puts "After .map call"
p numbers
p modified_numbers