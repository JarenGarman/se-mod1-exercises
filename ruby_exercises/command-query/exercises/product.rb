# frozen_string_literal: true

# Define Product class
class Product
  attr_reader :type, :price

  def initialize(type, price)
    @type = type
    @price = price
  end
end
