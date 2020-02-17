require_relative 'employee'
require_relative 'payroll'
require_relative 'taxes'

payroll = Payroll.new
taxes = Taxes.new

gerry = Employee.new("Gerry Larios", "Trainee", "6000")
gerry.add do |changed|
  puts "Cut a new check for #{changed.name}"
  puts "The salary is now #{changed.salary}"
end
gerry.salary = 7000
