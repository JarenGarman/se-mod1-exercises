# frozen_string_literal: true

require 'rspec'
require_relative 'money'

RSpec.describe Money do
  it 'starts at zero' do
    money = described_class.new

    expect(money.amount).to eq(0)
  end

  it 'can earn money' do
    money = described_class.new

    money.earn(20)

    expect(money.amount).to eq(20)

    money.earn(13)

    expect(money.amount).to eq(33)
  end
end
