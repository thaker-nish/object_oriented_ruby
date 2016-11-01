class Employee
  attr_reader :first_name, :last_name, :salary  
  def initialize(input_options)
    @first_name = input_options[:first_name] ||= "John"
    @last_name = input_options[:last_name] ||= "Carter"
    @salary = input_options[:salary] ||= 60000
    @status = input_options[:status] ||= true
  end

  def full_name
    if @last_name.end_with?('s')
      @first_name + ' ' + @last_name + ' ' + ',Esquire'
    else
      @first_name + ' ' + @last_name
    end
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({})
employee2 = Employee.new(first_name: 'Danilo', last_name: 'Campos', salary: 70000, active: true)
puts employee2.full_name
puts employee1.full_name
puts employee1.salary
employees_array = []

100.times do
  employees_array << Employee.new({})
end

