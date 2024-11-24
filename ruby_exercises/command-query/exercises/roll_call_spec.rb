# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'roll_call'

RSpec.describe RollCall do
  it 'has no names' do
    roll_call = described_class.new
    expect(roll_call.longest_name).to be_nil
  end

  it 'has a longest of one' do
    roll_call = described_class.new

    roll_call << 'Oda'

    expect(roll_call.longest_name).to eq('Oda')
  end

  it 'has longest of several' do
    roll_call = described_class.new
    roll_call << 'Ann'
    roll_call << 'Alexandra'
    roll_call << 'Roger'

    expect(roll_call.longest_name).to eq('Alexandra')
  end
end
