# typed: true
# frozen_string_literal: true

# Define class
class Santa
  attr_reader :fits

  def initialize
    @fits = true
    @cookies_eaten = 0
  end

  def eats_cookies
    @cookies_eaten += 1
    return unless @cookies_eaten >= 3

    @fits = false
  end
end
