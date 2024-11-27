# typed: strict
# frozen_string_literal: false

require_relative '../../monkey_patch'
# Describe a dragon with a name, color, and a rider
class Dragon
  sig { returns(String) }
  attr_reader :name

  sig { returns(Symbol) }
  attr_reader :color

  sig { returns(String) }
  attr_reader :rider

  sig { params(name: String, color: Symbol, rider: String).void }
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @eaten = T.let(0, Integer)
  end

  sig { returns(T::Boolean) }
  def hungry?
    @eaten < 3
  end

  sig { void }
  def eat
    @eaten += 1
  end
end
