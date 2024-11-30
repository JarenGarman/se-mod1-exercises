# typed: strict
# frozen_string_literal: true

require_relative '../../../monkey_patch'
# Describe a costume to be used in the TrickOrTreater class.
class Costume
  sig { returns(String) }
  attr_reader :style

  sig { params(style: String).void }
  def initialize(style)
    @style = style
  end
end
