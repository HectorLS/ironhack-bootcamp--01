# $THE CONSTRUCTOR

# 	- A special method called INITIALIZE
# 	- It's is executed for each instance we create


# $INSTANCE VARIABLES

# 	- Must starts with the @ sign (AT sign)
# 	- Each instance of a class has its own value for the instance variables


# 				-------------------------
# i.e:

class Car

	def initialize(noise)
		@noise = noise
	end

	def make_noise
		puts @noise
	end

end

normal_car = Car.new("Brooom")
normal_car.make_noise
noisy_car = Car.new("BROOOOOOM")
noisy_car.make_noise

# ==========================================================
# ==========================================================
# $CLASS VARIABLES

# 	- Must starts with the @@ sign
# 	- All instances of a class share the same value for this variable

# Instance methods and class methods

# 	- By default all methods are instance methods
# 	- We can also have methods for a class if we prepend its name with self during declaration

# 				-------------------------
# i.e:

class Car
	@@number_of_cars = 0
	
	def initialize(noise)
		@noise = noise
		@@number_of_cars += 1
	end

	def make_noise
		puts @noise
	end

	def self.number_of_cars
		@@number_of_cars
	end
end

normal_car = Car.new("Brooom")
noisy_car = Car.new("BROOOOOOM")
puts Car.number_of_cars

# ==========================================================
# ==========================================================

# BDUF = Big Design Up Front:  is a software development approach in which the program's design is to be completed and perfected before that program's implementation is started. It is often associated with the waterfall model of software development.

# $ENCAPSULATION

# 	- The important part of an object is the
# 	messages (methods) it exposes and the
# 	outcome they produce
	
# 	- The objects are black boxes. We should not
# 	care on how the code is done but what it
# 	does.
# 	This is the most basic form of abstracting
# complexity

# $INHERITANCE

# 	- It’s basing a class in another class so they
# 	share implementation.

# 	- All classes in Ruby inherit from Object class
# 	- We can overwrite behaviour of a class in
# 	the child class by replacing methods
# ==========================================================
# ==========================================================

# $ATTRIBUTES

# 	- Ruby has syntactic sugar for defining
# 	attributes of an object
# 			• attr_reader
# 			• attr_writer
# 			• attr_accessor
# 	- The syntax for retrieving an attributes is no
# 	different from calling a method

# 				-------------------------
# i.e:

class Person

	attr_reader :name
	attr_accessor :age

	def initialize(name, age)
		@name = name
		@age = age
	end
end

pepe = Person.new("Pepe",12)
puts pepe.name
puts pepe.age



# 	An object-oriented language seeks to model something in the real
# world through the use of objects.


# ==========================================================
# ==========================================================


# $COLLECTIONS

# ARRAY / HASH / ENUMERABLE

# $EACH
# 	Runs a block of code for each element of a
# 	collection

# i.e:
# 	ARRAY
			[“carrots”,”apples”,”oranges”].each do |item|
				puts item
			end

				# -------------------------

	# HASH
			{name: "John", surname: "Doe"}.each do |key,value|
				puts "#{key} -> #{value}"
			end


# WITH OBJECT
	 	dict = {}
			[["a",1],["b",2],["c",3]].each do |item|
				key = item[0].to_sym
				dict[key] = item[1]
			end
			dict

			dict = [["a",1],["b",2],["c",3]].each_with_object({}) do |item, memo|
				memo[item[0].to_sym] = item[1]
			end
#WITH INDEX
	   		i = 0
			["a","b","c"].each do |x|
				puts "[#{i}] #{x}"
				i += 1
			end

# with a shorthand:
			 ["a","b","c"].each_with_index {|x,i| puts "[#{i}] #{x}"}
	

# ==========================================================
# ==========================================================

# $MAP
# 		Returns an array that is the result of applying a
# 		block of code to each of the elements of that
# 		collection

# 				-------------------------
# i.e: 

	total = []
	[1,2,3].each do |item|
		total << item+1
	end
				# -------------------------
	total

	[1,2,3].map do |item|
		item+1
	end


	cars = sounds.map {|sound| Car.new(sound)}

# ==========================================================
# ==========================================================

# $REDUCE

# 	Transforms a correction into a single value
# 	applying a block of code many times


