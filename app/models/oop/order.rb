class Order
  attr_accessor :restaurant, :menu_item, :dressing

  def initialize(restaurant, menuItem)
    @restaurant = restaurant
    @menu_item = menuItem
    @dressing = Array.new
  end

  def addDressing(dressing)
    @dressing << dressing
  end
end