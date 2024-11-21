# frozen_string_literal: true

require 'rspec'
require_relative '../lib/aardvark'

RSpec.describe Aardvark do
  it 'exists' do
    art = described_class.new('Art')

    expect(art).to be_an_instance_of(described_class)
  end

  it 'has a name' do
    art = described_class.new('Art')

    expect(art.name).to eq('Art')
  end
end
