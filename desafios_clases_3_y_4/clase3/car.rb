require_relative 'vehicle.rb'

class Car < Vehicle
  @tries = 0
  def initialize(model, year)
    super
    @tries += 1
  end
  def self.counter
    @tries
  end
  def engine_start
    super
    puts "El motor del #{@model} del año #{@year} se ha encendido"
  end
end

10.times { Car.new('camaro', 1970).engine_start }

puts Car.counter
