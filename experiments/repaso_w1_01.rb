class Car
	#Lo primero creamos la variable de clase @@num_of_cars
	#que debe ser cero porque aun no se ha creado ningún objeto
	# @@ porque
	@@number_of_cars = 0

	def initialize(noise)
		@claxon = noise
		@@number_of_cars += 1 #Si este método se inicia es porque se ha creado un nuevo objeto, en este caso un nuevo coche, así que a la variable de clase @@num_of_cars le digo que aumente su número en 1
	end

	def make_noise
		puts @claxon
	end

	def self.car_count
		puts @@number_of_cars
	end
end

normal_car = Car.new("broooom")
normal_car.make_noise
noisy_car = Car.new("BROOOOOOOM")
noisy_car.make_noise
new_car = Car.new("Piiii Piiii")
new_car.make_noise

Car.car_count