class Hamming
  VERSION = 2

  def self.compute(str1, str2)
    raise ArgumentError if str1.length != str2.length
    str1.chars.zip(str2.chars).reject { |i,j| i == j }.count
  end
end
