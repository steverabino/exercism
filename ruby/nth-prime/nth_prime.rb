module BookKeeping
  VERSION = 1
end

class Prime
  def self.nth(n)
    raise ArgumentError if n < 1
    last_prime = nil
    i = 2
    (1..n).each do
      prime = false
      while prime == false
        if is_prime? i
          prime = true
          last_prime = i
        end
        i += 1
      end
    end
    last_prime
  end

  def self.is_prime?(n)
    i = 2
    while i <= Math.sqrt(n)
      return false if (n/i.to_f) % 1 == 0
      i += 1
    end
    return true
  end
end