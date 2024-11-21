# frozen_string_literal: true

# Define class
class Light
  def initialize
    @on = false
  end

  def on?
    @on
  end

  def turn_on
    @on = true
  end
end
