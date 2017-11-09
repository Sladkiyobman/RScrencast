class Order

  attr_reader :items

  include ItemContainer



  def initialize
    @items = Array.new
  end

  def place
    #actually place on order
  end

end