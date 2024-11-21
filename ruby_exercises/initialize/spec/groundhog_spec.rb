# frozen_string_literal: true

require 'rspec'
require_relative '../lib/groundhog'

RSpec.describe Groundhog do
  it 'exists' do
    gabby = described_class.new('Gabby')

    expect(gabby).to be_an_instance_of(described_class)
  end

  it 'has a name' do
    gabby = described_class.new('Gabby')

    expect(gabby.name).to eq('Gabby')
  end

  it 'can change name' do
    groundhog = described_class.new('Gabby')
    groundhog.name = 'Gary'

    expect(groundhog.name).to eq('Gary')
  end
end
