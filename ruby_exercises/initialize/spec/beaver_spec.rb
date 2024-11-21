# frozen_string_literal: true

require 'rspec'
require_relative '../lib/beaver'

RSpec.describe Beaver do
  it 'exists' do
    barry = described_class.new('Barry')

    expect(barry).to be_an_instance_of(described_class)
  end

  it 'has a name' do
    barry = described_class.new('Barry')

    expect(barry.name).to eq('Barry the Beaver')
  end

  it 'could have a different name' do
    beatrice = described_class.new('Beatrice')

    expect(beatrice.name).to eq('Beatrice the Beaver')
  end
end
