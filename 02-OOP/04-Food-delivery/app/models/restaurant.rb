class Restaurant

  attr_reader :restaurant_name, :city

  def initialize(retaurant_name, city)
    @restaurant_name = restaurant_name
    @city = city
  end

end