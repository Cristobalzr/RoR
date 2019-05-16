module Formula
  def perimetro
    puts "El perimetro es #{((@largo + @ancho) * 2)}"

  end

  def area
    puts "El area es de #{(@largo * @ancho)}"

  end
end

class Rectangulo
  include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    puts "El largo del rectangulo es de #{@largo} y el ancho es de #{@ancho}"
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
    @largo = @lado
    @ancho = @lado
  end

  def lados
    puts "Cada lado del cuadrado mide #{@lado}"
  end
end


a = Rectangulo.new(10, 15)
a.lados
a.area
a.perimetro
b = Cuadrado.new(10)
b.lados
b.area
b.perimetro
