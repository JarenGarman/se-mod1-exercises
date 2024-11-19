class Clearance
  attr_reader :best_deal

  def initialize
    @clearance = []
    @best_deal = nil
  end
  def << item
    @clearance << item
  end
  def best_deal
    if !@clearance.empty?
    deals = @clearance.map do |items|
      items.deal
    end
    @best_deal = @clearance[deals.index(deals.max)].type
    end
  end
end