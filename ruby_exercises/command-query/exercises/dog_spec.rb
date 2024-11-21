# frozen_string_literal: true

require 'rspec'
require_relative 'dog'

RSpec.describe Dog do
  it 'is hungry' do
    dog = described_class.new

    expect(dog.hungry?).to be true
  end

  it 'eats' do
    dog = described_class.new
    dog.eat

    expect(dog.hungry?).to be false
  end
end
