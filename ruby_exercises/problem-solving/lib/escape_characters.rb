# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Does nothing on init, can add quotes to a string
class EscapeCharacters
  sig { params(string: String).returns(String) }
  def quote(string)
    string.insert(0, +'"').insert(-1, +'"')
  end
end
