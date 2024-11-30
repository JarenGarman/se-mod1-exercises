# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Define an item to be used with the Clearance class.
class Item
  sig { returns(Float) }
  attr_reader :deal

  sig { returns(String) }
  attr_reader :type

  sig { params(type: String, price_and_discount: T::Hash[Symbol, Integer]).void }
  def initialize(type, price_and_discount)
    @type = type
    @price = T.let(T.must(price_and_discount[:price]), Integer) if price_and_discount.include?(:price)
    @discount = T.let(T.must(price_and_discount[:discount]), Integer) if price_and_discount.include?(:discount)
    @deal = T.let((1.0 - (@price[0] - @discount[0])) / @price.to_f, Float)
  end
end
