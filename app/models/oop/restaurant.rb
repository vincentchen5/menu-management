require_relative "menu"

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

  def addMenu(menu)
    if menu.class == Menu
      @menus << menu
      @no_of_menus += 1
    end
  end
end