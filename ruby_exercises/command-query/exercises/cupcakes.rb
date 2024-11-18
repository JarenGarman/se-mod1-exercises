class Cupcakes
  def initialize
    @cupcakes = []
    @sweetest = nil
  end
  def << cupcake
    @cupcakes << cupcake
  end
  def sweetest
    if !@cupcakes.empty?
      sugar_content = @cupcakes.map do |cupcakes|
        cupcakes.grams_of_sugar
      end
      @sweetest = @cupcakes[sugar_content.index(sugar_content.max)]
    end
  end
end