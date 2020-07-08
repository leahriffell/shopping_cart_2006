class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity, products = [])
    @name = name
    @capacity = capacity
    @products = products
  end

  def add_product(product)
    @products << product
  end

  # def details
  #   Hash.new(name: @name, capacity: @capacity)
  # end

  def total_number_of_products
      @products.map do |product|
        product.quantity
      end.sum
      # sum enumerable returns sum of integers in array
  end
end
