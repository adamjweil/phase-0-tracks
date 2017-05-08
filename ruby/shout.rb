module Shout
	# This is where methods go

	def self.yell_angrily(words)
		words + "!!!" + " :("
	end


	def self.yelling_happily(words)
		words + "!!" + "  ;-)"
	end

end



# ------>DRIVER CODE<-------
# -

p Shout.yelling_happily("yayyyy")
p Shout.yell_angrily("boo hoo")

