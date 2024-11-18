class Catalog
  attr_reader :cheapest

  def initialize
    @catalog = []
    @cheapest = nil
  end
  def << product
    @catalog << product
  end
  def cheapest
    if !@catalog.empty?
      prices = @catalog.map do |products|
        products.price
      end
      @cheapest = @catalog[prices.index(prices.min)].type
    end
  end
end