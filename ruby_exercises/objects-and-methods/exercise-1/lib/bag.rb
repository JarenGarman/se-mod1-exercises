class Bag
  def initialize
    @bag = []
  end

  def empty?
    @bag.empty?
  end

  def count
    @bag.count
  end

  def candies
    @bag
  end

  def << type
    @bag << type
  end

  def contains?(candy)
    @candy_strings = @bag.map do |candy|
      candy.type
    end
    @candy_strings.include?(candy)
  end
end