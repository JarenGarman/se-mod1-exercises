# typed: true
# frozen_string_literal: true

# Define Cupcakes class
class Cupcakes
  attr_reader :sweetest

  def initialize
    @cupcakes = []
    @sweetest = nil
    @sweetest_sugar = 0
  end

  def <<(cupcake)
    @cupcakes << cupcake
    return unless cupcake.grams_of_sugar > @sweetest_sugar

    @sweetest = cupcake
    @sweetest_sugar = cupcake.grams_of_sugar
  end
end
