class Container
  def max_area(height)
    left = 0
    right = height.length - 1
    max_area = 0

    while left < right
      current_area = [height[left], height[right]].min * (right - left)
      max_area = [max_area, current_area].max

      if height[left] < height[right]
        left += 1
      else
        right -= 1
      end
    end
    max_area
  end
end

solver = Container.new
heights = [1, 8, 6, 2, 5, 4, 8, 3, 7]
result = solver.max_area(heights)
puts result
