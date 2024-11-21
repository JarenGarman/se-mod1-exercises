# frozen_string_literal: true

require_relative 'apple'

RSpec.describe Apple do
  it 'is not ripe when created' do
    apple = described_class.new

    expect(apple.ripe?).to be false
  end

  it 'is not ripe until it is three weeks old' do
    apple = described_class.new

    2.times { apple.wait_a_week }
    expect(apple.ripe?).to be false

    apple.wait_a_week
    expect(apple.ripe?).to be true
  end
end
