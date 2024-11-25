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

  sig { params(coin: Symbol, add: T::Boolean).returns(T.anything) }
  def adjust(coin, add)
    case add
    when true
      @wallet[coin] = @wallet.fetch(coin) + 1
      @cents += T.must(@coin_value[coin])

    when false
      unless @wallet.fetch(coin).zero?

        @wallet[coin] = @wallet.fetch(coin) - 1
        @cents -= T.must(@coin_value[coin])
      end
    end
  end

  sig { params(coins: Symbol).returns(T.anything) }
  def <<(*coins)
    coins.map do |coin|
      adjust(coin, true)
    end
  end

  sig { params(coins: Symbol).returns(T.anything) }
  def take(*coins)
    coins.map do |coin|
      adjust(coin, false)
    end
  end

  sig { returns(T::Boolean) }
  def verify_cents
    new_value = @wallet.sum do |coin, amount|
      amount * T.must(@coin_value[coin])
    end
    if new_value == @cents
      true
    else
      @cents = new_value
      false
    end
  end
end
