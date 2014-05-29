# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
	
	# assert method raises the string 'assertion failed' unless it has a block to yield to. 
	# since name in this case has been assigned to the value of 
	# of the string 'bettysue' the assert returns nil. when assert gets to 
	# billy bob it raises 'assertion failed' because name hasn't been assigned to 'billybob'

# 3. Copy your selected challenge here

class GuessingGame
	def initialize(answer)
		@answer = answer
	end

	def guess(guess)
		@guess = guess
		if @guess > @answer
			:high
		elsif @guess == @answer
			:correct
		else
			:low
		end
	end

	def solved?
		@guess == @answer ? true : false
	end
end


# 4. Convert your driver test code from that challenge into Assert Statements
# game = GuessingGame.new(8)

# game.solved?   # => false

# game.guess(5)  # => :low
# game.guess(20) # => :high
# game.solved?   # => false

# game.guess(8) # => :correct
# game.solved?   # => true

def assert
  raise ArgumentError.new("Try again!") unless yield
end

game = GuessingGame.new(8)

assert { game.solved? == false }    
assert { game.guess(5) == :low } 
assert { game.solved? == false } 
assert { game.guess(8) == :correct } 
assert { game.solved? == true }  

# 5. Reflection

I felt comfortable converting driver code into assert statements for the GuessingGame class.
I'm sure it won't be as simple when dealing with more complex methods, with different
arguments. Looking forward to something more challenging. 
