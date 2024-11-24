# typed: false
# frozen_string_literal: true

require 'rspec'
RSpec.describe 'Sort_by' do
  it 'alphabetically' do
    words = %w[broccoli Carrots FISH Bacon candy]
    sorted = words.sort_by(&:downcase)
    expect(sorted).to eq(%w[Bacon broccoli candy Carrots FISH])
  end

  it 'alphabetically by last letter' do
    things = %w[pill box glass water sponge]
    sorted = things.sort_by do |thing|
      thing[-1]
    end
    expect(sorted).to eq(%w[sponge pill water glass box])
  end

  it 'distance' do
    distances = %w[1cm 9cm 30cm 4cm 2cm]
    sorted = distances.sort_by do |distance|
      distance.chomp('cm').to_i
    end
    expect(sorted).to eq(%w[1cm 2cm 4cm 9cm 30cm])
  end

  it 'length' do
    words = %w[heteromorph ancyloceratina bioengineering mathematical bug]
    sorted = words.sort_by(&:length)
    expect(sorted).to eq(%w[bug heteromorph mathematical ancyloceratina bioengineering])
  end

  it 'proximity to ten' do
    prices = [3.02, 9.91, 17.9, 10.01, 11.0]
    sorted = prices.sort_by do |price|
      (10.0 - price).abs
    end
    expect(sorted).to eq([10.01, 9.91, 11.0, 3.02, 17.9])
  end

  it 'number of cents' do
    prices = [3.02, 9.91, 7.9, 10.01, 11.0]
    sorted = prices.sort_by do |price|
      (price - price.to_i).abs
    end
    expect(sorted).to eq([11.0, 10.01, 3.02, 7.9, 9.91])
  end
end
