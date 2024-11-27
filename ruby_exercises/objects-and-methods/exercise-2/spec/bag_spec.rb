# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative '../lib/bag'
require_relative '../lib/candy'

RSpec.describe Bag do
  it 'is empty' do
    expect(described_class.new.candies.empty?).to be true
  end

  it 'can count the candy in an empty bag' do
    expect(described_class.new.candies.count).to eq(0)
  end

  it 'has no candies when it is empty' do
    expect(described_class.new.candies).to eq([])
  end

  it 'can put a candy in a bag' do
    bag = described_class.new

    candy = Candy.new('Sour frogs')

    bag.candies << candy

    expect(bag.candies).to eq([candy])
  end

  it 'is not empty when it has candies' do
    bag = described_class.new
    bag.candies << Candy.new('Nerds')

    expect(bag.candies.empty?).to be false
  end

  it 'can count candies' do
    bag = described_class.new
    bag.candies << Candy.new('Caramelized Almonds')

    expect(bag.candies.count).to eq(1)
  end

  it 'contains candies and candies have a type' do
    bag = described_class.new
    bag.candies << Candy.new('Hersheys Kisses')
    # You usually don't want to chain a bunch of different
    # types of things together like this.
    # We'll talk about it more in a few weeks.
    # It's important to understand how these methods work, though.
    type = bag.candies.first.type

    expect(type).to eq('Hersheys Kisses')
  end

  it 'can be asked if it has a particular kind of candy' do
    bag = described_class.new
    bag.candies << Candy.new('Lindt chocolate')
    expect(bag.contains?('Lindt chocolate')).to be true
  end

  it 'can be asked if it has a particular kind of candy-2' do
    bag = described_class.new
    bag.candies << Candy.new('Lindt chocolate')
    expect(bag.contains?('Nerds')).to be false
  end

  it 'can get a particular type of candy' do
    bag = described_class.new
    bag.candies << Candy.new('Jawbreaker')
    bag.candies << Candy.new('Jawbreaker')
    bag.candies << Candy.new('Jolly Ranchers')

    candy = bag.grab 'Jawbreaker'
    expect(candy.type).to eq('Jawbreaker')
  end

  it 'removes candy from the bag when you grab it' do
    bag = described_class.new
    bag.candies << Candy.new('Reeses Pieces')
    bag.candies << Candy.new('Junior Mints')
    bag.candies << Candy.new('Reeses Pieces')

    expect(bag.candies.count).to eq(3)
  end

  it 'removes candy from the bag when you grab it-2' do
    bag = described_class.new
    bag.candies << Candy.new('Reeses Pieces')
    bag.candies << Candy.new('Junior Mints')
    bag.candies << Candy.new('Reeses Pieces')
    bag.grab('Junior Mints')
    expect(bag.candies.count).to eq(2)
  end

  it 'can take a number of candies from the bag' do
    bag = described_class.new
    bag.candies << Candy.new('Swedish Fish')
    bag.candies << Candy.new('Milky Way')
    bag.candies << Candy.new('Cotton Candy')
    expect(bag.candies.count).to eq(3)
  end

  it 'can take a number of candies from the bag-2' do
    bag = described_class.new
    bag.candies << Candy.new('Swedish Fish')
    bag.candies << Candy.new('Milky Way')
    bag.candies << Candy.new('Cotton Candy')
    taken = bag.take(2)

    expect(taken.size).to eq(2)
  end

  it 'can take a number of candies from the bag-3' do
    bag = described_class.new
    bag.candies << Candy.new('Swedish Fish')
    bag.candies << Candy.new('Milky Way')
    bag.candies << Candy.new('Cotton Candy')
    bag.take(2)
    expect(bag.candies.count).to eq(1)
  end

  it 'can take one candy' do
    bag = described_class.new
    bag.candies << Candy.new('Lifesavers')
    taken = bag.take(1)
    expect(taken.size).to eq(1)
  end

  it 'can take one candy-2' do
    bag = described_class.new
    bag.candies << Candy.new('Lifesavers')
    taken = bag.take(1)
    expect(taken[0].type).to eq('Lifesavers')
  end
end
