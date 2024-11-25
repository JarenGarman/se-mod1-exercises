# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts full. Can spill.
class MilkBottle < T::Struct
  const :full, T::Boolean, default: true

  sig { void }
  def spill
    @full = false
  end
end
