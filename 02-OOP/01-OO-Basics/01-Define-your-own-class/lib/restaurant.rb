class Restaurant
  attr_accessor :ville, :cuisine, :type
  def initialize(ville, cuisine, type, tel)
    @ville = ville
    @cuisine = cuisine
    @type = type
    @tel = tel
  end
end

Restaurant.new("Cannes", "Poisson", "Gastro", "0304049484")


