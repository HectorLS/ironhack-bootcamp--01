class Car
	def initialize(noise)
		number_of_cars = IO.read("cars.txt").to_i
		IO.write("cars.txt", number_of_cars +1)
		@claxon = noise	
	end

	def make_noise
		puts @claxon
	end

	def self.car_count
		puts IO.read("cars.txt").to_i
	end
end


class RacingCar < Car
	def make_noise
		puts "Brom brom BROoOoOOMMMMM"
	end	
end

normal_car = Car.new("broooom")
normal_car.make_noise
noisy_car = Car.new("BROOOOOOOM")
noisy_car.make_noise
new_car = Car.new("Piiii Piiii")
new_car.make_noise

Car.car_count