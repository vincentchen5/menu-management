class Order
  attr_accessor :restaurant, :menu_item, :dressing, :appetizerOrEntree

  def initialize(restaurant, menuItem)
    @restaurant = restaurant
    @menu_item = menuItem
    @dressing = Array.new
    @appetizerOrEntree = Array.new
  end

  def addDressing(dressing)
    @dressing << dressing
  end

  def addAppetizerOrEntree(appetizerOrEntree)
    @appetizerOrEntree << appetizerOrEntree
  end
end