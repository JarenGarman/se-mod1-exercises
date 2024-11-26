# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts empty. Holds coins and calculates the total value.
class Wallet
  sig { void }
  def initialize
    @coin_value = T.let({ penny: 1, nickel: 5, dime: 10, quarter: 25 }, T::Hash[Symbol, Integer])
    @wallet = T.let({ penny: 0, nickel: 0, dime: 0, quarter: 0 }, T::Hash[Symbol, Integer])
  end

  sig { returns(Integer) }
  def cents
    @wallet.sum { |coin, amount| amount * T.must(@coin_value[coin]) }
  end

  sig { params(coin: Symbol, modifier: Integer).void }
  def adjust(coin, modifier)
    return unless !@wallet.fetch(coin).zero? || modifier.positive?

    @wallet[coin] = @wallet.fetch(coin) + modifier
  end

  sig { params(coins: Symbol).void }
  def <<(*coins)
    coins.map { |coin| adjust(coin, 1) }
  end

  sig { params(coins: Symbol).void }
  def take(*coins)
    coins.map { |coin| adjust(coin, -1) }
  end
end
