class Appointments
  attr_reader :slots, :earliest

  def initialize
    @slots = []
    @earliest = nil
  end
  def at(time)
    @slots << time
  end
  def earliest
    if !@slots.empty?
      times = @slots.map do |times|
        times.to_i
      end
      @slots[times.index(times.min)]
    end
  end
end