# frozen_string_literal: true

# Define Children class
class Children
  def initialize
    @children = []
  end

  def <<(child)
    @children << child
  end

  def eldest
    return nil if @children.empty?

    @ages = @children.map(&:age)
    @children[@ages.index(@ages.max)]
  end
end
