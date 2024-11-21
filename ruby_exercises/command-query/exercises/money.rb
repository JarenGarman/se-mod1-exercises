# frozen_string_literal: true

# Define class
class Money
  def initialize
    @money = 0
  end

  def amount
    @money
  end

  def earn(some)
    @money += some
  end
end
