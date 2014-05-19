# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:
# Output:
# Steps:


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







