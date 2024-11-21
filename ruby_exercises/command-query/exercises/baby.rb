# frozen_string_literal: true

# Define Baby class
class Baby
  def initialize
    @tired = true
  end

  def tired?
    @tired
  end

  def nap
    @tired = false
  end
end
