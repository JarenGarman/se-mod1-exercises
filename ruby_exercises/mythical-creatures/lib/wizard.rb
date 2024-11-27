# typed: strict
# frozen_string_literal: false

require_relative '../../monkey_patch'
# Describe a wizard with a name and an optional beard.
class Wizard
  sig { returns(String) }
  attr_reader :name

  sig { params(name: String, bearded: T::Boolean).void }
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @spells_cast = T.let(0, Integer)
  end

  sig { returns(T::Boolean) }
  def bearded?
    @bearded
  end

  sig { params(string: String).returns(String) }
  def incantation(string)
    string.insert(0, 'sudo ')
  end

  sig { returns(T::Boolean) }
  def rested?
    @spells_cast < 3
  end

  sig { returns(String) }
  def cast
    @spells_cast += 1
    'MAGIC MISSILE!'
  end
end
