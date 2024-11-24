# typed: true
# frozen_string_literal: true

# Define class
class Parrot
  attr_reader :name, :known_words, :sound

  def initialize(hash)
    @name = hash[:name]
    @known_words = hash[:known_words]
    @sound = 'Squawk!'
  end
end
