# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: Input should take integer
# Output: Should output low, high or correct.
# Steps: Define class GuessingGame
# GuessingGame should have 3 methods initialize, guess and solved?
# Initialize should instantiate answer
# Guess should take one argument guess and instantiate it. Return :high if guess is high than answer
# return :low if lower than answer and :correct if guess is equal to answer
# Solved? should return true or false based on whether guess was correct or not

# 3. Initial Solution

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




# 4. Refactored Solution

# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(8)

game.solved?   # => false

game.guess(5)  # => :low
game.guess(20) # => :high
game.solved?   # => false

game.guess(10) # => :correct
game.solved?   # => true

# 5. Reflection 
# I used if/elsif statement to build out guess. I'm getting a little 
# more comfortable with when to reference instantiated objects. First
# time I've used Ruby symbols. I did hit a wall when I couldn't get my
# solved? test to pass. I had added an if in front of my ternary operator
# which threw everything off. 






