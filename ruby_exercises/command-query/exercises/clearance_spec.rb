# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'clearance'
require_relative 'item'

RSpec.describe Clearance do
  it 'has no items on clearance' do
    clearance = described_class.new
    expect(clearance.best_deal).to be_nil
  end

  it 'has highest percent off one item' do
    clearance = described_class.new
    # the discount here is a price, so this discount would be 20 percent
    clearance.rack << Item.new('socks', price: 5, discount: 1)

    expect(clearance.best_deal).to eq('socks')
  end

  it 'has higest percent off many items' do
    clearance = described_class.new
    clearance.rack << Item.new('shirt', price: 16, discount: 2)
    clearance.rack << Item.new('pants', price: 10, discount: 5)
    clearance.rack << Item.new('jacket', price: 30, discount: 10)

    expect(clearance.best_deal).to eq('pants')
  end
end
