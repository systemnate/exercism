class Crypto
  attr_reader :str

  def initialize(str)
    @str = str
  end

  def normalize_plaintext
    @str.downcase.scan(/\w+/).join("")
  end

  def size
    sz = normalize_plaintext.size
    Math.sqrt(sz).ceil
  end

  def plaintext_segments
    normalize_plaintext.chars.each_slice(size).to_a.map { |w| w.join("") }
  end

  def ciphertext
    normalize_ciphertext.gsub(' ', '')
  end

  def normalize_ciphertext
    str = ""
    n = plaintext_segments[0].size
    n.times do |i|
      plaintext_segments.map { |c| c.chars }.each do |e|
        str << e[i].to_s
      end
      str << " "
    end
    str.chop
  end
end
