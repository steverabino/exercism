module BookKeeping
  VERSION = 2
end

class Robot
  @@current_name = "AA000"

  attr_reader :name

  def initialize
    @name = @@current_name.next
    @@current_name = @name
  end

  def reset
    initialize
  end
end