# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts out hungry, can eat.
class Dog < T::Struct
  prop :hungry, T::Boolean, default: true

  sig { void }
  def eat
    @hungry = false
  end
end
