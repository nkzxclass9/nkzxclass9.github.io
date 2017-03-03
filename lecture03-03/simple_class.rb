class Human
  def initialize(name, salary)
    puts 'PARENT'
  end

  private

  def secret
    puts 'secret method!'
  end
end

class Employee < Human
  RATE = 0.13
  @@rate = 0.13 # class variable
  attr_accessor(:name, :salary)
  #attr_reader :some_arg
  #attr_writer :other_arg
  def initialize(name, salary = 5)
    # instance variable
    @name = name
    @salary = salary
    super(name, salary)
  end

  def reveal_secret
    secret
  end

  def resulting_salary
    salary - salary * @@rate
  end

  def Employee.update_rate(new_rate) # class method
    # def self.update_rate(new_rate)
    @@rate = new_rate
  end
end

employee = Employee.new('John Doe', 20)
employee2 = Employee.new("Someone Else", 15)
#employee.name = 'New Name'
puts "Employee #{employee.
    name}, salary is #{employee.resulting_salary}"
puts "Employee #{employee2.
    name}, salary is #{employee2.resulting_salary}"
Employee.update_rate(0.15)
puts '=== UPDATING RATE...'
puts "Employee #{employee.
    name}, salary is #{employee.resulting_salary}"
puts "Employee #{employee2.
    name}, salary is #{employee2.resulting_salary}"
puts employee.class.superclass.
         superclass.superclass.name