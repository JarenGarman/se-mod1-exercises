# frozen_string_literal: true

require 'rspec'
require_relative 'leather_chair'

RSpec.describe LeatherChair do
  it 'is not faded' do
    chair = described_class.new

    expect(chair.faded?).to be false
  end

  it 'becomes faded when exposed to sunlight' do
    chair = described_class.new

    chair.expose_to_sunlight

    expect(chair.faded?).to be true
  end
end
