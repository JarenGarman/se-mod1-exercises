# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts unripe, will ripen after waiting two weeks
class Apple < T::Struct
  const :weeks, Integer, default: 0
  sig { void }
  def wait_a_week
    @weeks += 1
  end

  sig { returns(T::Boolean) }
  def ripe
    @weeks >= 2
  end
end
