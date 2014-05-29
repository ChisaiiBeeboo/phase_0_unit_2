# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode
# Define class BoggleBoard
# Define initialize which should take a board argument
# Define method called create_word that maps through each array in board and return the value at the given coordinates, join into a string
# Define method called get_row that takes an integer and returns the row that correlates to that integer, join them into a string
# Define method called get_col that maps through board and returns the value located at the correlates with that index in each of the arrays of board, join them into a string


# 3. Initial Solution
# class BoggleBoard
# 	attr_accessor :board
	
# 	def initialize(board)
# 		@board = board
# 	end 

# 	def create_word(*coords)
# 		coords.map { |coord| @board[coord.first][coord.last]}.join("")
# 	end

# 	def get_row(row)
# 		case row
# 		   when 0 then @board[0]
# 		   when 1 then @board[1]
# 		   when 2 then @board[2]
# 		   when 3 then @board[3]
# 		   else
# 		   		nil
# 		end
# 	end

# 	def get_col(col)
# 		case col
# 		    when 0 then @board.map {|row| row[0]}
# 		    when 1 then @board.map {|row| row[1]}
# 		    when 2 then @board.map {|row| row[2]}
# 		    when 3 then @board.map {|row| row[3]}
# 		    else
# 		    	nil
#     	end 
# 	end
# end
 
 

# 4. Refactored Solution
class BoggleBoard
	attr_accessor :board
	
	def initialize(board)
		@board = board
	end 

	def create_word(*coords)
		coords.map { |coord| @board[coord.first][coord.last]}.join("")
	end

	def get_row(row)
		@board[row].join("")
	end

	def get_col(col)
		@board.map { |array| array[col] }.join("")
	end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here: (1,2), (1,1), (2,1), (3,2)
# implement tests for each of the methods here:

dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)

 
# p boggle_board.create_word([3,2]) # => 'k'
# p boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) # => 'dock'
# p boggle_board.create_word([2,1], [1,1], [1,2], [0,3])  #=>  "code"  
# p boggle_board.create_word([0,1], [0,2], [1,2])  #=>  'rad'
# p boggle_board.create_word([3,2], [3,1], [3,0], [2,0] ) #=> 'kate'
# p boggle_board.create_word([0,0], [1,0], [3,0], [2,0] ) #=> 'bite'
# p boggle_board.create_word([0,1], [0,3], [0,2], [1,2] ) # =>  'read'

# p boggle_board.get_row(0) #=> "brae"
# p boggle_board.get_row(1) #=> "iodt"
# p boggle_board.get_row(2) #=> "eclr"
# p boggle_board.get_row(3) #=> "take"

# p boggle_board.get_col(0) #=> "biet"
# p boggle_board.get_col(1) #=> "roca"
# p boggle_board.get_col(2) #=> "adlk"
# p boggle_board.get_col(3) #=> "etre"
 


# 5. Reflection 
# The easy part was wrapping the original code into a class. I was successful in refactoring the not so dry initial code and replacing them with enumerable methods. 
# I realized that by using case in the initial solution I was hardcoding which doesn't make the code flexible, it'll work for this particular board, but not boards with
# different dimensions.
