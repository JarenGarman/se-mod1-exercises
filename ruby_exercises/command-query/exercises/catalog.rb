# typed: true
# frozen_string_literal: true

# Define Catalog class
class Catalog
  attr_reader :cheapest

  def initialize
    @catalog = []
    @cheapest = nil
    @cheapest_price = 0
  end

  def <<(product)
    @catalog << product
    return unless product.price < @cheapest_price || @cheapest_price.zero?

    @cheapest = product.type
    @cheapest_price = product.price
  end
end
