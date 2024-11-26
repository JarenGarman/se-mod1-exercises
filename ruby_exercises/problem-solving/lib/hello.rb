# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts with no name. Can greet based on name passed.
class Hello < T::Struct
  prop :name, T.nilable(String), default: nil
  sig { params(name: String).returns(String) }
  def greet(name)
    "Hello, #{name}, nice to meet you!"
  end
end
