#encoding: utf-8

class Board
	def initialize
		@chessboard = []
	end
end



class Movements
	def initialize(movements_source)
		movements_file = IO.read(movements_source)
		all_movements = movements_file.split("\n").map do |movement| #This array gonna contain all movements
		@array_of_movements = movement.split("")
	end

	def get_movements_content
		@all_movements
	end
end











################## The Piece  

class Rook
end



movements = Movements.new("easy_board.txt")
puts movements.get_movements_content
the_chessboard = Board.new