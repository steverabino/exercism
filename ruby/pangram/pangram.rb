module BookKeeping
  VERSION = 4
end

class Pangram
  def self.pangram?(phrase)
    phrase.gsub!(/[^a-z]/i, "").to_s.downcase!
    counts = Hash.new 0
    phrase.each_char do |char|
      counts[char] += 1
      return true if counts.length == 26
    end
    return false
  end
end