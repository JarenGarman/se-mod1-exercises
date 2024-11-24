# typed: false
# frozen_string_literal: true

require 'rspec'
RSpec.describe 'Find' do
  it 'first seven letter word' do
    words = %w[capricious berry unicorn bag apple festering pretzel pencil]
    found = words.find do |word|
      word.length == 7
    end
    expect(found).to eq('unicorn')
  end

  it 'no waldo' do
    words = %w[scarf sandcastle flag pretzel crow key]
    found = words.find do |word|
      word == 'waldo'
    end
    expect(found).to be_nil
  end

  it 'found waldo' do
    words = %w[noise dog fair house waldo bucket fish]
    found = words.find do |word|
      word == 'waldo'
    end
    expect(found).to eq('waldo')
  end

  it 'no three letter words' do
    words = %w[piglet porridge bear blueberry]
    found = words.find do |word|
      word.length == 3
    end
    expect(found).to be_nil
  end

  it 'find 13' do
    numbers = [2, 13, 19, 8, 3, 27]
    found = numbers.find do |number|
      number == 13
    end
    expect(found).to eq(13)
  end

  it 'find first even number' do
    numbers = [3, 7, 13, 11, 10, 2, 17]
    found = numbers.find(&:even?)
    expect(found).to eq(10)
  end

  it 'first multiple of 3' do
    numbers = [2, 8, 9, 27, 24, 5]
    found = numbers.find do |number|
      (number % 3).zero?
    end
    expect(found).to eq(9)
  end

  it 'first word starting with q' do
    words = %w[weirdo quill fast quaint quitter koala]
    found = words.find do |word|
      word.start_with?('q')
    end
    expect(found).to eq('quill')
  end

  it 'first word ending with er' do
    words = %w[biggest pour blight finger pie border]
    found = words.find do |word|
      word.end_with?('er')
    end
    expect(found).to eq('finger')
  end

  it 'first number greater than 20' do
    numbers = [1, 8, 19, 21, 29, 31, 34]
    found = numbers.find do |number|
      number > 20
    end
    expect(found).to eq(21)
  end
end
