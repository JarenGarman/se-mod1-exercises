# frozen_string_literal: true

require 'rspec'
require_relative 'adult'

RSpec.describe Adult do
  it 'does not get drunk too easily' do
    adult = described_class.new

    adult.consume_an_alcoholic_beverage
    expect(adult.sober?).to be true

    adult.consume_an_alcoholic_beverage
    expect(adult.sober?).to be true

    adult.consume_an_alcoholic_beverage
    expect(adult.sober?).to be false

    adult.consume_an_alcoholic_beverage
    expect(adult.sober?).to be false
  end
end
