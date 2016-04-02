class Luhn
  attr_reader :number

  def self.create(value)
    (0..9).to_a.each do |i|
      ret_value = "#{value}#{i}".to_i
      return ret_value if Luhn.new(ret_value).valid?
    end
    value
  end

  def initialize(number)
    @number = number
  end

  def addends
    num_array = number.to_s.chars.map(&:to_i).reverse
    num_array.each_with_index { |value,index| num_array[index] = compute_value(value) if index.odd? }
    num_array.reverse
  end

  def checksum
    addends.inject(:+)
  end

  def valid?
    checksum % 10 == 0
  end

  private

  def compute_value(value)
    value = value * 2
    value -= 9 if value > 9
    value
  end
end
