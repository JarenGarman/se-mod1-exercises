# typed: true
# frozen_string_literal: true

# Define Drops class
class Drops
  def initialize
    @drops = 0
  end

  def count
    @drops
  end

  def drop
    @drops += 1
  end
end
