class Dado

  def rodar
  #Añadimos  1+ porque si pongo rand(6) el dado puede dar 0,1,2,3,4,5
  #Recordemos que empiezan desde el Cero siempre
  #Entonces, ponemo 1+ para que solo pueda salir 1,2,3,4,5,6 
  #que en este ejemplo son los números posibles de un dado
    @numeroMostrado = 1 + rand(7)   
  end

  def mostrar
    @numeroMostrado
  end

end

dado = Dado.new
dado.rodar
puts dado.mostrar
puts dado.mostrar
puts "lanzo de nuevo el dado"
dado.rodar
puts dado.mostrar
puts dado.mostrar
puts "lanzo de nuevo el dado"
dado.rodar
puts dado.mostrar
puts dado.mostrar
puts "Ha salido el: " + dado.mostrar.to_s