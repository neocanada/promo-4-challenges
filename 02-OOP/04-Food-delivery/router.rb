require_relative 'app/controllers/controller_restaurant'
require_relative 'app/controllers/controller_employee'
require_relative 'app/controllers/controller_customer'
require_relative 'app/controllers/controller_order'
require_relative 'app/models/customer'
require_relative 'app/models/employee'
require_relative 'app/models/order'
require_relative 'app/models/restaurant'
require_relative 'app/views/view_customer'
require_relative 'app/views/view_employee'
require_relative 'app/views/view_order'
require_relative 'app/views/view_restaurant'

class Router
  def initialize
    @controller_customer = ControllerCustomer.new
    @controller_employee = ControllerEmployee.new
    @controller_order = ControllerOrder.new
    @controller_restaurant = ControllerRestaurant.new
    @restaurant = Restaurant.new("Massimo Restaurant", "London")
    # @controller_restaurant = controller_restaurant
    # @controller_employee = controller_employee
    # @controller_order = controller_order
    # @controller_customer = controller_customer
    # @restaurant = restaurant
    @running = true
  end

  def run
    puts "Welcome to #{restaurant.restaurant_name}"
    puts "-------------------------------"
    while @running

      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  def stop
    @running = false
  end

  private

  def route_action_manager(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.destroy
    when 4 then stop
    else puts "Please press 1, 2, 3 or 4"
    end
  end

  def route_action_delivery_guy(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.destroy
    when 4 then stop
    else puts "Please press 1, 2, 3 or 4"
    end
  end

  def display_tasks_manager
    puts ""
    puts "What do you want to do next?"
    puts "1 - List customers"
    puts "2 - Add customer"
    puts "3 - View orders"
    puts "4 - Add order"
    puts "5 - Remove order"
    puts "6 - List employees"
    puts "7 - Log out"
  end

  def display_tasks_delivery_guy
    puts ""
    puts "What do you want to do next?"
    puts "1 - View orders"
    puts "2 - Complete order"
    puts "3 - Log out"
  end

end