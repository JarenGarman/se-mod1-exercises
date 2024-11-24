# typed: false
# frozen_string_literal: true

require 'rspec'
RSpec.describe 'One' do
  it 'one more' do
    words = %w[bigger better more improved advantageous]
    exactly_one = words.one?('more')
    expect(exactly_one).to be(true)
  end

  it 'not even one ring' do
    ornaments = %w[bracelet anklet earring]
    exactly_one_ring = ornaments.one?('ring')
    expect(exactly_one_ring).to be(false)
  end

  it 'not just one ring' do
    ornaments = %w[bracelet ring ring anklet earring]
    exactly_one_ring = ornaments.one?('ring')
    expect(exactly_one_ring).to be(false)
  end

  it 'one time' do
    words = %w[morning time evening noon dusk dawn]
    exactly_one_time = words.one?('time')
    expect(exactly_one_time).to be(true)
  end

  it 'one double digit number' do
    numbers = [8, 2, 10, 333, 9, 101]
    exactly_one_double_digit = numbers.one? do |number|
      number.to_s.length == 2
    end
    expect(exactly_one_double_digit).to be(true)
  end

  it 'not even one number' do
    numbers = [3, 20, 81, 10, 391, 32]
    exactly_one_even_number = numbers.one?(&:even?)
    expect(exactly_one_even_number).to be(false)
  end
end
