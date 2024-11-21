# frozen_string_literal: true

require 'rspec'
require_relative 'floor'

RSpec.describe Floor do
  it 'is dirty by default' do
    floor = described_class.new

    expect(floor.dirty?).to be true
  end

  it 'is clean after it is washed' do
    floor = described_class.new

    floor.wash

    expect(floor.dirty?).to be false
  end
end
