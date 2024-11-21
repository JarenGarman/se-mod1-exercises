# frozen_string_literal: false

require 'rspec'
require './lib/lovisa'

RSpec.describe Lovisa do
  it 'she has a title' do
    lovisa = described_class.new('Lovisa the Swedish Goddess')
    expect(lovisa.title).to eq('Lovisa the Swedish Goddess')
  end

  it 'she is brilliant by default' do
    lovisa = described_class.new('Lovisa the Mentor')
    expect(lovisa.characteristics).to eq(['brilliant'])
    expect(lovisa.brilliant?).to be true
  end

  it 'she is more than brilliant' do
    loivsa = described_class.new('Lovisa the friend', %w[brilliant kind])
    expect(loivsa.characteristics).to eq(%w[brilliant kind])
    expect(loivsa.brilliant?).to be true
    expect(loivsa.kind?).to be true
  end

  it 'she says sparkly stuff' do
    loivsa = described_class.new('Lovisa the Loved')
    expect(loivsa.say('Wonderful!')).to eq('**;* Wonderful! **;*')
    expect(loivsa.say('You are doing great!')).to eq('**;* You are doing great! **;*')
  end
end
