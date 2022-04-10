class Order 
  attr_accessor :name, :price, :menu_item

  def initialize(name, price)
    @name = name
    @price = price
  end
end