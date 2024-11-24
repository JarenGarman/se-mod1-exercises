# typed: true
# frozen_string_literal: true

# Define Clearance class
class Clearance
  attr_reader :best_deal

  def initialize
    @clearance = []
    @best_deal = nil
    @best_deal_int = 0
  end

  def <<(item)
    @clearance << item
    return unless item.deal > @best_deal_int

    @best_deal = item.type
    @best_deal_int = item.deal
  end
end
