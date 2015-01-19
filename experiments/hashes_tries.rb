# Arrays

# %w(foo bar) is a shortcut for ["foo", "bar"].






# Three ways to write a Hash

# 1º
my_hash = {}
my_hash[:name] = "John"
my_hash[:surname] = "Doe"


# 2º
same_hash = {:name => "John", :surname => "Doe"}

#3º
last_way = {name: "John", surname: "Doe"}

puts "my_hash"
puts my_hash
puts "same_hash"
puts same_hash
puts "last_way"
puts last_way




#Constant
# UNa variable empieza con minúscula
# Una Constante empieza con mayúscula (puede estar en capitalize o TODO mayúscula para diferenciar)
my_var = 5
My_constant = 5 


#####################  COUPLING   AND   COHESION  ###############

class Post
	attr_reader :title
end

class Blog
	def get_title_of_post(post)
		post.title
	end
end

#                                       Types of relationships

###Inheritance    ej:   class CarRace < Cars

###Mixin: Provides the ability of mixing methods in class  using MIXIN
#####Modules: Enumerable , Capables
#####Tenemos que crear un módulo y las clases que queramos que posean ese módulo (que contendrá un methods) tendran que tener include NombredelModulo

module MyModule
	def my_included_method
	puts "Hiiiii"
	end
end

class MyClass
	include MyModule
	def class_method
		puts "I'm an instance method"
	end
end

B = MyClass.new

puts B
puts B.my_included_method
puts B.class_method

###
###
###
###
