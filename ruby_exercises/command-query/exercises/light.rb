# typed: true
# frozen_string_literal: true

# Define class
class Light
  attr_reader :on

  def initialize
    @on = false
  end

  def turn_on
    @on = true
  end
end
