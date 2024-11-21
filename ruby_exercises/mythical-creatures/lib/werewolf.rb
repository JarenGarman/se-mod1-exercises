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
    @wolf && @consumed == 0
  end
  def change!
    @human = !@human
    @wolf = !@wolf
  end
  def consume(victim)
    if @wolf && !@human
      @consumed = @consumed + 1
      victim.status = :dead
    end
  end
end