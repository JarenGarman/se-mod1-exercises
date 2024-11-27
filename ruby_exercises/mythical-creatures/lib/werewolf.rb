# typed: strict
# frozen_string_literal: false

require_relative '../../monkey_patch'
# Define a Werewolf with a name and location
class Werewolf
  sig { returns(String) }
  attr_reader :name, :location

  sig { returns(Integer) }
  attr_reader :consumed

  sig { params(name: String, location: String).void }
  def initialize(name, location = 'London')
    @name = name
    @location = location
    @human = T.let(true, T::Boolean)
    @consumed = T.let(0, Integer)
  end

  sig { returns(T::Boolean) }
  def human?
    @human
  end

  sig { returns(T::Boolean) }
  def wolf?
    !@human
  end

  sig { returns(T.nilable(T::Boolean)) }
  def hungry?
    !@human && @consumed.zero?
  end

  sig { void }
  def change!
    @human = !@human
  end

  sig { params(victim: Victim).void }
  def consume(victim)
    return if @human

    @consumed += 1
    victim.status = :dead
  end
end

# A victim to the Werewolf class
class Victim < T::Struct
  prop :status, Symbol, default: :alive
end
