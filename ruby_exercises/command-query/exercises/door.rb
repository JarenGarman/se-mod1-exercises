# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts out locked. Can unlock.
class Door < T::Struct
  const :locked, T::Boolean, default: true

  sig { void }
  def unlock
    @locked = false
  end
end
