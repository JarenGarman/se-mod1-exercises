# frozen_string_literal: true

# Define Clearance class
class Clearance
  def initialize
    @clearance = []
  end

  def <<(item)
    @clearance << item
  end

  def best_deal
    return nil if @clearance.empty?

    deals = @clearance.map(&:deal)
    @clearance[deals.index(deals.max)].type
  end
end
