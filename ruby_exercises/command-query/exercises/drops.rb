# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts at 0, can count up.
class Drops < T::Struct
  const :count, Integer, default: 0

  sig { void }
  def drop
    @count += 1
  end
end
