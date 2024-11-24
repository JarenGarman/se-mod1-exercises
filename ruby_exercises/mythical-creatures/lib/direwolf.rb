# typed: true
# frozen_string_literal: false
# Define class
class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect, :hunts_white_walkers

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

  def leaves(stark)
    if @starks_to_protect.include?(stark)
      @starks_to_protect.delete_at(@starks_to_protect.index(stark))
      stark.safe = false
    else
      stark
    end
  end
end
