#step 1 create a board
#variables 
board = [" ", " ", " ", " ", " ", " ", " ", " ", " " ]
free_positions = {
	"0" => "0", 
	"1" => "1", 
	"2" => "2", 
	"3" => "3", 
	"4" => "4", 
	"5" => "5", 
	"6" => "6", 
	"7" => "7", 
	"8" => "8"
}
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
# board[5] = "X"
# display_board(board)

 # step2 create players
 class Player 
	attr_reader :marker
    
  def initialize(name, marker)
		@name = name
		@marker = marker
	end

	def place_mark(board, position)
		board[position.to_i] = @marker
		display_board(board)
		return board
	end
end

def play_game(board, free_positions)
	puts WELCOME_MESSAGE
	puts "Enter a name: "
	player_name = gets.chomp()
	human_player = Player.new(player_name, "X")
	computer_player = Player.new("Computer", "O")
  game_running = true
	display_board(board)
	while game_running
		puts "Choose a position 0-8"
		player_position = gets.chomp()
		is_free = free_positions.include?(player_position)
		while is_free == false
			puts "Position isn't available. Choose another position 0-8"
		  player_position = gets.chomp()
			is_free = free_positions.include?(player_position)
		end #end of validiation while
		free_positions.delete(player_position)
		player_position = player_position.to_i
		new_board = human_player.place_mark(board, player_position)
		random_array = free_positions.values
		random_number = random_array.shuffle.first
		puts "Computer's turn!
		Computer chooses position: #{random_number}"
		board = computer_player.place_mark(new_board, random_number)
		free_positions.delete(random_number)
	end #end of while game loop
end #end of function

play_game(board, free_positions)
 