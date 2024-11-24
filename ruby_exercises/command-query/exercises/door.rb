# typed: true
# frozen_string_literal: true

# Define Door class
class Door
  attr_reader :locked

  def initialize
    @locked = true
  end

  def unlock
    @locked = false
  end
end
