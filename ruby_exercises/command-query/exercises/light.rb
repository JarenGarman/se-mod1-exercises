# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts off, can turn on
class Light < T::Struct
  const :on, T::Boolean, default: false
  sig { void }
  def turn_on
    @on = true
  end
end
