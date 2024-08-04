class Backtrack
  def self.permute(nums)

  result = []
  current_permutation = []

  def self.backtrack(nums, current_permutation, result)
    if current_permutation.size == nums.size
      result << current_permutation.dup
      return
    end
    nums.each do |num|
      next if current_permutation.include?(num)
      current_permutation << num
      backtrack(nums, current_permutation, result)
      current_permutation.pop
    end
  end
  backtrack(nums, current_permutation, result)
  result
  end
end

nums = [1, 2, 3]
sol = Backtrack.permute(nums)
puts sol.inspect
