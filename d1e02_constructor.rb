class Car


	#initialize is a method, 
	#that is executed for each instance we create (params)
	def initialize(sound_params)
		@honks = sound_params
	end

	def sounds_like 
		puts @honks
	end
end

#Create two new objects
normal_car = Car.new("broom")
normal_car.sounds_like

noisy_car = Car.new("BROOOM")
noisy_car.sounds_like
normal_car.sounds_like


#Call the sounds_like methods for those objects


#ES: Version simplificada
#EN: The simplified version

class Car

	def initialize (noise)
		@claxon = noise
	end

	def make_noise
		puts @claxon
	end
end


normal_car = Car.new("broooom").make_noise
noisy_car = Car.new("BROOOOOOOM").make_noise