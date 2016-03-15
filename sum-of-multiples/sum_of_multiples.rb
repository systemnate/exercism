class SumOfMultiples
  attr_accessor :multiples

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(limit)
    (1...limit).select { |n| mult?(n) }.inject(0, :+)
  end

  def self.to(limit)
    new(3,5).to(limit)
  end

  private

  def mult?(n)
    multiples.any? { |m| n % m == 0 }
  end

end
