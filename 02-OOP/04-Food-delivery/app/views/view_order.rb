# require_relative "../repositories/controller_order"


class ViewOrders

  def print_orders_list(orders)
    puts "Here are the orders for today:"
    orders.each_with_index do |order, index|
      puts "#{index + 1} - ID : #{order.id}, #{order.meal}, #{order.delivery_guy}, #{order.time}, #{order.delivered}"
    end
  end

  def print_meals_list(meals)
    puts "Here are the meals"
    meals.each_with_index do |meal, index|
      puts "#{index + 1} - #{meal}"
    end
  end

  def ask_for_a_meal
    puts "Select a meal:"
    index = gets.chomp.to_i
    index
  end

end