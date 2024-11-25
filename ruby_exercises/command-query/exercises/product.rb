# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Create a product to place in the catalog.
class Product < T::Struct
  const :type, String, default: ''
  const :price, Integer, default: 0
  sig { params(type: String, price: Integer).void }
  def describe(type, price)
    @type = type
    @price = price
  end
end
