# typed: true
# frozen_string_literal: true

# Define Children class
class Children
  attr_reader :eldest

  def initialize
    @children = []
    @eldest = nil
    @eldest_age = 0
  end

  def <<(child)
    @children << child
    return unless child.age > @eldest_age

    @eldest = child
    @eldest_age = child.age
  end
end
