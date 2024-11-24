# typed: false
# frozen_string_literal: true

require 'rspec'
RSpec.describe 'Any' do
  it 'has at least one zero' do
    numbers = [2, 0, 9, 3, 0, 1]
    has_zero = false
    numbers.each do |number|
      has_zero = true if number.zero?
    end
    expect(has_zero).to be(true)
  end

  it 'does not have any zeros' do
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = false
    numbers.each do |number|
      has_zero = true if number.zero?
    end
    expect(has_zero).to be(false)
  end

  it 'has at least one alice' do
    names = %w[Bill Bob Burton Alice Brandon]
    has_alice = false
    names.each do |name|
      has_alice = true if name == 'Alice'
    end
    expect(has_alice).to be(true)
  end

  it 'no alices' do
    names = %w[Chuck Charlene Cory Chris Carl]
    has_alice = false
    names.each do |name|
      has_alice = true if name == 'Alice'
    end
    expect(has_alice).to be(false)
  end

  it 'has a multi word phrase' do
    phrases = ['Sure!', 'OK.', 'I have no idea.', 'Really?Whatever.']
    has_multi_word_phrase = false
    phrases.each do |phrase|
      has_multi_word_phrase = true if phrase.include?(' ')
    end
    expect(has_multi_word_phrase).to be(true)
  end

  it 'has no monkeys' do
    animals = %w[elephant hippo jaguar python]
    has_monkeys = false
    animals.each do |animal|
      has_monkeys = true if animal.include?('monkey')
    end
    expect(has_monkeys).to be(false)
  end

  it 'has no multiples of five' do
    numbers = [3, 1, 3, 2, 4, 9, 8]
    multiples_of5 = false
    numbers.each do |number|
      multiples_of5 = true if (number % 5).zero?
    end
    expect(multiples_of5).to be(false)
  end
end
