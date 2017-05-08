module Shout

	def yell_angrily(words)
		puts "#{words}, grrr!!! :(" 
	end


	def yelling_happily(words)
		puts "#{words}! Woo Hoooo! ;-)"
	end

end

class Animals
	include Shout
end

class Zombies
	include Shout
end

# ------>DRIVER CODE<-------
# --->Release: 2<-----------
p Shout.yelling_happily("yayyyy")
p Shout.yell_angrily("boo hoo")

#__

# ------>DRIVER CODE<---------
# -------Release: 3<----------

dog = Animals.new
dog.yell_angrily("Woof Woof")
dog.yelling_happily("Ruf! Ruf")

walking_dead = Zombies.new
walking_dead.yell_angrily("GIVE ME HUMAN FLESH NOW!!!!!")
walking_dead.yelling_happily("YOU TASTE SO GOOD!")
