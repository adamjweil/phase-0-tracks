# # --->Release # 0: Add Behavior to a Class<----
# #
class Puppy
# (--->Release # 1: Declare an Initialize Method<---)
# Without changing my driver code, the initialize method runs. When I created my instance of the Puppy class,
# specifically when I assigned the variable larry = Puppy.new, the initialize method ran automatically.
	
	def initialize
		p "Initializing new puppy instance...."
	end

 	def fetch(toy)
   		 p "I brought back the #{toy}!"
    	toy
	end

    def speak(int)
  		i = 0
  		string = " "
  		out = String.new
  			until i == int
  				i += 1
  				p "Woof!"
  			end	
    end

    def roll_over
  		p "*rolls over*"
    end

	def dog_years(int)
	  	human_years = int.to_i
	  	doggy_years = 7
	  	age = human_years * doggy_years
  		p "Doggy Years: #{age}"
    end

	def puppy_best_friend(str)
  		p "Puppy's Best Friend: #{str}"
  	end

end


# ----->Driver Code<-----
#

larry = Puppy.new
larry.speak(3)
larry.roll_over
larry.dog_years(3)
larry.puppy_best_friend("Barney")

#___
# <<<<<------------------------------------------------------>>>>>
class ZooTrip

	def initialize
		p "Initializing a zoo_trip instance..."
	end

	def trip_time(traveltime, zootime)
		# traveltime and zootime should are in minutes
		traveltime.to_i
		zootime.to_i

		hours = ((traveltime * 2) + zootime) / 60
		minutes = ((traveltime * 2) + zootime) % 60
		total_time = "#Trip time is #{hours} hours and #{minutes} min"

		p total_time
	end

	def trip_leader(str)
		p "The Trip Leader today is #{str}!!"
	end



end

tuesday = ZooTrip.new
tuesday.trip_time(25, 90)
tuesday.trip_leader("Tyler")


# class Tinder

# 	def initialize
# 		p "Initializing a new tinder instance..."
# 	end

# 	def physical_charic(name, gender, sexuality, age)
# 		p "-->BASIC INFO<--"
# 		p "Name: #{name}"
# 		p "Gender: #{gender}"
# 		p "Age: #{age}"
# 		p "Sexuality: #{sexuality}"
# 	end

# 	def location_search_radious(str, num=5)
# 		p "-->Location and Search Radius<--".upcase
# 		p "Currently lives in #{str}, but would love to meet new people within #{num} miles.."
# 	end

# 	def fifty_instances
# 	i = "a"
# 	e = "a".to_s
# 	n = 1
# 	arr.Tinder.new = []
# 		until n == 50 
# 		profile = "Tinder" + n.to_s	
# 		profile = Tinder.new
# 		arr << profile
# 		n += 1.to_i
# 		end
# 		 arr
# 	end


# arr.physical_charic.each [name, gender, sexuality, age] do 
# 	arr.push
# 	p arr
# end
# end
	

# John = Tinder.new
# p John.fifty_instances
# John.physical_charic("Adam", "Male", "Straight", 30)

# def fifty_instances
# i = a
# until i == ax 
# 	p Tinder.new
# 	i = i.next
# end
# end

# p John.fifty_instances

# John.location_search_radious("New York", 15)

