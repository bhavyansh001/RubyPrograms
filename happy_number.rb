class NumberChecker
  def is_happy(n)
    visited = Set.new
    while n != 1 && !visited.include?(n)
      visited.add(n)
      n = sum_of_squares(n)
    end
    n == 1
  end

  def sum_of_squares(n)
    sum = 0
    while n > 0
      digit = n % 10
      sum += digit * digit
      n /= 10
    end
    sum
  end
end

n = 19
checker = NumberChecker.new
answer = checker.is_happy(n)
puts answer
