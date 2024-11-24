# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative '../lib/cat'

RSpec.describe Cat do
  it 'exists' do
    carlos = described_class.new('Carlos')

    expect(carlos).to be_an_instance_of(described_class)
  end

  it 'has a name' do
    carlos = described_class.new('Carlos')

    expect(carlos.name).to eq('Carlos')
  end

  it 'has a sound' do
    carlos = described_class.new('Carlos')

    expect(carlos.sound).to eq('meow')
  end
end
