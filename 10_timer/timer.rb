class Timer
  
  def initialize
    @seconds = 0
  end

  attr_accessor :seconds

  def time_string
    (Time.utc(2013,"jan",1,0,0,0) + @seconds).strftime("%H:%M:%S")
  end
end