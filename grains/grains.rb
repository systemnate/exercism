class Grains
  VERSION = 3

  def self.square(n)
    2 ** ( n - 1 )
  end

  def self.total
    2 ** 64 - 1
  end
end
