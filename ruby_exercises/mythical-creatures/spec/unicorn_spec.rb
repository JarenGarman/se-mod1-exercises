# frozen_string_literal: false

require 'rspec'
require './lib/unicorn'

RSpec.describe Unicorn do
  it 'has a name' do
    unicorn = described_class.new('Robert')
    expect(unicorn.name).to eq('Robert')
  end

  it 'is silver by default' do
    unicorn = described_class.new('Margaret')
    expect(unicorn.color).to eq('silver')
    expect(unicorn.silver?).to be true
  end

  it 'doesnt have to be silver' do
    unicorn = described_class.new('Barbara', 'purple')
    expect(unicorn.color).to eq('purple')
    expect(unicorn.silver?).to be false
  end

  it 'says sparkly stuff' do
    unicorn = described_class.new('Johnny')
    expect(unicorn.say('Wonderful!')).to eq('**;* Wonderful! **;*')
    expect(unicorn.say('I dont like you very much.')).to eq('**;* I dont like you very much. **;*')
  end
end
