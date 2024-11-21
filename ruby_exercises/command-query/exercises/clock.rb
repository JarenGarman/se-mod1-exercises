# frozen_string_literal: true

# Define Clock class
class Clock
  attr_reader :time

  def initialize
    @time = 6
  end

  def wait
    if @time < 12
      @time += 1
    elsif @time == 12
      @time = 1
    end
  end
end
