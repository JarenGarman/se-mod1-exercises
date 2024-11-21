# frozen_string_literal: true

require 'rspec'
require_relative '../lib/rabbit'

RSpec.describe Rabbit do
  it 'exists' do
    ralph = described_class.new({ name: 'Ralph', num_syllables: 1 })

    expect(ralph).to be_an_instance_of(described_class)
  end

  it 'has a name' do
    ralph = described_class.new({ name: 'Ralph', num_syllables: 1 })

    expect(ralph.name).to eq('Ralph')
  end

  it 'name ends with rabbit if 2 syllables' do
    ralph = described_class.new({ name: 'Ralph', num_syllables: 1 })
    rita = described_class.new({ name: 'Rita', num_syllables: 2 })
    roberto = described_class.new({ name: 'Roberto', num_syllables: 3 })

    expect(ralph.name).to eq('Ralph')
    expect(rita.name).to eq('Rita Rabbit')
    expect(roberto.name).to eq('Roberto')
  end
end
