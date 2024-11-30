# typed: strict
# frozen_string_literal: true

require_relative '../../../monkey_patch'
require_relative 'costume'
require_relative 'bag'

# Start with a costume and empty bag. Can add candy and eat candy.
class TrickOrTreater
  sig { returns(String) }
  attr_reader :dressed_up_as

  sig { returns(Bag) }
  attr_accessor :bag

  sig { params(costume: Costume).void }
  def initialize(costume)
    @dressed_up_as = T.let(costume.style, String)
    @bag = T.let(Bag.new, Bag)
  end

  sig { returns(T::Boolean) }
  def candy?
    !@bag.candies.empty?
  end

  sig { returns(Integer) }
  def candy_count
    @bag.candies.count
  end

  sig { void }
  def eat
    @bag.eat
  end
end
