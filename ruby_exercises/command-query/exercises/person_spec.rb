# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'person'

RSpec.describe Person do
  it 'is zero years old when born' do
    person = described_class.new

    expect(person.age).to eq(0)
  end

  it 'gets older' do
    person = described_class.new

    33.times { person.happy_birthday }

    expect(person.age).to eq(33)
  end
end
