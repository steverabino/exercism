module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    sum = (0..@number).reduce(0, :+)
    sum**2
  end

  def sum_of_squares
    (0..@number).reduce{ |total, n| total += n**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end