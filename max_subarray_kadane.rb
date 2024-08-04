class KadaneAlgo
  def self.max_sub_array(nums)
    max_sum = current_sum = nums[0]

    (1...nums.length).each do |i|
      current_sum = [nums[i], current_sum + nums[i]].max
      max_sum = [max_sum, current_sum].max
    end
    max_sum
  end
end

nums = [-2,1,-3,4,-1,2,1,-5,4]
sol = KadaneAlgo.max_sub_array(nums)
puts sol
