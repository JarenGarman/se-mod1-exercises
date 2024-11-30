# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts out age 0. Can have birthdays.
class Person
  sig { params(_name: String).void }
  def initialize(_name = 'Tom')
    @age = T.let(0, Integer)
  end

  sig { returns(Integer) }
  attr_reader :age

  sig { void }
  def happy_birthday
    @age += 1
  end
end
