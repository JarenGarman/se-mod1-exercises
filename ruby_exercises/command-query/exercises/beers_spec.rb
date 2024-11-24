# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'beers'

RSpec.describe Beers do
  it 'starts at 99' do
    beers = described_class.new

    expect(beers.inventory).to eq(99)
  end

  it 'decreases inventory' do
    beers = described_class.new

    54.times { beers.take_one_down_and_pass_it_around }
    expect(beers.inventory).to eq(45)
  end

  it 'restocks' do
    beers = described_class.new

    43.times { beers.take_one_down_and_pass_it_around }

    beers.restock

    expect(beers.inventory).to eq(99)
  end
end
