# frozen_string_literal: true

require 'rspec'
require_relative '../lib/eel'

RSpec.describe Eel do
  it 'exists' do
    eel = described_class.new('Earl')

    expect(eel).to be_an_instance_of(described_class)
  end

  it 'is anonymous' do
    eel = described_class.new('Earl')

    expect(eel.name).to eq('just another eel')
  end
end
