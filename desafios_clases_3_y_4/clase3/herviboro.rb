module Herviboro
  Definir = 'Sólo me alimento de vegetales!'
  def self.definir
    Definir
  end
  def dieta
    puts "Soy un Herviboro!"
  end
end
class Animal
  def saludar
    puts "Soy un animal!"
  end
end
class Conejo < Animal
  include Herviboro
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
conejo.saludar
conejo.dieta
puts Herviboro.definir
