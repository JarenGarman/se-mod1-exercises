# typed: true
# frozen_string_literal: true

# Define Apple class
class Apple
  attr_reader :ripe

  def initialize
    @weeks = 0
    @ripe = false
  end

  def wait_a_week
    @weeks += 1
    @ripe = true if @weeks > 2
  end
end
