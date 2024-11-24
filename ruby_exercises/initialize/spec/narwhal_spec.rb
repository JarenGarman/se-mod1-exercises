# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative '../lib/narwhal'

RSpec.describe Narwhal do
  it 'exists' do
    nancy = described_class.new({ cute: true, weight: 500, name: 'Nancy' })
    expect(nancy).to be_an_instance_of(described_class)
  end

  it 'has a name' do
    nancy = described_class.new({ cute: true, weight: 500, name: 'Nancy' })
    expect(nancy.name).to eq('Nancy')
  end

  it 'has a weight' do
    nancy = described_class.new({ cute: true, weight: 500, name: 'Nancy' })
    expect(nancy.weight).to eq(500)
  end

  it 'has is cute' do
    nancy = described_class.new({ cute: true, weight: 500, name: 'Nancy' })
    expect(nancy.cute).to be(true)
  end

  it 'can be a different narwhal' do
    neville = described_class.new({ cute: false, weight: 499, name: 'Neville' })
    expect(neville.name).to eq('Neville')
  end

  it 'can be a different narwhal-2' do
    neville = described_class.new({ cute: false, weight: 499, name: 'Neville' })
    expect(neville.weight).to eq(499)
  end

  it 'can be a different narwhal-3' do
    neville = described_class.new({ cute: false, weight: 499, name: 'Neville' })
    expect(neville.cute).to be(false)
  end
end
