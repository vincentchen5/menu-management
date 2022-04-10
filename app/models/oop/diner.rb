require_relative "menu_item"
require_relative "menu"
require_relative "restaurant"
require_relative "order"

class Diner
  attr_accessor :name, :age, :orders

  # initialize
  def initialize(name, age)
    @name = name
    @age = age
    @orders = Array.new
  end

  # creates a new order
  def order(restaurant, menuItem)
    @orders << Order.new(menuItem.name, menuItem.price)
  end
end