class Pills
  def initialize
    @pills = 60
  end
  def count
    @pills
  end
  def pop
    @pills -= 1
  end
end