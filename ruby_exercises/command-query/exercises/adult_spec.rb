# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'adult'

RSpec.describe Adult do
  it 'does not get drunk too easily' do
    adult = described_class.new

    2.times { adult.consume_an_alcoholic_beverage }
    expect(adult.sober).to be true
  end

  it 'gets drunk after 3 drinks' do
    adult = described_class.new

    3.times { adult.consume_an_alcoholic_beverage }
    expect(adult.sober).to be false
  end
end
