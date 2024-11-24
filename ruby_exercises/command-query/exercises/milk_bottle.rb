# typed: true
# frozen_string_literal: true

# Define class
class MilkBottle
  attr_reader :full

  def initialize
    @full = true
  end

  def spill
    @full = false
  end
end
