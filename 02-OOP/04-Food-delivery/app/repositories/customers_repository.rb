require_relative "../models/customer"

class CustomersRepository

  attr_accessor :customers_repository

  def initialize
    @customers_repository = [Customer.new("TITI", "3 rue des fleurs")]
  end
end