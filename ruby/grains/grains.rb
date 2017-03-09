module BookKeeping
  VERSION = 1
end

class Grains
  def self.square n
    raise ArgumentError unless n.between? 1, 64
    return 2**(n-1)
  end

  def self.total
    return ((square(64) * 2) - 1)
  end
end