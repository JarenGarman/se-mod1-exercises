# frozen_string_literal: false

require 'rspec'
require './lib/vampire'

RSpec.describe Vampire do
  it 'has a name' do
    vampire = described_class.new('Dracula')
    expect(vampire.name).to eq('Dracula')
  end

  it 'can be named something else' do
    vampire = described_class.new('Vladimir')
    expect(vampire.name).to eq('Vladimir')
  end

  it 'keeps a pet bat by default' do
    vampire = described_class.new('Ruthven')
    expect(vampire.pet).to eq('bat')
  end

  it 'can keep other pets' do
    vampire = described_class.new('Varney', 'fox')
    expect(vampire.pet).to eq('fox')
  end

  it 'is thirsty by default' do
    vampire = described_class.new('The Count')

    expect(vampire.thirsty).to be true
  end

  it 'is not thirsty after drinking' do
    vampire = described_class.new('Elizabeth Bathory')

    vampire.drink
    expect(vampire.thirsty).to be false
  end
end
