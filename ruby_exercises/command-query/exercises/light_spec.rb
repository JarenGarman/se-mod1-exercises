# frozen_string_literal: true

require 'rspec'
require_relative 'light'

RSpec.describe Light do
  it 'is off' do
    light = described_class.new

    expect(light.on?).to be false
  end

  it 'can be turned on' do
    light = described_class.new

    light.turn_on

    expect(light.on?).to be true
  end
end
