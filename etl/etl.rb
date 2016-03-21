class ETL
  def self.transform(old)
    old.each_with_object({}) do |(score, chars), hash|
      chars.each do |c|
        hash[c.downcase] = score
      end
    end
  end
end
