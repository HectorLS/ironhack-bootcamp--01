class Animal
	def initialize(animalsound)
		@mouth = animalsound
	end
	def make_noise
		puts @mouth.sound
	end
end


class DogTongue
	def sound
		puts "Guaguau"
	end
end

class EnglishDogTongue
	def sound
		puts "WoofWoof"
	end
end

#Ahora estoy creando el objeto Animal llamado fox_terrier que contiene el objeto EnglishDog, necesario para que el animal produzca el sonido
fox_terrier = Animal.new(EnglishDogTongue.new)
cocker_spaniel = Animal.new(DogTongue.new)


puts fox_terrier.make_noise
puts cocker_spaniel.make_noise
