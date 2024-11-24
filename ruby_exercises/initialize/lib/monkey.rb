# typed: true
# frozen_string_literal: true

# Define class
class Monkey
  attr_reader :name, :type, :favorite_food

  def initialize(array)
    @name = array[0]
    @type = array[1]
    @favorite_food = array[2]
  end
end
