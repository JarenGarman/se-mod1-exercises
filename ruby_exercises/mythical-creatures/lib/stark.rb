# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Describe a Stark with a name and location.
class Stark
  sig { returns(String) }
  attr_reader :name, :location, :house_words

  sig { returns(T::Boolean) }
  attr_accessor :safe

  sig { params(name: String, location: String).void }
  def initialize(name, location = 'Winterfell')
    @name = name
    @location = location
    @house_words = T.let('Winter is Coming', String)
    @safe = T.let(false, T::Boolean)
  end
end
