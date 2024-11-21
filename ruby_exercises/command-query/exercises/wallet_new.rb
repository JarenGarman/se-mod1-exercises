# frozen_string_literal: true

# Define the Wallet class to hold coins and store their value
class Wallet
  # Allow cents to be read without having to define a separate method
  attr_reader :cents

  def initialize
    # Set the value of each type of coin to reference later
    @coin_value = { penny: 1, nickel: 5, dime: 10, quarter: 25 }
    # Create empty wallet with 0 cents
    @wallet = { penny: 0, nickel: 0, dime: 0, quarter: 0 }
    @cents = 0
  end

  # This notation allows the << method to accept any amount of coins
  def <<(*coin_array)
    # For each coin passed in the argument, execute the following code
    coin_array.map do |coin|
      # Sets the new amount of coins in the wallet to the amount currently in the wallet plus one
      @wallet[coin] = @wallet.fetch(coin) + 1
      # Grab the value of the coin from the coin_value hash and add it to the cents total
      @cents += @coin_value[coin]
    end
  end

  # This notation allows the take method to accept any amount of coins
  def take(*coin_array)
    # For each coin passed in the argument, execute the following code
    coin_array.map do |coin|
      # Move on to the next coin without doing anything if there are zero of that coin currently in the wallet
      next if @wallet.fetch(coin).zero?

      # Sets the new amount of coins in the wallet to the amount currently in the wallet minus one
      @wallet[coin] = @wallet.fetch(coin) - 1
      # Grab the value of the coin from the coin_value hash and subtract it from the cents total
      @cents -= @coin_value[coin]
    end
  end
end
