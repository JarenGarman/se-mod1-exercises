class Santa
  def initialize
    @fits = true
    @cookies_eaten = 0
  end
  def fits?
    @fits
  end
  def eats_cookies
    @cookies_eaten += 1
    if @cookies_eaten >= 3
      @fits = false
    end
  end
end