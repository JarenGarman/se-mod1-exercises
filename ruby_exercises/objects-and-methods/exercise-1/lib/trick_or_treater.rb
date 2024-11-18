require_relative 'bag'

class TrickOrTreater
  attr_reader :dressed_up_as, :candy_count, :bag

  def initialize(costume)
    @dressed_up_as = costume.style
    @bag = Bag.new
  end
  def has_candy?
    !@bag.empty?
  end
  def candy_count
    @bag.count
  end
  def eat
    @bag.eat
  end
end