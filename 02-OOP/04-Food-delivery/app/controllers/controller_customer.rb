require_relative "../repositories/customers_repository"
require_relative "../views/view_customer"

class ControllerCustomer


  def initialize
    @repository = CustomersRepository.new
    @viewcustomer = ViewCustomer.new
  end

  def list_customers
    customers = @repository.customers_repository
    @viewcustomer.print_customers_list(customers)
  end

  def add_customer
    name = @viewcustomer.ask_for_new_customer_name
    address = @viewcustomer.ask_for_new_customer_address
    new_customer = Customer.new(name, address)
    @repository << new_customer
  end
end

# c = ControllerCustomer.new
# c.list_customers