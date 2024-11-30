# typed: strict
# frozen_string_literal: true

require_relative '../../../monkey_patch'
require_relative 'candy'
# Starts empty, can hold candy.
class Bag < T::Struct
  prop :candies, T::Array[Candy], default: []
  sig { returns(Integer) }
  def eat
    @candies.shift(1)
    0
  end
  sig { params(type: String).returns(T::Boolean) }
  def contains?(type)
    @candies.any? do |candy|
      candy.type == type
    end
  end
end
