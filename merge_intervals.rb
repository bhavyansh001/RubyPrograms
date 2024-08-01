class Modifier
  def self.merge(intervals)
    intervals.sort!
    merged = []

    intervals.each do |interval|
      if merged.empty? || merged.last[1] < interval[0]
        merged << interval
      else
        merged.last[1] = [merged.last[1], interval[1]].max
      end
    end
    merged
  end
end

intervals = [[1,3],[2,6],[8,10],[15,18]]
result = Modifier.merge(intervals)
puts result.inspect
