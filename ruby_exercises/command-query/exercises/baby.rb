# typed: true
# frozen_string_literal: true

# Define Baby class
class Baby
  attr_reader :tired

  def initialize
    @tired = true
  end

  def nap
    @tired = false
  end
end
