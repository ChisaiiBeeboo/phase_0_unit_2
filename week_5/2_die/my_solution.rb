# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: Should take an array argument
# Output: Should output number of sides, ArgumentError, and a random element from array
# Steps: Define class Die, which has 3 methods: 
# Initialize should take one argument and retrun an argument error if array is empty
# Initialize has instance variable sides set to length of array and instance of labels
# Sides method should return instance of sides
# Roll should return random element from instance of labels


# 3. Initial Solution

class Die
  def initialize(labels)
  	raise ArgumentError, 'No Empty Arrays' if labels[0] == nil
  	@sides = labels.length
  	@labels = labels
  end

  def sides
  	@sides
  end

  def roll
  	@labels.sample
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
#die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
#p die.sides # still returns the number of sides, in this case 6
#p die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly
#p die = Die.new([]) # should throw "No Empty Arrays" ArgumentError





# 5. Reflection 

#I used 'if' instead of 'unless' for the raise ArgumentError in the case
#the user tries to pass it an empty array method. Also used Ruby's sample
#method to return a random element from the array. I learned that initialize
#can have have instance variable's that aren't also arguments. Attribute reader
# :sides would accomplish the same thing as sides method. Feeling confident with
# classes right now.
