# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative '../lib/hello'

RSpec.describe Hello do
  it 'says hello to Brian' do
    hello = described_class.new

    result = hello.greet('Brian')
    expected = 'Hello, Brian, nice to meet you!'

    expect(result).to eq(expected)
  end

  it 'says hello to Jeff' do
    hello = described_class.new

    result = hello.greet('Jeff')
    expected = 'Hello, Jeff, nice to meet you!'

    expect(result).to eq(expected)
  end
end
