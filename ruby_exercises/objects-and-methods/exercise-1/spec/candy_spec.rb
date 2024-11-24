# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative '../lib/candy'

RSpec.describe Candy do
  it 'has a type' do
    candy = described_class.new('Skittles')

    expect(candy.type).to eq('Skittles')
  end

  it 'has a different kind of candy' do
    candy = described_class.new('Snickers')

    expect(candy.type).to eq('Snickers')
  end
end
