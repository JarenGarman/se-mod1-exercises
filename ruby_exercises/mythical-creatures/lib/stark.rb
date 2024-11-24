# typed: true
# frozen_string_literal: true
# Define class
class Stark
  attr_reader :name, :location, :house_words
  attr_accessor :safe

  def initialize(name, location = 'Winterfell')
    @name = name
    @location = location
    @house_words = 'Winter is Coming'
    @safe = false
  end
end
