# typed: strict
# frozen_string_literal: false

require_relative '../../monkey_patch'
require_relative 'stark'
# Describe a Direwolf with a name, home, and size.
class Direwolf
  sig { returns(String) }
  attr_reader :name, :home, :size

  sig { returns(T::Array[Stark]) }
  attr_reader :starks_to_protect

  sig { returns(T::Boolean) }
  attr_reader :hunts_white_walkers

  sig { params(name: String, home: String, size: String).void }
  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = T.let([], T::Array[Stark])
    @hunts_white_walkers = T.let(true, T::Boolean)
  end

  sig { params(stark: Stark).void }
  def protects(stark)
    if stark.location == @home && @starks_to_protect.size < 2
      @starks_to_protect << stark
      stark.safe = true
    end
    @hunts_white_walkers = false
  end

  sig { params(stark: Stark).returns(Stark) }
  def leaves(stark)
    if @starks_to_protect.include?(stark)
      @starks_to_protect.delete_at(T.must(@starks_to_protect.index(stark)))
      stark.safe = false
    end
    stark
  end
end
