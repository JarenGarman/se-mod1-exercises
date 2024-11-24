# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative '../lib/horse'

RSpec.describe Horse do
  it 'exists' do
    harry = described_class.new('Harry')

    expect(harry).to be_an_instance_of(described_class)
  end

  it 'has a name' do
    harry = described_class.new('Harry')

    expect(harry.name).to eq('Harry')
  end

  it 'starts with empty diet' do
    harry = described_class.new('Harry')

    expect(harry.diet).to eq([])
  end

  it 'can add to diet' do
    harry = described_class.new('Harry')

    harry.add_to_diet('Hay')
    harry.add_to_diet('Sugar Cubes')

    expect(harry.diet).to eq(['Hay', 'Sugar Cubes'])
  end
end
