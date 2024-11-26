# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts out sober. Can drink and gets drunk after three drinks
class Adult < T::Struct
  const :drinks, Integer, default: 0
  sig { void }
  def consume_an_alcoholic_beverage
    @drinks += 1
  end

  sig { returns(T::Boolean) }
  def sober
    @drinks < 3
  end
end
