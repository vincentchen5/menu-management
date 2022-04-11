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

  # saves user's order
  def addOrder(restaurant, order)
    @orders << order
  end
end