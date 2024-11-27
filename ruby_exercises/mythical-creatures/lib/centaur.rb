# typed: strict
# frozen_string_literal: false

require_relative '../../monkey_patch'
# Describe a centaur with a name and breed
class Centaur
  sig { returns(String) }
  attr_reader :name, :breed

  sig { returns(T::Boolean) }
  attr_reader :sick

  sig { params(name: String, breed: String).void }
  def initialize(name, breed)
    @name = name
    @breed = breed
    @standing = T.let(true, T::Boolean)
    @actions = T.let(0, Integer)
    @sick = T.let(false, T::Boolean)
  end

  sig { returns(String) }
  def shoot
    if @actions < 3 && @standing
      @actions += 1
      'Twang!!!'
    else
      'NO!'
    end
  end

  sig { returns(String) }
  def run
    if @actions < 3 && @standing
      @actions += 1
      'Clop clop clop clop!'
    else
      'NO!'
    end
  end

  sig { returns(T::Boolean) }
  def cranky?
    @actions >= 3
  end

  sig { returns(T::Boolean) }
  def standing?
    @standing
  end

  sig { returns(T::Boolean) }
  def laying?
    !@standing
  end

  sig { void }
  def lay_down
    @standing = false
  end

  sig { void }
  def stand_up
    @standing = true
  end

  sig { returns(T.any(Integer, String)) }
  def sleep
    if @standing
      'NO!'
    else
      @actions = 0
    end
  end

  sig { returns(T.any(Integer, String)) }
  def drink_potion
    if @standing
      @sick = true if @actions <= 2
      @actions = 0
    else
      'NO!'
    end
  end
end
