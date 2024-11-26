# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts at 6. Can wait to move the hour forward.
class Clock < T::Struct
  const :time, Integer, default: 6

  sig { void }
  def wait
    if @time < 12
      @time += 1
    elsif @time == 12
      @time = 1
    end
  end
end
