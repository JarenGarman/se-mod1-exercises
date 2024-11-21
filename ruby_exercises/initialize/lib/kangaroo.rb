# frozen_string_literal: true

# Define class
class Kangaroo
  attr_reader :name, :children

  def initialize(name, children)
    @name = name
    @children = children
  end
end
