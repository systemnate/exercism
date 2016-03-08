class Complement
  VERSION = 2
  @complement_map = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }

  def self.of_dna(dna)
    dna.chars.map! { |c| @complement_map[c] or raise ArgumentError }.join("")
  end
end
