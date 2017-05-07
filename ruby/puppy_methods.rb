class Puppy

# # (--->Release # 1: Declare an Initialize Method<---)
# # Without changing my driver code, the initialize method runs. When I created my instance of the Puppy class,
# # specifically when I assigned the variable larry = Puppy.new, the initialize method ran automatically.

	def initialize
		p "Initializing new puppy instance...."
	end


 	def fetch(toy)
   		p "I brought back the #{toy}!"
    	toy
	end


    def speak(int)
  	  i = 0
  		until i == int
  			i += 1
  			p "Woof!"
  		end	
    end


    def roll_over
  		p "*rolls over*"
    end


	def dog_years(int)
	  	human_years = int
	  	age = human_years * 7
  		p "Doggy Years: #{age}"
    end


	def puppy_best_friend(str)
  		p "#{str} is the puppy's Best Friend"
  	end

end


# ----->Driver Code for Puppy Class<-----
#

larry = Puppy.new
larry.speak(5)
larry.roll_over
larry.dog_years(6)
larry.puppy_best_friend("Barney")

#__
# -------------->Creating New Class<-------------------------------------------
class ZooTrip

	def initialize
		# p "Initializing a zoo_trip instance..."
	end


	def trip_time(traveltime, zootime)
		# traveltime and zootime should are in minutes
		traveltime.to_i
		zootime.to_i

		hours = ((traveltime * 2) + zootime) / 60
		minutes = ((traveltime * 2) + zootime) % 60
		total_time = "Trip time is #{hours} hours and #{minutes} min"

		p total_time
	end


	def trip_leader(str)
		p "The Trip Leader today is #{str}!!"
	end


end

# ---------->Driver Code<----------
#

zoo_array = []
profile_trip_leaders = ["Adam", "Gary", "Tyler", "Wendy", "Nicole"]
travel_times = [30, 60, 90]
zoo_times = [60, 90, 120]
i = 0
count = 1

# Loop creates 50 instances
until i == 50
	zoo_array << ZooTrip.new
	i +=1	
end

# The trip_time and trip_leader methods are run on each instance of the ZooTrip class
zoo_array.each do |instance|
 puts "Instance # #{count}"
    instance.trip_time(travel_times.sample, zoo_times.sample)
    instance.trip_leader(profile_trip_leaders.sample)
  count +=1
end

#__