class Prime
  def self.nth(n)
    raise ArgumentError, 
      "n must be > 0 (#{n} for 1+)." if n <= 0
    prime_numbers = []
    i = 2
    while prime_numbers[n-1] == nil
      prime_numbers << i if i.prime?
      i += 1
    end
    prime_numbers[n-1]
  end

end

class Integer
  def prime?
    return true if self == 2
    n = self
    for x in (2..Math.sqrt(n))
      if n % x == 0
        return false
      end
    end
    return true
  end
end
