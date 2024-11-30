# typed: strict
# frozen_string_literal: true

require_relative '../../../monkey_patch'
require_relative 'candy'
# Starts empty, can add candy.
class Bag < T::Struct
  prop :candies, T::Array[Candy], default: []

  sig { params(candy: String).returns(T.nilable(Candy)) }
  def grab(candy)
    return unless @candies.find { |candies| candies.type == candy }.is_a?(Candy)

    grabbed_candy = @candies.find { |candies| candies.type == candy }
    @candies.delete(T.must(grabbed_candy))
    grabbed_candy
  end

  sig { params(amount: Integer).returns(T::Array[Candy]) }
  def take(amount)
    @candies.shift(amount)
  end

  sig { returns(Integer) }
  def eat
    return 0 if @candies.empty?

    eaten = @candies.shift(1)
    T.must(eaten[0]).sugar
  end

  sig { params(candy_query: String).returns(T::Boolean) }
  def contains?(candy_query)
    @candies.any? { |candy| candy.type == candy_query }
  end
end
