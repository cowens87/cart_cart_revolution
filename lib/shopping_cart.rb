class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.delete('items').to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    detalles = {}
    detalles[:name] = @name
    detalles[:capacity] = @capacity
    detalles
  end

  def total_number_of_products
    @products.sum do |product|
      product.quantity
    end
  end

  def is_full?
    total_number_of_products > @capacity
  end

  def products_by_category(category)
    @products.select do |product|
      product.category == category
    end
  end

  def percentage_occupied
    (total_number_of_products / @capacity.to_f * 100).round(2)
  end
end
