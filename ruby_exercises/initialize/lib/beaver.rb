# typed: true
# frozen_string_literal: true

# Define class
class Beaver
  attr_reader :name

  def initialize(name)
    @name = "#{name} the Beaver"
  end
end
