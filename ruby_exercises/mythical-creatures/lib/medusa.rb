# typed: strict
# frozen_string_literal: false

require_relative '../../monkey_patch'
# Describe a Medusa with a name.
class Medusa
  sig { returns(String) }
  attr_reader :name

  sig { returns(T::Array[Person]) }
  attr_reader :statues

  sig { params(name: String).void }
  def initialize(name)
    @name = name
    @statues = T.let([], T::Array[Person])
  end

  sig { params(victim: Person).void }
  def stare(victim)
    if @statues.count == 3
      T.must(@statues[0]).stoned = false
      @statues.delete_at(0)
    end
    victim.stoned = true
    @statues << victim
  end
end

# Describe a person with a name
class Person
  sig { returns(String) }
  attr_reader :name

  sig { returns(T::Boolean) }
  attr_accessor :stoned

  sig { params(name: String).void }
  def initialize(name)
    @name = name
    @stoned = T.let(false, T::Boolean)
  end

  sig { returns(T::Boolean) }
  def stoned?
    @stoned
  end
end
