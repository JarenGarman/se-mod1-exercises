# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative '../lib/ferret'

RSpec.describe Ferret do
  it 'exists' do
    ferret = described_class.new

    expect(ferret).to be_an_instance_of(described_class)
  end

  it 'has no name' do
    ferret = described_class.new

    expect(ferret.name).to be_nil
  end

  it 'can be given a name' do
    ferret = described_class.new

    ferret.give_name('Felix')

    expect(ferret.name).to eq('Felix')
  end
end
