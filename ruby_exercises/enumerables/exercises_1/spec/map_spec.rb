# typed: false
# frozen_string_literal: true

require 'rspec'
RSpec.describe 'Map' do
  it 'capitalizes' do
    names = %w[alice bob charlie]
    capitalized_names = names.map(&:capitalize)
    expect(capitalized_names).to eq(%w[Alice Bob Charlie])
  end

  it 'doubles' do
    numbers = [1, 2, 3, 4, 5]
    doubles = numbers.map do |number|
      number * 2
    end
    expect(doubles).to eq([2, 4, 6, 8, 10])
  end

  it 'squares' do
    numbers = [1, 2, 3, 4, 5]
    squares = numbers.map(&:abs2)
    expect(squares).to eq([1, 4, 9, 16, 25])
  end

  it 'lengths' do
    names = %w[alice bob charlie david eve]
    lengths = names.map(&:length)
    expect(lengths).to eq([5, 3, 7, 5, 3])
  end

  it 'normalize zip codes' do
    numbers = [234, 10, 9119, 38_881]
    zip_codes = numbers.map do |number|
      number = number.to_s
      case number.length
      when 0
        '00000'
      when 1
        "0000#{number}"
      when 2
        "000#{number}"
      when 3
        "00#{number}"
      when 4
        "0#{number}"
      when 5
        number
      end
    end
    expect(zip_codes).to eq(%w[00234 00010 09119 38881])
  end

  it 'backwards' do
    names = %w[alice bob charlie david eve]
    backwards = names.map(&:reverse)
    expect(backwards).to eq(%w[ecila bob eilrahc divad eve])
  end

  it 'words with no vowels' do
    words = %w[green sheep travel least boat]
    without_vowels = words.map do |word|
      word.gsub(/[aeiou]/, '')
    end
    expect(without_vowels).to eq(%w[grn shp trvl lst bt])
  end

  it 'trims last letter' do
    animals = %w[dog cat mouse frog platypus]
    trimmed = animals.map(&:chop)
    expect(trimmed).to eq(%w[do ca mous fro platypu])
  end
end
