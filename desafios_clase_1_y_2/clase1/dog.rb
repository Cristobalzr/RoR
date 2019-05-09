class Dog
    def initialize(propiedades)
        @nombre = propiedades[:nombre]
        @raza = propiedades[:raza]
        @color = propiedades[:color]
    end
    def ladrar
        "#{@nombre} de raza #{@raza} de color #{@color} está ladrando!"
    end
end
propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
dog = Dog.new(propiedades)
puts dog.ladrar