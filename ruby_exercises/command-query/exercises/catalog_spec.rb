# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'product'
require_relative 'catalog'

RSpec.describe Catalog do
  it 'starts with no products' do
    catalog = described_class.new
    expect(catalog.cheapest).to be_nil
  end

  it 'has a cheapest of one' do
    catalog = described_class.new
    scissors = Product.new
    scissors.describe('scissors', 8)
    catalog << scissors
    expect(catalog.cheapest).to eq('scissors')
  end

  it 'has a cheapest product' do
    catalog = described_class.new
    cupcake = Product.new
    shirt = Product.new
    button = Product.new
    cupcake.describe('cupcake', 3)
    shirt.describe('shirt', 23)
    button.describe('button', 1)

    catalog << cupcake
    catalog << shirt
    catalog << button
    expect(catalog.cheapest).to eq('button')
  end
end
