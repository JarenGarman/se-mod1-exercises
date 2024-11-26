# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts out fitting into the chimney, having eaten no cookies. No longer fits after eating three or more cookies
class Santa < T::Struct
  const :cookies_eaten, Integer, default: 0

  sig { void }
  def eats_cookies
    @cookies_eaten += 1
  end

  sig { returns(T::Boolean) }
  def fits
    @cookies_eaten < 3
  end
end
