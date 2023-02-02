#step 1 create a board
#variables 
board = [" ", " ", " ", " ", " ", " ", " ", " ", " " ]
WELCOME_MESSAGE = "Welcome to Tic Tac Toe! 
The game is played on a grid that's 3 squares by 3 squares.
You are X, your friend and the computer is O. 
Players take turns putting their marks in empty squares.
The first player to get 3 of her marks in a row (up, down, across, or diagonally) is the winner.
When all 9 squares are full, the game is over.
"

def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} " 
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

# display_board(board)
board[5] = "X"
display_board(board)

 # step2 create players
 class Player 
	attr_reader :marker
    
  def initialize(name, marker)
		@name = name
		@marker = marker
	end

	def place_mark(position)
		board[position] = @marker
		display_board(board)
		return board
	end
end

class HumanPlayer < Player
end

class ComputerPlayer < Player
end

 # step3 create a loop where players switch turns

 #step 4 check to see if there is a match

 # step 5 create a game loop
def play_game()
	puts WELCOME_MESSAGE
	puts "Enter a name: "
	player_name = gets.chomp()
end
 