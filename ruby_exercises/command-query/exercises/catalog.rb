# frozen_string_literal: true

# Define Catalog class
class Catalog
  def initialize
    @catalog = []
  end

  def <<(product)
    @catalog << product
  end

  def cheapest
    return nil if @catalog.empty?

    prices = @catalog.map(&:price)
    @catalog[prices.index(prices.min)].type
  end
end
