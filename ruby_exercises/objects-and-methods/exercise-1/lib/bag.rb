# typed: strict
# frozen_string_literal: true

require_relative '../../../monkey_patch'
require_relative 'candy'
# Starts empty, can hold candy.
class Bag < T::Struct
  prop :candies, T.nilable(T::Array[Candy]), default: []
  sig { void }
  def eat
    @candies = T.must(@candies).drop(1)
  end
  sig { params(type: String).returns(T::Boolean) }
  def contains?(type)
    T.must(@candies).any? do |candy|
      candy.type == type
    end
  end
end
