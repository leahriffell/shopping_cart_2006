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

  def return_capacity_as_integer
    @capacity.split('items')[0].to_i
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

  def is_full?
    total_number_of_products > return_capacity_as_integer
  end

  def products_by_category(desired_category)
    @products.find_all do |product|
      product.category == desired_category
    end
  end

  def percentage_occupied
    ((total_number_of_products.to_f / return_capacity_as_integer) * 100).round(2)
  end

  def sorted_products_by_quantity
    # sort by sorts least to greatest so we have to flip it
    ascending_sorted = @products.sort_by do |product|
      product.quantity
    end

    ascending_sorted.reverse
  end

  def product_breakdown
    unique_categories =
      products.map do |product|
        product.category
      end.uniq

    breakdown = {}

    unique_categories.each do |category|
      breakdown[category] = products_by_category(category)
    end
    breakdown
  end
end
