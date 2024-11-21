# frozen_string_literal: false

# Define class
class Unicorn
  attr_reader :name, :color

  def initialize(name, color = 'silver')
    @name = name
    @color = color
  end

  def silver?
    @color == 'silver'
  end

  def say(string)
    string.insert(0, '**;* ')
    string.insert(-1, ' **;*')
  end
end
