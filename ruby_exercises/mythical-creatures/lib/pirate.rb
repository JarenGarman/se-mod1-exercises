# typed: strict
# frozen_string_literal: false

require_relative '../../monkey_patch'
# Describe a pirate with a name and an optional job
class Pirate
  sig { returns(String) }
  attr_reader :name

  sig { returns(String) }
  attr_reader :job

  sig { returns(Integer) }
  attr_reader :booty

  sig { params(name: String, job: String).void }
  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @booty = T.let(0, Integer)
    @heinous_acts = T.let(0, Integer)
  end

  sig { returns(T::Boolean) }
  def cursed?
    @heinous_acts >= 3
  end

  sig { void }
  def commit_heinous_act
    @heinous_acts += 1
  end

  sig { void }
  def rob_ship
    @booty += 100
  end
end
