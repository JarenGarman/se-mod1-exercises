# frozen_string_literal: true

require 'rspec'
require_relative '../lib/kangaroo'

RSpec.describe Kangaroo do
  it 'exists' do
    kerrie = described_class.new('Kerrie', %w[Kat Kyle])

    expect(kerrie).to be_an_instance_of(described_class)
  end

  it 'has children' do
    kerrie = described_class.new('Kerrie', %w[Kat Kyle])

    expect(kerrie.children).to eq(%w[Kat Kyle])
  end
end
