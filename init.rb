require_relative "item_container"
require_relative "item"
require_relative "cart"
require_relative "real_item"
require_relative "virtua_item"
require_relative "order"

item1 = VirtualItem.new(:price => 10, :weight => 100, :name => "car")
item2 = RealItem.new(:weight => 100, :price => 10,:name => "car")
item3 = RealItem.new(:weight => 100, :price => 10, :name => "Dishwasher")

cart = Cart.new
cart.add_item item1
cart.add_item item2
cart.remove_item
puts cart.items.size

order = Order.new
order.add_item item1
order.add_item item2
order.add_item item3
order.remove_item
puts order.items.size

puts order.count_valid_items
puts order.count_valid_items

