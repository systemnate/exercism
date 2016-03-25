class Nucleotide
  attr_reader :dna

  def initialize(dna)
    if dna.chars.collect { |c| ['A','T','G','C'].include?(c) }.include?(false)
      raise ArgumentError, "valid characters are 'A','T','G','C', but #{dna} was provided"
    else
      @dna = dna
    end
  end

  def self.from_dna(dna)
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
