# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'cupcake'
require_relative 'cupcakes'

RSpec.describe Cupcakes do
  it 'has no sweetest when there are no cupcakes' do
    cupcakes = described_class.new
    expect(cupcakes.sweetest).to be_nil
  end

  it 'has a sweetest with one cupcake' do
    cupcakes = described_class.new
    cupcakes.selection << Cupcake.new('Carrot', 5) # 5 grams of sugar

    expect(cupcakes.sweetest.flavor).to eq('Carrot')
  end

  it 'has a sweetest cupcake' do
    cupcakes = described_class.new
    cupcakes.selection << Cupcake.new('Carrot', 5)
    cupcakes.selection << Cupcake.new('Caramel', 12)
    cupcakes.selection << Cupcake.new('Chocolate', 8)

    expect(cupcakes.sweetest.flavor).to eq('Caramel')
  end
end
