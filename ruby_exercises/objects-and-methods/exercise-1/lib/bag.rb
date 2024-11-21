# frozen_string_literal: true

# Define class
class Bag
  def initialize
    @bag = []
  end

  def empty?
    @bag.empty?
  end

  def count
    @bag.count
  end

  def candies
    @bag
  end

  def <<(type)
    @bag << type
  end

  def contains?(candy)
    @candy_strings = @bag.map(&:type)
    @candy_strings.include?(candy)
  end

  def eat
    @bag = @bag.drop(1)
  end
end
