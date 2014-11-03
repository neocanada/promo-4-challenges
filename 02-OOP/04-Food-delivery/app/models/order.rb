class Order

  attr_reader :meal, :delivery_guy
  attr_accessor :delivered, :id, :time

  def initialize(meal, delivery_guy)
    @meal = meal
    @delivery_guy = delivery_guy
    @delivered = false
    @id = id
    @time = Time.now
  end


  def delivered?
    @delivered == true
  end

end