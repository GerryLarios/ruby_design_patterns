require_relative 'subject'

class Employee
  include Subject
  attr_reader :name
  attr_accessor :title, :salary

  def initialize(name, title, salary)
    super()
    @name = name
    @title = title
    @salary = salary
  end
  
  def salary=(new_salary)
    @salary = new_salary
    notify
  end
end
