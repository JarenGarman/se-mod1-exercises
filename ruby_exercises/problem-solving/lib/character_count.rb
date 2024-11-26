# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Does nothing on init, can count characters in a string.
class CharacterCount
  sig { params(string: String).returns(Integer) }
  def count(string)
    string.length
  end
end
