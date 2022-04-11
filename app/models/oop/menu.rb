require_relative "menu_item"

class Menu
  attr_accessor :menu_items

  # initialize
  def initialize
    @menu_items = Array.new
  end

  # adds a menu item to the menu
  # if duplicate don't add
  def addMenuItem(menuItem)
    if menuItem.class == MenuItem
      if !@menu_items.find { |menu_item| menu_item.name == menuItem.name }
        @menu_items << menuItem
      end
    end
  end
end