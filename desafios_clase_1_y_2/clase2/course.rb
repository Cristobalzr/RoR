require 'date'

class Course
  def initialize(name, *dates)
    @name = name
    @dates = dates.map{|date| Date.parse(date)}
  end
  def before_dates(filter_date)
    if @dates[0] < filter_date
      print @dates[0]
    end
  end
  def after_dates(filter_date)
    if @dates[0] > filter_date
      print @dates[0]
    end
  end
end

file = File.open('cursos.txt', 'r')
data = file.readlines
file.close

filter = []

data.each do |d|
  ls = d.split(', ')
  filter << Course.new(*ls)
end

filter[0].after_dates(Date.today)
