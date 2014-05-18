# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with: Lauren Kroner, Morgan O'Leary.

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
#Error 1: Array#pad! operates destructively
#Error 2: Array#pad! doesn't pad a long array
#Error 3: Array#pad operates non-destructively
#Error 4: Pads elements to the end of an array


#Error 5: Doesn't pad minimum size is equal to array's length
#Error 6:Array doesn't pad when minimum size is 0
#Error 7: pads with nil by default
#error8: can pad with a string
#error9: can pad with an object

#Talk it out
#Input - pad methods going to take 2 arguments min_size and pad_value
#Output- an array with the minimum length set to min_size with the optional padded value

# input should take an array, with 2 parameters
# should output


# 2. Initial Solution

 class Array
 	def pad(min_num, pad_value=nil)
 		new_array = Array.new(self)
 		return new_array if new_array.length >= min_num
 		else 
 			(min_num - new_array.length).times do
            new_array << pad_value
		end 
	 end
	 new_array     
    end
	def pad!(min_num, pad_value=nil)
		return self if self.length >= min_num
		else 
            (min_num - self.length).times do
             self << pad_value
        end       
    end
     self
   end
end 

# 3. Refactored Solution


# 4. Reflection
### Wow this was an especially frustrating challenge because I had solved this pad_an_array once before when the original Socrates excercises
# were assigned. I solved it again earlier in the week while looking over the challenges. I must have saved the wrong solution by accident
# because there were minor syntax errors and the code no longer worked(don't ask me why). Add insult to injury, I couldn't work myself back 
# to the solution during our pairing session that lasted almost 2 hrs. I requested a break in hopes of being able to come back to the problem 
# with fresh eyes. 
