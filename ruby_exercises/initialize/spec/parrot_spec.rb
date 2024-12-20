# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative '../lib/parrot'

RSpec.describe Parrot do
  it 'exists' do
    words = %w[Sugar Flashy Giant Whisper]
    perry = described_class.new({ name: 'Perry', known_words: words })

    expect(perry).to be_an_instance_of(described_class)
  end

  it 'has a name' do
    words = %w[Sugar Flashy Giant Whisper]
    perry = described_class.new({ name: 'Perry', known_words: words })

    expect(perry.name).to eq('Perry')
  end

  it 'has a sound' do
    words = %w[Sugar Flashy Giant Whisper]
    perry = described_class.new({ name: 'Perry', known_words: words })

    expect(perry.sound).to eq('Squawk!')
  end

  it 'knows words' do
    words = %w[Sugar Flashy Giant Whisper]
    perry = described_class.new({ name: 'Perry', known_words: words })

    expect(perry.known_words).to eq(%w[Sugar Flashy Giant Whisper])
  end
end
