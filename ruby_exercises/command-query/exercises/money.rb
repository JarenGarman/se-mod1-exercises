# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Start with 0 money, can earn some.
class Money < T::Struct
  const :amount, Integer, default: 0

  sig { params(some: Integer).void }
  def earn(some)
    @amount += some
  end
end
