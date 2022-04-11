require_relative "menu_item"
require_relative "menu"
require_relative "restaurant"
require_relative "diner"
require_relative "order"

require "test/unit"
 
class TestClass < Test::Unit::TestCase
  # This test case verifies a menu item is initialized correctly
  def test_menu_item_init()
    # initialize
    menuItem = MenuItem.new("Pizza", 200, 5, "standalone")

    assert_equal("Pizza", menuItem.name)
    assert_equal(200, menuItem.calories)
    assert_equal(5, menuItem.price)
  end

  # This test case verifies a menu is initialized correctly
  def test_menu_init()
    # initialize
    menu = Menu.new

    assert_equal(0, menu.menu_items.length())
  end

  # This test case verifies a menu item is correctly added to the menu
  def test_menu_add_menu_item()
    # initialize
    menu = Menu.new
    menuItem = MenuItem.new("Pasta", 500, 10, "standalone")

    menu.addMenuItem(menuItem)
    assert_equal(1, menu.menu_items.length())
  end

  # This test case verifies a duplicate menu item name isn't added to the menu
  def test_menu_add__menu_item_Duplicate_name() 
    # initialize
    menu = Menu.new
    menuItem = MenuItem.new("Cheesecake", 150, 3, "standalone")

    menu.addMenuItem(menuItem)
    menu.addMenuItem(menuItem)
    menu.addMenuItem(menuItem)
    assert_equal(1, menu.menu_items.length())
  end

  # This test case verifies a restaurant is initialized correctly
  def test_restaurant_init()
    # initialize
    menu = Menu.new
    restaurant = Restaurant.new("Moe's Southwest Grill", 50, "85 5th St NW", 3, menu)

    assert_equal("Moe's Southwest Grill", restaurant.name)
    assert_equal(50, restaurant.capacity)
    assert_equal("85 5th St NW", restaurant.address)
    assert_equal(3, restaurant.no_of_employees)
    assert_equal(0, restaurant.no_of_menus)
  end

  # This test case verifies that a menu is correctly added to the restaurant
  def test_restaurant_add_menu()
    # initialize
    menu = Menu.new
    restaurant = Restaurant.new("McDonald's", 75, "526 Ponce De Leon Blvd", 10, menu)

    restaurant.addMenu(menu)
    assert_equal(1, restaurant.no_of_menus)
  end

  # This test case verifies a diner is initialized correctly
  def test_diner_init()
    # initialize
    diner = Diner.new("John", 19)

    assert_equal("John", diner.name)
    assert_equal(19, diner.age)
  end

  # This test case verifies that an order is correctly added to the diner's order
  def test_diner_order()
    # initialize
    diner = Diner.new("Gon", 18)
    menuItem = MenuItem.new("Shawarma", 100, 4, "standalone")
    menu = Menu.new
    menu.addMenuItem(menuItem) 

    restaurant = Restaurant.new("Halal Guy's", 10, "95 Eighth St NW", 5, menu) 
    restaurant.addMenu(menu)
    restaurant.order(diner, menuItem, nil)
    assert_equal("Shawarma", diner.orders.last.menu_item.name)
  end

  # This test case verifies the salad order feature
  def test_diner_order_salad()
    # initialize
    diner = Diner.new("Cristiano", 37)
    menuItem1 = MenuItem.new("Salad", 50, 6, "standalone")
    menu = Menu.new
    menu.addMenuItem(menuItem1)
    restaurant = Restaurant.new("Sweetgreen", 25, "1201 Peachtree St NE", 8, menu) 
    restaurant.addMenu(menu)
    
    restaurant.order(diner, menuItem1, "Lemon and Honey")
    assert_equal("Salad", diner.orders.last.menu_item.name)
    assert_equal("standalone", menuItem1.type)
    assert_equal("Lemon and Honey", diner.orders.last.dressing.last)

    menuItem2 = MenuItem.new("Salad", 50, 6, "side")
    menu.addMenuItem(menuItem2)
    restaurant.order(diner, menuItem2, nil)
    assert_equal("Salad", diner.orders.last.menu_item.name)
    assert_equal("side", menuItem2.type)
    assert_equal(nil, diner.orders.last.dressing.last)
  end
end