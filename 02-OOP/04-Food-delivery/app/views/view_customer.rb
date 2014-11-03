class ViewCustomer

  def print_customers_list(customers)
    puts "Here are the customers list:"
    customers.each_with_index do |customer, index|
      puts "#{index + 1} - #{customer.name}"
    end
  end

  def ask_for_new_customer_name
    puts "Enter a customer name"
    gets.chomp
  end

  def ask_for_new_customer_address
    puts "Enter a customer address"
    gets.chomp
  end
end