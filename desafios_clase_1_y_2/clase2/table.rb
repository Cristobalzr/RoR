class Table
  attr_reader :table, :income
  def initialize (table, *income)
    @table = table
    @income = income.map(&:to_i)
  end
  def max
    @income.max
  end
  def average
    @income.inject(&:+) / @income.size
  end
end

tables_income = []
data = []
File.open('casino.txt', 'r') {|file| data = file.readlines}

data.each do |t|
  ls = t.split(', ')
  tables_income << Table.new(*ls)
end

tables_income.each do |l|
  print "#{l.table}:\n Dia de mayor recaudacion #{l.income.index(l.max)+1} Con un total de #{l.max} ventas y el promedio de todos los dias es de #{ l.average}\n"

end
