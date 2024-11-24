# typed: true
# frozen_string_literal: true

# Define class
class Water
  attr_reader :temperature

  def initialize
    @temperature = 295
  end

  def heat
    @temperature += 1
  end
end
