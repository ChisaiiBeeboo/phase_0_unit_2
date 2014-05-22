# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# STATE_DATA uses the implicit form for it's hash. State_Data keys' are set to state names and it's value is assigned to another hash that is using
# Ruby symbols to assign key to value. 

# EXPLANATION OF require_relative
# Loads the given file and makes it's data acessible to the file calling
# require_relative. Original_Codes' VirusPredictor class in this case will be able to reference
# state_data for it's methods
#
require_relative 'state_data'

class VirusPredictor
 
  # Initializing instances of state, population, population_density, region, and next region. Making the State data hash
  # acessible to the methods within virusPredictor
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
    @STATE_DATA = STATE_DATA
  end

# virus_effects calls the methods predicted_deaths and speed_of_spread 
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end



  private  #what is this?  what happens if it were cut and pasted above the virus_effects method, this makes predicted_deaths private and can only be visble to virusPredictor. If we were 
  # to remove and pasted it elsewhere the code wouldn't run

# predicted_deaths takes 3 arguments and uses its arguments to determine how many lives would be lost based on it's population density. 
# the numbers of deaths is a fraction of it's population. It then interpolates the calculations into a readable string.
  def predicted_deaths(population_density, population, state)
    number_of_deaths = 0
      case number_of_deaths
        when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
        when @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
        when @population_density >= 100 then number_of_deaths = (@population * 0.2).floor
        when @population_density >= 50 then number_of_deaths = (@population * 0.1).floor
        else
          number_of_deaths = (@population * 0.05).floor
      end
      print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

# speed_of_spread predicts how many months it would take the virus to spred based on it's population density data, it then interpolate the data
# into a readable string. 
  def speed_of_spread(population_density, state) #in months
    speed = 0.0
    case speed
      when @population_density >= 200 then speed += 0.5
      when @population_density >= 150 then speed += 1
      when @population_density >= 100 then speed += 1.5
      when @population_density >= 50 then speed += 2
      else
          speed += 2.5
    end
     puts " and will spread across the state in #{speed} months.\n\n"
  end
end



#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

  def createReport
    STATE_DATA.each do |state, data| 
     report = VirusPredictor.new(state, data[:population_density], data[:population], data[:region], data[:regional_spread]) 
     puts report.virus_effects
    end
  end

 p createReport








