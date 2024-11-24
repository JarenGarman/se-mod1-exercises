# typed: true
# frozen_string_literal: true

# Define class
class Tire
  attr_reader :flat

  def initialize
    @flat = false
  end

  def blow_out
    @flat = true
  end
end
