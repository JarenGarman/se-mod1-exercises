# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Create a cupcake with a particular flavor and amount of sugar in grams.
class Cupcake
  sig { returns(String) }
  attr_reader :flavor

  sig { returns(Integer) }
  attr_reader :grams_of_sugar

  sig { params(flavor: String, grams_of_sugar: Integer).void }
  def initialize(flavor, grams_of_sugar)
    @flavor = flavor
    @grams_of_sugar = grams_of_sugar
  end
end
