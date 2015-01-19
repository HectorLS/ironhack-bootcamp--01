class Person

	attr_reader :name
	attr_accessor :age

	def initialize(name, age)
		@name = name
		@age = age
	end
end


new_person = Person.new("Hector",27)
puts new_person.name
puts new_person.age