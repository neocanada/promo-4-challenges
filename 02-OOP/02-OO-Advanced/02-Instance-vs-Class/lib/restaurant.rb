class Restaurant
  # TODO: add relevant accessors if necessary
  attr_reader :name, :city, :type_of_food
  attr_accessor :number_note, :average_rating

  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @name = name
    @city = city
    @type_of_food = type_of_food
    @average_rating = 0
    @number_note = 0
  end

  def rate(rate)
    rate = (@average_rating * @number_note + rate) / (@number_note + 1)
    @number_note += 1
    @average_rating = rate
  end

  def self.filter_by_city(restaurants, city)
    resultat = []
    restaurants.each do |i|
      resultat <<  i if i.city == city
    end
    resultat
  end
end

jules_verne = Restaurant.new("paris", "Jules Verne")
tour_d_argent = Restaurant.new("paris", "Tour d'argent")
bocuse = Restaurant.new("lyon", "Paul Bocuse")
restos = [jules_verne, tour_d_argent, bocuse]
p Restaurant.filter_by_city(restos, "lyon")