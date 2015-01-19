#encoding: utf-8
require 'pp'



To read board games, for games already started.
class Board

	attr_accessor :initial_x_board :initial_y_board

	def initialize(board_source)
	end
end


class Movements

	attr_accessor :initial_x, :initial_y, :final_x, :final_y

	def initialize(movements_source)
		movements_file = IO.read(movements_source)
		all_movements = movements_file.split("\n")
		@array_of_movements = all_movements.map do |movement|
			movement.split(" ")
		end
		@array_converted = Converter.new.transform(@array_of_movements)
	end

	def get_initial_movement(select_movement)
		get_initial_position(select_movement)
		#puts "Estas en la posición x: #{@initial_x}, y: #{@initial_y}"
		[@initial_x, @initial_y]
	end

	def get_final_movement(select_movement)
		# @array_converted            # Esto muestra el array de movimientos
		get_final_position(select_movement)
		#puts "Quieres ir a x: #{@final_x}, y: #{@final_y}"
		[@final_x, @final_y]
	end


	def get_initial_position(select_movement,position=0,axis=0)
		@initial_x = @array_converted[select_movement][position][axis]
		@initial_y = @array_converted[select_movement][position][axis+1]	
	end

	def get_final_position(select_movement,position=1,axis=0)
		@final_x = @array_converted[select_movement][position][axis]
		@final_y = @array_converted[select_movement][position][axis+1]
	end
end




class Converter

	def transform(string_to_convert)
		latransformacion = string_to_convert.map do |item|
			[[item[0][0].ord - 96,item[0][1].to_i], [item[1][0].ord - 96,item[1][1].to_i]]
		end
	end
end

class Validator


################## The Pieces  
class Pieza
	
	attr_accessor :color

	def 

end


class Rook < Pieza
	def initialize(initial_position, final_position)   #Get two array. for initial position x,y and final position x,y
		@initial_position = initial_position # Initial axis position [x,y]
		@final_position = final_position     # Final axis position [x,y]
	end

	def check_movement
		
		puts "Your initial position is [#{@initial_position[0]},#{@initial_position[1]}]" 
		puts "Are you trying to move the piece to [#{@final_position[0]},#{@final_position[1]}]?"

		if @initial_position[0] == @final_position[0] && @initial_position[1] + @final_position[1] <= 8
			puts "Nice Rook move bro!"
		elsif @initial_position[1] == @final_position[1] && @initial_position[0] + @final_position[0] <= 8
			puts "Nice Rook move bro!"
		else
			puts "Don't try cheating me! You cannot do that with the Rook man."
		end
	end
end


class Bishop < Pieza
	def initialize(initial_position, final_position)   #Get two array. for initial position x,y and final position x,y
		@initial_position = initial_position # Initial axis position [x,y]
		@final_position = final_position     # Final axis position [x,y]
	end

	def check_movement
		
		puts "Your initial position is [#{@initial_position[0]},#{@initial_position[1]}]" 
		puts "Are you trying to move the piece to [#{@final_position[0]},#{@final_position[1]}]?"

		the_increase_in_x = @initial_position[0] - @final_position[0]
		the_increase_in_y = @initial_position[1] - @final_position[1]
		if the_increase_in_x.abs == the_increase_in_y.abs && @final_position[0] <= 8 && @final_position[1] <= 8
			puts "Nice move Bishop bro!"
		else
			puts "Don't try cheating me! You cannot do that with the Bishop man."
		end
	end
end

class Queen < Pieza
	def initialize(initial_position, final_position)   #Get two array. for initial position x,y and final position x,y
		@initial_position = initial_position # Initial axis position [x,y]
		@final_position = final_position     # Final axis position [x,y]
	end

	def check_movement

		puts "Your initial position is [#{@initial_position[0]},#{@initial_position[1]}]" 
		puts "Are you trying to move the piece to [#{@final_position[0]},#{@final_position[1]}]?"

		the_increase_in_x = @initial_position[0] - @final_position[0]
		the_increase_in_y = @initial_position[1] - @final_position[1]

		if @initial_position[0] == @final_position[0] && @initial_position[1] + @final_position[1] <= 8
			puts "Nice Queen move bro!"
		elsif @initial_position[1] == @final_position[1] && @initial_position[0] + @final_position[0] <= 8
			puts "Nice Queen move bro!"
		elsif the_increase_in_x.abs == the_increase_in_y.abs && @final_position[0] <= 8 && @final_position[1] <= 8
			puts "Nice Queen move bro!"
		else
			puts "Don't try cheating me! You cannot do that with the Queen man."
		end
	end
