# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'water'

RSpec.describe Water do
  it 'is at room temperature' do
    water = described_class.new

    expect(water.temperature).to eq(295) # Measured in Kelvin
  end

  it 'can be heated' do
    water = described_class.new

    21.times { water.heat }
    expect(water.temperature).to eq(316)
  end
end
