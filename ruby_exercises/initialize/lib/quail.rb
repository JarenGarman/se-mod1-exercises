# typed: true
# frozen_string_literal: true

# Define class
class Quail
  attr_reader :name

  def initialize(name)
    @name = name.capitalize
  end
end
