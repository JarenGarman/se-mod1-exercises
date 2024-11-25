# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Starts empty. Holds coins and calculates the total value.
class Wallet < T::Struct
  sig { returns(Integer) }
  attr_reader :cents

  sig { void }
  def initialize
    super
    @cents = T.let(0, Integer)
    @coin_value = T.let({ penny: 1, nickel: 5, dime: 10, quarter: 25 }, T::Hash[Symbol, Integer])
    @wallet = T.let({ penny: 0, nickel: 0, dime: 0, quarter: 0 }, T::Hash[Symbol, Integer])
  end

  sig { params(coins: Symbol).returns(T.anything) }
  def <<(*coins)
    coins.map do |coin|
      @wallet[coin] = @wallet.fetch(coin) + 1
      @cents += @coin_value[coin]
    end
  end

  sig { params(coins: Symbol).returns(T.anything) }
  def take(*coins)
    coins.map do |coin|
      next if @wallet.fetch(coin).zero?

      @wallet[coin] = @wallet.fetch(coin) - 1
      @cents -= @coin_value[coin]
    end
  end
end
