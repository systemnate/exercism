class Anagram
  attr_reader :word, :initial

  def initialize(word)
    @initial = word
    @word = word.downcase.chars.sort
  end

  def match(words)
    words.select { |w| word == w.downcase.chars.sort }.reject { |w| w.downcase == initial }
  end
end
