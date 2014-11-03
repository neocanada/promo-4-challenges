class ViewRestaurant

  def welcome_message
    puts "Welcome to #{restaurant.name}"
    puts "-------------------------------"
  end

  def identification
    puts "Please enter your name:"
    name = gets.chomp
    puts "Please enter your password:"
    password = gets.chomp
  end
end