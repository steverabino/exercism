module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(max)
    @max = max
  end

  def primes
    primes = (2..@max).to_a
    primes.each do |n|
      i = 2
      until n * i > @max
        primes.delete(n * i)
        i += 1
      end
    end
    return primes
  end
end