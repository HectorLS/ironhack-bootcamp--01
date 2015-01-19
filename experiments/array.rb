class Car

	def honk
		puts "Broooooooom"
	end

end

Ferrari = Car.new
FOrd = Car.new
Audi = Car.new
	mycars = [Ferrari, FOrd, Audi]

	mycars.each do |item|
		puts item.honk
	end

#   | Pipe symbol or sign



	sounds = ["brooom", "meek", "nyeeee"]


	cars_noise = sounds.map do |noise|
		Car.new(noise)
	end

	cars_noise.each do |noise|
		noise.honk
	end
