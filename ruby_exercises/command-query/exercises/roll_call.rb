# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts empty, can add names. Finds longest name
class RollCall < T::Struct
  prop :names, T::Array[String], default: []

  sig { returns(T.nilable(String)) }
  def longest_name
    return nil if @names.empty?

    @names.max_by(&:length)
  end
end
