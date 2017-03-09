module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words = @phrase.downcase.scan(/(\b[^\s,]+\b)/i)
    words.each_with_object(Hash.new 0) do |word, counts|
      counts[word[0]] += 1
    end
  end
end