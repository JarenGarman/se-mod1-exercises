# typed: true
# frozen_string_literal: true

# Define Dog class
class Dog
  attr_reader :hungry

  def initialize
    @hungry = true
  end

  def eat
    @hungry = false
  end
end
