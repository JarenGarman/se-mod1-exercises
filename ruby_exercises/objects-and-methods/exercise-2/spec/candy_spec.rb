# frozen_string_literal: true

require 'rspec'
require_relative '../lib/candy'

RSpec.describe Candy do
  it 'has a type' do
    candy = described_class.new('Skittles')

    expect(candy.type).to eq('Skittles')
  end

  it 'can have a different type' do
    candy = described_class.new('Mars')

    expect(candy.type).to eq('Mars')
  end

  it 'has 100g of sugar by default' do
    candy = described_class.new('Smarties')

    expect(candy.sugar).to eq(100)
  end

  it 'can be created with a different amount of sugar' do
    candy = described_class.new('Pop Rocks', 75)

    expect(candy.sugar).to eq(75)
  end
end
