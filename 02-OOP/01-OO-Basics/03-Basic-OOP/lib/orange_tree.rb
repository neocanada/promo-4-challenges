class OrangeTree
  attr_accessor :height, :age, :fruits
  def initialize
    @age = 0
    @height = 0
    @fruits = 0
  end

  def one_year_passes!
    @age += 1
    @height += 1 if @height < 10
    if @age > 5 && @age <= 10
      @fruits = 100
    elsif @age >= 10 && @age <= 15
      @fruits = 200
    else
      @fruits = 0
    end
  end

  def dead?
    if @age <= 50
      false
    elsif @age >= 100
      true
    elsif @age - 50 < [*1..50].sample
      true
    end
  end

  def pick_a_fruit!
    @fruits -= 1
  end
end

# new_tree = OrangeTree.new
# 100.times do new_tree.one_year_passes! end
# p new_tree.age
# p new_tree.dead?