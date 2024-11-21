class Centaur
  attr_reader :name, :breed, :sick

  def initialize(name, breed)
  @name = name
  @breed = breed
  @standing = true
  @actions = 0
  @sick = false
  end
  def shoot
    if @actions < 3 && @standing
      @actions = @actions + 1
      'Twang!!!'
    else
      'NO!'
    end
  end
  def run
    if @actions < 3 && @standing
      @actions = @actions + 1
      'Clop clop clop clop!'
    else
      'NO!'
    end
  end
  def cranky?
    @actions >= 3
  end
  def standing?
    @standing
  end
  def laying?
    !@standing
  end
  def lay_down
    @standing = false
  end
  def stand_up
    @standing = true
  end
  def sleep
    if !@standing
      @actions = 0
    else
      'NO!'
    end
  end
  def drink_potion
    if @standing
      if @actions <= 2
        @sick = true
      end
      @actions = 0
    else
      'NO!'
    end
  end
end