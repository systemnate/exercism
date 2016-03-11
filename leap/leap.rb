class Year
  VERSION = 2

  def self.leap?(year)
    if year_divisible_by_four_hundred(year)
      true
    elsif year_divisible_by_one_hundred(year)
      false
    elsif year_divisible_by_four(year)
      true
    else
      false
    end
  end

  private

  def self.year_divisible_by_four(year)
    return true if year % 4 == 0
    false
  end

  def self.year_divisible_by_one_hundred(year)
    return true if year % 100 == 0
    false
  end

  def self.year_divisible_by_four_hundred(year)
    return true if year % 400 == 0
    false
  end
end
