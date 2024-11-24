# typed: false
# frozen_string_literal: true

require 'rspec'
RSpec.describe 'Any' do
  it 'solve for x' do
    s = +''
    5.times do
      s.insert(0, 'x')
    end
    expect(s).to eq('xxxxx')
  end

  it 'simple sum' do
    numbers = [1, 2, 3, 4, 5]
    sum = numbers.sum
    expect(sum).to eq(15)
  end
end
