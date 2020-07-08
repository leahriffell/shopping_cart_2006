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
end
