# typed: strict
# frozen_string_literal: true

require_relative '../../../monkey_patch'
# Describe a type of candy to go into the Bag class.
class Candy
  sig { returns(T.nilable(String)) }
  attr_reader :type

  sig { params(type: T.nilable(String)).void }
  def initialize(type)
    @type = type
  end
end
