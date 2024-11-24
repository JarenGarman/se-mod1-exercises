# typed: true
# frozen_string_literal: true

# Define class
class Yak
  attr_reader :hairy

  def initialize
    @hairy = true
  end

  def shave
    @hairy = false
  end
end
