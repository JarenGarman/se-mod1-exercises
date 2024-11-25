# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts out age 0. Can have birthdays.
class Person < T::Struct
  sig { returns(Integer) }
  attr_reader :age

  sig { void }
  def initialize
    super
    @age = T.let(0, Integer)
  end

  sig { void }
  def happy_birthday
    @age += 1
  end
end
