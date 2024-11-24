# typed: true
# frozen_string_literal: true

# Define Kid class
class Kid
  attr_reader :grams_of_sugar_eaten, :hyperactive

  def initialize
    @grams_of_sugar_eaten = 0
    @hyperactive = false
  end

  def eat_candy
    @grams_of_sugar_eaten += 5
    return unless @grams_of_sugar_eaten >= 60

    @hyperactive = true
  end
end
