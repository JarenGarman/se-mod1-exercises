# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts out age 0. Can have birthdays.
class Person < T::Struct
  const :age, T.nilable(Integer), default: 0

  sig { void }
  def happy_birthday
    @age = T.must(@age) + 1
  end
end
