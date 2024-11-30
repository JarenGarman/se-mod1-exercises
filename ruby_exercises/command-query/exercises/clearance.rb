# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
require_relative('item')
# Starts out empty. Can add items, identify the best deal.
class Clearance < T::Struct
  prop :rack, T::Array[Item], default: []

  sig { returns(T.nilable(String)) }
  def best_deal
    return nil unless @rack.any?(Item)

    T.must(@rack.max_by(&:deal)).type
  end
end
