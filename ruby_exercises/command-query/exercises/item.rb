# frozen_string_literal: true

# Define Baby class
class Item
  attr_reader :type, :price, :discount, :deal

  def initialize(type, **pricing)
    @type = type
    @price = pricing.fetch(:price)
    @discount = pricing.fetch(:discount)
    @deal = 1.0 - ((@price - @discount) / @price.to_f)
  end
end
