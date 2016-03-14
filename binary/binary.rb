class Binary
  VERSION = 1
  attr_reader :num

  def initialize(num)
    raise ArgumentError if num =~ /[2-9a-zA-Z]/
    @num = num
  end

  def to_decimal
    return 0 if num == '0'
    bin_mapping = []
    num.size.times { |n| bin_mapping << 2**n }
    bin_mapping.reverse.zip(num.chars).reject { |n| n[1] == "0" }.flatten.reject { |n| n.class == String }.inject(:+)
  end
end

