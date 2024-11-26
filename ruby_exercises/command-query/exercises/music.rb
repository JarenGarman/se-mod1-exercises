# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts out quiet, can turn up to loud
class Music < T::Struct
  const :loud, T::Boolean, default: false
  sig { void }
  def turn_up
    @loud = true
  end
end
