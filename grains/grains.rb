class Grains
  VERSION = 1

  def self.square(n)
    2**n / 2
  end

  def self.total
    grains = []
    (1..64).to_a.each do |i|
      grains << square(i)
    end
    grains.inject(:+)
  end
end
