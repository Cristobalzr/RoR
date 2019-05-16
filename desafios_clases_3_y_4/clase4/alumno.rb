# alumno.rb
class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end

  def self.read_file(notas)
    alumnos = []
    file = File.open(notas)
    data = file.readlines
    file.close
    data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', '))
    end
    alumnos
  end
end

alumnos = Alumno.read_file('notas.txt')
print alumnos
