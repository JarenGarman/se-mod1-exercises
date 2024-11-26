# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
require_relative 'child'
# Starts out empty, can add children from Child class.
class Children < T::Struct
  prop :kids, T::Array[Child], default: []

  sig { returns(T.nilable(Child)) }
  def eldest
    return nil if @kids.empty?

    @kids.max_by(&:age)
  end
end
