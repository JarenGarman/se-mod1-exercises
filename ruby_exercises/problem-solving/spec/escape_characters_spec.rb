# typed: false
# frozen_string_literal: false

require 'rspec'
require_relative '../lib/escape_characters'

RSpec.describe EscapeCharacters do
  it 'can add quotation marks' do
    ec = described_class.new

    result = ec.quote("These aren't the droids you're looking for.")
    expected = "\"These aren't the droids you're looking for.\""

    expect(result).to eq(expected)
  end

  it 'can add quotation marks to something else' do
    ec = described_class.new

    result = ec.quote("By Horace's Beard!")
    expected = "\"By Horace's Beard!\""

    expect(result).to eq(expected)
  end
end
