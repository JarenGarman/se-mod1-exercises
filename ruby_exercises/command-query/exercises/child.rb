# typed: true
# frozen_string_literal: true

# Define Child class
class Child
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end
