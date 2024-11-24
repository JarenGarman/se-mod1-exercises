# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'santa'

RSpec.describe Santa do
  it 'fits down the chimney' do
    santa = described_class.new

    expect(santa.fits).to be true
  end

  it 'does not fit down the chimney if he eats too many cookies' do
    santa = described_class.new

    3.times { santa.eats_cookies }
    expect(santa.fits).to be false
  end
end
