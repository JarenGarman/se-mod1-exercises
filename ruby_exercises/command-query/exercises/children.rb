class Children
  def initialize
    @children = []
    @eldest = nil
  end
  def << child
    @children << child
  end
  def eldest
    if !@children.empty?
      @ages = @children.map do |child|
        child.age
      end
      @eldest = @children[@ages.index(@ages.max)]
    end
  end
end