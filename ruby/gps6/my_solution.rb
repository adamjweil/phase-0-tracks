# Virus Predictor

# I worked on this challenge [by myself, Dan Krzyzanowski: ].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows you to bring in objects from main directory
# require would you be used to pull from the ruby folder directory, rather then a specific path defined

require_relative 'state_data'

class VirusPredictor


  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
 

  def virus_effects
    predicted_deaths
    speed_of_spread
  end
 
  private


  def predicted_deaths
    # predicted deaths is solely based on population density
    # research case statements

    num = case @population_density 
     when  (200..9999999999) then  0.4
     when  (150...200) then  0.3
     when  (100...150) then  0.2
     when  (50...100) then  0.1
   	else 
    	  num = (@population * 0.05).floor
    	end

      print "#{@state} will lose #{num} people in this outbreak"

    end


  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

 	 if @population_density >= 200
      	   speed = 0.5
	 elsif @population_density >= 150
	   speed = 1
	 elsif @population_density >= 100
 	   speed = 1.5
 	 elsif @population_density >= 50
	   speed = 2
 	 else
  	   speed = 2.5
   end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each do |state, data|
	VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section