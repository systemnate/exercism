class PigLatin
  VOWELS = ['a','e','i','o','u']

  def self.translate(phrase)
    phrase = phrase.split
    phrase.map { |p| pig_latin(p) }.join(" ")
  end

  private

  def self.pig_latin(phrase)
    if starts_with_yt_or_xr?(phrase)
      "#{phrase}ay"
    elsif starts_with_thr_or_sch?(phrase)
      "#{phrase[3..-1]}#{phrase[0..2]}ay"
    elsif starts_with_ch_qu_or_th?(phrase)
      "#{phrase[2..-1]}#{phrase[0..1]}ay"
    elsif consonant_followed_by_ch_or_qu?(phrase)
      "#{phrase[3..-1]}#{phrase[0..2]}ay"
    elsif starts_with_vowel?(phrase)
      "#{phrase[0]}#{phrase[1..-1]}ay"
    elsif starts_with_consonant?(phrase)
      "#{phrase[1..-1]}#{phrase[0]}ay"
    end
  end

  def self.starts_with_yt_or_xr?(phrase)
    phrase =~ /^(yt|xr)/
  end

  def self.starts_with_thr_or_sch?(phrase)
    phrase =~ /^(thr|sch)/
  end

  def self.starts_with_ch_qu_or_th?(phrase)
    phrase =~ /^(ch|qu|th)/
  end

  def self.consonant_followed_by_ch_or_qu?(phrase)
    !VOWELS.include?(phrase[0]) && phrase[1..-1] =~ /^(qu)/
  end

  def self.starts_with_vowel?(phrase)
    VOWELS.include?(phrase[0])
  end

  def self.starts_with_consonant?(phrase)
    !starts_with_vowel?(phrase)
  end
end
