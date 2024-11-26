# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts out having eaten 0 grams of sugar, becomes hyperactive after 60.
class Kid < T::Struct
  const :grams_of_sugar_eaten, Integer, default: 0
  sig { void }
  def eat_candy
    @grams_of_sugar_eaten += 5
  end
  sig { returns(T::Boolean) }
  def hyperactive
    @grams_of_sugar_eaten >= 60
  end
end
