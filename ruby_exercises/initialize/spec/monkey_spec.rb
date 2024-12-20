# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative '../lib/monkey'

RSpec.describe Monkey do
  it 'exists' do
    margaret = described_class.new(%w[Margaret Bonobo Bananas])

    expect(margaret).to be_an_instance_of(described_class)
  end

  it 'has a name' do
    margaret = described_class.new(%w[Margaret Bonobo Bananas])

    expect(margaret.name).to eq('Margaret')
  end

  it 'has a type' do
    margaret = described_class.new(%w[Margaret Bonobo Bananas])

    expect(margaret.type).to eq('Bonobo')
  end

  it 'has a favorite_food' do
    margaret = described_class.new(%w[Margaret Bonobo Bananas])

    expect(margaret.favorite_food).to eq('Bananas')
  end
end
