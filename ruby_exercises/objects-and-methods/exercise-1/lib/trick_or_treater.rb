# typed: true
# frozen_string_literal: true

require_relative 'bag'

# Define class
class TrickOrTreater
  attr_reader :dressed_up_as, :bag

  def initialize(costume)
    @dressed_up_as = costume.style
    @bag = Bag.new
  end

  def candy?
    !@bag.empty?
  end

  def candy_count
    @bag.count
  end

  def eat
    @bag.eat
  end
end
