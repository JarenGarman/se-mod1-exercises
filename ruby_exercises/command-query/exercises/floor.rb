# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts dirty. Can wash clean.
class Floor < T::Struct
  const :dirty, T::Boolean, default: true
  sig { void }
  def wash
    @dirty = false
  end
end
