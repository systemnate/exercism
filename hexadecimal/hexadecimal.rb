class Hexadecimal
  HEX_MAPPING = { 'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e'=> 14, 'f' => 15 }

  def initialize(num)
    @num = num
  end

  def to_decimal
    return 0 if @num =~ /[^[0-9]abcdef]/
    sum = 0
    @num.chars.reverse.map { |c| HEX_MAPPING[c] ||= c.to_i }.each_with_index do |digit, index|
      sum += digit * 16**index
    end
    sum
  end
end
