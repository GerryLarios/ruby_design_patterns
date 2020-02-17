require_relative 'employee'
require_relative 'payroll'

gerry = Employee.new("Gerry Larios", "Trainee", "6000")
gerry.add_observer(Payroll.new)
gerry.salary = 7000
