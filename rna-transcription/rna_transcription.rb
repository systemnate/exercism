class Complement
  VERSION = 4

  MAPPING = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }

  def self.of_dna(dna)
    dna.chars.map! { |c| MAPPING[c] or raise ArgumentError,
       "Invalid character detected! (ACGTU are valid)" }.join("")
  end
end
