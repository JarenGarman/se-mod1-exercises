# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts tired, can nap.
class Baby < T::Struct
  const :tired, T::Boolean, default: true
  sig { void }
  def nap
    @tired = false
  end
end
