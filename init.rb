require_relative "string"
require_relative "item_container"
require_relative "item"
require_relative "virtua_item"
require_relative "real_item"
require_relative "antique_item"
require_relative "cart"
require_relative "order"


@items = []
@items << AntiqueItem.new(:price => 101, :weight => 100, :name => "car")
@items << RealItem.new(:weight => 100, :price => 101,:name => "kettle")
@items << RealItem.new(:weight => 100, :price => 101, :name => "dishwasher")

cart = Cart.new("grisha")
cart.add_item RealItem.new(:weight => 100, :price => 101,:name => "car")
cart.add_item RealItem.new(:weight => 100, :price => 101,:name => "car")
cart.add_item RealItem.new(:weight => 100, :price => 101,:name => "kettle")

#методы проверки (является ли он екземпляром класса)
# puts cart.kind_of?(Cart)
# puts @items[0].kind_of?(AntiqueItem)
# puts @items[0].kind_of?(Item)
# puts @items[0].class ==AntiqueItem
# puts @items[0].class ==Item
# puts @items[0].respond_to?(:info)
# puts @items[0].respond_to?(:important_info)
# puts @items[0].send(:tax) # вызов приватного метода
# puts @items[0].tax

