# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'kid'

RSpec.describe Kid do
  it 'has not eaten sugar' do
    kid = described_class.new

    expect(kid.grams_of_sugar_eaten).to eq(0)
  end

  it 'gets 5 grams from eating candy' do
    kid = described_class.new

    6.times { kid.eat_candy }

    expect(kid.grams_of_sugar_eaten).to eq(30)
  end

  it 'is not hyperactive' do
    kid = described_class.new

    expect(kid.hyperactive).to be false
  end

  it 'is hyperactive after 60 grams of sugar' do
    kid = described_class.new

    12.times { kid.eat_candy }

    expect(kid.hyperactive).to be true
  end
end
