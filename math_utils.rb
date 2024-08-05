class MathUtils
  def plus_one(digits)
    num = digits.join.to_i + 1
    num.to_s.chars.map(&:to_i)  # ..map { |char| char.to_i }
  end

  def max_points(points)
    return 0 if points.empty?

    def gcd(a, b)
      b == 0 ? a : gcd(b, a % b)
    end

    max_points = 1
    points.each do |p1|
      slopes = Hash.new(0)
      same_points = 0
      points.each do |p2|
        if p1 == p2
          same_points += 1
        else
          dx = p2[0] - p1[0]
          dy = p2[1] - p1[1]
          g = gcd(dx.abs, dy.abs)
          slope = [dx / g, dy / g]
          slopes[slope] += 1
        end
      end
      max_points = [max_points, slopes.values.max.to_i + same_points].max
    end
    max_points
  end
end

math_utils = MathUtils.new
digits = [1, 2, 3]
puts "plus_one: #{math_utils.plus_one(digits).inspect}"

points = [[1, 1], [2, 2], [3, 3]]
puts "max_points: #{math_utils.max_points(points)}"

