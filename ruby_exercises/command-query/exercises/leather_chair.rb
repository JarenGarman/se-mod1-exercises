# typed: true
# frozen_string_literal: true

# Define class
class LeatherChair
  attr_reader :faded

  def initialize
    @faded = false
  end

  def expose_to_sunlight
    @faded = true
  end
end
