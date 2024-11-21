# frozen_string_literal: true

RSpec.describe 'Any test' do
  it 'has at least one zero' do
    numbers = [2, 0, 9, 3, 0, 1]
    has_zero = numbers.any?(&:zero?)
    expect(has_zero).to be(true)
  end

  it 'does not have zeroes' do
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = numbers.any?(&:zero?)
    expect(has_zero).to be(false)
  end

  it 'has at least one alice' do
    names = %w[Bill Bob Burton Alice Brandon]
    has_alice = names.any? do |name|
      name == 'Alice'
    end
    expect(has_alice).to be(true)
  end

  it 'no alices' do
    names = %w[Chuck Charlene Cory Chris Carl]
    has_alice = names.any? do |name|
      name == 'Alice'
    end
    expect(has_alice).to be(false)
  end

  it 'has a multi word phrase' do
    phrases = ['Sure!', 'OK.', 'I have no idea.', 'Really?Whatever.']
    multi_word_phrase = phrases.any? do |phrase|
      phrase.match(/ /)
    end
    expect(multi_word_phrase).to be(true)
  end

  it 'no monkeys' do
    animals = %w[elephant hippo jaguar python]
    has_monkeys = animals.any? do |animal|
      animal.include?('monkey')
    end
    expect(has_monkeys).to be(false)
  end

  it 'no multiples of five' do
    numbers = [3, 1, 3, 2, 4, 9, 8]
    multiples_of5 = numbers.any? do |number|
      (number % 5).zero?
    end
    expect(multiples_of5).to be(false)
  end
end
