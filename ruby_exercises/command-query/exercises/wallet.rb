class Wallet
  def initialize
    @wallet = {:penny => 0, :nickel => 0, :dime => 0, :quarter => 0}
  end
  def << coin
    if coin == :penny
      value = @wallet.fetch(:penny) + 1
    elsif coin == :nickel
      value = @wallet.fetch(:nickel) + 5
    elsif coin == :dime
      value = @wallet.fetch(:dime) + 10
    elsif coin == :quarter
      value = @wallet.fetch(:quarter) + 25
    end
    @wallet.store(coin, value)
  end
  def cents
    @cents = @wallet.values.map.reduce(:+)
  end
  def take(coin, coin2 = Hash.new)
    if @wallet.fetch(coin) != 0
      if coin == :penny
        value = @wallet.fetch(:penny) - 1
      elsif coin == :nickel
        value = @wallet.fetch(:nickel) - 5
      elsif coin == :dime
        value = @wallet.fetch(:dime) - 10
      elsif coin == :quarter
        value = @wallet.fetch(:quarter) - 25
      end
      @wallet.store(coin, value)
    end
    if !coin2.empty?
      if @wallet.fetch(coin2) != 0
        if coin2 == :penny
          value = @wallet.fetch(:penny) - 1
        elsif coin2 == :nickel
          value = @wallet.fetch(:nickel) - 5
        elsif coin2 == :dime
          value = @wallet.fetch(:dime) - 10
        elsif coin2 == :quarter
          value = @wallet.fetch(:quarter) - 25
        end
        @wallet.store(coin2, value)
      end
    end
  end
end