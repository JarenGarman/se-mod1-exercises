# frozen_string_literal: true

require 'rspec'
require_relative '../lib/iguana'

RSpec.describe Iguana do
  it 'exists' do
    iguana = described_class.new

    expect(iguana).to be_an_instance_of(described_class)
  end

  it 'starts with no colors' do
    iguana = described_class.new

    expect(iguana.colors).to eq([])
  end

  it 'can set colors' do
    iguana = described_class.new

    iguana.colors = %w[Green Red White]

    expect(iguana.colors).to eq(%w[Green Red White])
  end
end
