# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative '../lib/eel'
require_relative '../lib/narwhal'
require_relative '../lib/octopus'

RSpec.describe Octopus do
  it 'exists' do
    nancy = Narwhal.new({ cute: true, weight: 500, name: 'Nancy' })
    orville = described_class.new('Orville', nancy)

    expect(orville).to be_an_instance_of(described_class)
  end

  it 'has a name' do
    nancy = Narwhal.new({ cute: true, weight: 500, name: 'Nancy' })
    orville = described_class.new('Orville', nancy)

    expect(orville.name).to eq('Orville')
  end

  it 'has an animal as a friend' do
    nancy = Narwhal.new({ cute: true, weight: 500, name: 'Nancy' })
    orville = described_class.new('Orville', nancy)

    expect(orville.friend).to eq(nancy)
  end

  it 'can have any animal as a friend' do
    eel = Eel.new('Earl')
    orville = described_class.new('Orville', eel)

    expect(orville.friend).to eq(eel)
  end
end
