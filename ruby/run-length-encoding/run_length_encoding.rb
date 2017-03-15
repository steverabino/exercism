module BookKeeping
  VERSION = 2
end

class RunLengthEncoding
  def self.encode(input)
    input.gsub /(.)\1+/ do |t|
      t.length.to_s + t[0]
    end
  end

  def self.decode(input)
    input.gsub /\d+./ do |t|
      char = t[-1]
      t.chop!
      char * t.to_i
    end
  end
end
