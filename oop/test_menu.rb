require_relative "menu_item"
require_relative "menu"
require "test/unit"
 
class TestMenu < Test::Unit::TestCase
  def setup 
    @menuItem = MenuItem.new("Pizza", 200, 5)
    @menu = Menu.new
  end

  def test_menu_item_init()
    assert_equal("Pizza", @menuItem.name)
    assert_equal(200, @menuItem.calories)
    assert_equal(5, @menuItem.price)
  end

  def test_menu_init()
    assert_equal(0, @menu.no_of_items)
    @menu.addMenuItem(@menuItem)
    assert_equal(1, @menu.no_of_items)
  end
end