require_relative "../models/order"


class OrdersRepository

  attr_accessor :orders_repository, :next_id

  def initialize
    @orders_repository = []
    @next_id = 1

  end

  def add_order(order)
   order.id = @next_id
   @next_id += 1
   order.time = Time.now
   @orders_repository << order
 end
end