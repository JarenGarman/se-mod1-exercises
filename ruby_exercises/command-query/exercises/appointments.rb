# frozen_string_literal: true

# Define Appointments class
class Appointments
  attr_reader :slots

  def initialize
    @slots = []
  end

  def at(time)
    @slots << time
  end

  def earliest
    return nil if @slots.empty?

    times = @slots.map(&:to_i)
    @slots[times.index(times.min)]
  end
end
