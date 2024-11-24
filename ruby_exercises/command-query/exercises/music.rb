# typed: true
# frozen_string_literal: true

# Define class
class Music
  attr_reader :loud

  def initialize
    @loud = false
  end

  def turn_up
    @loud = true
  end
end
