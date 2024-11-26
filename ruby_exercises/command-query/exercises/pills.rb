# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Start with 60 pills. Can pop pills.
class Pills < T::Struct
  const :count, Integer, default: 60
  sig { void }
  def pop
    @count -= 1
  end
end
