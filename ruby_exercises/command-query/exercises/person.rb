# typed: true
# frozen_string_literal: true

# Define class
class Person
  attr_reader :age

  def initialize
    @age = 0
  end

  def happy_birthday
    @age += 1
  end
end
