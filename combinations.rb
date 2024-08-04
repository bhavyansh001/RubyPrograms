class Backtrack
  def self.combine(n, k)
    result = []
    current_combination = []

    def self.backtrack(start, n, k, current_combination, result)
      if current_combination.size == k
        result << current_combination.dup
        return
      end

      (start..n).each do |i|
        current_combination << i
        backtrack(i + 1, n, k, current_combination, result)
        current_combination.pop
      end
    end
    backtrack(1, n, k, current_combination, result)
    result
  end
end

n, k = 4, 2
sol = Backtrack.combine(n, k)
puts sol.inspect
