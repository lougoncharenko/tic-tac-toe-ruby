class Player 
	attr_reader :marker
    
  def initialize(name, marker)
		@name = name
		@marker = marker
	end

	def name
		return @name
	end

	def place_mark(board, position)
		board[position.to_i] = @marker
		display_board(board)
		return board
	end
end