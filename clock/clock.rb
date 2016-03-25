class Clock
  attr_reader :hour, :minute

  def initialize(hour, minute=0)
    @hour = hour
    @minute = minute
  end

  def self.at(*args)
    new(*args)
  end

  def +(mins)
    h, m = format_time(hour, minute + mins)
    self.class.new(h,m)
  end

  def -(mins)
    h, m = format_time(hour, minute - mins)
    self.class.new(h,m)
  end
  
  def ==(other)
    hour == other.hour && minute == other.minute
  end
 
  def to_s
    "%02d:%02d" % [hour, minute]
  end

  private

  def format_time(hour, minute)
    while minute < 0
      minute += 60
      hour -= 1
    end

    while minute >= 60
      minute -= 60
      hour += 1
    end

    if hour < 0 || hour > 23
      hour %= 24
    end

    [hour, minute]
  end
end
