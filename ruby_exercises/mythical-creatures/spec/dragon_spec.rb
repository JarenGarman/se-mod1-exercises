# typed: false
# frozen_string_literal: false

require 'rspec'
require_relative '../lib/dragon'

RSpec.describe Dragon do
  it 'has a name' do
    dragon = described_class.new('Ramoth', :gold, 'Lessa')
    expect(dragon.name).to eq('Ramoth')
  end

  it 'has a rider' do
    dragon = described_class.new('Ramoth', :gold, 'Lessa')
    expect(dragon.rider).to eq('Lessa')
  end

  it 'has a color' do
    dragon = described_class.new('Ramoth', :gold, 'Lessa')
    expect(dragon.color).to eq(:gold)
  end

  it 'is a different dragon' do
    dragon = described_class.new('Mnementh', :bronze, 'Flar')
    expect(dragon.name).to eq('Mnementh')
  end

  it 'has a different rider' do
    dragon = described_class.new('Mnementh', :bronze, 'Flar')
    expect(dragon.rider).to eq('Flar')
  end

  it 'has a different color' do
    dragon = described_class.new('Mnementh', :bronze, 'Flar')
    expect(dragon.color).to eq(:bronze)
  end

  it 'was born hungry' do
    dragon = described_class.new('Mnementh', :bronze, 'Flar')
    expect(dragon.hungry?).to be true
  end

  it 'eats a lot' do # rubocop:disable RSpec/MultipleExpectations
    dragon = described_class.new('Mnementh', :bronze, 'Flar')
    expect(dragon.hungry?).to be true
    dragon.eat
    expect(dragon.hungry?).to be true
    dragon.eat
    expect(dragon.hungry?).to be true
    dragon.eat
    expect(dragon.hungry?).to be false
  end
end
