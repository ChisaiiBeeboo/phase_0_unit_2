# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: Should take an integer as input
# Output: Should output a random integer less sides
# Steps: Define a class called Die. Die should have 3 methods
# Initialize method should take an integer argument sides, instance of sides should be assigned to sides, initialize should throw an ArgumentError should the argument be less than 0
# Sides method should return instance of side
# Roll method should return an integer between 1 and sides


# 3. Initial Solution

class Die
  def initialize(sides)
 	raise ArgumentError, 'Wrong number' unless sides > 0
  	@sides = sides
  end
  
  def sides
	@sides
  end
  
  def roll
    rand(1..sides)
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(3)
p die.sides # returns 3
p die.roll # returns a random number between 1 and number of sides
p die = Die.new(0) # Should throw ArgumentError 'Wrong number'



# 5. Reflection 
#Challenge was simple, learned about raise method and ArgumentError's. I'm a little
#confused as to when to refer to the instance of an argument while defining methods. User
#rand method to return a random number.






