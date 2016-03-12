class Phrase
  VERSION = 1

  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase.downcase.scan(/[\w']+/).map!{ |w| trim_apostrophes(w) }
  end


  def word_count
    word_hash = Hash.new(0)
    phrase.each do |word|
      word_hash[word] += 1
    end
    word_hash
  end
  
  private

  def trim_apostrophes(word)
    if word.start_with?("'")
      word = word.slice(1..-1)
    end
    if word.end_with?("'")
      word = word.slice(0..-2)
    end
    word
  end
end
