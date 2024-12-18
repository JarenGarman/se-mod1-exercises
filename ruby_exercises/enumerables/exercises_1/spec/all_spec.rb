# typed: false
# frozen_string_literal: false

require 'rspec'

RSpec.describe 'All' do
  it 'test all zeroes' do
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = numbers.all?(&:zero?)
    expect(all_zeros).to be(true)
  end

  it 'not all zeroes' do
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = numbers.all?(&:zero?)
    expect(all_zeros).to be(false)
  end

  it 'all gone' do
    words = %w[gone gone gone gone gone gone gone]
    all_gone = words.all?('gone')
    expect(all_gone).to be(true)
  end

  it 'not all gone' do
    words = %w[gone gone gone gone gone there gone gone]
    all_gone = words.all?('gone')
    expect(all_gone).to be(false)
  end

  it 'all empty' do
    strings = ['', '', '', '', '', '', '']
    all_empty = strings.all?('')
    expect(all_empty).to be(true)
  end

  it 'not all empty' do
    strings = ['', '', '', 'full', '', '', '']
    all_empty = strings.all?('')
    expect(all_empty).to be(false)
  end

  it 'not all uppercase' do
    words = %w[DOUGHNUT CASH MAIN bOWl SMACK SAND]
    all_uppercase = words.all? do |word|
      word.upcase!.nil?
    end
    expect(all_uppercase).to be(false)
  end

  it 'all lies' do
    lies = [false, false, false, false]
    all_lies = lies.all?(&:!)
    expect(all_lies).to be(true)
  end

  it 'multiples of 7' do
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    all_multiples_of7 = numbers.all? do |number|
      (number % 7).zero?
    end
    expect(all_multiples_of7).to be(true)
  end

  it 'not all three digits long' do
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    all_3_digits = numbers.all? do |number|
      number.size == 3
    end
    expect(all_3_digits).to be(false)
  end

  it 'all four letter words' do
    words = %w[love hate fire bird call]
    all_4_letters = words.all? do |word|
      word.length == 4
    end
    expect(all_4_letters).to be(true)
  end
end
