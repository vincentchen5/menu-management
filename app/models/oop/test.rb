require_relative "menu_item"
require_relative "menu"
require_relative "restaurant"
require "test/unit"
 
class TestClass < Test::Unit::TestCase
  def test_menu_item_init()
    menuItem = MenuItem.new("Pizza", 200, 5)
    assert_equal("Pizza", menuItem.name)
    assert_equal(200, menuItem.calories)
    assert_equal(5, menuItem.price)
  end

  def test_menu_init()
    menu = Menu.new
    assert_equal(0, menu.no_of_items)
  end

  def test_menu_add_menu_item()
    menu = Menu.new
    menuItem = MenuItem.new("Pasta", 500, 10)
    menu.addMenuItem(menuItem)
    assert_equal(1, menu.no_of_items)
  end

  def test_menu_add__menu_item_Duplicate_name()
    menu = Menu.new
    menuItem = MenuItem.new("Cheesecake", 150, 3)
    menu.addMenuItem(menuItem)
    menu.addMenuItem(menuItem)
    menu.addMenuItem(menuItem)
    assert_equal(1, menu.no_of_items)
  end

  def test_restaurant_init()
    menu = Menu.new
    restaurant = Restaurant.new("Moe's Southwest Grill", 50, "85 5th St NW", 3, menu)
    assert_equal("Moe's Southwest Grill", restaurant.name)
    assert_equal(50, restaurant.capacity) 
    assert_equal("85 5th St NW", restaurant.address)
    assert_equal(3, restaurant.no_of_employees)
    assert_equal(0, restaurant.no_of_menus) 
  end

  def test_restaurant_add_menu()
    menu = Menu.new
    restaurant = Restaurant.new("McDonald's", 75, "526 Ponce De Leon Blvd", 10, menu)
    restaurant.addMenu(menu)
    assert_equal(1, restaurant.no_of_menus) 
  end
end