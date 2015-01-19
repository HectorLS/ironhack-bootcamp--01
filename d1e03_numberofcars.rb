require 'pry'

class Car

	@@numbers_of_cars = 0
	binding.pry
	#initialize is a method, 
	#that is executed for each instance we create (params)
	def initialize(params)
		@honks = params
	end

	def sounds_like 
		puts @honks
	end

	def initialize(cars_amount)
		@@numbers_of_cars +=1
	end
end

#Create two new objects
normal_car = Car.new("broom")
normal_car.sounds_like

noisy_car = Car.new("BROOOM")
noisy_car.sounds_like
normal_car.sounds_like

puts noisy_car.number_of_cars
puts "The numbers of total cars are: #{numbers_of_cars}"

#Call the sounds_like methods for those objects
