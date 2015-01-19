class CarTransport
	include Enumerable

	def initialize
		@list = [] #create an array
	end

	def add_cars(car)
		@list << car #push cars into the array
	end

	def each(&block)
		@list.each(&block) #runs thru the array each item
	end

end

class Car < CarTransport

	attr_accessor :make, :sound

	def initialize(make,sound) #make a new object "Car"
		@make = make
		@sound = sound
	end

	def print_car_properties
		puts "The car: " + make + ": does " + sound
	end

	def sound # Make a sound method to be able to use the SOUND value
		@sound
	end

	def <=>(other_car)
		@sound.length <=> other_car.sound.length #Compare two values to each other by the .length of the string
	end
end

street_car = Car.new("Ford", "Broooom")
race_car = Car.new("Ferrari", "SO faaaaaaaaaaaaaaaaaaaaar")
old_car = Car.new("Fiat", "ZZZS")

transport = CarTransport.new #
transport.add_cars street_car
transport.add_cars race_car
transport.add_cars old_car

puts transport.max.sound

#COn el each imprimo todos los coches en transport llamando al método print_car_properties
transport.each do |a| 
	a.print_car_properties
end

#Lo mismo que antes pero con un shorthand para each
transport.each {|a| a.print_car_properties}

