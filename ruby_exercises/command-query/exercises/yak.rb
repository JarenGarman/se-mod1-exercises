# frozen_string_literal: true

# Define class
class Yak
  def initialize
    @hairy = true
  end

  def hairy?
    @hairy
  end

  def shave
    @hairy = false
  end
end
