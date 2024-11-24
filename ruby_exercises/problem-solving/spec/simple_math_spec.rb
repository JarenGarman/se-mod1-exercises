# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative '../lib/simple_math'

RSpec.describe SimpleMath do
  it 'can add two numbers' do
    sm = described_class.new

    result = sm.add(2, 2)
    expected = 4

    expect(result).to eq(expected)
  end

  it 'can add two different numbers' do
    sm = described_class.new

    result = sm.add(5, 3)
    expected = 8

    expect(result).to eq(expected)
  end

  it 'can subtract two numbers' do
    sm = described_class.new

    result = sm.subtract(10, 2)
    expected = 8

    expect(result).to eq(expected)
  end

  it 'can subtract two other numbers' do
    sm = described_class.new

    result = sm.subtract(50, 27)
    expected = 23

    expect(result).to eq(expected)
  end

  it 'can multiply two numbers' do
    sm = described_class.new

    result = sm.multiply(25, 10)
    expected = 250

    expect(result).to eq(expected)
  end

  it 'can multiply two other numbers' do
    sm = described_class.new

    result = sm.multiply(14, 82)
    expected = 1148

    expect(result).to eq(expected)
  end

  it 'can divide two numbers' do
    sm = described_class.new

    result = sm.divide(250, 10)
    expected = 25

    expect(result).to eq(expected)
  end

  it 'can divide two other numbers' do
    sm = described_class.new

    result = sm.divide(2048, 512)
    expected = 4

    expect(result).to eq(expected)
  end
end
