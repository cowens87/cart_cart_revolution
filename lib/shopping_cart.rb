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
end
