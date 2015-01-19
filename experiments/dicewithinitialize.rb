class Dado

  def initialize
    # Voy a dejar el dado tirado para que de un valor desde el principio
    # Ahora escribo el nombre del método que quiero que se inicie automáticamente.
      lanzado
  end

  def lanzar
    @numeroMostrado = 1 + rand(6)
  end

  def mostrar
    @numeroMostrado
  end

  def lanzado
    @numeroMostrado = "He llamado a este metodo lanzado cuyo valor para el dado es este texto"
  end
end

midado = Dado.new
puts midado.mostrar
puts midado.lanzar