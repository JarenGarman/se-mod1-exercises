# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts out at 295 K. Can be heated.
class Water < T::Struct
  const :temperature, Integer, default: 295

  sig { void }
  def heat
    @temperature += 1
  end
end
