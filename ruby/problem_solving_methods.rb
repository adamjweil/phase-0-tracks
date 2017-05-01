# --->Release 0: Implement a Simple Search<----
# 
def search_array(arr, int)
	i = 0
	last = arr.length
	final_array =[]
	
		until i > last do

			if arr[i] == int	
			final_array << i
			p i 
			end
		i +=1
		end

	if final_array == []
	puts "nil"

	end

end

puts " EXAMPLES (search for '1'| Returns array index): "
search_array([42, 89, 23, 1], 23)
puts " EXAMPLES (search for '24'| Returns array index): "
search_array([42, 89, 23, 1], 24)

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
puts " EXAMPLE fib(100): "
fib(100)

# ----
# --->Release 2: Sort an Arrays<----
# 1. Decided to research a bubble sort 
# 2. This type of sorting method moves through a collection of values, from left to right, 
# and compares each value with the value to the right of it, and then determines which is higher. 
# It is my understanding that this type of sorting method is not the most effective for real-world 
# programs, mainly because it's slower than other sorting methods. Visualizing how this type of 
# sorting method works is the easiest way for me to conceptually understand it. I have a dry erase
# board in my room at home, and I find it helpful to draw out the processes involved in each step
# of the method to help me understand the whole
# 3. At first I feel a little overwhelmed. This is mostly when I am researching how this type of sorting
# method works. Once I start to use my dry erase board, I become much more confident in my abilities 
# and understanding of how the method is achieving its goal. At this point I become pretty excited and
# curious to see if I'm able to actually put this visualization into a workable code. The overwhelming
# feeling at the beginning can't be helpful, so I try to stay level headed while I'm still trying to get 
# a grasp on the material. Once the excitment and curiosity kick in, it's a great feeling because I
# can't wait to start typing away and try to figure out how I'm going to make this code work
# 4. Pseudocode the bubble sort 
	#Retrieve an array of integers
		# Either by creating it myself, or having it inputted by the user
	# Determine how many integers are in the array
		# Can achieve this by using array.length
	# Create a loop that is going to iterate through the whole array 
	# (which we just got using the length of the array minus 1)
	# Create a nested block value that runs a conditional statement
		# Inside the loop, compare the value of the zerp index of the array to the value of the zero 
		# plus 1 value
		# Continue this iteration thru all of the array values with the value on their right
	# Create a boolean value to determine when the code should exit the loop
	# 	Set it to false, and then run the conditional statemnt after that
	# 		If the conditional statement runs, then we need to rearrange the values in the array
	# 	When the boolean value returns false, not meeting the conditional statement after going thru
	# 	the iteration n - 1 times, we know the array has been sorted
	# 	We can now exit the loop
	# 		This can be done by entering "break if not 'boolean value'"
	# Return the sorted array
# 5. Implement the sorting method below:
# 
def bubble_sort(array)
	
	n = array.length

	loop do
		sorted = false

		(n - 1).times do |i|
			if array[i] > array[i + 1]
				array[i], array[i + 1]=array[i + 1], array[i]
				sorted = true
			end
		end
		break if not sorted
	end
	p array
end

puts " EXAMPLE ARRAY (unsorted): "
p sample_array = [10, 5, 2, 6, 5, 4, 6, 7, 8, 3]

puts "  SORTED ARRAY: "
bubble_sort(sample_array)

# ----