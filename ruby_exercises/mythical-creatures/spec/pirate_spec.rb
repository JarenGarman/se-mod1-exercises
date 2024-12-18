# typed: false
# frozen_string_literal: false

require 'rspec'
require_relative '../lib/pirate'

RSpec.describe Pirate do
  it 'has a name' do
    pirate = described_class.new('Jane')
    expect(pirate.name).to eq('Jane')
  end

  it 'can have a different name' do
    pirate = described_class.new('Blackbeard')
    expect(pirate.name).to eq('Blackbeard')
  end

  it 'is a scallywag by default' do
    pirate = described_class.new('Jane')
    expect(pirate.job).to eq('Scallywag')
  end

  it 'is not always a scallywag' do
    pirate = described_class.new('Jack', 'cook')
    expect(pirate.job).to eq('cook')
  end

  it 'is not cursed by default' do # rubocop:disable RSpec/MultipleExpectations
    pirate = described_class.new('Jack')

    expect(pirate.cursed?).to be false

    pirate.commit_heinous_act
    expect(pirate.cursed?).to be false

    pirate.commit_heinous_act
    expect(pirate.cursed?).to be false

    pirate.commit_heinous_act
    expect(pirate.cursed?).to be true
  end

  it 'has a booty' do
    pirate = described_class.new('Jack')
    expect(pirate.booty).to be 0
  end

  it 'gets 100 booty for robbing a ship' do
    pirate = described_class.new('Jack')
    5.times do
      pirate.rob_ship
    end
    expect(pirate.booty).to be 500
  end
end
