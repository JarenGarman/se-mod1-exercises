# frozen_string_literal: true

# Define class
class Teeth
  def initialize
    @clean = false
  end

  def clean?
    @clean
  end

  def brush
    @clean = true
  end
end
