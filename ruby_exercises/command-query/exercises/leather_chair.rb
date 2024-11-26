# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts out brand new, unfaded. When exposed to sunlight, becomes faded.
class LeatherChair < T::Struct
  const :faded, T::Boolean, default: false
  sig { void }
  def expose_to_sunlight
    @faded = true
  end
end
