class Payroll
   def update(changed_employee) #update (es un ducktype y se puede llamar como queramos mientras que se llame igual en cada metodo) 
                                # sirve para ejecutar los metodos de cada clase, cada vez que la clase Employee se modifica
     puts("Cut a new check for #{changed_employee.name}!")
     puts("His salary is now #{changed_employee.salary}!")
   end
end

class Manager 
  def update(employee)
    puts("Oh! We're wasting a lot of moneeey!!")   
  end
end

class HHRR
  def update(employee)
    puts "I'm sending an email!"
  end
end

class Employee
 attr_reader :name, :title, :salary, :manager # gracias al attr_reader podemos utilizar estas variables

 def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
    @observer_list = []
  end


  def add_observer(observer)

    @observer_list << observer
  end

  def salary=(new_salary)
    @salary = new_salary

    @observer_list.each do |observer|
      observer.update(self)# self se utiliza para referirse al objeto en sí mismo, cualquiera que sea el parametro
       
    end
  end
end

fred = Employee.new('Fred', 'Crane Operator', 30000)
fred.add_observer Payroll.new
fred.add_observer Manager.new
fred.add_observer HHRR.new
fred.salary = 35000

