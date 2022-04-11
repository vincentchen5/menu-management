class MenuItem
  attr_accessor :name, :calories, :price, :type, :dressing

  # initialize
  def initialize(name, calories, price, type)
    @name = name
    @calories = calories
    @price = price
    @type = type
    @dressing = nil
  end
end