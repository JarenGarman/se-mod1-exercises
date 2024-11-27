# typed: false
# frozen_string_literal: false

require 'rspec'
require_relative '../lib/wizard'

RSpec.describe Wizard do
  it 'has a name' do
    wizard = described_class.new('Eric')
    expect(wizard.name).to eq('Eric')
  end

  it 'has a different name' do
    wizard = described_class.new('Alex')
    expect(wizard.name).to eq('Alex')
  end

  it 'is bearded by default' do
    wizard = described_class.new('Ben')
    expect(wizard.bearded?).to be true
  end

  it 'is not always bearded' do
    wizard = described_class.new('Valerie', bearded: false)
    expect(wizard.bearded?).to be false
  end

  it 'has root powers' do
    wizard = described_class.new('Stella', bearded: false)
    expect(wizard.incantation('chown ~/bin')).to eq('sudo chown ~/bin')
  end

  it 'has many root powers' do
    wizard = described_class.new('Sal', bearded: true)
    expect(wizard.incantation('rm -rf /home/mirandax')).to eq('sudo rm -rf /home/mirandax')
  end

  it 'starts rested' do
    wizard = described_class.new('Ben')
    expect(wizard.rested?).to be true
  end

  it 'can cast spells' do
    wizard = described_class.new('Ben')
    expect(wizard.cast).to eq 'MAGIC MISSILE!'
  end

  it 'gets tired after casting three spells' do # rubocop:disable RSpec/MultipleExpectations
    wizard = described_class.new('Ben')
    2.times do
      wizard.cast
    end
    expect(wizard.rested?).to be true
    wizard.cast
    expect(wizard.rested?).to be false
  end
end
