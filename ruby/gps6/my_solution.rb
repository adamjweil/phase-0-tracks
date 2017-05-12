# Virus Predictor

# I worked on this challenge [by Adam Weil, Dan Krzyzanowski: ].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows you to bring in objects from the same primary directory that the file is located in
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
      when  (200..9999999999) then  (0.4 * @population).floor
      when  (150...200) then  (0.3 * @population).floor
      when  (100...150) then  (0.2 * @population).floor
      when  (50...100) then  (0.1 * @population).floor
      else (@population * 0.05).floor
    end

      print "#{@state} will lose #{num} people in this outbreak"

    end


  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0
   speed = case @population_density
      when (200...9999999) then 0.5
      when (150...200) then 1
      when (100...150) then 1.5
      when (50...100) then 2
      else 2.5
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
# - The first hash takes a string as the key, and a hash as the value
# - The second hash uses a sym as the key, and float/int as the value

# - The require_relative allows you to bring in objects within the same directory, while require defaults to bringing in objects stored 
#    in the core Ruby directory

# - Ways of iterating thru a Hash:
    #  .each
    #  loop thru statements (if/else, while, until, when, begin) 

# - Unessesary repitition in a couple of the methods / Using inferior approaches to accessing the data (concerting if/else statements
#    into case statements)

# - The most useful takeaway I got out of the GPS was in using case statements as a very intuitive way to refactor code to avoid
#    repitition
#  - Using the private piece of code to allow methods to run on methods within the same class. This I had little experience with 
#    beforehand 