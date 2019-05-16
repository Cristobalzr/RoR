module Formula
  def perimetro(largo,ancho)
    (largo + ancho)*2
  end
  def area(largo, ancho)
    (largo * ancho)
  end
end

class Rectangulo
  include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end
  def lados
    "El largo del rectangulo es de #{@largo} y el ancho es de #{@ancho}"
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
  end
  def lados
    "Cada lado del cuadrado mide #{@lado}"
  end
end

puts Rectangulo.new(10,15).lados
puts Cuadrado.new(10).lados
