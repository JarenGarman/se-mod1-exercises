# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
require_relative 'cupcake'
# Starts empty, can add a Cupcake and determine which is sweetest
class Cupcakes < T::Struct
  prop :selection, T::Array[Cupcake], default: []

  sig { returns(T.nilable(Cupcake)) }
  def sweetest
    return nil if @selection.empty?

    @selection.max_by(&:grams_of_sugar)
  end
end