# i.e:

	cars.reduce("") {|sum, car|

	[1,2,3].reduce{|sum,x| sum + x}

# ==========================================================
# ==========================================================
# $SELECT


# i.e: 

[5,2,3].select {|x| x.odd?}

# $GREP

["casa", "masa", "pepino"].grep(/as/)

# $FIND

[5,2,3].find {|x| x.odd?}

# $SORTING

[1,3,2].sort
[movie1, movie2, movie3].sort_by {|m| m.title}



# ==========================================================
# ==========================================================
# ==========================================================
# ==========================================================


# 							SHARING BEHAVIOUR

# Well defined objects == Collaboration

# Cohesion: The degree to which the
# elements of a module belong
# together

# Types of relationships
# • Inheritance
# • Mixins
# • Composition / Collaboration
# • Duck Types



# $INHERITANCE

# 	It allows you to create a class
# 	that is a refinement or a
# 	specialisation of another.

	class KaraokeSong < Song
	end

# $Mixin

# 	Provides the ability of mixing
# 	in methods in classes *

# 	See ppt 7  page 8,9 10   (This ppt is super important)


# $COMPOSITION

# 	When an object achieves its behaviour
# 	by containing another object.


# $DEPENDENCY INJECTION

# 	An injection is the passing of a dependency (a
# 	service) to a dependent object (a client). The
# 	service is made part of the client's state.


# DUCK-TYPES
# 	Even though the objects are not exactly
# 	equal, they share a common implicit interface


# $MODULES !!! CHeck the PPT.


# 	Choosing a relationship
# • Use inheritance for is-a relationships
# • Use mixins for is-able-to relationships
# • Use duck types for behaves-like-a
# relationships
# • Use composition for has-a relationships


# ==========================================================
# ==========================================================

# DESIGN PATTERNS    (PPT 9 )

# A design pattern is a general reusable solution to a commonly occurring problem within a given context in software design.

# $FACTORIES

# Is a creational pattern which uses factory methods to deal
# with the problem of creating objects without specifying the
# exact class of object that will be created.

# $BUILDER

# 	The builder pattern uses a builder, that receives each
# 	initialization parameter step by step and then returns the
# 	resulting constructed object at once.


# $OBSERVER
# An object, called the subject, maintains a list of its
# dependents, called observers, and notifies them
# automatically of any state changes, usually by calling one of
# their methods.

# 				-------------------------

# i.e: 

class Employee
attr_reader :name
attr_accessor :title, :salary
def initialize( name, title, salary )
@name = name
@title = title
@salary = salary
end
end
fred = Employee.new("Fred Flintstone", "Crane Operator", 30000.0)
# Give Fred a raise
fred.salary=35000.0
			
# 				-------------------------

# $SINGLETON

# 	Restricts the instantiation of a class to one object
# 	Se utiliza para todas aquellas clases en las que no puede haber más de una instancia.
# 	EJ: Solo puede haber un administrador de cierta clase, o solo un log por email.

# i.e:

class SimpleLogger

@@instance = SimpleLogger.new
	def self.instance
		return @@instance
	end
private_class_method :new
end



# $STRATEGY

	


class Report
	def initialize(formatter)
		@formatter = formatter
	end
	#[...]

	def output_report
		@formatter.print(self)
	end
end

Report.new(HTMLFormatter.new)
Report.new(MarkdownFormatter.new)


# $COMMAND

# 	An object is used to represent and encapsulate all the
# 	information needed to call a method at a later time



# ==========================================================
# ==========================================================
# SOLID (PPT 10)

# $SOLID principles are meant to get decoupled software


# $Open-closed principle 

# 	Classes should be open for extension and close for
# 	modification. We should be able to add behaviour into
# 	the system without having to modify existing classes.


# $Liskov substitution principle
	
# 	Subtypes can be used instead of their parents without
# 	knowing.


# $Interface segregation principle 

# It prevents us in creating dependencies in classes we
# don’t need.

# $Dependency inversion principle
# 	Low level details should
# 	depend on high level policies

# ==========================================================
# ==========================================================

# Easy to extend?
# 	• No side effects
# 	• Small changes in requirements require small
# 	changes in code
# 	• Existing code is easy to reuse
# 	• The easiest way to make a change is to add
# 	code that is also easy to change itself



# AVOID THE GOD CLASSES


# $Shotgun surgery

# A change is spread among different small changes in
# different objects.
# Often, this means duplication that should be extracted into
# its own class

# ==========================================================
# ==========================================================

# (11 & 13)

# Find better info

# STRUCT
# OPEN STRUCT

# PS STORE
# YAML