class Employee
  include Comparable
  attr_accessor :name, :salary
  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def <=>(other_object)
    self.salary <=> other_object.salary
  end
end

mary = Employee.new('Mary', 14)
john = Employee.new('John', 10)
puts mary > john