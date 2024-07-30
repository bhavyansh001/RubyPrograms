class SubarraySum
  def self.min_sub_array_len(target, nums)
    n = nums.length
    left = 0
    current_sum = 0  # window
    min_length = Float::INFINITY  # answer
    (0...n).each do |right|
      current_sum += nums[right]
      while current_sum >= target
        min_length = [min_length, right - left + 1].min
        current_sum -= nums[left]
        left += 1
      end
    end
    min_length != Float::INFINITY ? min_length : 0
  end
end
target = 7
nums = [2,3,1,2,4,3]
result = SubarraySum.min_sub_array_len(target, nums)
puts result.inspect

