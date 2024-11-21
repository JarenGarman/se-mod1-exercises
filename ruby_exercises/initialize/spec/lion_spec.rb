# frozen_string_literal: true

require 'rspec'
require_relative '../lib/lion'

RSpec.describe Lion do
  it 'exists' do
    lionel = described_class.new({ name: 'Lionel', sound: 'roar' })

    expect(lionel).to be_an_instance_of(described_class)
  end

  it 'has a name' do
    lionel = described_class.new({ name: 'Lionel', sound: 'roar' })

    expect(lionel.name).to eq('Lionel')
  end

  it 'has a sound' do
    lionel = described_class.new({ name: 'Lionel', sound: 'roar' })

    expect(lionel.sound).to eq('roar')
  end
end
