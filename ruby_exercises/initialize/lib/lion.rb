# typed: true
# frozen_string_literal: true

# Define class
class Lion
  attr_reader :name, :sound

  def initialize(lion)
    @name = lion[:name]
    @sound = lion[:sound]
  end
end
