class MiClase
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def self.saludar
    "Hola! Soy la clase #{self.name}"
  end
end
c = MiClase.new('Clase Uno')
c.name = 'Mi Clase'
puts MiClase.saludar
