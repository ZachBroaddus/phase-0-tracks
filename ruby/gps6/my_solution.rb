# Virus Predictor

# I worked on this challenge [by myself, with: Kristin Macdonough].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# The bridge between two documents;
# Require is used to bring in data from outside the directory, while require_relative links to a file in the same directory.
#
require_relative 'state_data'

class VirusPredictor

  # Instantiate an instance of the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calling predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # input population_Density and population
  # predicting number of deaths (output) based on input
  def predicted_deaths
    # predicted deaths is solely based on population density
    # number of deaths = @population @population_density

    if @population_density >= 200
      x = 0.4
    elsif @population_density >= 150
      x = 0.3
    elsif @population_density >= 100
      x = 0.2
    elsif @population_density >= 50
      x = 0.1
    else
      x = 0.05
    end
    	number_of_deaths = (@population * x).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # calculating how fast virus will spread based on population density
  def speed_of_spread #in months
    
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

STATE_DATA.each do |state, value|
  state = VirusPredictor.new(state, value[:population_density], value[:population])
  state.virus_effects
end


#=======================================================================
# Reflection Section
# * What are the differences between the two different hash syntaxes shown in the state_data file?
# 	They used the rocket syntax for the outer array, so that they could store the keys as strings and display them to
# 	the user. The inner array used symbols for keys, which is a good choice for naming keys that will not be displayed
# 	to the user.

# * What does require_relative do? How is it different from require?
# 	require_relative is used to link files within the same directory and require is used to link files that may be in
# 	different directories.

# * What are some ways to iterate through a hash?
# 	We used the .each method in our program, but you could also use .map or even .times, if you know the specific number
# 	of times that the code block will need to run. There are also options such as while loops, which work, but are
# 	less ideal.

# * When refactoring virus_effects, what stood out to you about the variables, if anything?
# 	They did not need to be passed into the function, because all instance methods automatically have access to the 
# 	instance variables.

# * What concept did you most solidify in this challenge?
# 	I think this was great refactoring practice. I'm fairly sure that the only way I'll get good at refactoring is through
# 	lots of practice. Given that, it was nice to have this practice opportunity.