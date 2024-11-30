# typed: strict
# frozen_string_literal: true

require_relative '../../../monkey_patch'
# Describe a type of candy to go into the Bag class.
class Candy
  sig { returns(String) }
  attr_reader :type

  sig { params(type: String, _sugar: Integer).void }
  def initialize(type = '', _sugar = 0)
    @type = type
  end
end
