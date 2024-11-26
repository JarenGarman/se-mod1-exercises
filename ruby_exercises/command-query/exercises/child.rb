# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Give a name and age to a child for use in the Children class.
class Child
  sig { returns(String) }
  attr_reader :name

  sig { returns(Integer) }
  attr_reader :age

  sig { params(name: String, age: Integer).void }
  def initialize(name, age)
    @name = name
    @age = age
  end
end
