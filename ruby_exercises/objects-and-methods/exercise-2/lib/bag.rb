class Bag
  attr_reader :bag, :count
  def initialize
    @bag = []
    @count = 0
  end
  def empty?
    @bag.empty?
  end
  def candies
    @bag
  end
  def << candy
    @bag << candy
    @count += 1
  end
  def contains?(candy)
    @candy_strings = @bag.map do |candy|
      candy.type
    end
    @candy_strings.include?(candy)
  end
  def grab(candy)
    @candy_strings = @bag.map do |candy|
      candy.type
    end
    grab = @bag[@candy_strings.index(candy)]
    @bag.delete_at(@candy_strings.index(candy))
    @count -= 1
    grab
  end
  def take(amount)
    @count -= amount
    @bag.shift(amount)
  end
end