end


class King < Pieza
	def initialize(initial_position, final_position)   #Get two array. for initial position x,y and final position x,y
		@initial_position = initial_position # Initial axis position [x,y]
		@final_position = final_position     # Final axis position [x,y]
	end

	def check_movement

		puts "Your initial position is [#{@initial_position[0]},#{@initial_position[1]}]" 
		puts "Are you trying to move the piece to [#{@final_position[0]},#{@final_position[1]}]?"

		the_increase_in_x = @initial_position[0] - @final_position[0]
		the_increase_in_y = @initial_position[1] - @final_position[1]
		
		if @initial_position[0] == @final_position[0] && @initial_position[1] + @final_position[1] <= 8 && the_increase_in_y.abs == 1    #Moverse en el eje X
			puts "Nice King move bro!"
		elsif @initial_position[1] == @final_position[1] && @initial_position[0] + @final_position[0] <= 8 && the_increase_in_x.abs == 1  #Moverse en el eje Y
			puts "Nice King move bro!"
		elsif the_increase_in_x.abs == the_increase_in_y.abs && @final_position[0] <= 8 && @final_position[1] <= 8 && the_increase_in_x.abs == 1 && the_increase_in_y.abs == 1
			puts "Nice KIng move bro!"
		else
			puts "Don't try cheating me! You cannot do that with the King."
		end
	end
end

		
class Horse < Pieza
	def initialize(initial_position, final_position)   #Get two array. for initial position x,y and final position x,y
		@initial_position = initial_position # Initial axis position [x,y]
		@final_position = final_position     # Final axis position [x,y]
	end

	def check_movement

		puts "Your initial position is [#{@initial_position[0]},#{@initial_position[1]}]" 
		puts "Are you trying to move the piece to [#{@final_position[0]},#{@final_position[1]}]?"

		the_increase_in_x = @initial_position[0] - @final_position[0]
		the_increase_in_y = @initial_position[1] - @final_position[1]
		
		if the_increase_in_x.abs == the_increase_in_y.abs+2 && @final_position[0] <= 8 && @final_position[1] <= 8 && the_increase_in_y.abs <= 2 && the_increase_in_x.abs <= 1
			puts "Nice Horse move bro!"
		elsif the_increase_in_y.abs == the_increase_in_x.abs+2 && @final_position[0] <= 8 && @final_position[1] <= 8 && the_increase_in_x.abs <= 2 && the_increase_in_y.abs <= 1
			puts "Nice Horse move bro!"
		else
			puts "Don't try cheating me! You cannot do that with the Horse."
		end
	end
end


movements = Movements.new("movements.txt")
the_chessboard = Board.new("easy_board.txt")
the_move_is = 6
# (0) a1 b1  horizontal 1 
# (1)a1 a2   vertical 1
# (2)a1 a3    vertical 2
# (3) a1 c1   horizontal 2
# (4) a1 b2   DIAGONAL 1
# (5) a1 c3   DIAGONAL 2
# (6) f5 g7  CABALLO EN Y
# (7)f5 h6    CABALLO EN X
# (8)a2 a5
# (0)a7 a6
# (0)a7 a5
# (0)a7 a4
# (0)a7 b6


selected_initial_movement = movements.get_initial_movement(the_move_is)
selected_final_movement = movements.get_final_movement(the_move_is)
#pp movements.get_movements
torre = Rook.new(selected_initial_movement, selected_final_movement)
torre.check_movement

alfil = Bishop.new(selected_initial_movement, selected_final_movement)
#alfil.check_movement

reina = Queen.new(selected_initial_movement, selected_final_movement)
#reina.check_movement

king = King.new(selected_initial_movement, selected_final_movement)
king.check_movement

caballo = Horse.new(selected_initial_movement, selected_final_movement)
#caballo.check_movement

