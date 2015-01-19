class Car
	@@number_of_cars = 0
	def initialize(car_type)
		@car_type = car_type
		car_number = IO.read("carstore.txt").to_i
		car_number += 1
	#	@@number_of_cars = car_number
	#	car_number = car_number.to_s
		IO.write("car_number.txt", car_number)

	end
end

Ferrari = Car.new
Ford = Car.new