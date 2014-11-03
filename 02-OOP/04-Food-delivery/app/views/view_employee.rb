class ViewEmployee

  def ask_for_login_name
    puts "Please enter your name"
    login_name = gets.chomp
    login_name
  end

  def ask_for_login_password
    puts "Please enter your password:"
    password = gets.chomp
    password
  end

  def login_welcome(name)
    puts "Welcome, #{name}.  Your access level is : MANAGER"
    puts "----------------------"
  end



  def print_employee_list(employees)
    puts "Here are the employees list:"
    employees.each_with_index do |employee, index|
      puts "#{index + 1} - #{employee.name}"
    end
  end

  def ask_for_a_delivery_guy
    puts "Assign this order to a delivery guy"
    index = gets.chomp.to_i
    index
  end
end