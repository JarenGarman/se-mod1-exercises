class Pirate
  attr_reader :name, :job, :booty

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @booty = 0
    @heinous_acts = 0
  end
  def cursed?
    @heinous_acts >= 3
  end
  def commit_heinous_act
    @heinous_acts = @heinous_acts + 1
  end
  def rob_ship
    @booty = @booty + 100
  end
end