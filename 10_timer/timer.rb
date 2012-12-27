class Timer
  def initialize
    @seconds = 0
  end

  attr_accessor :seconds

  def time_string
    # 24h - timer
    #(Time.utc(2013, "jan", 1, 0, 0, 0) + @seconds).strftime("%H:%M:%S")

    # full h-timer
    "%02d:%02d:%02d" % [@seconds / 3600, @seconds % 3600 / 60, @seconds % 60]
  end
end