class Squares
  VERSION = 1

  attr_reader :num

  def initialize(num)
    @num = num
  end

  def square_of_sum
    (0..num).to_a.inject(:+)**2
  end

  def sum_of_squares
    (0..num).to_a.map { |i| i ** 2 }.inject(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
