# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
require_relative('product')
# Create an empty catalog. Can add products and determine the cheapest product.
class Catalog < T::Struct
  prop :catalog, T::Array[Product], default: []

  sig { returns(T.nilable(String)) }
  def cheapest
    return nil if @catalog.empty?

    T.must(@catalog.min_by(&:price)).type
  end
end
