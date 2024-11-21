# frozen_string_literal: true

require 'rspec'
require_relative 'clock'

RSpec.describe Clock do
  it 'starts at 6' do
    clock = described_class.new
    expect(clock.time).to eq(6)
  end

  it 'measures the passage of time' do
    clock = described_class.new
    clock.wait
    expect(clock.time).to eq(7)

    3.times { clock.wait }
    expect(clock.time).to eq(10)
  end

  it 'is not in military time' do
    clock = described_class.new

    8.times { clock.wait }
    expect(clock.time).to eq(2)
  end
end
