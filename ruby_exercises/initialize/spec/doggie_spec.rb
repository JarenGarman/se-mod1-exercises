# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative '../lib/doggie'

RSpec.describe Doggie do
  it 'exists' do
    doug = described_class.new('Doug', 'Golden Retriever')

    expect(doug).to be_an_instance_of(described_class)
  end

  it 'has a greeting' do
    doug = described_class.new('Doug', 'Golden Retriever')

    expect(doug.greeting).to eq("Woof, I'm Doug the Golden Retriever!")
  end

  it 'can have a different greeting' do
    dolly = described_class.new('Dolly', 'Lab')

    expect(dolly.greeting).to eq("Woof, I'm Dolly the Lab!")
  end
end
