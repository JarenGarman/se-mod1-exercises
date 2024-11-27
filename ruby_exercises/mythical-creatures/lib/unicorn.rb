# typed: strict
# frozen_string_literal: false

require_relative '../../monkey_patch'
# Describe a Unicorn with a name and color.
class Unicorn
  sig { returns(String) }
  attr_reader :name

  sig { returns(String) }
  attr_reader :color

  sig { params(name: String, color: String).void }
  def initialize(name, color = 'silver')
    @name = name
    @color = color
  end

  sig { returns(T::Boolean) }
  def silver?
    @color == 'silver'
  end

  sig { params(string: String).returns(String) }
  def say(string)
    string.insert(0, '**;* ')
    string.insert(-1, ' **;*')
  end
end
