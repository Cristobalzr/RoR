# alumno.rb
class Alumno
  def initialize(nombre, *nota)
    @nombre = nombre
    @nota = nota.map(&:to_i)
  end

  def orden
    puts "El alumno #{@nombre} tiene notas #{@nota.join(', ')}"
  end

  def self.read_file(notas = 'notas.txt')
    alumnos = []
    data = []
    file = File.open(notas)
    data = file.readlines
    file.close
    data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', ')).orden
    end
    alumnos
  end
end

Alumno.read_file
