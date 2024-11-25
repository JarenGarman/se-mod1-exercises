# typed: strong
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Start with 60 pills. Can pop pills.
class Pills < T::Struct
  const :pills, Integer, default: 60
  sig { returns(Integer) }
  def count
    @pills
  end
  sig { void }
  def pop
    @pills -= 1
  end
end
