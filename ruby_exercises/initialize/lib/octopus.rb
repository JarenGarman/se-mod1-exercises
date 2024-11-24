# typed: true
# frozen_string_literal: true

# Define class
class Octopus
  attr_reader :name, :friend

  def initialize(name, friend)
    @name = name
    @friend = friend
  end
end
