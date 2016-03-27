require 'date'

class Meetup
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year  = year
    @start = Date.new(year, month, 1)
  end

  def day(weekday, schedule)
    weekday_sym = to_sym(weekday)
    return find_teenth(weekday_sym) if schedule == :teenth
    find_dates(schedule, weekday_sym)
  end

  private

  def to_sym(str)
    (str.to_s + "?").to_sym
  end

  def find_teenth(weekday_sym)
    while @start.month == month
      if (13..19).to_a.include?(@start.day) && @start.send(weekday_sym)
        return @start
      end
      @start += 1
    end
  end

  def find_dates(schedule, weekday_sym)
    date_mapping = { :first => 0, :second => 1, :third => 2, :fourth => 3, :last => -1 }
    dates = []
    while @start.month == month
      if @start.send(weekday_sym)
        dates << @start
      end
      @start += 1
    end
    dates[date_mapping[schedule]]
  end
end
