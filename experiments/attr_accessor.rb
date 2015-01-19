class Person
  attr_accessor :name, :age
end

#above class definition enables the following
p = Person.new
p.name = "Mikey"
p.age = 30
puts p.name
puts p.age.to_s
puts p.to_s


puts " "
#Now the same Person without use the attr_accesor
puts "Now the same Person without use the attr_accesor"
puts " "

class SamePerson

	#Con este método nosotros solo podemos leer the instance variable @name, pero no podemos modificarla
	#Este método sería el equivalente a usar attr_reader	
  def name
    @name
  end
  	#Con este método nosotros solo podemos escribir the instance variable @name, pero no podemos leerla
	#Este método sería el equivalente a usar attr_writer
	#Usando estos dos métodos sería lo mismo que usar attr_accessor para poder leer y escribir.
	#El primer método se llama name mientras que segundo método se llama  name=  ¿Por qué?
	#Esto es un truco para poder crear dos métodos para lo mismo pero que no entren en conflicto
	#De esta manera nosotros podemos usar luego (en este ejemplo en concreto) 
	# puts newperson.age = 1841  para poder darle a @name el valor 1841
	# puts newperson.age.to_s para poder leer el valor de la variable @name
	#Estoy modificando lo mismo y usando el = despues del nombre del método para poder
	# llamarlos igual y facilitar la comprensión 
  def name=(str)
    @name = str
  end

  def age
  	@age
  end

  def age=(years_old)
  	@age = years_old
  end
end

newperson = SamePerson.new
newperson.name = 'Mickey'
newperson.age = 30
puts newperson.name
puts newperson.age.to_s