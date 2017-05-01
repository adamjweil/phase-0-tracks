# --->Release 0: Implement a Simple Search<----
# 
def int_search(arr, int)
	i = 0
	last = arr.length
	final_array =[]
	
		until i > last do

			if arr[i] == int	
			final_array << i
			p i 
				else
			end
		i +=1
		end

	if final_array == []
	puts "nil"
			else
	end

end

puts " EXAMPLES (search for '1'| Returns array index): "
int_search([42, 89, 89, 1], 1)
puts " EXAMPLES (search for '24'| Returns array index): "
int_search([42, 89, 23, 1], 24)

# ----
# --->Release 1: Calculate Fibonacci Numbers<----
# 
def fib(int)
	base = [0, 1]
	until base.length == int
		x = base[-1]
		y = base[-2]
		base << (x + y)
		# length = base.length
	end
	p base
end

puts " EXAMPLE fib(6): "
fib(6)
puts " EXAMPLE fib(20): "
fib(20)
# puts " EXAMPLE fib(100): "
# fib(100)

# ----
# --->Release 3: Sort an Arrays<----
# Pseudocode array
# 
# 
# def bubble_sort(array)
# 	len = array.length
# 	loop do
# 	swapped = false
# 	(len-1).times do |i|
# 		if array[i] > array[i+1]
# 			array[i], array[i+1] = array[i+1], array[i]
# 			swapped = true
# 		end
# 	end

# 	break if not swapped
# 	end

#  array
# end


# arr_adam = [5, 4, 29, 44, 28, 12, 19, 20, 844, 49, 199, 2938]
# p bubble_sort(arr_adam)
