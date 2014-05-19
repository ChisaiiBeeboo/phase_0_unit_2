# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Initial Solution
def get_row(row)
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


# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution
def get_col(col)
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


# Reflection 