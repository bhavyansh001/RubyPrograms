class BinarySearch
  def self.search_range(nums, target)
    left = 0
    right = nums.length - 1
    result = [-1, -1]

    while left <= right
      mid = left + (right - left) / 2
      if nums[mid] < target
        left = mid + 1
      else
        right = mid - 1
      end
    end
    return result unless left < nums.length && nums[left] == target
    result[0] = left

    right = nums.length - 1
    while left <= right
      mid = left + (right - left) / 2
      if nums[mid] <= target
        left = mid + 1
      else
        right = mid - 1
      end
    end
    result[1] = right
    result
  end
end

nums = [5,7,7,8,8,10]
target = 8

solution = BinarySearch.search_range(nums, target)
puts solution.inspect
