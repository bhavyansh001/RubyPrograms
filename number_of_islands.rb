class Solution
  def num_islands(grid)
    return 0 if grid.empty? || grid[0].empty?

    rows = grid.length
    cols = grid[0].length
    islands = 0

    (0...rows).each do |i|
      (0...cols).each do |j|
        if grid[i][j] == '1'
          islands += 1
          dfs(grid, i, j)
        end
      end
    end
    islands
  end

  private

  def dfs(grid, i, j)
    return if i < 0 || i >= grid.length || j < 0 || j >= grid[0].length || grid[i][j] == '0'

    grid[i][j] = '0'

    dfs(grid, i-1, j)
    dfs(grid, i+1, j)
    dfs(grid, i, j-1)
    dfs(grid, i, j+1)
  end
end

# Example usage
solution = Solution.new

# Test cases
test_cases = [
  [
    ['1','1','1','1','0'],
    ['1','1','0','1','0'],
    ['1','1','0','0','0'],
    ['0','0','0','0','0']
  ],
  [
    ['1','1','0','0','0'],
    ['1','1','0','0','0'],
    ['0','0','1','0','0'],
    ['0','0','0','1','1']
  ]
]

test_cases.each_with_index do |grid, index|
  result = solution.num_islands(grid)
  puts "Test case #{index + 1}: Number of islands = #{result}"
end
