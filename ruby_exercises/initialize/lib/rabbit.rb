# typed: true
# frozen_string_literal: true

# Define class
class Rabbit
  attr_reader :name

  def initialize(hash)
    @name = if hash[:num_syllables] == 2
              "#{hash[:name]} Rabbit"
            else
              hash[:name]
            end
  end
end
