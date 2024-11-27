# typed: strict
# frozen_string_literal: true

require_relative '../../../monkey_patch'
# Describe candy to add to Bag class. Includes sugar content.
class Candy
  sig { returns(String) }
  attr_reader :type

  sig { returns(Integer) }
  attr_reader :sugar

  sig { params(type: String, sugar: Integer).void }
  def initialize(type = '', sugar = 100)
    @type = type
    @sugar = sugar
  end
end
