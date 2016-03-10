class Year
  VERSION = 1
  def self.leap?(year)
    if year % 4 == 0
      if year % 100 == 0
        if year % 400 == 0
          return true
        end
        false
      else
        true
      end
    else
      false
    end
  end
end
