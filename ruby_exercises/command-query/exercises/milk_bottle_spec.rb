# frozen_string_literal: true

require 'rspec'
require_relative 'milk_bottle'

RSpec.describe MilkBottle do
  it 'starts off as full' do
    bottle = described_class.new
    expect(bottle.full?).to be true
  end

  it 'spills milk' do
    bottle = described_class.new

    bottle.spill

    expect(bottle.full?).to be false
  end
end
