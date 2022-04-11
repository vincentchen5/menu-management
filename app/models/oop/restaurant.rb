require_relative "menu"
require_relative "diner"
require_relative "order"

class Restaurant
  attr_accessor :name, :capacity, :address, :no_of_employees, :no_of_menus, :menus
  
  # initialize
  def initialize(name, capacity, address, no_of_employees, no_of_menus)
    @name = name
    @capacity = capacity
    @address = address
    @no_of_employees = no_of_employees
    @no_of_menus = 0
    @menus = Array.new
  end

  # adds a menu
  def addMenu(menu)
    if menu.class == Menu
      @menus << menu
      @no_of_menus += 1
    end
  end

  # creates a new order
  def order(diner, menuItem, dressing)
    if menuItem.name == "Salad" && dressing != nil
      order = Order.new(self, menuItem)
      order.addDressing(dressing)
      diner.addOrder(self, order)
    else
      order = Order.new(self, menuItem)
      diner.addOrder(self, order)
    end
  end
end