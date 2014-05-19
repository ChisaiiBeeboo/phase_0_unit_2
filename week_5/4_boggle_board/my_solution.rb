# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# Define create_word method that takes two arguments baord and splat coords.
# Use the map method to map the index position of letter then join them in an array.

# Initial Solution
def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
  puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
  puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> returns 'rad'
  puts create_word(boggle_board, [3,2], [3,1], [3,0], [2,0] ) #=> 'kate'
  puts create_word(boggle_board, [0,0], [1,0], [3,0], [2,0] ) #=> 'bite'
  puts create_word(boggle_board, [0,1], [0,3], [0,2], [1,2] ) #=> 'read'


# Reflection 
# Identifying the coordinates of each letter I was able to spell out 'kate', 'bite' and 'read'
# I'm still confused as to how map knows to iterate through row or column for the coordinates. 
# I've looked up the documentation for .first and .last but the definitions are a bit vague relative to this challenge
#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# Define method get_row, get row should take an integer argument called row. 
# Case statement row should return an array of corresponding row for each of the 4 rows in boggle_ board
# Initial Solution
def get_row(row)
	boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


   case row
   when 0 then boggle_board[0]
   when 1 then boggle_board[1]
   when 2 then boggle_board[2]
   when 3 then boggle_board[3]
   else
   	nil
   end
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p get_row(0) #=> ["b", "r", "a", "e"]
p get_row(1) #=> ["i", "o", "d", "t"]
p get_row(2) #=> ["e", "c", "l", "r"]
p get_row(3) #=> ["t", "a", "k", "e"]

# Reflection 
# This was the easiest method of the bunch, all I had to do was access the rows of boggle_board
# and stuff it in a case statement.


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# Define method get_col, method should take an integer argument called col. 
# Case statement col should return an array of corresponding rows by using the map method on boggle_board


# Initial Solution
def get_col(col)
	boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


    case col
    when 0 then boggle_board.map {|row| row[0]}
    when 1 then boggle_board.map {|row| row[1]}
    when 2 then boggle_board.map {|row| row[2]}
    when 3 then boggle_board.map {|row| row[3]}
    else
    	nil
    end 
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
p get_col(0) #=> ['b', 'i', 'e', 't']
p get_col(1) #=> ["r", "o", "c", "a"]
p get_col(2) #=> ['a', 'd', 'l', 'k']
p get_col(3) #=> ['e', 't', 'r', 'e']

# Reflection 
# Using the map method made a bit more sense in this challenge because
# I know it's iterating through each index position of each array. 
# It's twisting my brain a bit, but I'm understanding it a bit more.  


