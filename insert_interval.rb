class ModifyInterval
  def self.insert(intervals, new_interval)
    result = []
    i = 0
    n = intervals.length

    while i < n && intervals[i][1] < new_interval[0]
      result << intervals[i]
      i += 1
    end

    while i < n && intervals[i][0] <= new_interval[1]
      new_interval[0] = [new_interval[0], intervals[i][0]].min
      new_interval[1] = [new_interval[1], intervals[i][1]].max
      i += 1
    end
    result << new_interval

    while i < n
      result << intervals[i]
      i += 1
    end
    result
  end
end

intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]]
new_interval = [4, 8]
result = ModifyInterval.insert(intervals, new_interval)
puts result.inspect
