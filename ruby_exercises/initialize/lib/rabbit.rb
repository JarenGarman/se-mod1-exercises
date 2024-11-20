class Rabbit
  attr_reader :name

  def initialize(hash)
    if hash[:num_syllables] == 2
      @name = "#{hash[:name]} Rabbit"
    else
      @name = hash[:name]
    end
  end
end