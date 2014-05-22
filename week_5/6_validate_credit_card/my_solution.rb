# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: Should take an integer input
# Should output true or false 
# Steps:
# Split integer into array of seperate strings
# Rotate array to the right by 2 positions
# Map through array by value and index
# Convert to integer and multiply by 2 if index is an even number or equal to 0
# Split array into string array, each string is a single number, then map everything back into an integer
# Sum up array calling inject
# If sum of array is divisible by 10 then return true else false


# 3. Initial Solution

class CreditCard
	def initialize(creditCardNum)
		raise ArgumentError, 'Should be 16 numbers' if Math.log10(creditCardNum).to_i + 1 != 16
		@creditCardNum = creditCardNum
		doubled_number = doubled(creditCardNum)
		@total = sum(doubled_number)
	end

	def doubled(num)
		arr = num.to_s.split('')
		shifted = arr.rotate(-2)
		@arrOfInt = shifted.map.with_index do |num, index| 
			if index % 2 == 0 || index == 0 
				num.to_i * 2 
			else
				num.to_i 
			end
		end
		@arrOfInt
	end

	def sum(arrI)
		arrOf_SepInt = arrI.to_s.split('').map(&:to_i)
		arrOf_SepInt.inject(:+)
	end    

	def check_card
		@total % 10 == 0 ? true : false
	end
end

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
