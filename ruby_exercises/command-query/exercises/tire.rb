# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts out not flat. Can blow out.
class Tire < T::Struct
  const :flat, T::Boolean, default: false
  sig { void }
  def blow_out
    @flat = true
  end
end
