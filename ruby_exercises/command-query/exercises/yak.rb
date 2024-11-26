# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts off hairy. Can be shaved.
class Yak < T::Struct
  const :hairy, T::Boolean, default: true

  sig { void }
  def shave
    @hairy = false
  end
end
