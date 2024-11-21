# frozen_string_literal: true

RSpec.describe 'select' do
  it 'even numbers' do
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    evens = numbers.select(&:even?)
    expect(evens).to eq([2, 4, 6, 8, 10])
  end

  it 'odd numbers' do
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    odds = numbers.select(&:odd?)
    expect(odds).to eq([1, 3, 5, 7, 9])
  end

  it 'words with three letters' do
    words = %w[pill bad finger cat blue dog table red]
    selected = words.select do |word|
      word.length == 3
    end
    expect(selected).to eq(%w[bad cat dog red])
  end

  it 'words with more than three letters' do
    words = %w[pill bad finger cat blue dog table red]
    selected = words.select do |word|
      word.length > 3
    end
    expect(selected).to eq(%w[pill finger blue table])
  end

  it 'words ending in e' do
    words = %w[are you strike thinking belt piece warble sing pipe]
    selected = words.select do |word|
      word.rindex(/e/) == word.length - 1
    end
    expect(selected).to eq(%w[are strike piece warble pipe])
  end

  it 'words ending in ing' do
    words = %w[bring finger drought singing bingo purposeful]
    selected = words.select do |word|
      word.rindex(/ing/) == word.length - 3
    end
    expect(selected).to eq(%w[bring singing])
  end

  it 'words containing e' do
    words = %w[four red five blue pizza purple]
    selected = words.select do |word|
      word.include?('e')
    end
    expect(selected).to eq(%w[red five blue purple])
  end

  it 'dinosaurs' do
    animals = %w[tyrannosaurus narwhal eel achillesaurus qingxiusaurus]
    dinosaurs = animals.select do |animal|
      animal.rindex(/saurus/) == animal.length - 6
    end
    expect(dinosaurs).to eq(%w[tyrannosaurus achillesaurus qingxiusaurus])
  end

  it 'floats' do
    numbers = [3, 1.4, 3.5, 2, 4.9, 9.1, 8.0]
    floats = numbers.select do |number|
      number.to_s.include?('.')
    end
    expect(floats).to eq([1.4, 3.5, 4.9, 9.1, 8.0])
  end

  it 'arrays' do
    elements = ['CAT', ['dog'], 23, [56, 3, 8], 'AIMLESS', 43, 'butter']
    arrays = elements.select do |element|
      element.to_s.include?('[')
    end
    expect(arrays).to eq([['dog'], [56, 3, 8]])
  end

  it 'hashes' do
    elements = ['cat', { dog: 'fido' }, 23, { stuff: 'things' }, 'aimless', 43]
    hashes = elements.select do |element|
      element.to_s.include?('{')
    end
    expect(hashes).to eq([{ dog: 'fido' }, { stuff: 'things' }])
  end
end
