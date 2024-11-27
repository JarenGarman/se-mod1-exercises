# typed: strict
# frozen_string_literal: true

require_relative '../../../monkey_patch'
# Describe costume to add to TrickOrTreater class.
class Costume
  sig { returns(String) }
  attr_reader :style

  sig { params(style: String).void }
  def initialize(style)
    @style = style
  end
end
