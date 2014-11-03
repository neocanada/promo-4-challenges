require_relative "../repositories/orders_repository"
require_relative "../views/view_order"
require_relative "../repositories/meals_repository"
require_relative "../views/view_employee"
require_relative "../controllers/controller_employee"


class ControllerOrder

  attr_reader :repository, :meal_repo, :employees_repository

  def initialize
    @repository = OrdersRepository.new
    @vieworder = ViewOrders.new
    @meal_repo = MealsRepository.new
    @viewemployee = ViewEmployee.new
    @controlleremployee = ControllerEmployee.new
    @employee_repo = EmployeesRepository.new
  end

  def list_orders
    orders = @repository.orders_repository
    @vieworder.print_orders_list(orders)
  end

  def list_meal
    meals = @meal_repo.meals_repository
    @vieworder.print_meals_list(meals)
  end

  def add_orders
    list_meal
    order = @meal_repo.meals_repository.at(@vieworder.ask_for_a_meal - 1)
    @controlleremployee.list_employees
    employee = @employee_repo.employees_repository.at(@viewemployee.ask_for_a_delivery_guy - 1)
    order = Order.new(order, employee.name)
    @repository.add_order(order)
  end
end

  # c = ControllerOrder.new
  # c.add_orders
  # c.list_orders
  # c.add_orders
  # c.list_orders




