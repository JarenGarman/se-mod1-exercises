# typed: strict
# frozen_string_literal: false

require_relative '../../monkey_patch'
# Describe a vampire with a name and optional pet.
class Vampire
  sig { returns(String) }
  attr_reader :name

  sig { returns(String) }
  attr_reader :pet

  sig { returns(T::Boolean) }
  attr_reader :thirsty

  sig { params(name: String, pet: String).void }
  def initialize(name, pet = 'bat')
    @name = name
    @pet = pet
    @thirsty = T.let(true, T::Boolean)
  end

  sig { void }
  def drink
    @thirsty = false
  end
end
