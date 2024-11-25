# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
require_relative('product')
# Create an empty catalog. Can add products and determine the cheapest product.
class Catalog < T::Struct
  sig { returns(T.nilable(String)) }
  attr_reader :cheapest

  sig { void }
  def initialize
    super
    @catalog = T.let([], T::Array[Product])
    @cheapest = T.let(nil, T.nilable(String))
    @cheapest_price = T.let(0, Integer)
  end

  sig { params(product: Product).void }
  def <<(product)
    @catalog << product
    return unless product.price < @cheapest_price || @cheapest_price.zero?

    @cheapest = product.type
    @cheapest_price = product.price
  end
end
