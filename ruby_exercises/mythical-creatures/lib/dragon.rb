# frozen_string_literal: false

# Define class
class Dragon
  attr_reader :name, :color, :rider

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @eaten = 0
  end

  def hungry?
    @eaten < 3
  end

  def eat
    @eaten += 1
  end
end
