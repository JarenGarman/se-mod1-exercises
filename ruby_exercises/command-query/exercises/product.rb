# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Create a product to place in the catalog.
class Product
  sig { returns(String) }
  attr_reader :type

  sig { returns(Integer) }
  attr_reader :price

  sig { params(type: String, price: Integer).void }
  def initialize(type, price)
    @type = type
    @price = price
  end
end
