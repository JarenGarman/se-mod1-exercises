# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'music'

RSpec.describe Music do
  it 'is not loud' do
    music = described_class.new

    expect(music.loud).to be false
  end

  it 'is loud after turning up the volume' do
    music = described_class.new

    music.turn_up

    expect(music.loud).to be true
  end
end
