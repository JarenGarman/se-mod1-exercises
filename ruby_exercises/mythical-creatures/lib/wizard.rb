# frozen_string_literal: false

# Define class
class Wizard
  attr_reader :name

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @spells_cast = 0
  end

  def bearded?
    @bearded
  end

  def incantation(string)
    string.insert(0, 'sudo ')
  end

  def rested?
    @spells_cast < 3
  end

  def cast
    @spells_cast += 1
    'MAGIC MISSILE!'
  end
end
