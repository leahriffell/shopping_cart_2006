require 'minitest/autorun'
require 'minitest/pride'
require '../lib/product'
require '../lib/shopping_cart'
require 'pry'

class ShoppingCartTest < MiniTest::Test
  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_instance_of ShoppingCart, cart
  end

  def test_it_has_a_name
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal "King Soopers", cart.name
  end

  def test_it_has_a_capacity
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal "30items", cart.capacity
  end

  def test_it_can_have_products
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal [], cart.products
  end

  def test_it_can_add_products
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')

    cart.add_product(product1)
    assert_equal [product1], cart.products
    cart.add_product(product2)
    assert_equal [product1, product2], cart.products
  end

  # def test_details_can_be_returned
  #   cart = ShoppingCart.new("King Soopers", "30items")
  #
  #   # assert_equal {name: "King Soopers", capacity: 30}, cart.details
  # end

  def test_it_can_get_total_products
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')

    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    assert_equal 13, cart.total_number_of_products
  end


end
