class SequenceUtil
  def longest_consecutive(nums)
    return 0 if nums.empty?

    num_set = nums.to_set  # for O(1) lookup time
    longest_streak = 0

    num_set.each do |num|
      if !num_set.include?(num - 1)  # found a potential start of sequence
        current_num = num
        current_streak = 1

        while num_set.include?(current_num + 1)
          current_num += 1
          current_streak += 1
        end
        longest_streak = [longest_streak, current_streak].max
      end
    end
    longest_streak
  end
end
nums = [0,3,7,2,5,8,4,6,0,1]

util = SequenceUtil.new
longest_streak = util.longest_consecutive(nums)
puts longest_streak
