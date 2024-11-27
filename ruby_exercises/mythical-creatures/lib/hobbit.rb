# typed: strict
# frozen_string_literal: false

require_relative '../../monkey_patch'
# Describe a hobbit with a name and disposition.
class Hobbit
  sig { returns(String) }
  attr_reader :name

  sig { returns(String) }
  attr_reader :disposition

  sig { returns(Integer) }
  attr_reader :age

  sig { params(name: String, disposition: String).void }
  def initialize(name, disposition = 'homebody')
    @name = name
    @disposition = disposition
    @age = T.let(0, Integer)
  end

  sig { void }
  def celebrate_birthday
    @age += 1
  end

  sig { returns(T::Boolean) }
  def adult?
    @age >= 33
  end

  sig { returns(T::Boolean) }
  def old?
    @age >= 101
  end

  sig { returns(T::Boolean) }
  def ring?
    @name == 'Frodo'
  end

  sig { returns(TrueClass) }
  def short?
    true
  end
end
