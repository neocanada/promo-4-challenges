# def poor_calories_counter(burger, side, beverage)
#   #TODO: return number of calories for this mcDonald order
# total_calories = 0
# cal = {
# "Cheese Burger" => 290,
# "Big Mac" => 300,
# "Mc Bacon" => 400,
# "Royal Cheese" => 130,
# "French fries" => 130,
# "Potatoes" => 130,
# "Coca" => 160,
# "Sprite" => 170
# }
# total_calories = cal[burger] + cal[side] + cal[beverage]
# return total_calories

# end

# #poor_calories_counter("Cheese Burger", "Potatoes", "Coca")

# def calories_counter(*orders)
#   #TODO: return number of calories for a less constrained order

# counter = nil

# happy_meal = poor_calories_counter("Cheese Burger", "French fries", "Coca")
# best_of_big_mac = poor_calories_counter("Big Mac", "French fries", "Coca")
# best_of_royal_cheese = poor_calories_counter("Royal Cheese", "Potatoes", "Sprite")

# # cal = {"Happy Meal" => poor_calories_counter("Cheese Burger", "French fries", "Coca")}
# # cal = {"Best Of Big Mac" => poor_calories_counter("Big Mac", "French fries", "Coca")}
# # cal = {"Best Of Royal Cheese" => poor_calories_counter("Royal Cheese", "Potatoes", "Sprite")}

# cal2 = {
# "Cheese Burger" => 290,
# "Big Mac" => 300,
# "Mc Bacon" => 400,
# "Royal Cheese" => 130,
# "French fries" => 130,
# "Potatoes" => 130,
# "Coca" => 160,
# "Sprite" => 170,
# "Happy Meal" => happy_meal,
# "Best Of Big Mac" => best_of_big_mac,
# "Best Of Royal Cheese" => best_of_royal_cheese
# }

# orders.each do |commande|
# counter += cal2[commande]
# return counter
# end
# end

def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
  sum = 0
  cal = {"Cheese Burger" => 290,
  "Big Mac" => 300,
  "Mc Bacon" => 400,
  "Royal Cheese" => 130,
  "French fries" => 130,
  "Potatoes" => 130,
  "Coca" => 160,
  "Sprite" => 170}
  return sum = cal[burger] + cal[side] + cal[beverage]
end

def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
  sum = 0
  a = poor_calories_counter("Royal Cheese", "Potatoes", "Sprite")
  b = poor_calories_counter("Cheese Burger", "French fries", "Coca")
  c = poor_calories_counter("Big Mac", "French fries", "Coca")
  cal2 = {"Cheese Burger" => 290,
  "Big Mac" => 300,
  "Mc Bacon" => 400,
  "Royal Cheese" => 130,
  "French fries" => 130,
  "Potatoes" => 130,
  "Coca" => 160,
  "Sprite" => 170,
  "Best Of Royal Cheese" => a,
  "Happy Meal" => b,
  "Best Of Big Mac" => c }
  orders.each { |menu| sum += cal2[menu]}
  return sum
end


