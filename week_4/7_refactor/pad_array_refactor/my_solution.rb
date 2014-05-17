# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge by myself.



# 1. First Person's solution I liked: BenBrostoff
#    What I learned from this solution
 	# Similar to my own solution except method utilizes the .push method which is
 	# new to me.

# Copy solution here:

# class Array #extend class
#       def pad(l, output = nil) #setting output to nil makes second arg optional
#           amount = l - self.length
#           copy = self.dup #make non-destructive via duplication
#           amount.times{copy.push(output)} 
#           return copy
#         end
#        def pad!(l, output = nil)
#        	amount = l - self.length
#           amount.times{self.push(output)} #value of self is permanently changed
#           return self
#           end

# end



# 2. Second Person's solution I liked: hinghuynh
#    What I learned from this solution
	# I like the use of the single line conditional 'condition ? if_true : if_false'
# Copy solution here:

# class Array
#   def pad(num, filler=nil)
#     arr = []
#     self.each { |item| arr << item }
#     arr.length >= num ? arr : while num > arr.length do arr << filler
#     end
#     arr
#   end

#   def pad!(num,filler=nil)
#     self.length >= num ? self : while num > self.length do self << filler
#     end
#     self
#   end
# end


# 3. My original solution:

# class Array
#     def pad!(min_size, pad_value = nil)
#         (min_size - self.length).times do self << pad_value
#         end
        
#         self
#     end
    
#     def pad(min_size, pad_value = nil)
#         self.dup.pad!(min_size, pad_value)
#     end
# end

# 4. My refactored solution:

class Array
    def pad!(min_size, pad_value = nil)
        (min_size - self.length).times do self.push(pad_value) # Utilized push method
    end               # Removed extra spacig
    def pad(min_size, pad_value = nil)
        self.dup.pad!(min_size, pad_value)
    end
    self # Moved return self to the end for a cleaner look
	end
end  
        
    
    



# 5. Reflection
# This was definitely a humbling experience. I came into todays pairing
# session with all the confidence in the world. In all I spent approximately 6 
# hours on this pad_array method. That includes the time I spent on my own working 
# out the solution, the pairing session and the refactor challenege. This is the
# most time I've spent on any challenge other than getting git to work properly. 
# I learned about the flatten, dup and push method. But more importantly I've learned that
# just because you know the solution doesn't mean you understand the problem.
# I'm confident that I'll be able to solve this problem if you were to throw it at 
# me 6 months from now. Please don't throw this at me 6 months from now.