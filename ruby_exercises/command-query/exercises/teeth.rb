# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts dirty, can brush to clean.
class Teeth < T::Struct
  const :clean, T::Boolean, default: false

  sig { returns(T::Boolean) }
  def brush
    @clean = true
  end
end
