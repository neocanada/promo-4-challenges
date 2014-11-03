require_relative "../models/order"


class MealsRepository

  attr_accessor :meals_repository

  def initialize
    @meals_repository = ["Menu du jour - 15€", "Menu Poisson - 22€", "Menu Viande - 29€", "Menu Végétarien - 19€", "Menu Enfant - 10€"]
  end
end