class Trinary
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def to_decimal
    return 0 if num.scan(/[a-zA-Z]+/).any?
    size = num.size
    total = 0
    num.chars.each_with_index do |char,index|
      total += char.to_i * 3**(size - (index + 1))
    end
    total
  end
end
