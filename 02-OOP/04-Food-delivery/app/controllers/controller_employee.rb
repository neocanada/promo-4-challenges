require_relative "../repositories/employees_repository"
require_relative "../views/view_employee"
require_relative "../models/employee.rb"



class ControllerEmployee

  attr_reader :employees_repository, :name, :password


  def initialize
    @repository = EmployeesRepository.new
    @viewemployee = ViewEmployee.new
    # @employee = Employee.new("Sandrine", "123456")
  end

  def list_employees
    employees = @repository.employees_repository
    @viewemployee.print_employee_list(employees)
  end

  def login_process
     login_name = @viewemployee.ask_for_login_name
     if @repository.name.include?(login_name)
        password = @viewemployee.ask_for_login_password
        if @employee.password.include?(password)
          @viewemployee.login_welcome(login_name)
        else
          puts "It's a wrong password ! Try again."
        end
      else
        puts "It's a wrong name ! Try again."
      end
   end


end

 c = ControllerEmployee.new
 c.login_process