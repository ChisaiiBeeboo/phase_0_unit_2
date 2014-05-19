# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


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






# 5. Reflection 
