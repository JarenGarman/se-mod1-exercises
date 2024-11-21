# frozen_string_literal: true

# Define class
class Wallet
  def initialize
    @wallet = { penny: 0, nickel: 0, dime: 0, quarter: 0 }
  end

  def <<(coin)
    case coin
    when :penny
      value = @wallet.fetch(:penny) + 1
    when :nickel
      value = @wallet.fetch(:nickel) + 5
    when :dime
      value = @wallet.fetch(:dime) + 10
    when :quarter
      value = @wallet.fetch(:quarter) + 25
    end
    @wallet.store(coin, value)
  end

  def cents
    @cents = @wallet.values.map.reduce(:+)
  end

  def take(coin, coin2 = {})
    if @wallet.fetch(coin) != 0
      case coin
      when :penny
        value = @wallet.fetch(:penny) - 1
      when :nickel
        value = @wallet.fetch(:nickel) - 5
      when :dime
        value = @wallet.fetch(:dime) - 10
      when :quarter
        value = @wallet.fetch(:quarter) - 25
      end
      @wallet.store(coin, value)
    end
    return if coin2.empty?
    return unless @wallet.fetch(coin2) != 0

    case coin2
    when :penny
      value = @wallet.fetch(:penny) - 1
    when :nickel
      value = @wallet.fetch(:nickel) - 5
    when :dime
      value = @wallet.fetch(:dime) - 10
    when :quarter
      value = @wallet.fetch(:quarter) - 25
    end
    @wallet.store(coin2, value)
  end
end
