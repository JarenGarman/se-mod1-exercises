# frozen_string_literal: true

# Define class
class Pills
  def initialize
    @pills = 60
  end

  def count
    @pills
  end

  def pop
    @pills -= 1
  end
end
