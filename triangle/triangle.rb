class Triangle
  attr_reader :a, :b, :c, :array
  def initialize(a,b,c)
    @a, @b, @c = a, b, c
    @array = [@a,@b,@c].sort.reverse
  end

  def kind
    raise TriangleError if array.reject { |side| side <= 0 }.count != 3
    raise TriangleError if array[0] >= array[1] + array[2]
    return :equilateral if a == b && a == c
    return :isosceles if array.count(a) == 2 || array.count(b) == 2
    return :scalene if a !=b and b != c 
  end
end

class TriangleError < StandardError
end
