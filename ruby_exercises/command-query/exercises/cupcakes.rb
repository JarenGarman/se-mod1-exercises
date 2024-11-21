# frozen_string_literal: true

# Define Cupcakes class
class Cupcakes
  def initialize
    @cupcakes = []
  end

  def <<(cupcake)
    @cupcakes << cupcake
  end

  def sweetest
    return nil if @cupcakes.empty?

    sugar_content = @cupcakes.map(&:grams_of_sugar)
    @cupcakes[sugar_content.index(sugar_content.max)]
  end
end
