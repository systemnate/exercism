require 'prime'

class PrimeFactors
  def self.for(number)
    return [] if number == 1
    number.prime_division.map do |i,j|
      if j == 1
        i**j
      else
        temp = []
        j.times { temp << i }
        return temp
      end
    end
  end
end
