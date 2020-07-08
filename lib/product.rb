class Product
  attr_reader :category, :name, :unit_price, :quantity

  def initialize(category, name, unit_price, quantity, is_hoarded = false)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity.to_i
    @is_hoarded = is_hoarded
  end

  def total_price
    @unit_price * @quantity
  end

  def is_hoarded?
    @is_hoarded
  end

  def hoard

  end
end
