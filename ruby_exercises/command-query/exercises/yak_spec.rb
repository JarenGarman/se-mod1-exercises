# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'yak'

RSpec.describe Yak do
  it 'is hairy' do
    yak = described_class.new

    expect(yak.hairy).to be true
  end

  it 'can be shaved' do
    yak = described_class.new

    yak.shave

    expect(yak.hairy).to be false
  end
end
