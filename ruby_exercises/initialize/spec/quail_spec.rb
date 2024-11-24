# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative '../lib/quail'

RSpec.describe Quail do
  it 'exists' do
    quinn = described_class.new('Quinn')

    expect(quinn).to be_an_instance_of(described_class)
  end

  it 'has a name' do
    quinn = described_class.new('Quinn')

    expect(quinn.name).to eq('Quinn')
  end

  it 'capitalizes its name' do
    quinn = described_class.new('quinn')

    expect(quinn.name).to eq('Quinn')
  end
end
