class Cart

  attr_reader :items

include ItemContainer

  def initialize(owner)
    @items = Array.new
    @owner = owner
  end

  def save_to_file
    File.open("#{@owner}_cart.txt", "w") do |f|
      @items.each { |i| f.puts i.to_s } #car:100:50
    end
  end

  def read_from_file
      File.readlines("#{@owner}_cart.txt") .each { |i| @items << i.to_real_item }# "car:100:50\n"
      @items.uniq!
  rescue Errno::ENOENT #исключение ситуации когда нету файла
      File.open("#{@owner}_cart.txt", "w"){}
      puts "file #{@owner}_cart.txt created"
  end

end