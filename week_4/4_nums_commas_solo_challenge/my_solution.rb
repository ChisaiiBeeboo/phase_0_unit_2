# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# seperate_comma should take a non-negative integer input
# should output the integer separated by comma's
# Change integer into string,
# Call reverse method on that string
# Scan the string to group every 3 characters into an array
# Use the join method to join the groups by a comma creating a string
# Then reverse the string to get the final output.


# 2. Initial Solution

def separate_comma(int)
int.to_s.reverse.scan(/.{3}|.+/).join(",").reverse
end

# 3. Refactored Solution
na


# 4. Reflection

#### The trickiest part of the challenge was the initial reverse method. I started out successfully adding a comma every 3 spaces, but because of the format my method would output '100,000,0'. After some thinking outside of the box I was able to reach the final solution by calling reverse once at the beginning and once more at the end. I discovered the scan method here http://stackoverflow.com/questions/3184150/ruby-string-how-to-insert-tag-every-5-characters. Can't seem to make the method any leaner than it already is.