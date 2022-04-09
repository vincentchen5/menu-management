class Menu
  attr_accessor :no_of_items
  @@menu_item = Array.new

  def self.all_instances
    @@menu_item
  end

  # initialize
  def initialize
    @no_of_items = 0
    @@menu_item << self
  end

  # adds a menu item to the menu
  def addMenuItem(item)
    @@menu_item << item
    @no_of_items += 1
  end
end