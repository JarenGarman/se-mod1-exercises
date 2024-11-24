# typed: true
# frozen_string_literal: true

# Define class
class Teeth
  attr_reader :clean

  def initialize
    @clean = false
  end

  def brush
    @clean = true
  end
end
