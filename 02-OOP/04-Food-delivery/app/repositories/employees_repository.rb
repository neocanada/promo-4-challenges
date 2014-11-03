require_relative "../models/employee"

class EmployeesRepository

  attr_accessor :employees_repository

  def initialize
    @employees_repository = [Employee.new("Seb", "123456"), Employee.new("Sandy", "123456"), Employee.new("Juju", "123456")]
  end
end