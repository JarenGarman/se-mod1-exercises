# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative '../lib/jackalope'

RSpec.describe Jackalope do
  it 'exists' do
    jorge = described_class.new('Jorge')

    expect(jorge).to be_an_instance_of(described_class)
  end

  it 'has a name' do
    jorge = described_class.new('Jorge')

    expect(jorge.name).to eq('Jorge')
  end

  it 'starts with an array of etymology' do
    jorge = described_class.new('Jorge')

    expect(jorge.etymology).to eq(%w[Jackrabbit Antelope])
  end
end
