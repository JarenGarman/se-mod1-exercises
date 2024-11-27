# typed: strict
# frozen_string_literal: true

require_relative '../../../monkey_patch'
require_relative 'bag'
require_relative 'costume'
# Starts with a costume and an empty bag. Can get candy and eat it.
class TrickOrTreater
  sig { returns(T.nilable(String)) }
  attr_reader :dressed_up_as

  sig { returns(Bag) }
  attr_reader :bag

  sig { returns(Integer) }
  attr_reader :sugar_level

  sig { params(costume: Costume).void }
  def initialize(costume)
    @dressed_up_as = costume.style
    @bag = Bag.new
    @sugar_level = T.let(0, Integer)
  end

  def candy?
    !@bag.candies.empty?
  end

  def candy_count
    @bag.candies.count
  end

  def eat
    @sugar_level += @bag.eat
  end
end
