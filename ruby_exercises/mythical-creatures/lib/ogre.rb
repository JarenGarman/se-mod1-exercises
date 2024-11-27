# typed: strict
# frozen_string_literal: false

require_relative '../../monkey_patch'
# Describe an ogre with a name and a home.
class Ogre
  sig { returns(String) }
  attr_reader :name, :home

  sig { returns(Integer) }
  attr_reader :swings, :encounter_counter

  sig { params(name: String, home: String).void }
  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = T.let(0, Integer)
    @encounter_counter = T.let(0, Integer)
  end

  sig { params(human: Human).void }
  def encounter(human)
    human.encounter_counter += 1
    @encounter_counter += 1
    swing_at(human) if human.notices_ogre?
  end

  sig { params(human: Human).void }
  def swing_at(human)
    @swings += 1
    human.knocked_out = true if @swings.even?
  end

  sig { params(human: Human).void }
  def apologize(human)
    human.knocked_out = false
  end
end

# Describe a human with a name, can have encounters with an ogre.
class Human
  sig { returns(String) }
  attr_reader :name

  sig { returns(Integer) }
  attr_accessor :encounter_counter

  sig { returns(T::Boolean) }
  attr_accessor :knocked_out

  sig { params(name: String).void }
  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = T.let(0, Integer)
    @knocked_out = T.let(false, T::Boolean)
  end

  sig { returns(T::Boolean) }
  def notices_ogre?
    (@encounter_counter % 3).zero?
  end

  sig { returns(T::Boolean) }
  def knocked_out?
    @knocked_out
  end
end
