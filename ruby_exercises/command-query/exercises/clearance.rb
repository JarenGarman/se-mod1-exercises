# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
require_relative('item')
# Starts out empty. Can add items, identify the best deal.
class Clearance
  sig { returns(T.nilable(String)) }
  attr_reader :best_deal

  sig { void }
  def initialize
    @clearance = T.let([], T::Array[Item])
    @best_deal_float = T.let(0.0, Float)
    @best_deal = T.let(nil, T.nilable(String))
  end

  sig { params(item: Item).void }
  def <<(item)
    @clearance << item
    return unless T.must(item.deal) > @best_deal_float

    @best_deal = item.type
    @best_deal_float = T.must(item.deal)
  end
end
