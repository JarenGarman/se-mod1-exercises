# typed: true
# frozen_string_literal: true

# Define adult class
class Adult
  attr_reader :sober

  def initialize
    @sober = true
    @drinks = 0
  end

  def consume_an_alcoholic_beverage
    @drinks += 1
    return unless @drinks >= 3

    @sober = false
  end
end
