require "minitest/autorun"
require "minitest/pride"
require "./lib/shopping_cart"
require './lib/product'

class ShoppingCartTest < Minitest::Test
  def setup
    @cart = ShoppingCart.new("King Soopers", "30items")
    @product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    @product2 = Product.new(:meat, 'chicken', 4.50, '2')
  end

  def test_it_exists_and_has_attributes
    assert_instance_of ShoppingCart, @cart
    assert_equal "King Soopers", @cart.name
    assert_equal 30, @cart.capacity
  end

  def test_it_can_add_products
    assert_equal [], cart.products

    cart.add_product(product1)
    cart.add_product(product2)

    assert_equal [product1, product2], cart.products
  end
end
