# typed: true
# frozen_string_literal: false

# Define class
class EscapeCharacters
  def quote(string)
    string.insert(0, '"').insert(-1, '"')
  end
end
