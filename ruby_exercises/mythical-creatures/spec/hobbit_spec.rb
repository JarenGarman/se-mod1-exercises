# typed: false
# frozen_string_literal: false

require_relative 'spec_helper'
require_relative '../lib/hobbit'

RSpec.describe Hobbit do
  it 'has a name' do
    hobbit = described_class.new('Bilbo')
    expect(hobbit.name).to eq('Bilbo')
  end

  it 'can have another name' do
    hobbit = described_class.new('Peregrin')
    expect(hobbit.name).to eq('Peregrin')
  end

  it 'has an unadventurous disposition' do
    hobbit = described_class.new('Samwise')
    expect(hobbit.disposition).to eq('homebody')
  end

  it 'can have a different disposition' do
    hobbit = described_class.new('Frodo', 'adventurous')
    expect(hobbit.disposition).to eq('adventurous')
  end

  it 'can grow older when celebrating birthdays' do # rubocop:disable RSpec/MultipleExpectations
    hobbit = described_class.new('Meriadoc')
    expect(hobbit.age).to eq(0)

    5.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.age).to eq(5)
  end

  it 'is considered a child at 32' do
    hobbit = described_class.new('Gerontius')

    32.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.adult?).to be false
  end

  it 'comes of age at 33' do # rubocop:disable RSpec/MultipleExpectations
    hobbit = described_class.new('Otho')

    33.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.adult?).to be true

    # still an adult one year later
    hobbit.celebrate_birthday

    expect(hobbit.adult?).to be true
  end

  it 'is old at the age of 101' do
    hobbit = described_class.new('Hobbit')
    101.times do
      hobbit.celebrate_birthday
    end
    expect(hobbit.old?).to be true
  end

  it 'has the ring if its name is Frodo' do # rubocop:disable RSpec/MultipleExpectations
    frodo = described_class.new('Frodo')
    sam = described_class.new('Sam')
    expect(frodo.ring?).to be true
    expect(sam.ring?).to be false
  end

  it 'they are short' do
    hobbit = described_class.new('Hobbit')
    expect(hobbit.short?).to be true
  end
end
