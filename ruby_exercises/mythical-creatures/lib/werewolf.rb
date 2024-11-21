# frozen_string_literal: false

# Define class
class Werewolf
  attr_reader :name, :location, :consumed

  def initialize(name, location = 'London')
    @name = name
    @location = location
    @human = true
    @wolf = false
    @consumed = 0
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def hungry?
    @wolf && @consumed.zero?
  end

  def change!
    @human = !@human
    @wolf = !@wolf
  end

  def consume(victim)
    return unless @wolf && !@human

    @consumed += 1
    victim.status = :dead
  end
end

# Define class
class Victim
  attr_accessor :status

  def initialize
    @status = :alive
  end
end
