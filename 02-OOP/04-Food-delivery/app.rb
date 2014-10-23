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

# restaurant = Restaurant.new("Massimo Restaurant", "London")

manager = Manager.new("Sébastien", "12345689", true)

employee1 = DeliveryEmployee.new("Brice", "123456")
employee2 = DeliveryEmployee.new("Jêrome", "123456")
employee3 = DeliveryEmployee.new("Sandrine", "123456")

# controller_customer = ControllerCustomer.new
# controller_employee = ControllerEmployee.new
# controller_order = ControllerOrder.new
# controller_restaurant = ControllerRestaurant.new


router = Router.new
# (controller_customer, controller_employee, controller_order, controller_restaurant, restaurant)

# Start the app
router.run
