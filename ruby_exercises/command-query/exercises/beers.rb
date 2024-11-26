# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Start with 99 beers, can take one down and restock.
class Beers < T::Struct
  prop :inventory, Integer, default: 99
  sig { void }
  def take_one_down_and_pass_it_around
    @inventory -= 1
  end

  sig { void }
  def restock
    initialize
  end
end
