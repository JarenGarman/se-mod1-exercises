# frozen_string_literal: true

# Define Apple class
class Apple
  def initialize
    @weeks = 0
    @ripe = false
  end

  def wait_a_week
    @weeks += 1
  end

  def ripe?
    @ripe = true if @weeks > 2
    @ripe
  end
end
