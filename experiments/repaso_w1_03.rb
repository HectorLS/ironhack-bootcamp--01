class Car
	def make_noise
		puts "Broooom"
	end
end

array_with_car_instances_inside = [Car.new, Car.new, Car.new]


#Que cada elemento dentro del array me ejecute este método
#Que cada coche (los Car.new dentro del array) ejecute el método make_noise
array_with_car_instances_inside.each do |car|
	car.make_noise
end