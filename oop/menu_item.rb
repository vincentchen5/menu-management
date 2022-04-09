class MenuItem
  attr_accessor :name, :calories, :price
  
  # initialize
  def initialize(name, calories, price)
    @name = name
    @calories = calories
    @price = price
  end
end