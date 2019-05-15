module Test
  def result
    if (@nota1 + @nota2)/2 >= 4
      puts "Estudiante aprobado"
    else
      "Estudiante reprobado"
    end
  end
end

module Attendance
  def self.student_quantify
    Student.student_quantify
  end
end

class Student
  include Test
  extend Attendance
  attr_reader :name, :grade1, :grade2, :quantify
  @@quantify = 0

  def initialize(nombre,nota1 = 4,nota2 = 4)
    @nombre = nombre
    @nota1 = nota1.to_f
    @nota2 = nota2.to_f
    @@quantify +=1
  end

  def self.student_quantify
    @@quantify
  end
end

10.times { Student.new("pepito").result}
puts Attendance.student_quantify
