class Bob
  def self.hey(text)
    return "Fine. Be that way!" if text.strip.empty?
    clean = text.gsub(/[^A-Z]+/i, "")
    return "Whoa, chill out!" if clean =~ /^[A-Z]+$/
    return "Sure." if text.end_with? "?"
    "Whatever."
  end
end
