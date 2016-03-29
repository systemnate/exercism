class Anagram
  attr_reader :word, :initial

  def initialize(word)
    @initial = word
    @word = word.downcase.chars.sort
  end

  def match(words)
    words.select { |w| word == w.downcase.chars.sort && w.downcase != initial }
  end
end
