# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'wallet'

RSpec.describe Wallet do
  it 'starts at zero' do
    wallet = described_class.new

    expect(wallet.cents).to eq(0)
  end

  it 'can add pennies' do
    wallet = described_class.new

    4.times { wallet << :penny }
    expect(wallet.cents).to eq(4)
  end

  it 'can add nickels' do
    wallet = described_class.new

    4.times { wallet << :nickel }
    expect(wallet.cents).to eq(20)
  end

  it 'can add dimes' do
    wallet = described_class.new

    4.times { wallet << :dime }
    expect(wallet.cents).to eq(40)
  end

  it 'can add quarters' do
    wallet = described_class.new

    4.times { wallet << :quarter }
    expect(wallet.cents).to eq(100)
  end

  it 'can take coins out' do
    wallet = described_class.new
    4.times { wallet << :penny }

    2.times { wallet.take(:penny) }
    expect(wallet.cents).to eq(2)
  end

  it 'can take various coins out' do
    wallet = described_class.new
    wallet.<<(:penny, :dime)
    2.times { wallet << :quarter }

    wallet.take(:dime, :quarter)
    expect(wallet.cents).to eq(26)
  end

  it 'ignores coins that arent there' do
    wallet = described_class.new
    wallet << :penny
    wallet.take(:dime)

    expect(wallet.cents).to eq(1)
  end
end
