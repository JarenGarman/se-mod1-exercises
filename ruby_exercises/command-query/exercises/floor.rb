# typed: true
# frozen_string_literal: true

# Define Floor class
class Floor
  attr_reader :dirty

  def initialize
    @dirty = true
  end

  def wash
    @dirty = false
  end
end
