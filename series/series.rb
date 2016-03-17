class Series
  attr_reader :str

  def initialize(str)
    @str = str.chars.map { |n| n.to_i }
  end

  def slices(n)
    raise ArgumentError, "slices size cannot be larger than string" if n > str.size
    temp = []
    str.each_with_index do |i, index|
      temp << str.slice(index,n)
    end
    temp.reject { |i| i.size != n }
  end
end
