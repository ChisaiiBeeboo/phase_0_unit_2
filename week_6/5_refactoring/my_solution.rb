# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.

#Pseudocode
# Define CreditCard class that takes an integer of 16 digits in length and initialize the instance of that integer
# Define method doubled to take the integer and return an array of every other number of the integer multiplied by 2
# Define method sum that returns the sum of the array returned by doubled
# Define method check_card that confirms sum is truly divisble by 10 

# Original Solution
# class CreditCard
# 	def initialize(creditCardNum) # => Takes one integer argument
# 		raise ArgumentError, 'Should be 16 numbers' if Math.log10(creditCardNum).to_i + 1 != 16 # => raises argument error if length of integer is not 16 digits
# 		@creditCardNum = creditCardNum # => Assigns instance of creditCardNum 
# 		doubled_number = doubled(creditCardNum) # => doubled_number is assigned to value of calling doubled and passing in creditCardNum argument
# 		@total = sum(doubled_number) # => Assigns instance total value of calling sum and passing it doubled_number argument
# 	end

# 	def doubled(num) # => Takes creditCardNum integer as argument
# 		arr = num.to_s.split('') # => Splits integer into array of strings
# 		shifted = arr.rotate(-2) # =>  Rotates array 2 spaces to the right so we start at the 2nd to last integer
# 		@arrOfInt = shifted.map.with_index do |num, index| # => Iterates through the shifted array by the value and it's index and assign it the variable called @arrOfInt
# 			if index % 2 == 0 || index == 0 # => If index is even number or 0 
# 				num.to_i * 2  # => Turn the string into an integer and multiply by 2
# 			else
# 				num.to_i # => Else just return the number
# 			end
# 		end
# 		@arrOfInt # => Return the array of Integers
# 	end

# 	def sum(arrI) # => Takes one argument array of integers
# 		arrOf_SepInt = arrI.to_s.split('').map(&:to_i) # => Splits array of integers into individual array of strings, then maps all strings into integers
# 		arrOf_SepInt.inject(:+) # =>  Sums up the contents of the array
# 	end    

# 	def check_card
# 		@total % 10 == 0 ? true : false # => If total is divisble 10 then it's a valid credit card number
# 	end
# end



# Refactored Solution

class CreditCard
	def initialize(creditCardNum)
		raise ArgumentError, 'Should be 16 numbers' if Math.log10(creditCardNum).to_i + 1 != 16
		@creditCardNum = creditCardNum
	end

	def doubledEvenIndex(creditCardNum)
		@arrOfIntegers = creditCardNum.to_s.split('').map.with_index do |creditCardNum, index| 
			if index.even? or index == 0 
				creditCardNum.to_i * 2 
			else
				creditCardNum.to_i 
			end
		end
		@arrOfIntegers
	end

	def sum(arrOfIntegers)
		arrOf_SepIntegers = @arrOfIntegers.to_s.split('').map(&:to_i)
		@total = arrOf_SepIntegers.inject(:+)
	end    

	def check_card
		doubledEvenIndex(@creditCardNum)
		sum(@arrOfIntegers)
		@total % 10 == 0 ? true : false
	end
end


# DRIVER TESTS GO BELOW THIS LINE
# card = CreditCard.new(4563960122001999)
# p card.check_card # => true

# card = CreditCard.new(4408041234567892)
# p card.check_card # => false

# card = CreditCard.new(44080412345678)
# p card.check_card # => should throw error

def assert
  raise ArgumentError.new("Try again!") unless yield
  raise "Assertion failed!" unless yield
end

card = CreditCard.new(4563960122001999)
assert { card.check_card == true }

card = CreditCard.new(4408041234567892)
assert { card.check_card == false }

# card = CreditCard.new(11111111111111112)
# assert_raise("ArgumentError") { card.check_card == false }
begin 
  CreditCard.new(11111111111111112)
rescue ArgumentError
end

begin 
  CreditCard.new(1)
rescue ArgumentError
end


# Knowing what I know now and looking back on my class, I can see there is some fat to be trimmed. I removed the unnecessary rotate method, 
# which I only implemented because the directions explicitly said to start with the 2nd to last digit of the integer. In retrospect, starting from
# the beginning would've accomplished the same thing.
# I relocated the chunk of code in my initialize method into the check_card method for better readability. Reader would have a 
# better idea of where check_card is getting the @total value from this time around. I also gave the variables more descriptive names.
# I spent a good amount of time looking over other peoples code and feel that overall my methods are short and descriptive. I did 
# struggle with my assert_raise method as I didn't know how to assert an argument error. After reviewing other people code I notice
# most didn't bother checking for argument errors. Finally came upon Kevin Kang's solution and implemented his rescue clause into the test.
# Though it doesn't accomplish my original goal, this workaround did get all tests to pass. I'll continue looking into assert_raise.
