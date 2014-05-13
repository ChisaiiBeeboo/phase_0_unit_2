# U2.W4: Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

#### total ####

# Take an array as input
# Should output the sum of the elements in the array
# Define a method total that iterates through the elements of the array and returns the sum

#### sentence_maker ####

# Take an array of strings and numbers as input
# Should output a formal sentence string
# Define a method sentence_maker that takes the first element of the array and call capitalize on it, then append a '.' at the end of the array, and calling the join method (' ') on the array

# 2. Initial Solution

def total(arr)
    arr.inject(:+)
end

def sentence_maker(arr)
    (arr.join(' ') << '.').capitalize
end


# 3. Refactored Solution

NA

# 4. Reflection
####This is my first time using xcode and rspec to test code. The video included in the instructions made setting up/startup fast and painless. I'm still using Sublime text2 to do actual coding though, I like the convenience ctrl-b command. With the sentence_maker method I had the necessary functions to get the method to work, it was just a matter of what order to implement them. My methods are short one liners, not sure they can be refactored. Challenge was short and simple coding, I'm excited we're finally ruby'n.I'm having trouble with commenting out multi-lines in xcode, google is saying cmd-/, but that's just not happening.####
