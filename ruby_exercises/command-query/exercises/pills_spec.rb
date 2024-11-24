# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'pills'

RSpec.describe Pills do
  it 'bottle starts with 60 pills' do
    pills = described_class.new

    expect(pills.count).to eq(60)
  end

  it 'pops a pill' do
    pills = described_class.new

    pills.pop

    expect(pills.count).to eq(59)
  end
end
