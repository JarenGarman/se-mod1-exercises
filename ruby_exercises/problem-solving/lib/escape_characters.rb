# frozen_string_literal: false

# Define class
class EscapeCharacters
  def quote(string)
    '"'.concat(string, '"')
  end
end
