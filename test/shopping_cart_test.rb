require "minitest/autorun"
require "minitest/pride"
require "./lib/shopping_cart"
require './lib/product'

class ShoppingCartTest < Minitest::Test
  def setup
    @cart = ShoppingCart.new("King Soopers", "30items")
  end

  def test_it_exists_and_has_attributes
    assert_instance_of ShoppingCart, @cart
    assert_equal "King Soopers", @cart.name
    assert_equal 30, @cart.capacity
  end
end
