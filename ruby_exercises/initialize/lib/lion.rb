class Lion
  attr_reader :name, :sound

  def initialize(lion)
    @name = lion[:name]
    @sound = lion[:sound]
  end
end