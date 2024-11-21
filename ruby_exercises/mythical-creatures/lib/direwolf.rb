# frozen_string_literal: false

# Define class
class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect

  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts_white_walkers = true
  end

  def protects(stark)
    if stark.location == @home && @starks_to_protect.size < 2
      @starks_to_protect << stark
      stark.safe = true
    end
    @hunts_white_walkers = false
  end

  def hunts_white_walkers?
    @hunts_white_walkers
  end

  def leaves(stark)
    if @starks_to_protect.include?(stark)
      @starks_to_protect.delete_at(@starks_to_protect.index(stark))
      stark.safe = false
    else
      stark
    end
  end
end

# Define class
class Stark
  attr_reader :name, :location, :house_words
  attr_accessor :safe

  def initialize(name, location = 'Winterfell')
    @name = name
    @location = location
    @house_words = 'Winter is Coming'
    @safe = false
  end

  def safe?
    @safe
  end
end
