# frozen_string_literal: true

require 'rspec'
require_relative 'teeth'

RSpec.describe Teeth do
  it 'isnt clean by default' do
    teeth = described_class.new

    expect(teeth.clean?).to be false
  end

  it 'are clean after brushing them' do
    teeth = described_class.new

    teeth.brush
    expect(teeth.clean?).to be true
  end
end
