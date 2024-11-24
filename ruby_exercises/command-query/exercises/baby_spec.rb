# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'baby'

RSpec.describe Baby do
  it 'is tired' do
    baby = described_class.new

    expect(baby.tired).to be true
  end

  it 'is not tired after a nap' do
    baby = described_class.new

    baby.nap

    expect(baby.tired).to be false
  end
end
