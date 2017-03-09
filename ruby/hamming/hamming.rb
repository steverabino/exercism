module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Hamming
  def self.compute(a, b)
    raise ArgumentError if a.length != b.length
    (0..a.length - 1).count{ |i| a[i] != b[i] }
  end
end