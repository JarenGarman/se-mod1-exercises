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
    socks = Item.new
    socks.define({ socks: [price: 5, discount: 1] })
    # the discount here is a price, so this discount would be 20 percent
    clearance << socks

    expect(clearance.best_deal).to eq('socks')
  end

  it 'has higest percent off many items' do
    clearance = described_class.new
    shirt = Item.new
    pants = Item.new
    jacket = Item.new
    shirt.define({ shirt: [price: 16, discount: 2] })
    pants.define({ pants: [price: 10, discount: 5] })
    jacket.define({ jacket: [price: 30, discount: 10] })
    clearance << shirt
    clearance << pants
    clearance << jacket

    expect(clearance.best_deal).to eq('pants')
  end
end
