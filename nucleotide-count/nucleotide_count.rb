class Nucleotide
  attr_reader :dna

  def initialize(dna)
    @dna = dna
  end

  def self.from_dna(dna)
    if dna =~ /[^ATCG]/
      raise ArgumentError, 
        "valid characters are ATCG, but #{dna} was provided"
    end
    new(dna)
  end

  def count(char)
    dna.scan(/#{char}/).count
  end

  def histogram
    hist = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0  }
    dna.chars.collect { |c| hist[c] += 1 }
    hist
  end
end
