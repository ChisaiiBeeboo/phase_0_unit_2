# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# Array is the input
# Output should return the median of the array
# Method median should take an array and check the first element to verify that it is a string, if true then sort the array alphabetically and return the middle-postion element of the array. Else if the first element of the array is not a string then return the middle-position element of the array.

# 2. Initial Solution
def median(array)
	if array[0].is_a?(String)
		array.sort[array.length/2]
    else
		sorted = array.sort
		((sorted[(sorted.length-1)/2]) + (sorted[sorted.length/2]))/2.0
	end
end

# 3. Refactored Solution



# 4. Reflection
#### Median challenge was pretty simple, it was a matter of accessing the middle-position of any given array. My ruby skills were a little rusty, I forgot to end my if statement and spent a good amount of time debugging, lesson learned. I reference ruby-doc.org when needed. Two simple challenges to start the week, feeling pretty confident.  ####