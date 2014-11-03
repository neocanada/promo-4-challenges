class Employee

  attr_reader :name, :password, :restaurant

  def initialize(name, password)
    @name = name
    @password = password
  end
end



class Manager < Employee

  attr_reader :manager

  def initialize(name, password, admin)
    super name, password
    @admin = true
  end


class DeliveryEmployee < Employee


end

end