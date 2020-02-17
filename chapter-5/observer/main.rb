require_relative 'employee'
require_relative 'payroll'
require_relative 'taxes'

payroll = Payroll.new
taxes = Taxes.new

gerry = Employee.new("Gerry Larios", "Trainee", "6000")
gerry.add(payroll)
gerry.add(taxes)

gerry.salary = 7000
