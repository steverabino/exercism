module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(strands)
    return "" if strands.match(/[^GCTA]/)
    strands.gsub!(/[GCTA]/, 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
  end
end