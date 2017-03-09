module BookKeeping
  VERSION = 2
end

class Fixnum
  def to_roman
    result = ""
    self.to_s.reverse.each_char.with_index do |char, i|
      result += RomanNumerals.digit_to_roman(char, i).reverse
    end
    result.reverse!
  end
end

class RomanNumerals
  def self.digit_to_roman(digit, power)
    return "" if digit == "0"
    case power
    when 0
      return conversion("I", "V", "X")[digit]
    when 1
      return conversion("X", "L", "C")[digit]
    when 2
      return conversion("C", "D", "M")[digit]
    when 3
      return conversion("M", "", "")[digit]
    end
  end

  def self.conversion(unit, five, ten)
    conversion = { "1" => "#{unit}",
                   "2" => "#{unit * 2}",
                   "3" => "#{unit * 3}",
                   "4" => "#{unit}#{five}",
                   "5" => "#{five}",
                   "6" => "#{five}#{unit}",
                   "7" => "#{five}#{unit * 2}",
                   "8" => "#{five}#{unit * 3}",
                   "9" => "#{unit}#{ten}"
                 }
  end
end