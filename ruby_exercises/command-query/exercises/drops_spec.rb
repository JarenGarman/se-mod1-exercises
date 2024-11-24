# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'drops'

RSpec.describe Drops do
  it 'has no drops' do
    drops = described_class.new

    expect(drops.count).to eq(0)
  end

  it 'drops' do
    drops = described_class.new

    4.times { drops.drop }

    expect(drops.count).to eq(4)
  end
end
