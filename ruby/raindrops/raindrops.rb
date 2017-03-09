module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(number)
    output = ""
    factor_check = { 3 => "Pling", 5 => "Plang", 7 => "Plong" }
    factor_check.each do |factor, word|
      output += word if number % factor == 0
    end
    if output.empty?
      output = number.to_s
    end
    return output
  end
end