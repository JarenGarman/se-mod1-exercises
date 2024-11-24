# typed: false
# frozen_string_literal: true

require 'rspec'
RSpec.describe 'Sort_by' do
  it 'sorts alphabetically' do
    words = %w[broccoli Carrots FISH Bacon candy]
    transformed = []
    words.each do |word|
      transformed << [word.downcase, word]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |_, word|
      sorted << word
    end
    expect(sorted).to eq(%w[Bacon broccoli candy Carrots FISH])
  end

  it 'alphabetically by last letter' do
    things = %w[pill box glass water sponge]
    transformed = []
    things.each do |thing|
      transformed << [thing[-1], thing]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |_, thing|
      sorted << thing
    end
    expect(sorted).to eq(%w[sponge pill water glass box])
  end

  it 'sort by distance' do
    distances = %w[1cm 9cm 30cm 4cm 2cm]
    transformed = []
    distances.each do |distance|
      transformed << [distance.chomp('cm').to_i, distance]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |_, distance|
      sorted << distance
    end
    expect(sorted).to eq(%w[1cm 2cm 4cm 9cm 30cm])
  end

  it 'by length' do
    words = %w[heteromorph ancyloceratina bioengineering mathematical bug]
    transformed = []
    words.each do |word|
      transformed << [word.length, word]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |_, word|
      sorted << word
    end
    expect(sorted).to eq(%w[bug heteromorph mathematical ancyloceratina bioengineering])
  end

  it 'by proximity to ten' do
    prices = [3.02, 9.91, 17.9, 10.01, 11.0]
    transformed = []
    prices.each do |price|
      transformed << [(10.0 - price).abs, price]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |_, price|
      sorted << price
    end
    expect(sorted).to eq([10.01, 9.91, 11.0, 3.02, 17.9])
  end

  it 'by number of cents' do
    prices = [3.02, 9.91, 7.9, 10.01, 11.0]
    transformed = []
    prices.each do |price|
      transformed << [(price - price.to_i).abs, price]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |_, price|
      sorted << price
    end
    expect(sorted).to eq([11.0, 10.01, 3.02, 7.9, 9.91])
  end
end
