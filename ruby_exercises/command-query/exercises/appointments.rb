# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts empty, can add times and determine earliest appointment.
class Appointments < T::Struct
  prop :times, T::Array[Time], default: []
  sig { returns(T.nilable(Time)) }
  def earliest
    return nil if @times.empty?

    @times.min_by(&:to_i)
  end
end
