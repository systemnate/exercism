class Atbash
  def self.encode(str)
    str = str.downcase.gsub(/[\W]/,'').chars.map { |c| convert(c) }.join
    str.chars.each_slice(5).to_a.map { |group| group.join }.join(" ")
  end

  private

  def self.convert(c)
    plain = ('a'..'z').to_a
    cipher = plain.reverse
    plain  = (plain  << ['0','1','2','3','4','5','6','7','8','9']).flatten
    cipher = (cipher << ['0','1','2','3','4','5','6','7','8','9']).flatten
    plain.zip(cipher).each do |chr|
      if chr[0] == c
        return chr[1]
      end
    end
  end
end
