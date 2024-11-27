# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative '../lib/costume'
require_relative '../lib/bag'
require_relative '../lib/candy'
require_relative '../lib/trick_or_treater'

RSpec.describe TrickOrTreater do
  it 'wears a costume' do
    costume = Costume.new('Cowboy')
    trick_or_treater = described_class.new(costume)
    expect(trick_or_treater.dressed_up_as).to eq('Cowboy')
  end

  it 'can have a different costume' do
    trick_or_treater = described_class.new(Costume.new('Alien'))

    expect(trick_or_treater.dressed_up_as).to eq('Alien')
  end

  it 'has an empty bag by default' do
    trick_or_treater = described_class.new(Costume.new('Alien'))

    expect(trick_or_treater.bag.candies.empty?).to be true
  end

  it 'has an empty bag, so no candies' do
    trick_or_treater = described_class.new(Costume.new('Knight'))

    expect(trick_or_treater.candy?).to be false
  end

  it 'can get candies' do
    trick_or_treater = described_class.new(Costume.new('Spaceship Mechanic'))
    trick_or_treater.bag.candies << Candy.new('Gummy bears')

    expect(trick_or_treater.candy?).to be true
  end

  it 'can count candies' do
    trick_or_treater = described_class.new(Costume.new('Spaceship Mechanic'))

    expect(trick_or_treater.candy_count).to eq(0)
  end

  it 'can count candies-2' do
    trick_or_treater = described_class.new(Costume.new('Spaceship Mechanic'))

    trick_or_treater.bag.candies << Candy.new('Gummy bears')

    expect(trick_or_treater.candy_count).to eq(1)
  end

  it 'can eat candies' do
    trick_or_treater = described_class.new(Costume.new('Baron'))
    trick_or_treater.bag.candies << Candy.new('Gummy worms')
    trick_or_treater.bag.candies << Candy.new('Liquorice')
    trick_or_treater.bag.candies << Candy.new('Salty Serpents')
    expect(trick_or_treater.candy_count).to eq(3)
  end

  it 'can eat candies-2' do
    trick_or_treater = described_class.new(Costume.new('Baron'))
    trick_or_treater.bag.candies << Candy.new('Gummy worms')
    trick_or_treater.bag.candies << Candy.new('Liquorice')
    trick_or_treater.bag.candies << Candy.new('Salty Serpents')
    3.times { trick_or_treater.eat }
    expect(trick_or_treater.candy_count).to eq(0)
  end
end
