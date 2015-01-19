h = Hash.new("Go Fish")
h["a"] = 100
h["b"] = 200
h["a"]           #=> 100
h["c"] = "culo"          #=> "Go Fish"

puts h
# The following alters the single default object
h["c"].upcase!   #=> "GO FISH"
h["d"]           #=> "GO FISH"
h.keys           #=> ["a", "b"]

# While this creates a new default object each time
h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
h["c"]           #=> "Go Fish: c"
h["c"].upcase!   #=> "GO FISH: C"
h["d"]           #=> "Go Fish: d"
h.keys           #=> ["c", "d"]



#Obtener la fecha y ahora en este momento
c = Time.new
puts "c es igual a:" + c.to_s

#Fijar una hora personalizada

c = Time.mktime(1976, 8, 3, 10, 11)  #  Cuando nació Chris.

#Me devolverá 1976-08-03 10:11:00 +0100  
#(Al no especificar una zona horaria, cogerá la de mi laptop)


# Array.new() { |i|  }
# Hash.new { |hash, key| hash[key] =  }

colorArray = []  #  igual a Array.new
colorHash  = {}  #  igual a Hash.new

colorArray[0]         = '#FF0000'
colorArray[1]         = '#008000'
colorArray[2]         = '#0000FF'
colorHash['textos ']  = 'usamos: #FF0000'   # rojo
colorHash['numeros']  = 'usamos: #008000'   # verde
colorHash['claves ']  = 'usamos: #0000FF'   # azul
colorHash['textos 2']  = colorArray[0]

colorArray.each do |color|
  puts color
end
colorHash.each do |tipoCodigo, color|
  puts tipoCodigo + ' :  ' + color
end



 #The Weird Hash.new { |hash, key| hash[key] =  }

 weirdHash = Hash.new

weirdHash[12] = 'monos'
weirdHash[[]] = 'el vacio'
weirdHash[Time.new] = 'ningun momento como el actual'

puts weirdHash[12]
puts weirdHash[[]]
puts weirdHash[Time.new]

puts " "
weirdHash.each do |hash, key|
	puts hash.to_s + ": " + key.to_s
end
puts "===Fin weird hash"

