# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'appointments'

RSpec.describe Appointments do
  it 'has no appointments' do
    slots = described_class.new

    expect(slots.earliest).to be_nil
  end

  it 'has an earliest one' do
    slots = described_class.new
    t1 = Time.utc(2014, 3, 14, 4, 30)

    slots.times << t1

    expect(slots.earliest).to eq(t1)
  end

  it 'has an earliest of several' do
    slots = described_class.new
    slots.times << Time.utc(2014, 6, 14, 16, 30)
    slots.times << Time.utc(2014, 2, 28, 8, 30)
    slots.times << Time.utc(2014, 2, 28, 11)

    expect(slots.earliest).to eq(Time.utc(2014, 2, 28, 8, 30))
  end
end
