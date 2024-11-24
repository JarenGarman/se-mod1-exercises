# typed: true
# frozen_string_literal: true

# Define class
class RollCall
  attr_reader :roll_call

  def initialize
    @roll_call = []
    @longest_name = nil
  end

  def <<(name)
    @roll_call << name
  end

  def longest_name
    return if @roll_call.empty?

    name_length = @roll_call.map(&:length)
    @longest_name = @roll_call[name_length.find_index(name_length.max)]
  end
end
