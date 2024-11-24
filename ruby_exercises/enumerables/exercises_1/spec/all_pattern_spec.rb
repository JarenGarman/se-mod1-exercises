# typed: false
# frozen_string_literal: false

require 'rspec'
RSpec.describe 'All' do
  it 'all zeros' do
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
    end
    expect(all_zeros).to be(true)
  end

  it 'not all zeros' do
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
    end
    expect(all_zeros).to be(false)
  end

  it 'all gone' do
    words = %w[gone gone gone gone gone gone gone]
    all_gone = true
    words.each do |word|
      all_gone = false unless word == 'gone'
    end
    expect(all_gone).to be(true)
  end

  it 'not all gone' do
    words = %w[gone gone gone gone gone there gone gone]
    all_gone = true
    words.each do |word|
      all_gone = false unless word == 'gone'
    end
    expect(all_gone).to be(false)
  end

  it 'all empty' do
    strings = ['', '', '', '', '', '', '']
    all_empty = true
    strings.each do |string|
      all_empty = false unless string == ''
    end
    expect(all_empty).to be(true)
  end

  it 'not all empty' do
    strings = ['', '', '', 'full', '', '', '']
    all_empty = true
    strings.each do |string|
      all_empty = false unless string == ''
    end
    expect(all_empty).to be(false)
  end

  it 'not all uppercase' do
    words = %w[DOUGHNUT CASH MAIN bOWl SMACK SAND]
    all_caps = true
    words.each do |word|
      all_caps = false unless word.upcase!.nil?
    end
    expect(all_caps).to be(false)
  end

  it 'all lies' do
    lies = [false, false, false, false]
    all_lies = true
    lies.each do |lie|
      all_lies = false if lie
    end
    expect(all_lies).to be(true)
  end

  it 'all multiples of seven' do
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    all_multiples_of7 = true
    numbers.each do |number|
      all_multiples_of7 = false unless (number % 7).zero?
    end
    expect(all_multiples_of7).to be(true)
  end

  it 'not all 3 digits long' do
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    all_3_digits = true
    numbers.each do |number|
      all_3_digits = false unless number.size == 3
    end
    expect(all_3_digits).to be(false)
  end

  it 'all four letter words' do
    words = %w[love hate fire bird call]
    all_4_letters = true
    words.each do |word|
      all_4_letters = false unless word.length == 4
    end
    expect(all_4_letters).to be(true)
  end
end
