class Payroll
	def complain( changed_employee )
		puts("Cut a new check for #{changed_employee.name}!")
		puts("His salary is now #{changed_employee.salary}!")
	end
end


class Manager
	def complain(B)
		puts "Nos estamos arruinando"
	end

class Emailer
	def complain(x)
		puts "Este tio nos arruina"
	end
class Employee
	attr_reader :name, :title
	attr_reader :salary
	def initialize( name, title, salary, observer)
		@name = name
		@title = title
		@salary = salary
		@payroll = payroll
	end

	def salary=(new_salary)
		@salary = new_salary
		@payroll.complain(self)
	end
end


payroll = Payroll.new
fred = Employee.new('Fred', 'Crane Operator', 30000, payroll)
fred.salary = 35000