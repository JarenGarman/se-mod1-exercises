# frozen_string_literal: true

require 'rspec'
require_relative 'tire'

RSpec.describe Tire do
  it 'does not start out flat' do
    tire = described_class.new

    expect(tire.flat?).to be false
  end

  it 'can have a blowout' do
    tire = described_class.new

    tire.blow_out
    expect(tire.flat?).to be true
  end
end
