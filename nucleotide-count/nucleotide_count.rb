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
    dna.count(char)
  end

  def histogram
    { 
      'A' => count('A'), 'T' => count('T'), 
      'C' => count('C'), 'G' => count('G')  
    }
  end
end
