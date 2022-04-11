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
  def order(diner, menuItem, dressing, appetizerOrEntree)
    order = Order.new(self, menuItem)
    if menuItem.name == "Salad"
      if dressing != nil && appetizerOrEntree != nil
        order.addDressing(dressing)
        order.addAppetizerOrEntree(appetizerOrEntree)
      elsif dressing != nil && appetizerOrEntree == nil
        order.addDressing(dressing)
      else dressing == nil && appetizerOrEntree != nil
        order.addAppetizerOrEntree(appetizerOrEntree) 
      end
    else
      if appetizerOrEntree != nil
        order.addAppetizerOrEntree(appetizerOrEntree)
      end
    end
    diner.addOrder(self, order)
  end
end